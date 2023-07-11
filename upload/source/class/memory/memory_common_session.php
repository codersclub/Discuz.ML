<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: table_common_session.php 28051 2012-02-21 10:36:56Z zhangguosheng $
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

class memory_common_session
{
	private $_pre_cache_key;

	// A common LUA code for loading data one by one based on sids array and returning
	const LUA_RETURN_DATA = <<<LUA
	local rs = {}
	for _, key in ipairs(sids) do
	local row = redis.call("hmget", prefix..key, "sid", "ip", "uid", "username", "groupid", "invisible", "action", "lastactivity", "lastolupdate", "fid", "tid")
	rs[#rs + 1] = row
	end
	return rs
LUA;

	public function __construct() {
		$this->_pre_cache_key = 'common_session_';
	}

	// When memory is enabled, read directly from memory
	public function fetch($sid, $ip = false, $uid = false) {
		if(empty($sid)) {
			return array();
		}
		$session = $this->get_data_by_pk($sid);
		if($session && $ip !== false && $ip != "{$session['ip']}") {
			$session = array();
		}
		if($session && $uid !== false && $uid != $session['uid']) {
			$session = array();
		}
		return $session;
	}

	/*
	 * In memory, set operations are performed based on the following SortedSets
	 * 		idx_invisible_$invisible: SortedSet, member is sid, score is lastactivity
	 * 		idx_uid_group_0: uid=0 with SortedSet, member is sid, score is lastactivity，
	 * 		idx_uid_group_1: uid>0 with SortedSet, member is sid, score is lastactivity，
	 * 		idx_lastactivity: SortedSet, member is sid, score is lastactivity
	 */
	public function fetch_member($ismember = 0, $invisible = 0, $start = 0, $limit = 0) {
		if ($ismember < 1 || $ismember > 2) $ismember = 0; // $ismember valid values are 0, 1, 2 only
		if ($invisible < 1 || $invisible > 2) $invisible = 0; // invisible valid values are 0, 1, 2 only

		list($ss, $ee) = $this->get_start_and_end($start, $limit);
		($invisible == 2) ? $inv_idx = 0 : $inv_idx = 1; // $invisible == 2, equivalent to sql condition invisible = 0
		($ismember == 2) ? $uid_idx = 0 : $uid_idx = 1; // $ismember == 2, equivalent to sql condition uid = 0

		// $ismember == 0, means not to use uid condition, $invisible == 0, means not to use invisible condition
		if ($ismember == 0 && $invisible == 0) { // Use idx_lastactivity
			$script = <<<LUA
			local prefix = ARGV[1]
			local start = ARGV[2]
			local stop = ARGV[3]
			local sids = redis.call('ZREVRANGE', prefix..'idx_lastactivity', start, stop)
LUA;
			$data = memory('eval', $script . self::LUA_RETURN_DATA, array($ss, $ee), "fetch_member_1st", $this->_pre_cache_key);
		} elseif ($ismember == 0) { // Use idx_invisible_xx
			$script = <<<LUA
			local prefix = ARGV[1]
			local inv_idx = ARGV[2]
			local start = ARGV[3]
			local stop = ARGV[4]
			local sids = redis.call('ZREVRANGE', prefix..'idx_invisible_'..inv_idx, start, stop)
LUA;
			$data = memory('eval', $script . self::LUA_RETURN_DATA, array($inv_idx, $ss, $ee), "fetch_member_2nd", $this->_pre_cache_key);
		} elseif ($invisible == 0) { // Use idx_uid_group_0/1
			$script = <<<LUA
			local prefix = ARGV[1]
			local uid_idx = ARGV[2]
			local start = ARGV[3]
			local stop = ARGV[4]
			local sids = redis.call('ZREVRANGE', prefix..'idx_uid_group_'..uid_idx, start, stop)
LUA;
			$data = memory('eval', $script . self::LUA_RETURN_DATA, array($uid_idx, $ss, $ee), "fetch_member_3rd", $this->_pre_cache_key);
		} else { // Find the intersection of idx_invisible_$inv_idx and idx_uid_group_$uid_idx
			global $_G;
			$temp_uniq = substr(md5(substr(TIMESTAMP, 0, -3).substr($_G['config']['security']['authkey'], 3, -3)), 1, 8);
			$script = <<<LUA
			local prefix = ARGV[1]
			local inv_idx = ARGV[2]
			local uid_idx = ARGV[3]
			local out_surfix = ARGV[4]
			local start = ARGV[5]
			local stop = ARGV[6]
			local out_hash = prefix..'invisible_uid_'..out_surfix
			redis.call('ZINTERSTORE', out_hash, 2, prefix..'idx_invisible_'..inv_idx, prefix..'idx_uid_group_'..uid_idx, 'AGGREGATE', 'MIN')
			local sids = redis.call('ZREVRANGE', out_hash, start, stop)
			redis.call('DEL', out_hash)
LUA;
			$data = memory('eval', $script . self::LUA_RETURN_DATA, array($inv_idx, $uid_idx, $temp_uniq, $ss, $ee), "fetch_member_4th", $this->_pre_cache_key);
		}
		return $this->array_from_memory_result($data);
	}

	/*
	 * Under memory, based on idx_invisible_$invisible: SortedSet, member is sid, score is lastactivity
	 */
	public function count_invisible($type = 1) {
		return memory('zcard', 'idx_invisible_' . $type, $this->_pre_cache_key);
	}

	/*
	 * There are three situations in memory:
	 * 		1. Unconditional (all rows): directly use the size of idx_lastactivity
	 * 		2. uid = 0: Use the size of idx_uid_group_0
	 * 		3. uid > 0: Use the size of idx_uid_group_1
	 */
	public function count($type = 0) {
		switch ($type) {
			case 1:
				return memory('zcard', 'idx_uid_group_1', $this->_pre_cache_key);
			case 2:
				return memory('zcard', 'idx_uid_group_0', $this->_pre_cache_key);
			default:
				return memory('zcard', 'idx_lastactivity', $this->_pre_cache_key);
		}
	}

	/*
	 * Delete based on the following conditions:
	 * 		$sid, delete directly based on key: $prefix$sid
	 * 		$lastactivity < $onlinehold: Filter based on idx_lastactivity sortedset
	 * 		$uid = 0 and $ip = clientip and $lastactivity > $guestspan: Filter based on idx_uid_group_0 sortedset
	 * 		$uid = $session['uid']: Based on uid set
	 * To update all indexes after deletion
	 * 		idx_ip_$ipaddress: SortedSet, member is sid, score is lastactivity
	 * 		idx_invisible_$invisible: SortedSet, member is sid, score is lastactivity
	 * 		idx_fid_$fid: SortedSet, member is sid, score is lastactivity
	 * 		idx_uid_group_0: uid=0 of SortedSet, member is sid, score is lastactivity,
	 * 		idx_uid_group_1: uid>0 of SortedSet, member is sid, score is lastactivity,
	 * 		idx_lastactivity: SortedSet, member is sid, score is lastactivity
	 * 		idx_uid_$uid: Set, member is sid
	 *
	 */
	public function delete_by_session($session, $onlinehold, $guestspan) {
		if(empty($session) || !is_array($session)) return;
		$onlinehold = time() - $onlinehold;
		$guestspan = time() - $guestspan;

		// The following script deletes one by one according to the original SQL conditions, records all deleted data, and then uses the deleted data to update the index.
		// During the execution of the script, the previously deleted data cannot be obtained later, so it will not be added to rs, so there is no duplicate data in rs
		global $_G;
		$temp_uniq = substr(md5(substr(TIMESTAMP, 0, -3).substr($_G['config']['security']['authkey'], 3, -3)), 1, 8);
		$script = <<<LUA
		local rs = {}
		local prefix = ARGV[1]
		local sid = ARGV[2]
		local onlinehold = ARGV[3]
		local guestspan = ARGV[4]
		local userip = ARGV[5]
		local uid = ARGV[6]
		local out_surfix = ARGV[7]

		local function getdata(key)
		    local data = redis.call("HMGET", key, 'sid', 'ip', 'uid', 'invisible', 'fid')
		    if (data[1]) then
			return data
		    else
			return {}
		    end
		end

		local bysid = getdata(prefix..sid);
		if (#bysid > 0) then
		    redis.call("del", prefix..sid)
		    rs[#rs + 1] = bysid
		end

		-- lastactivity < onlinehold
		local byonlinehold = redis.call("ZRANGEBYSCORE", prefix.."idx_lastactivity", 0, onlinehold + 1);
		for _, sid in ipairs(byonlinehold) do
		    local data = getdata(prefix..sid);
		    if (#data > 0) then
			redis.call("del", prefix..sid)
			rs[#rs + 1] = data
		    end
		end

		-- uid = 0 and ip = userip
		local out_hash = prefix..'uid0_ip_'..out_surfix
		redis.call("ZINTERSTORE", out_hash, 2, prefix.."idx_uid_group_0", prefix.."idx_ip_"..userip, 'AGGREGATE', 'MIN')
		-- and lastactivity > guestspan
		local byguestspan = redis.call("ZRANGEBYSCORE", out_hash, guestspan + 1, '+inf')
		for _, sid in ipairs(byguestspan) do
		    local data = getdata(prefix..sid);
		    if ((#data > 0)) then
			redis.call("del", prefix..sid)
			rs[#rs + 1] = data
		    end
		end
		redis.call("DEL", out_hash)

		local byuid = redis.call("SMEMBERS", prefix.."idx_uid_"..uid);
		for _, sid in ipairs(byuid) do
		    local data = getdata(prefix..sid);
		    if (#data > 0) then
			redis.call("del", prefix..sid)
			rs[#rs + 1] = data
		    end
		end

		for _, row in ipairs(rs) do
		    redis.call("ZREM", prefix.."idx_ip_"..row[2], row[1])
		    redis.call("ZREM", prefix.."idx_invisible_"..row[4], row[1])
		    redis.call("ZREM", prefix.."idx_fid_"..row[5], row[1])
		    if (row[3] == '0') then
			redis.call("ZREM", prefix.."idx_uid_group_0", row[1])
		    else
			redis.call("ZREM", prefix.."idx_uid_group_1", row[1])
		    end
		    redis.call("ZREM", prefix.."idx_lastactivity", row[1])
		    redis.call("SREM", prefix.."idx_uid_"..row[3], row[1])
		end

		return #rs
LUA;
		memory('eval', $script, array($session['sid'], $onlinehold, $guestspan, $session['ip'], $session['uid'] ? $session['uid'] : -1, $temp_uniq), "delete_by_session", $this->_pre_cache_key);
	}

	// $prefix_idx_uid_$uid: Set
	public function fetch_by_uid($uid) {
		if(empty($uid)) {
			return false;
		}

		$sids = memory('smembers', 'idx_uid_' . $uid, $this->_pre_cache_key);
		foreach ($sids as $sid) {
			return $this->get_data_by_pk($sid); // return first
		}
		return false;
	}

	// $prefix_idx_uid_$uid: Set
	// $uids may be array, multiple uids
	public function fetch_all_by_uid($uids, $start = 0, $limit = 0) {
		if(empty($uids)) {
			return array();
		}

		if (!is_array($uids)) {
			$uids = array($uids);
		}

		$script = <<<LUA
		local prefix = ARGV[1]
		local start = ARGV[2]
		local limit = ARGV[3] - start + 1
		local argv_index = 4
		local sid_index = 0
		local rs = {}
		while (ARGV[argv_index]) do
		    local sids = redis.call('SMEMBERS', prefix..'idx_uid_'..ARGV[argv_index])
		    for _, key in ipairs(sids) do
			if (sid_index >= start) then
			    local row = redis.call("hmget", prefix..key, "sid", "ip", "uid", "username", "groupid", "invisible", "action", "lastactivity", "lastolupdate", "fid", "tid")
			    rs[#rs + 1] = row
			    if (#rs >= limit) then
				return rs
			    end
			end
			sid_index = sid_index + 1
		    end
		    argv_index = argv_index + 1
		end
		return rs
LUA;
		list($ss, $ee) = $this->get_start_and_end($start, $limit);
		$data = memory('eval', $script, array_merge(array($ss, $ee), $uids), "fetch_all_by_uid", $this->_pre_cache_key);
		return $this->array_from_memory_result($data);
	}

	// $prefix_idx_uid_$uid: Set
	// If a UID corresponds to multiple SIDs, all are updated
	public function update_by_uid($uid, $data) {
		if(!($uid = dintval($uid)) || empty($data) || !is_array($data)) {
			return 0;
		}

		// First take out the data corresponding to all UIDs
		$script = <<<LUA
		local prefix = ARGV[1]
		local uid = ARGV[2]
		local sids = redis.call('SMEMBERS', prefix..'idx_uid_'..uid)
LUA;
		$r = memory('eval', $script . self::LUA_RETURN_DATA, array($uid), "update_by_uid_query", $this->_pre_cache_key);
		$items = $this->array_from_memory_result($r);

		memory('pipeline');
		foreach ($items as $olditem) {
			$sid = $olditem['sid'];
			$data['sid'] = $sid; 	// There may be no sid in $data
			memory('hmset', $sid, $data, 0, $this->_pre_cache_key);
			$this->update_memory_index($sid, $data, $olditem);
		}
		memory('commit');
	}

	public function update_max_rows($max_rows) {
		// When using memory, it does not support (no need) to set the maximum number of rows
		return TRUE;
	}

	public function clear() {
		// Clear operation is not supported when using memory
		// Now there is only one in admincp_setting, after calling update_max_rows, this operation may be called
		// The max_rows setting is not supported in memory, so the clear operation is not supported here
		return TRUE;
	}

	// $prefix_idx_fid_$fid: SortedSet, member is sid, score is lastactivity
	public function count_by_fid($fid) {
		$fid = dintval($fid);
		if (!$fid) return 0;
		global $_G;
		$temp_uniq = substr(md5(substr(TIMESTAMP, 0, -3).substr($_G['config']['security']['authkey'], 3, -3)), 1, 8);
		$script = <<<LUA
		local prefix = ARGV[1]
		local fid = ARGV[2]
		local out_surfix = ARGV[3]
		local out_hash = prefix..'uid_fid_inv_'..out_surfix
		-- uid > 0 and fid=fid and invisible = 0
		redis.call("ZINTERSTORE", out_hash, 3, prefix.."idx_uid_group_1", prefix.."idx_fid_"..fid, prefix.."idx_invisible_0", 'AGGREGATE', 'MIN')
		local rs = redis.call("ZCARD", out_hash)
		redis.call("DEL", out_hash)
		return rs
LUA;
		$data = memory('eval', $script, array($fid, $temp_uniq), "count_by_fid", $this->_pre_cache_key);
		return $data;
	}

	// $prefix_idx_fid_$fid: SortedSet, member is sid, score is lastactivity
	public function fetch_all_by_fid($fid, $limit = 12) {
		$fid = dintval($fid);
		if (!$fid) return array();

		global $_G;
		$temp_uniq = substr(md5(substr(TIMESTAMP, 0, -3).substr($_G['config']['security']['authkey'], 3, -3)), 1, 8);
		$script = <<<LUA
		local prefix = ARGV[1]
		local fid = ARGV[2]
		local limit = ARGV[3]
		local out_surfix = ARGV[4]
		local out_hash = prefix..'uid_fid_inv_'..out_surfix

		-- uid > 0 and fid=fid and invisible = 0
		redis.call("ZINTERSTORE", out_hash, 3, prefix.."idx_uid_group_1", prefix.."idx_fid_"..fid, prefix.."idx_invisible_0", 'AGGREGATE', 'MIN')

		local keys = redis.call("ZREVRANGE", out_hash, 0, limit - 1)
		redis.call("DEL", out_hash)
		local rs = {}
		for _, key in ipairs(keys) do
		    local row = redis.call("hmget", prefix..key, "uid", "groupid", "username", "invisible", "lastactivity")
		    rs[#rs + 1] = row
		end
		return rs
LUA;
		$data = memory('eval', $script, array($fid, $limit, $temp_uniq), "fetch_all_by_fid", $this->_pre_cache_key);
		$result = array();
		foreach ($data as $row) {
			$item = array();
			$item['uid'] = $row[0];
			$item['groupid'] = $row[1];
			$item['username'] = $row[2];
			$item['invisible'] = $row[3];
			$item['lastactivity'] = $row[4];
			$result[] = $item;
		}
		return $result;
	}

	// $prefix_idx_ip_$ipaddress: SortedSet, member is sid, score is lastactivity
	public function count_by_ip($ip) {
		if (empty($ip)) return 0;
		return memory('zcard', 'idx_ip_' . $ip, $this->_pre_cache_key);
	}

	// $prefix_idx_ip_$ipaddress: SortedSet, member is sid, score is lastactivity
	public function fetch_all_by_ip($ip, $start = 0, $limit = 0) {
		if (empty($ip)) return array();

		list($ss, $ee) = $this->get_start_and_end($start, $limit);
		$script = <<<LUA
		local prefix = ARGV[1]
		local ip = ARGV[2]
		local start = ARGV[3]
		local stop = ARGV[4]
		local sids = redis.call('ZREVRANGE', prefix..'idx_ip_'..ip, start, stop)
LUA;
		$data = memory('eval', $script . self::LUA_RETURN_DATA, array($ip, $ss, $ee), "fetch_all_by_ip", $this->_pre_cache_key);
		return $this->array_from_memory_result($data);
	}

	public function insert($data, $return_insert_id = false, $replace = false, $silent = false) {
		$id = $data['sid'];
		memory('pipeline');
		memory('hmset', $id, $data, 0, $this->_pre_cache_key);
		$this->update_memory_index($id, $data);
		memory('commit');
	}

	public function update($val, $data, $unbuffered = false, $low_priority = false) {
		$olddata = $this->get_data_by_pk($val);
		memory('pipeline');
		memory('hmset', $val, $data, 0, $this->_pre_cache_key);
		$this->update_memory_index($val, $data, $olddata);
		memory('commit');
	}

	/*
	 * Maintain index
	 * The following indexes:
	 * 		idx_ip_$ipaddress: SortedSet, member is sid, score is lastactivity
	 * 		idx_invisible_$invisible: SortedSet, member is sid, score is lastactivity
	 * 		idx_fid_$fid: SortedSet, member is sid, score is lastactivity
	 * 		idx_uid_group_0: SortedSet with uid=0, member is sid, score is lastactivity,
	 * 		idx_uid_group_1: SortedSet with uid>0, member is sid, score is lastactivity,
	 * 		idx_lastactivity: SortedSet, member is sid, score is lastactivity
	 * 		idx_uid_$uid: Set, member is sid
	 */
	private function update_memory_index($sid, $newdata, $olddata = array()) {
		if (!empty($olddata) && !isset($olddata['lastactivity'])) { // If there is original data, there must be lastactivity in the original data
			return;
		}
		if (!empty($olddata) && !isset($newdata['lastactivity'])) { // If there is original data, but there is no lastactivity in the new data, use the original lastactivity
			$newdata['lastactivity'] = $olddata['lastactivity'];
		}
		foreach ($newdata as $col => $value) {
			// Only index the following
			if (!in_array($col, array("ip", "uid", "fid", "lastactivity", "invisible"))) continue;
			if (isset($olddata[$col])) { // Delete the sid from the original index
				if ($olddata[$col] === $value && $olddata['lastactivity'] === $newdata['lastactivity']) { // If the new and old values are equal, and the score has not changed, it will not be processed
					continue;
				}
				switch ($col) {
					case 'ip':
						memory('zrem', "idx_ip_" . $olddata[$col], $sid, 0, $this->_pre_cache_key);
						break;
					case 'lastactivity':
						memory('zrem', 'idx_lastactivity', $sid, 0, $this->_pre_cache_key);
						break;
					case 'fid':
						memory('zrem', "idx_fid_" . $olddata[$col], $sid, 0, $this->_pre_cache_key);
						break;
					case 'invisible':
						memory('zrem', "idx_invisible_" . $olddata[$col], $sid, 0, $this->_pre_cache_key);
						break;
					case 'uid':
						memory('zrem', "idx_uid_group_" . ($olddata[$col] == 0 ? '0' : '1'), $sid, 0, $this->_pre_cache_key);
						memory('srem', "idx_uid_" . $olddata[$col], $sid, 0, $this->_pre_cache_key);
						break;
					default:
						continue 2;
				}
			}
			// Add sid to the new index
			switch ($col) {
				case 'ip':
				case 'fid':
				case 'invisible':
					memory('zadd', 'idx_' . $col . "_" . $value, $sid, $newdata['lastactivity'], $this->_pre_cache_key);
					break;
				case 'lastactivity':
					memory('zadd', 'idx_lastactivity', $sid, $newdata['lastactivity'], $this->_pre_cache_key);
					break;
				case 'uid':
					memory('zadd', "idx_uid_group_" . ($value == 0 ? '0' : '1'), $sid, $newdata['lastactivity'], $this->_pre_cache_key);
					memory('sadd', 'idx_uid_' . $value, $sid, 0, $this->_pre_cache_key);
					break;
				default:
					continue 2;
			}
		}
	}

	/*
	 * Process the results of the following calls into arry and return
	 * 	redis.call("hmget", key, "sid", "ip", "uid", "username", "groupid", "invisible", "action", "lastactivity", "lastolupdate", "fid", "tid")
	 */
	private function array_from_memory_result($data) {
		$result = array();
		foreach ($data as $row) {
			$item = array();
			$item['sid'] = $row[0];
			$item['ip'] = $row[1];
			$item['uid'] = $row[2];
			$item['username'] = $row[3];
			$item['groupid'] = $row[4];
			$item['invisible'] = $row[5];
			$item['action'] = $row[6];
			$item['lastactivity'] = $row[7];
			$item['lastolupdate'] = $row[8];
			$item['fid'] = $row[9];
			$item['tid'] = $row[10];
			$result[] = $item;
		}
		return $result;
	}

	/*
	 * Return all data according to sid
	 */
	private function get_data_by_pk($sid) {
		$data = memory('hgetall', $sid, $this->_pre_cache_key);
		return $data;
	}

	/*
	 * Calculate start and end from $start and $limit
	 * When $limit is 0, the $start parameter indicates limit
	 */
	private function get_start_and_end($start, $limit) {
		$limit = intval($limit > 0 ? $limit : 0);
		$start = intval($start > 0 ? $start : 0);
		if ($start > 0 && $limit > 0) {
			return array($start, $start + $limit - 1);
		} elseif ($limit > 0) {
			return array(0, $limit - 1);
		} elseif ($start > 0) {
			return array(0, $start - 1);
		} else {
			return array(0, -1);
		}
	}
}

?>
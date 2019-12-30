<?php
/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: table_forum_threaddisablepos.php 27449 2012-03-01 05:32:35Z liulanbo $
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}
class table_forum_threaddisablepos extends discuz_table {

	private $enable_set = false;

	/*
	 * When memory supports Set, all data is stored under one Set
	 */
	public function __construct() {
		$this->_table = 'forum_threaddisablepos';
		$this->_pk    = 'tid';
		$this->_pre_cache_key = 'forum_threaddisablepos_';
		$this->_cache_ttl = 0;
		parent::__construct();

		// Depends on set
		// Does not affect the original _allowmem variable, so that the original cache acceleration scheme can be used without Set
		$this->enable_set = $this->_allowmem && C::memory()->gotset;
	}

	public function truncate() {
		if (!$this->enable_set) {
			DB::query("TRUNCATE ".DB::table('forum_threaddisablepos'));
		}
		return memory('rm', 'idx_threaddisablepos', $this->_pre_cache_key);
	}

	public function insert($data, $return_insert_id = false, $replace = false, $silent = false) {
		if (!$this->enable_set) {
			return parent::insert($data, $return_insert_id, $replace, $silent);
		}
		return memory('sadd', 'idx_threaddisablepos', $data['tid'], 0, $this->_pre_cache_key);
	}

	public function fetch($id, $force_from_db = false) {
		if (!$this->enable_set) {
			return parent::fetch($id, $force_from_db);
		}
		return memory('sismember', 'idx_threaddisablepos', $id, 0, $this->_pre_cache_key);
	}

}

?>
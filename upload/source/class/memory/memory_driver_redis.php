<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: memory_driver_redis.php 33336 2013-05-29 02:05:10Z andyzheng $
 */
if (!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

class memory_driver_redis {

	public $cacheName = 'Redis';
	var $enable;
	var $obj;

	public function env() {
		return extension_loaded('redis');
	}

	function init($config) {
		if(!$this->env()) {
			$this->enable = false;
			return;
		}

		if (!empty($config['server'])) {
			try {
				$this->obj = new Redis();
				if ($config['pconnect']) {
					$connect = @$this->obj->pconnect($config['server'], $config['port']);
				} else {
					$connect = @$this->obj->connect($config['server'], $config['port']);
				}
			} catch (RedisException $e) {

			}
			$this->enable = $connect ? true : false;
			if ($this->enable) {
				if ($config['requirepass']) {
					$this->obj->auth($config['requirepass']);
				}
				@$this->obj->setOption(Redis::OPT_SERIALIZER, Redis::SERIALIZER_NONE);
			}
		}
	}

	function &instance() {
		static $object;
		if (empty($object)) {
			$object = new memory_driver_redis();
			$object->init(getglobal('config/memory/redis'));
		}
		return $object;
	}

	function get($key) {
		if (is_array($key)) {
			return $this->getMulti($key);
		}
		return $this->obj->get($key);
	}

	function getMulti($keys) {
		$result = $this->obj->getMultiple($keys);
		$newresult = array();
		$index = 0;
		foreach ($keys as $key) {
			if ($result[$index] !== false) {
				$newresult[$key] = $result[$index];
			}
			$index++;
		}
		unset($result);
		return $newresult;
	}

	function select($db = 0) {
		return $this->obj->select($db);
	}

	function set($key, $value, $ttl = 0) {
		if ($ttl) {
			return $this->obj->setex($key, $ttl, $value);
		} else {
			return $this->obj->set($key, $value);
		}
	}

	function rm($key) {
		return $this->obj->delete($key);
	}

	function setMulti($arr, $ttl = 0) {
		if (!is_array($arr)) {
			return FALSE;
		}
		foreach ($arr as $key => $v) {
			$this->set($key, $v, $ttl);
		}
		return TRUE;
	}

	function inc($key, $step = 1) {
		return $this->obj->incr($key, $step);
	}

	function dec($key, $step = 1) {
		return $this->obj->decr($key, $step);
	}

	function getSet($key, $value) {
		return $this->obj->getSet($key, $value);
	}

	function sadd($key, $value) {
		return $this->obj->sAdd($key, $value);
	}

	function srem($key, $value) {
		return $this->obj->sRem($key, $value);
	}

	function smembers($key) {
		return $this->obj->sMembers($key);
	}

	function sIsMember($key, $member) {
		return $this->obj->sismember($key, $member);
	}

	function keys($key) {
		return $this->obj->keys($key);
	}

	function expire($key, $second) {
		return $this->obj->expire($key, $second);
	}

	function scard($key) {
		return $this->obj->sCard($key);
	}

	function hSet($key, $field, $value) {
		return $this->obj->hSet($key, $field, $value);
	}

	function hmset($key, $value) {
		return $this->obj->hMSet($key, $value);
	}

	function hDel($key, $field) {
		return $this->obj->hDel($key, $field);
	}

	function hLen($key) {
		return $this->obj->hLen($key);
	}

	function hVals($key) {
		return $this->obj->hVals($key);
	}

	function hIncrBy($key, $field, $incr) {
		return $this->obj->hIncrBy($key, $field, $incr);
	}

	function hgetall($key) {
		return $this->obj->hGetAll($key);
	}

	function eval($script, $argv) {
		return $this->obj->eval($script, $argv);
	}

	function evalsha($sha, $argv) {
		return $this->obj->evalSha($sha, $argv);
	}

	function loadscript($script) {
		return $this->obj->script('load', $script);
	}

	function zadd($key, $member, $score) {
		return $this->obj->zAdd($key, $score, $member);
	}

	function zrem($key, $member) {
		return $this->obj->zRem($key, $member);
	}

	function zcard($key) {
		return $this->obj->zCard($key);
	}

	function zrevrange($key, $start, $end) {
		return $this->obj->zRevRange($key, $start, $end);
	}

	function sort($key, $opt) {
		return $this->obj->sort($key, $opt);
	}

	function exists($key) {
		return $this->obj->exists($key);
	}

	function clear() {
		return $this->obj->flushAll();
	}

}

?>
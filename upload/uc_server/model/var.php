<?php

/*
	[UCenter] (C)2001-2099 Comsenz Inc.
	This is NOT a freeware, use is subject to license terms

	$Id: var.php 1167 2014-11-03 03:06:21Z hypowang $
*/

!defined('IN_UC') && exit('Access Denied');

class base_var {

	private static $instance;
	var $sid;
	var $time;
	var $onlineip;
	var $db;
	var $settings = array();
	var $cache = array();
	var $_CACHE = array();
	var $app = array();
	var $user = array();
	var $lang = array();
	var $input = array();
	public static function bind(&$class) {
		if(empty(self::$instance)) {
			self::$instance = new base_var();
		}
		$class->sid =& self::$instance->sid;
		$class->time =& self::$instance->time;
		$class->onlineip =& self::$instance->onlineip;
		$class->db =& self::$instance->db;
		$class->settings =& self::$instance->settings;
		$class->cache =& self::$instance->cache;
		$class->_CACHE =& self::$instance->_CACHE;
		$class->app =& self::$instance->app;
		$class->user =& self::$instance->user;
		$class->lang =& self::$instance->lang;
		$class->input =& self::$instance->input;
	}

}

?>
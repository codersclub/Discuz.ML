<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *	$Id: functions.inc.php 2020-03-31 Valery Votintsev, discuz.ml $
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

function is_https() {
	if (isset($_SERVER["HTTPS"]) && strtolower($_SERVER["HTTPS"]) != "off") {
		return true;
	} else if (isset($_SERVER["HTTP_X_FORWARDED_PROTO"]) && strtolower($_SERVER["HTTP_X_FORWARDED_PROTO"]) == "https") {
		return true;
	} else if (isset($_SERVER["HTTP_SCHEME"]) && strtolower($_SERVER["HTTP_SCHEME"]) == "https") {
		return true;
	} else if (isset($_SERVER["HTTP_FROM_HTTPS"]) && strtolower($_SERVER["HTTP_FROM_HTTPS"]) != "off") {
		return true;
	} else if (isset($_SERVER["SERVER_PORT"]) && $_SERVER["SERVER_PORT"] == 443) {
		return true;
	} else {
		return false;
	}
}

<?php

/**
 *	[UCenter & Discuz!] (C)2001-2099 Comsenz Inc.
 *	This is NOT a freeware, use is subject to license terms
 *
 *	$Id: functions.inc.php 2020-03-31 Valery Votintsev, discuz.ml $
 */

/**
 * Check for access by httpS
 * Idea by laozhoubuluo@126.com
 * @author Valery Votintsev
 * @return bool
 */
function is_https() {
	// PHP standard server variables
	if(isset($_SERVER['HTTPS']) && strtolower($_SERVER['HTTPS']) != 'off') {
		return true;
	// X-Forwarded-Proto de facto standard header, used for anti-generation transparent transmission of HTTPS status
	} else if(isset($_SERVER['HTTP_X_FORWARDED_PROTO']) && strtolower($_SERVER['HTTP_X_FORWARDED_PROTO']) == 'https') {
		return true;
	} else if(isset($_SERVER['HTTP_SCHEME']) && strtolower($_SERVER['HTTP_SCHEME']) == 'https') {
		return true;
	// Apache 2.4 Rewrite Engine header
	} else if (isset($_SERVER['REQUEST_SCHEME']) && strtolower($_SERVER['REQUEST_SCHEME']) == 'https') {
		return true;
	// Alibaba Cloud site-wide accelerated private HTTPS status header 
	// Git feedback https://gitee.com/Discuz/DiscuzX/issues/I3W5GP
	} else if(isset($_SERVER['HTTP_X_CLIENT_SCHEME']) && strtolower($_SERVER['HTTP_X_CLIENT_SCHEME']) == 'https') {
		return true;
	// The private HTTPS status header of Western Digital Site Assistant
	// Official website feedback https://www.discuz.net/thread-3849819-1-1.html
	} else if(isset($_SERVER['HTTP_FROM_HTTPS']) && strtolower($_SERVER['HTTP_FROM_HTTPS']) != 'off') {
		return true;
	// The server port number is the last place to check
	} else if(isset($_SERVER['SERVER_PORT']) && $_SERVER['SERVER_PORT'] == 443) {
		return true;
	}
	return false;
}

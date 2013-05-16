<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: discuz_version.php 33252 2013-05-10 01:21:40Z andyzheng $
 *	Modified by Valery Votintsev, codersclub.org
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

if(!defined('DISCUZ_VERSION')) {
	define('DISCUZ_VERSION', 'X3');
	define('DISCUZ_RELEASE', '20130511');
	define('DISCUZ_FIXBUG', '30000000');
	define('DISCUZ_ML_REVISION', '120');
}

?>
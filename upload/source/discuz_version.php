<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: discuz_version.php 34344 2014-02-28 06:44:13Z hypowang $
 *	Modified by Valery Votintsev, codersclub.org
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

if(!defined('DISCUZ_VERSION')) {
	define('DISCUZ_VERSION', 'X3.1');
	define('DISCUZ_RELEASE', '20140301');
	define('DISCUZ_FIXBUG', '30000000');
	define('DISCUZ_ML_REVISION', '327');
}

?>
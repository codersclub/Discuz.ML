<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: cron_member_optimize_daily.php 28623 2012-03-06 09:01:58Z zhangguosheng $
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

// Before the user sub-table operation, check ifr the user sub-table is turned on
if(getglobal('setting/membersplit')) {
	C::t('common_member')->split(100);
}

?>
<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: lang_open.php 27449 2012-02-01 05:32:35Z zhangguosheng $
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

$lang = array
(
	'open_name' => '喧囂卡',
	'open_desc' => '可以將主題開啟，可以回復',
	'open_forum' => '允許使用本道具的版塊',
	'open_info' => '開放指定的主題，請輸入主題的 ID',
	'open_info_nonexistence' => '請指定要開放的主題',
	'open_succeed' => '您操作的主題已開放回復',
	'open_info_noperm' => '對不起，主題所在版塊不允許使用本道具',
	'open_info_user_noperm' => '對不起，您不能對此人使用本道具',

	'open_notification' => '您的主題 {subject} 被 {actor} 使用了{magicname}，<a href="forum.php?mod=viewthread&tid={tid}">快去看看吧！</a>',
);

?>
<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: lang_bump.php 27449 2012-02-01 05:32:35Z zhangguosheng $
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

$lang = array
(
	'bump_name' => '提升卡',
	'bump_forum' => '允許使用本道具的版塊',
	'bump_desc' => '可以提升某個主題',
	'bump_info' => '提升指定的主題，請輸入主題的 ID',
	'bump_info_nonexistence' => '請指定要提升的主題',
	'bump_succeed' => '您操作的主題已提升',
	'bump_info_noperm' => '對不起，主題所在版塊不允許使用本道具',

	'bump_notification' => '您的主題 {subject} 被 {actor} 使用了{magicname}，<a href="forum.php?mod=viewthread&tid={tid}">快去看看吧！</a>',
);

?>
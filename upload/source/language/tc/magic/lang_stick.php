<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: lang_stick.php 27449 2012-02-01 05:32:35Z zhangguosheng $
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

$lang = array
(
	'stick_name' => '置頂卡',
	'stick_desc' => '可以將主題置頂',
	'stick_expiration' => '置頂有效期',
	'stick_expiration_comment' => '設置主題可以被置頂多長時間，默認 24 小時',
	'stick_forum' => '允許使用本道具的版塊',
	'stick_info' => '置頂指定的主題 {expiration} 小時，請輸入主題的 ID',
	'stick_info_nonexistence' => '請指定要置頂的主題',
	'stick_succeed' => '您操作的主題已置頂',
	'stick_info_noperm' => '對不起，主題所在版塊不允許使用本道具',

	'stick_notification' => '您的主題 {subject} 被 {actor} 使用了{magicname}，<a href="forum.php?mod=viewthread&tid={tid}">快去看看吧！</a>',
);

?>
<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: lang_close.php 27449 2012-02-01 05:32:35Z zhangguosheng $
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

$lang = array
(
	'close_name' => '沉默卡',
	'close_desc' => '可以將主題關閉，禁止回復',
	'close_expiration' => '關閉有效期',
	'close_expiration_comment' => '設置主題可以被關閉多長時間，默認 24 小時',
	'close_forum' => '允許使用本道具的版塊',
	'close_info' => '關閉指定的主題 {expiration} 小時，請輸入主題的 ID',
	'close_info_nonexistence' => '請指定要關閉的主題',
	'close_succeed' => '您操作的主題已關閉',
	'close_info_noperm' => '對不起，主題所在版塊不允許使用本道具',
	'close_info_user_noperm' => '對不起，您不能對此人使用本道具',

	'close_notification' => '您的主題 {subject} 被 {actor} 使用了{magicname}，<a href="forum.php?mod=viewthread&tid={tid}">快去看看吧！</a>',
);

?>
<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: lang_highlight.php 27449 2012-02-01 05:32:35Z zhangguosheng $
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

$lang = array
(
	'highlight_name' => '變色卡',
	'highlight_desc' => '可以將帖子或日誌的標題高亮，變更顏色',
	'highlight_expiration' => '高亮有效期',
	'highlight_expiration_comment' => '設置標題可以被高亮多長時間，默認 24 小時。作用於日誌時無有效期。',
	'highlight_forum' => '允許使用本道具的版塊',
	'highlight_info_tid' => '高亮主題的標題 {expiration} 小時',
	'highlight_info_blogid' => '可以將日誌或帖子的標題高亮，變更顏色',
	'highlight_color' => '顏色',
	'highlight_info_nonexistence_tid' => '請指定要高亮的帖子',
	'highlight_info_nonexistence_blogid' => '請指定要高亮的日誌',
	'highlight_succeed_tid' => '您操作的帖子已高亮',
	'highlight_succeed_blogid' => '您操作的日誌已高亮',
	'highlight_info_noperm' => '對不起，主題所在版塊不允許使用本道具',
	'highlight_info_notype' => '參數錯誤，沒有指定操作類型。',

	'highlight_notification' => '您的主題 {subject} 被 {actor} 使用了{magicname}，<a href="forum.php?mod=viewthread&tid={tid}">快去看看吧！</a>',
	'highlight_notification_blogid' => '您的日誌 {subject} 被 {actor} 使用了{magicname}，<a href="home.php?mod=space&do=blog&id={blogid}">快去看看吧！</a>',
);

?>
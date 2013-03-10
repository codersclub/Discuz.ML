<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: lang_member.php 29183 2012-03-28 06:39:26Z zhengqingpeng $
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

$lang = array
(
	'member_name' => '會員類任務',
	'member_desc' => '收藏主題、使用道具、添加漫遊應用，此類任務用來鼓勵和引導會員使用論壇的某個功能，活躍論壇的氛圍',
	'member_complete_var_act' => '動作',
	'member_complete_var_act_favorite' => '收藏主題',
	'member_complete_var_act_magic' => '使用道具',
	'member_complete_var_act_userapp' => '添加漫遊應用',
	'member_complete_var_num' => '執行動作次數下限',
	'member_complete_var_num_comment' => '會員需要執行相應動作的最少次數',
	'member_complete_var_time' => '時間限制(小時)',
	'member_complete_var_time_comment' => '設置會員從申請任務到完成任務的時間限制，會員在此時間內未能完成任務則不能領取獎勵並標記任務失敗，0 或留空為不限制',

	'task_complete_time_start' => '從申請任務開始計時，',
	'task_complete_time_limit' => '{value} 小時內，',
	'task_complete_act_favorite' => '收藏 {value} 個主題',
	'task_complete_act_magic' => '使用 {value} 次道具。<br />您可以在帖子頁面、日誌頁面、圖片頁面等使用道具',
	'task_complete_act_userapp' => '添加 {value} 個漫遊應用',
);

?>
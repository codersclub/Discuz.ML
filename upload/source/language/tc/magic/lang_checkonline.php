<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: lang_checkonline.php 27449 2012-02-01 05:32:35Z zhangguosheng $
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

$lang = array
(
	'checkonline_name' => '雷達卡',
	'checkonline_desc' => '查看某個用戶是否在線',
	'checkonline_targetuser' => '您要查看誰是否在線',
	'checkonline_info_nonexistence' => '請輸入用戶名',
	'checkonline_hidden_message' => '{username} 當前隱身，最後活動時間是 {time}',
	'checkonline_online_message' => '{username} 當前在線，最後活動時間是 {time}',
	'checkonline_offline_message' => '{username} 當前離線',
	'checkonline_info_noperm' => '對不起，您無權查看此人的 IP',

	'checkonline_notification' => '有人使用了{magicname}檢查您是否在線',
);

?>
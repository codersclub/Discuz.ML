<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: lang_admincp_login.php 27449 2012-02-01 05:32:35Z zhangguosheng $
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

$lang = array
(
	'login_title' => '登錄管理中心',
	'login_username' => '用戶名',
	'login_password' => '密　碼',

	'submit' => '提交',
	'forcesecques' => '必填項',
	'security_question' => '提　問',
	'security_answer' => '回　答',
	'security_question_0' => '無安全提問',
	'security_question_1' => '母親的名字',
	'security_question_2' => '爺爺的名字',
	'security_question_3' => '父親出生的城市',
	'security_question_4' => '您其中一位老師的名字',
	'security_question_5' => '您個人計算機的型號',
	'security_question_6' => '您最喜歡的餐館名稱',
	'security_question_7' => '駕駛執照最後四位數字',

	'login_tips' => 'Discuz! 是 <a href="http://www.tencent.com" target="_blank">騰訊</a> 旗下 <a href="http://www.comsenz.com" target="_blank">Comsenz</a> 公司推出的以社區為基礎的專業建站平台，幫助網站實現一站式服務。',
	'login_nosecques' => '您還沒有使用安全登錄，請在個人中心設置您的安全提問後，再訪問管理中心。您可以 <a href="forum.php?mod=memcp&action=profile&typeid=1" target="_blank">點擊這裡</a> 進入安全提問的設置。',

	'login_cplock' => '您的管理面板已經鎖定! <br>請在<b> {ltime} </b>秒以後重新訪問管理中心',
	'login_user_lock' => '由於您的登錄密碼錯誤次數過多,本次登錄請求已經被拒絕. 請 15 分鐘後重新嘗試',
	'login_cp_noaccess' => '<b>管理中心(或此項操作)尚未對您開放</b><br><br>您的此次操作已經記錄, 請勿非法嘗試',
	'noaccess' => '後台管理權限(或此項操作)尚未對您開放, 請聯繫站點管理員',


);

?>
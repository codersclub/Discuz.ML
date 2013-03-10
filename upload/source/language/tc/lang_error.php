<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: lang_error.php 27449 2012-02-01 05:32:35Z zhangguosheng $
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

$lang = array
(
	'System Message' => '站點信息',

	'config_notfound' => '配置文件 "config_global.php" 未找到或者無法訪問， 請確認您已經正確安裝了程序',
	'template_notfound' => '模版文件未找到或者無法訪問',
	'directory_notfound' => '目錄未找到或者無法訪問',
	'request_tainting' => '您當前的訪問請求當中含有非法字符，已經被系統拒絕',
	'db_help_link' => '點擊這裡尋求幫助',
	'db_error_message' => '錯誤信息',
	'db_error_sql' => '<b>SQL</b>: $sql<br />',
	'db_error_backtrace' => '<b>Backtrace</b>: $backtrace<br />',
	'db_error_no' => '錯誤代碼',
	'db_notfound_config' => '配置文件 "config_global.php" 未找到或者無法訪問。',
	'db_notconnect' => '無法連接到數據庫服務器',
	'db_security_error' => '查詢語句安全威脅',
	'db_query_sql' => '查詢語句',
	'db_query_error' => '查詢語句錯誤',
	'db_config_db_not_found' => '數據庫配置錯誤，請仔細檢查 config_global.php 文件',
	'system_init_ok' => '網站系統初始化完成，請<a href="index.php">點擊這裡</a>進入',
	'backtrace' => '運行信息',
	'error_end_message' => '<a href="http://{host}">{host}</a> 已經將此出錯信息詳細記錄, 由此給您帶來的訪問不便我們深感歉意',
	'mobile_error_end_message' => '<a href="http://{host}">{host}</a> 此錯誤給您帶來的不便我們深感歉意',

	'file_upload_error_-101' => '上傳失敗！上傳文件不存在或不合法，請返回。',
	'file_upload_error_-102' => '上傳失敗！非圖片類型文件，請返回。',
	'file_upload_error_-103' => '上傳失敗！無法寫入文件或寫入失敗，請返回。',
	'file_upload_error_-104' => '上傳失敗！無法識別的圖像文件格式，請返回。',
);

?>
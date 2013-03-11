<?php
//------------------------------------------------------
// INTERNATIONAL UCenter v.1.6.0 (Multilingual)
// by Valery Votintsev, codersclub.org
//------------------------------------------------------
// Based on UCenter 1.6.0, (c) Comsenz.inc, discuz.net
//------------------------------------------------------
// Traditional Chinese Language Pack
// by Valery Votintsev, codersclub.org
//------------------------------------------------------

$lang = array(
	'please_login'			=> '請重新登錄',
	'receiver_no_exists'		=> '收件人不存在，請重新填寫',
	'pm_save_succeed'		=> '短消息已保存到草稿箱',
	'pm_send_succeed'		=> '短消息成功發送',
	'pm_send_announce_succeed'	=> '公共消息成功發送',
	'pm_send_ignore'		=> '短消息發送失敗',
	'pm_delete_succeed'		=> '短消息成功刪除',
	'pm_delete_invalid'		=> '短消息無法刪除',
	'pm_unread'			=> '當前短消息標記為未讀狀態',
	'blackls_updated'		=> '忽略列表已更新',
	'pm_kickmember_succeed'		=> '踢出群聊成員成功 ',
	'pm_appendmember_succeed'	=> '群聊加入新成員成功 ',
	'pm_appendmember_invalid'	=> '加入新成員失敗',
	'pm_send_chatpmmemberlimit_error'	=> '超出了群聊的最大成員數目',
	'pm_send_pmfloodctrl_error'		=> '兩次發送短消息間隔過短，請稍後發',
	'pm_send_privatepmthreadlimit_error'	=> '超過24小時內兩人會話的最大數量',
	'pm_send_chatpmthreadlimit_error'	=> '超過24小時內群聊會話的最大數量',
	'pm_clear_processing'			=> '正在處理 從 current 到 next',
	'pm_clear_succeed'			=> '操作成功 ',
	'pm_delete_noselect'			=> '請選中短消息進行處理',

	'db_export_filename_invalid'	=> '您沒有輸入備份文件名或文件名中使用了敏感的擴展名，請返回修改。',
	'db_export_file_invalid'	=> '數據文件無法保存到服務器，請檢查目錄屬性。',
	'db_export_multivol_redirect'	=> '分卷備份: 數據文件 #$volume 成功創建，程序將自動繼續。',
	'db_export_multivol_succeed'	=> '恭喜您，全部備份文件成功創建，備份完成。',
	'db_import_multivol_succeed'	=> '分卷數據成功導入數據庫。',
	'db_import_file_illegal'	=> '數據文件不存在: 可能服務器不允許上傳文件或尺寸超過限制。',
	'db_import_multivol_redirect'	=> '分卷數據 #$volume 成功導入數據庫，程序將自動導入本次備份的其他分卷。',
	'db_back_api_url_invalid'	=> '無法訪問到該應用的備份接口，請拷貝 UCenter 根目錄下api/dbbak.php 到該應用的api目錄下',
	'delete_dumpfile_success'	=> '刪除數據備份文件成功 ',
	'delete_dumpfile_redirect'	=> '#$appname 下同名備份文件刪除成功，程序將自動刪除其他應用下的。',
	'dbback_error_code_1'		=> '無法創建目錄',
	'dbback_error_code_2'		=> '備份文件寫入失敗',
	'dbback_error_code_3'		=> 'sql執行錯誤',
	'dbback_error_code_4'		=> '目錄為空或者目錄不存在',
	'dbback_error_code_5'		=> '指定目錄沒有找到合法的備份文件',
	'dbback_error_code_6'		=> '備份文件缺失',
	'dbback_error_code_7'		=> '指定備份目錄不存在',
	'dbback_error_code_8'		=> '刪除指定的數據庫備份文件錯誤',
	'dbback_error_code_9'		=> '備份接口程序暫不支持此種應用的備份',
	'undefine_error'		=> '未知錯誤',

	'app_add_url_invalid'		=> '接口 URL 地址不合法',
	'app_add_ip_invalid'		=> 'IP 地址不合法',
	'app_add_name_invalid'		=> '應用名稱不合法或者與其他應用重複, 請返回更換',
	'read_plugin_invalid'		=> '讀取插件失敗',

	'syncappcredits_updated'	=> '成功同步應用的積分設置',

	'note_succeed'			=> '通知成功 ',
	'note_false'			=> '通知失敗',
	'no_permission_for_this_module'	=> '沒有權限管理改模塊',
	'admin_user_exists'		=> '該用戶名已經存在，請返回嘗試使用其他用戶名。',

	'mail_succeed'			=> '郵件發送成功 ',
	'mail_false'			=> '郵件發送失敗',
	
	'user_edit_noperm'		=> '您沒權限編輯此用戶',

	'appid_invalid'			=> '應用id不合法',
	'app_apifile_not_exists'	=> '文件 #$apifile 不存在，請返回檢查應用的路徑是否正確。',
	'app_apifile_too_low'		=> '接口文件 #$apifile 版本太低',
	'app_path_not_exists'		=> '該路徑不存在，請返回檢查',
	'pm_send_seccode_error'		=> '驗證碼輸入錯誤',
	'pm_send_regdays_error'		=> '註冊 #$pmsendregdays 天之內不能發送短消息',
	'pm_send_limit1day_error'	=> '對不起，超出了您24小時最大發送短消息數，請返回。',
	'pm_send_floodctrl_error'	=> '對不起，您兩次發送短消息間隔太短，請返回。',
	
	'file_check_failed'		=> '校驗文件不存在，無法校驗',
);
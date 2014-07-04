<?php

/**
 *      $Id: lang_restore.php by Valery Votintsev, codersclub.org
 */

$lang = array(

//---------------------------
//utility/restore.php

	'restore_title'		=> 'Discuz! 數據恢復工具',//'Discuz! data recovery tool',
	'restore_questions'	=> '恢復當中有任何問題請訪問技術支持站點',//'For any Recovering questions, please visit the support site',
	'browser_jump'		=> '瀏覽器會自動跳轉頁面，無需人工干預。除非當您的瀏覽器長時間沒有自動跳轉時，請點擊這裡',//'Browser will automatically jump page, without human intervention. Unless a long time when your browser does not support frames, please click here',
	'ok'			=> '確定',//'OK',
	'cancel'		=> '取消',//'Cancel',
	'filename'		=> '文件名稱',//'File Name',

	'director'		=> '所在目錄',//'Directory',
	'version'		=> '版本',//'Version',
	'time'			=> '備份時間',//'Backup Time',
	'type'			=> '類型',//'Type',
	'size'			=> '尺寸',//'Size',
	'db_method'		=> '方式',//'Method',
	'db_volume'		=> '卷數',//'Number of volumes',
	'import'		=> '導入',//'Import',
	'different_dbcharset_tablepre'	=> '檢測到導入的備份數據與配置文件的{diff} 不同，您還要繼續運行此程序嗎？',//'Import the backup data and the configuration file have different values: {diff}. Are you shure to continue to run this program?',
	'db_import_tips'	=> '本功能在恢復備份數據的同時，將全部覆蓋原有數據，請確定恢復前已將論壇關閉，恢復全部完成後可以將論壇重新開放。<br />您可以通過數據備份管理功能查看站點的備份文件的詳細信息，刪除過期的備份,並導入需要的備份。<br /><span class="red">恢復數據的整個過程會在一個新頁面完成，您成功恢復數據後請務必及時刪除restore.php文件。</span><br />',//'This feature is in restoring backup data at the same time, will be fully covered by existing data, make sure the recovery before the forum shut down, restored after completion re-opening the forum.<br />You can view the site data backup management Details of the backup files, delete outdated backup, and import the necessary backup.<br /><span class="red">The entire process of restoring data to a new page will be completed successfully recover your data, please be sure to promptly remove restore.php file.</span><br />',
	'db_export_discuz'	=> 'Discuz! 數據(不含UCenter)',//'Discuz! Data (Without UCenter)',
	'db_export_discuz_uc'	=> 'Discuz! 和 UCenter 數據',//'Discuz! and UCenter Data',
	'db_multivol'		=> '多卷',//'Multi-volume',
	'db_import_unzip'	=> '解壓縮',//'Decompress',
	'db_export_zip'		=> '壓縮備份',//'Backup compress',
	'db_zip'		=> 'ZIP',
	'db_shell'		=> 'Shell',
	'unknown'		=> '未知',//'Unknown',
	'backup_file_unexist'	=> '備份文件不存在',//'Backup file does not exist.',
	'connect_error'		=> '連接數據庫失敗，請您查看數據庫配置文件config/config_global.php和config/config_ucenter.php是否存在以及配置是否正確',//'Database connection error, please view the database configuration file config/config_global.php and config/config_ucenter.php exists and correctly configured',
	'dbcharsetdiff'		=> ' 數據庫字符集($_config[\'db\'][\'1\'][\'dbcharset\'])',//' Database character set ($_config[\'db\'][\'1\'][\'dbcharset\'])',
	'tableprediff'		=> ' 表前綴($_config[\'db\'][\'1\'][\'tablepre\'])',//'Table prefix ($_config[\'db\'][\'1\'][\'tablepre\'])',
	'database_import_multivol_succeed'	=> '分卷數據成功導入站點數據庫<br />請在後台更新緩存<br /><span class="red">請盡快刪除restore.php文件，以免對數據造成影響</span>',//'Multi-Volume backup imported into the database successfully<br />Please update the cache in the background<br /><span class="red">Remove as soon as possible the file restore.php, so as not to impact on the data</span>',
	'database_import_file_illegal'		=> '數據文件不存在：可能服務器不允許上傳文件或文件大小超過限制',//'Data file does not exist: It may be server does not allow to upload files or file size exceeds limit',
	'database_import_multivol_prompt'	=> '分卷數據第一卷成功導入數據庫，您需要自動導入本次備份的其他分卷嗎？',//'Volume data imported into the database successfully, do you need to automatically import a backup to other volumes in this backup?',
	'database_import_succeed'		=> '數據已成功導入站點數據庫<br />請在後台更新緩存<br /><span class="red">請盡快刪除restore.php文件，以免對數據造成影響</span>',//'Data into the site database has been successfully<br />Please update the cache in the background<br /><span class="red">Remove as soon as possible the file restore.php, so as not to impact on the data</span>',
	'database_import_format_illegal'	=> '數據文件非 Discuz! 格式，無法導入',//'Data file is non-Discuz! format, can not be imported',
	'database_import_unzip'			=> '{info}<br />備份文件解壓縮完畢，您需要自動導入備份嗎？導入後解壓縮的文件將會被刪除',//'{info}<br />Unzip the backup file is completed. Do you need to automatically import the backup? After importing the extracted files will be deleted',
	'database_import_multivol_unzip'	=> '{info}<br />備份文件解壓縮完畢，您需要自動解壓縮其他的分卷文件嗎？',//'{info}<br />Unzip the backup sub-volume file is completed. Do you need to self-extract other sub-volume?',
	'database_import_multivol_unzip_redirect'	=> '數據文件 #{multivol} 解壓縮成功，程序將自動繼續',//'Data file # {multivol} successfully extracted, the program will automatically continue',
	'database_import_confirm'		=> '導入和當前 Discuz! 版本不一致的數據極有可能產生無法解決的故障，您確定繼續嗎？',//'Imported file data and current Discuz! Version are incompatible and may cause a failure',
	'database_import_confirm_sql'		=> '您確定導入該備份嗎？',//'Are you sure you want to import the backup?',
	'database_import_confirm_zip'		=> '您確定解壓該備份嗎？',//'Are you sure you want to unzip the backup?',
	'database_import_multivol_confirm'	=> '所有分卷文件解壓縮完畢，您需要自動導入備份嗎？導入後解壓縮的文件將會被刪除',//'Extract all the sub-volume file is completed, you need to automatically import the backup? After importing the extracted files will be deleted',
	'database_import_multivol_redirect'	=> '數據文件 #{volume} 成功導入，程序將自動繼續',//'Data file # {volume} successfully imported, the program will automatically continue',
	'error_quit_msg'			=> '必須解決以上問題，才能繼續恢復數據',//'Solve the above problem, before continue tthe data recover',
	'restored_error'			=> '恢復數據功能鎖定，已經恢復過了，如果您確定要恢復數據，請到服務器上刪除./data/restore.lock',//'Recover data function is locked. If you really want to recover data, please go to the server and delete the file ./data/restore.lock',

);
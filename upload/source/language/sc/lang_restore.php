<?php

/**
 *      $Id: lang_restore.php by Valery Votintsev, codersclub.org
 *	For /utility/restore.php
 */

$lang = array(
	'filename'		=> '文件名称',//'File Name',
	'director'		=> '所在目录',//'Directory',
	'version'		=> '版本',//'Version',
	'time'			=> '备份时间',//'Backup Time',
	'type'			=> '类型',//'Type',
	'size'			=> '尺寸',//'Size',
	'db_method'		=> '方式',//'Method',
	'db_volume'		=> '卷数',//'Number of volumes',
	'import'		=> '导入',//'Import',
	'different_dbcharset_tablepre'	=> '检测到导入的备份数据与配置文件的{diff} 不同，您还要继续运行此程序吗？',//'Import the backup data and the configuration file have different values: {diff}. Are you shure to continue to run this program?',
	'db_import_tips'	=> '本功能在恢复备份数据的同时，将全部覆盖原有数据，请确定恢复前已将论坛关闭，恢复全部完成后可以将论坛重新开放。<br />您可以通过数据备份管理功能查看站点的备份文件的详细信息，删除过期的备份,并导入需要的备份。<br /><span class="red">恢复数据的整个过程会在一个新页面完成，您成功恢复数据后请务必及时删除restore.php文件。</span><br />',//'This feature is in restoring backup data at the same time, will be fully covered by existing data, make sure the recovery before the forum shut down, restored after completion re-opening the forum.<br />You can view the site data backup management Details of the backup files, delete outdated backup, and import the necessary backup.<br /><span class="red">The entire process of restoring data to a new page will be completed successfully recover your data, please be sure to promptly remove restore.php file.</span><br />',
	'db_export_discuz'	=> 'Discuz! 数据(不含UCenter)',//'Discuz! Data (Without UCenter)',
	'db_export_discuz_uc'	=> 'Discuz! 和 UCenter 数据',//'Discuz! and UCenter Data',
	'db_multivol'		=> '多卷',//'Multi-volume',
	'db_import_unzip'	=> '解压缩',//'Decompress',
	'db_export_zip'		=> '压缩备份',//'Backup compress',
	'db_zip'		=> 'ZIP',
	'db_shell'		=> 'Shell',
	'unknown'		=> '未知',//'Unknown',
	'backup_file_unexist'	=> '备份文件不存在',//'Backup file does not exist.',
	'connect_error'		=> '连接数据库失败，请您查看数据库配置文件config/config_global.php和config/config_ucenter.php是否存在以及配置是否正确',//'Database connection error, please view the database configuration file config/config_global.php and config/config_ucenter.php exists and correctly configured',
	'dbcharsetdiff'		=> ' 数据库字符集($_config[\'db\'][\'1\'][\'dbcharset\'])',//' Database character set ($_config[\'db\'][\'1\'][\'dbcharset\'])',
	'tableprediff'		=> ' 表前缀($_config[\'db\'][\'1\'][\'tablepre\'])',//'Table prefix ($_config[\'db\'][\'1\'][\'tablepre\'])',
	'database_import_multivol_succeed'	=> '分卷数据成功导入站点数据库<br />请在后台更新缓存<br /><span class="red">请尽快删除restore.php文件，以免对数据造成影响</span>',//'Multi-Volume backup imported into the database successfully<br />Please update the cache in the background<br /><span class="red">Remove as soon as possible the file restore.php, so as not to impact on the data</span>',
	'database_import_file_illegal'		=> '数据文件不存在：可能服务器不允许上传文件或文件大小超过限制',//'Data file does not exist: It may be server does not allow to upload files or file size exceeds limit',
	'database_import_multivol_prompt'	=> '分卷数据第一卷成功导入数据库，您需要自动导入本次备份的其他分卷吗？',//'Volume data imported into the database successfully, do you need to automatically import a backup to other volumes in this backup?',
	'database_import_succeed'		=> '数据已成功导入站点数据库<br />请在后台更新缓存<br /><span class="red">请尽快删除restore.php文件，以免对数据造成影响</span>',//'Data into the site database has been successfully<br />Please update the cache in the background<br /><span class="red">Remove as soon as possible the file restore.php, so as not to impact on the data</span>',
	'database_import_format_illegal'	=> '数据文件非 Discuz! 格式，无法导入',//'Data file is non-Discuz! format, can not be imported',
	'database_import_unzip'			=> '{info}<br />备份文件解压缩完毕，您需要自动导入备份吗？导入后解压缩的文件将会被删除',//'{info}<br />Unzip the backup file is completed. Do you need to automatically import the backup? After importing the extracted files will be deleted',
	'database_import_multivol_unzip'	=> '{info}<br />备份文件解压缩完毕，您需要自动解压缩其他的分卷文件吗？',//'{info}<br />Unzip the backup sub-volume file is completed. Do you need to self-extract other sub-volume?',
	'database_import_multivol_unzip_redirect'	=> '数据文件 #{multivol} 解压缩成功，程序将自动继续',//'Data file # {multivol} successfully extracted, the program will automatically continue',
	'database_import_confirm'		=> '导入和当前 Discuz! 版本不一致的数据极有可能产生无法解决的故障，您确定继续吗？',//'Imported file data and current Discuz! Version are incompatible and may cause a failure',
	'database_import_confirm_sql'		=> '您确定导入该备份吗？',//'Are you sure you want to import the backup?',
	'database_import_confirm_zip'		=> '您确定解压该备份吗？',//'Are you sure you want to unzip the backup?',
	'database_import_multivol_confirm'	=> '所有分卷文件解压缩完毕，您需要自动导入备份吗？导入后解压缩的文件将会被删除',//'Extract all the sub-volume file is completed, you need to automatically import the backup? After importing the extracted files will be deleted',
	'database_import_multivol_redirect'	=> '数据文件 #{volume} 成功导入，程序将自动继续',//'Data file # {volume} successfully imported, the program will automatically continue',
	'error_quit_msg'			=> '必须解决以上问题，才能继续恢复数据',//'Solve the above problem, before continue the data recover',
	'restored_error'			=> '恢复数据功能锁定，已经恢复过了，如果您确定要恢复数据，请到服务器上删除./data/restore.lock',//'Recover data function is locked. If you really want to recover data, please go to the server and delete the file ./data/restore.lock',

// Added by Valery Votintsev
	'restore_title'		=> 'Discuz! 数据恢复工具',//'Discuz! data recovery tool',
	'restore_questions'	=> '恢复当中有任何问题请访问技术支持站点',//'For any Recovering questions, please visit the support site',
	'browser_jump'		=> '浏览器会自动跳转页面，无需人工干预。除非当您的浏览器长时间没有自动跳转时，请点击这里',//'Browser will automatically jump page, without human intervention. Unless a long time when your browser does not support frames, please click here',
	'ok'			=> '确定',//'OK',
	'cancel'		=> '取消',//'Cancel',

);
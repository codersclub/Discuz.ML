<?php
//------------------------------------------------------
// INTERNATIONAL UCenter v.1.6.0 (Multilingual)
// by Valery Votintsev, codersclub.org
//------------------------------------------------------
// Based on UCenter 1.6.0, (c) Comsenz.inc, discuz.net
//------------------------------------------------------
// Simlified Chinese Language Pack
// by Valery Votintsev, codersclub.org
//------------------------------------------------------

$lang = array(
	'please_login' => '请重新登录',
	'receiver_no_exists' => '收件人不存在，请重新填写',
	'pm_save_succeed' => '短消息已保存到草稿箱',
	'pm_send_succeed' => '短消息成功发送',
	'pm_send_announce_succeed' => '公共消息成功发送',
	'pm_send_ignore' => '短消息发送失败',
	'pm_delete_succeed' => '短消息成功删除',
	'pm_delete_invalid' => '短消息无法删除',
	'pm_unread' => '当前短消息标记为未读状态',
	'blackls_updated' => '忽略列表已更新',
	'pm_kickmember_succeed' => '踢出群聊成员成功 ',
	'pm_appendmember_succeed' => '群聊加入新成员成功 ',
	'pm_appendmember_invalid' => '加入新成员失败',
	'pm_send_chatpmmemberlimit_error' => '超出了群聊的最大成员数目',
	'pm_send_pmfloodctrl_error' => '两次发送短消息间隔过短，请稍后发',
	'pm_send_privatepmthreadlimit_error' => '超过24小时内两人会话的最大数量',
	'pm_send_chatpmthreadlimit_error' => '超过24小时内群聊会话的最大数量',
	'pm_clear_processing' => '正在处理 从 current 到 next',
	'pm_clear_succeed' => '操作成功 ',
	'pm_delete_noselect' => '请选中短消息进行处理',

	'db_export_filename_invalid' => '您没有输入备份文件名或文件名中使用了敏感的扩展名，请返回修改。',
	'db_export_file_invalid' => '数据文件无法保存到服务器，请检查目录属性。',
	'db_export_multivol_redirect' => '分卷备份: 数据文件 #$volume 成功创建，程序将自动继续。',
	'db_export_multivol_succeed' => '恭喜您，全部备份文件成功创建，备份完成。',
	'db_import_multivol_succeed' => '分卷数据成功导入数据库。',
	'db_import_file_illegal' => '数据文件不存在: 可能服务器不允许上传文件或尺寸超过限制。',
	'db_import_multivol_redirect' => '分卷数据 #$volume 成功导入数据库，程序将自动导入本次备份的其他分卷。',
	'db_back_api_url_invalid' => '无法访问到该应用的备份接口，请拷贝 UCenter 根目录下api/dbbak.php 到该应用的api目录下',
	'db_back_dos8p3_failed' => '服务器开启了 DOS 8.3 文件名支持，为避免可能发生的数据库爆破风险，不允许在线备份数据库',
	'delete_dumpfile_success' => '删除数据备份文件成功 ',
	'delete_dumpfile_redirect' => '#$appname 下同名备份文件删除成功，程序将自动删除其他应用下的。',
	'dbback_error_code_1' => '无法创建目录',
	'dbback_error_code_2' => '备份文件写入失败',
	'dbback_error_code_3' => 'sql执行错误',
	'dbback_error_code_4' => '目录为空或者目录不存在',
	'dbback_error_code_5' => '指定目录没有找到合法的备份文件',
	'dbback_error_code_6' => '备份文件缺失',
	'dbback_error_code_7' => '指定备份目录不存在',
	'dbback_error_code_8' => '删除指定的数据库备份文件错误',
	'dbback_error_code_9' => '备份接口程序暂不支持此种应用的备份',
	'undefine_error' => '未知错误',

	'app_add_url_invalid' => '接口 URL 地址不合法',
	'app_add_ip_invalid' => 'IP 地址不合法',
	'app_add_name_invalid' => '应用名称不合法或者与其他应用重复, 请返回更换',
	'read_plugin_invalid' => '读取插件失败',

	'syncappcredits_updated' => '成功同步应用的积分设置',

	'note_succeed' => '通知成功 ',
	'note_false' => '通知失败',
	'no_permission_for_this_module' => '没有权限管理改模块',
	'admin_user_exists' => '该用户名已经存在，请返回尝试使用其他用户名。',
	'admin_mobile_exists' => '该安全手机号已经存在，请返回尝试使用其他安全手机号。',

	'mail_succeed' => '邮件发送成功 ',
	'mail_false' => '邮件发送失败',

	'user_edit_noperm' => '您没权限编辑此用户',

	'appid_invalid' => '应用id不合法',
	'app_apifile_not_exists' => '文件 #$apifile 不存在，请返回检查应用的路径是否正确。',
	'app_apifile_too_low' => '接口文件 #$apifile 版本太低',
	'app_path_not_exists' => '该路径不存在，请返回检查',
	'pm_send_seccode_error' => '验证码输入错误',
	'pm_send_regdays_error' => '注册 #$pmsendregdays 天之内不能发送短消息',
	'pm_send_limit1day_error' => '对不起，超出了您24小时最大发送短消息数，请返回。',
	'pm_send_floodctrl_error' => '对不起，您两次发送短消息间隔太短，请返回。',

	'file_check_failed' => '校验文件不存在，无法校验',
	'replacemykey_succeed' => '密钥更新成功，请更新缓存并检查每个下级应用的状态',
	'replacemykey_false' => '密钥更新失败，请检查文件是否可写或数据库是否正常，如有必要请重新配置每个下级应用的 UC_KEY 以保证正常工作',
	'replacemykey_no_confirm' => '请您确认风险提示后再继续操作',
);
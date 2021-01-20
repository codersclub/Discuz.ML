<?php

/*vot*/	include_once UC_ROOT.'./language/'.UC_LANG.'/templates.lang.php';
	'copyright' => 'Copyright &copy; 2001-'.date('Y').' Tencent Cloud.',


	'setting_insecureuserdelete' => '启用不安全的删除用户接口',
	'setting_insecureuserdelete_comment' => '是否启用不安全的删除用户接口，建议只有必须使用此接口且无法改造应用时开启',
	'home_envstatus' => '运行环境检测',

	'envstatus_result' => '检测结果',
	'envstatus_ver_too_low' => '您当前系统环境内的 $envstatus[req] 版本 ($envstatus[now_ver]) 过低，程序无法按预期正常运行。我们强烈建议您升级到 $envstatus[sug_ver] 版本，程序正常运行最低要求为 $envstatus[req_ver] 版本。',
	'envstatus_not_found' => '您当前系统环境内未安装或开启 $envstatus[req] 模块，程序无法按预期正常运行。我们强烈建议您安装或开启此模块，以满足程序正常运行的最低要求。',
	'envstatus_ok' => '您当前系统环境适合当前版本的 UCenter $envstatus[version] 。',
<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *      Convert Language File
 *      $Id: utility/convert/language/lang.php by Valery Votintsev at sources.ru
 */
$language = array(

	'config_dbhost'		=> 'Database server',//'数据库服务器',
	'config_dbuser'		=> 'Database username',//'数据库用户名',
	'config_dbpw'		=> 'Database password',//'数据库密码',
	'config_dbname'		=> 'Database name',//'数据库',
	'config_tablepre'	=> 'Table prefix',//'数据表前缀',
	'config_dbcharset'	=> 'Database Charset (optional)',//'数据表字符集 (可选)',
	'config_pconnect'	=> 'Persistent connection',//'持久连接',

	'config_type_source'	=> 'Source Database settings (the original version of the database)',//'数据源服务器设置 (原始版本的数据库)',
	'config_type_target'	=> 'Target database settings (correctly installed Discuz! X database)',//'目标服务器设置 (已正确安装 Discuz! X 的数据库)',
	'config_type_ucenter'	=> 'UCenter server settings (correctly installed UCenter database)',//'UCenter 服务器设置 (已正确安装 UCenter 的数据库)',

	'config_type_target_comment'	=> 'Note: The target database will be replaced or updated the data, as these contain important content, please make a backup before',//'注意：目标数据库的数据将会被替换或者更新,如当中含有重要内容,请先备份',
	'config_write_error'	=> 'data/ directory is not writable, please ensure that this directory have write permissions, set the 777 rights',//'转换程序的 data/ 目录不可写,请确保此目录的可写权限,设置 777 属性',

	'config_save'		=> 'Save the server settings',//'保存服务器设置',
	'config_usergroup'	=> 'User group configuration',//'用户组配置',
	'config_from_usergroup'	=> 'Source user group',//'来源用户组',
	'config_target_usergroup'	=> 'Target user group',//'目标用户组',
	'config_extcredits'	=> 'Extended points configuration',//'积分配置',
	'config_credit'		=> 'points',//'积分',
	'config_from_credit'	=> 'Source points',//'来源积分',
	'config_target_credit'	=> 'Target points',//'目标积分',
	'config_experience'	=> 'Experience value',//'经验值',
	'config_convert_forum'	=> 'Forum data conversion configuration',//'数据转换配置',
	'config_from_data'	=> 'Source data',//'源数据',
	'config_target_forum'	=> 'Target forum',//'目标版块',
	'config_poll'		=> 'Polls',//'投票',
	'config_event'		=> 'Events',//'活动',
	'config_auto_create'	=> 'Auto-create',//'自动创建',
	'config_convert'	=> 'Save converted configuration',//'保存转换配置',

	'submit'		=> 'Submit',//'提  交',

	'message_return'	=> 'Go back',//'返回上一步',
	'message_stop'		=> 'Stop',//'停止运行',
	'message_not_enabled_extcredit'	=> 'In the new system should be open at least points features, otherwise the next step can not be converted',//'新系统中至少应开启一个积分,否则无法进行下一步转换',

	'ok'			=> '&nbsp;&nbsp;OK&nbsp;&nbsp;',//'&nbsp;确&nbsp;&nbsp;定&nbsp;',
	'cancel'		=> '&nbsp;Cancel&nbsp;',//'&nbsp;取&nbsp;消&nbsp;',
	'return'		=> 'Return',//'请返回',
	'tips'			=> 'Tips',//'技巧提示',
	'tips_pconnect'		=> 'Note: If the source database and the target database are placed on the same server, set this to 0, otherwise set to 1',//'注意：如果源数据库与目标数据库在同一服务器，该项必须设置为0，否则设置为1',

	'mysql_config_error'	=> 'MySQL configuration can not be empty',//'配置不能为空',
	'mysql_connect_error'	=> 'MySQL connection failed',//'连接失败',

	'config_success'	=> 'Server configured successfully, and now going to the next step',//'服务器配置成功,现在进行下一步',

	'setting_tips'		=> 'Modifying the conversion settings may cause a lower conversion efficiency or fail to complete the conversion, so please be careful to modify',//'修改转换程序设置可能导致您的转换效率降低或者无法正常完成转换,所以请您务必小心修改',

	'mysql_connect_error_1'	=> 'Database connection error, check whether the database account and password are correct.',//'数据库连接错误,请检查数据库密码和帐号是否正确',
	'mysql_connect_error_2'	=> 'Data tables check failed. May be, you have not correctly filled out the "table prefix", or you have not installed the version of the program',//'数据表检查错误,您可能没有正确填写 “数据表前缀”或者您尚未安装该版本的程序',

//---------------------------
// Added by Valery Votintsev
//---------------------------
	'invalid_request'	=> 'Illegal request',//'非法请求',

//---------------------------
//convert/include/do_config.inc.php

	'config_delete'			=> 'If you can not display the program settings, delete the file data/config.inc.php',//'如果无法显示设置项目,请删除文件 data/config.inc.php',

//---------------------------
//convert/include/do_convert.inc.php

	'select_convert_process'	=> 'Please first select the conversion process',//'请首先选择转换程序',
	'update_start_time'	=> 'Update start time:',//'升级开始时间：',
	'elapsed_time'		=> 'Update procedure has been carried out',//'升级程序已经执行了',
	'days'			=> 'Days',//'天',
	'hours'			=> 'Hours',//'小时',
	'minutes'		=> 'Minutes',//'分',
	'seconds'		=> 'Seconds',//'秒',
	'progress'		=> 'Conversion progress',//'目前正在执行转换程序',
	'progress_intro1'	=> 'The conversion process needs to redirect several times, do not close your browser!',//'转换过程中需要多次跳转,请勿关闭浏览器.',
	'progress_intro2'	=> 'If the program is interrupted or need to re-start the current program, please click',//'如果程序中断或者需要重新开始当前程序,请点击',
	'restart'		=> 'Restart',//'重新开始',
	'process_finished'	=> 'conversion process is finished, now jump to the next process',//'转换程序 执行完毕, 现在跳转到下一个程序',
	'process_not_found'	=> 'Data transfer interrupted! Conversion process can not be found: ',//'数据转换中断! 无法找到转换程序 ',
	'process_all_finished'	=> 'All the the conversion processes finished',//'转换程序全部运行完毕',

//---------------------------
//convert/include/do_finish.inc.php

	'conversion_completed'	=> 'You have successfully completed the data conversion!',//'您已经顺利的完成了数据转换!',
	'start_time'		=> 'The upgrade start time',//'本次升级开始时间',
	'end_time'		=> 'The upgrade end of time',//'本次升级结束时间',
	'execution_time'	=> 'Upgrade total execution time',//'升级累计执行时间',
	'update_more'		=> 'Under normal circumstances, you may also need to follow the prompts to upgrade, so that normal operation of your new program',//'通常情况下,您可能还需要按照以下提示继续进行升级,从而使您的新程序正常运行',
	'read_me'		=> 'Finally, read the instructions (readme)',//'最后的说明(readme)',

//---------------------------
//convert/include/do_select.inc.php

	'you_selected'		=> 'You have selected',//'您选择了',
	'process_number'	=> 'conversion processes, the following start conversion',//'个转换程序,下面开始转换',
	'process_intro'		=> 'Usually, all the data you need to perform the following conversion table, unless you are in the course of an unexpected disruption or have special needs, choose only if necessary',//'通常情况下,您需要执行下面所有数据表的转换,除非您在执行过程中出现了意外的中断或者有特殊需求,才进行必要的选择',
	'process_configure'	=> 'Configure the conversion process',//'配置转换过程',
	'select_all'		=> 'Select All',//'全选',
	'run_before_convert'	=> 'Run programs before the conversion',//'转换之前运行的程序',
	'table_convert'		=> 'Table conversion process',//'数据表转换程序',
	'other_convert'		=> 'Other supporting conversion process',//'其他辅助转换程序',
	'start_conversion'	=> 'Start conversion',//'开始转换',

//---------------------------
//convert/include/do_setting.inc.php

	'edit_file'		=> 'Edit the file',//'编辑配置文件',
	'r/o'			=> ' Read only ',//' 只读 ',
	'settings_saved_ok'	=> 'Settings have been updated and saved successfully',//'设置已经更新完毕并成功保存',
	'file_is_ro'		=> 'The settings file is read-only mode, can not save, go back',//'该设置文件为只读文件,无法保存,请返回',
	'settings_not_changed'	=> 'You did not changed any settings',//'您没有改变任何设置',

//---------------------------
//convert/include/do_source.inc.php

	'update_permissions'	=> 'To begin the conversion, make sure the program data directory and files under the directory have write permissions, or the program can not save converted settings',//'在开始转换之前,请确保本程序目录下的 data 目录为可写权限,否则无法存储转换设置',
	'update_forum_too'	=> 'If there Discuz! and UChome also need to upgrade, be sure to upgrade Discuz! Forum',//'如果有Discuz!和UChome同时需要升级,请务必先升级Discuz!论坛',
	'update_choose_process'	=> 'Please choose correctly the conversion process, or it may cause can not be converted successfully',//'请正确选择转换程序,否则可能造成无法转换成功',
	'update_more_space'	=> 'The conversion process does not destroy the original data, so the conversion requires 2 times more space than the original data space',//'本转换程序不会破坏原始数据,所以转换需要2倍于原始数据空间',
	'source_version'	=> 'Original version',//'原始版本',
	'target_version'	=> 'Target version',//'目标版本',
	'introduction'		=> 'Introduction',//'简介',
	'description'		=> 'Description',//'说明',
	'settings'		=> 'Settings',//'设置',
	'view_readme'		=> 'View Read.me',//'查看',
	'change'		=> 'Change',//'修改',
	'start'			=> 'Start',//'开始',

//---------------------------
//convert/include/global.func.php

	'jan'	=> ' January ',//'一月',
	'feb'	=> ' February ',//'二月',
	'mar'	=> ' March ',//'三月',
	'apr'	=> ' April ',//'四月',
	'may'	=> ' May ',//'五月',
	'jun'	=> ' June ',//'六月',
	'jul'	=> ' July ',//'七月',
	'aug'	=> ' August ',//'八月',
	'sep'	=> ' September ',//'九月',
	'oct'	=> ' October ',//'十月',
	'nov'	=> ' November ',//'十一月',
	'dec'	=> ' December ',//'十二月',
	'am'	=> ' AM ',//'上午',
	'pm'	=> ' PM ',//'下午',

	'prompt'		=> 'Prompt',//'系统提示',
	'dzx_update'		=> 'Discuz!X Products Upgrade/Conversion',//'Discuz! X 系列产品升级转换',
	'dzx_update_wizard'	=> 'Discuz!X Products Upgrade/Conversion Wizard',//'Discuz! X 系列产品升级/转换 向导',
	'step1'		=> '1. Select Conversion Type',//'1.选择产品转换程序',
	'step2'		=> '2. Setup the Server',//'2.设置服务器信息',
	'step3'		=> '3. Setup the Conversion',//'3.配置转换过程',
	'step4'		=> '4. Perform the data conversion',//'4.执行数据转换',
	'step5'		=> '5. Conversion is completed',//'5.转换完成',

//---------------------------
//convert/source/d7.2_x1.0/pollvoter.php++

	'continue_convert_table '	=> 'Continue to convert the data table ',//'继续转换数据表 ',
	'was_converted'			=> '. Total converted: ',//', 已转换 ',
	'records'			=> 'records',//'条记录',


//---------------------------
//convert/source/d7.2_x1.0/table/access.php

	'from'	=> ' from ',//' 从 ',
	'to'	=> ' to ',//' 至 ',
	'lines'	=> ' lines.',//' 行',

//---------------------------
//convert/source/d7.2_x1.0/threadtype.php++

	'convert_thread_type'	=> 'Convert the thread type table',//'继续转换主题分类数据表',

//---------------------------
//convert/source/d7.2_x1.5/table/activityapplies.php

	'contacts'	=> ' Contacts: ',//' 联系方式:',

//---------------------------
//convert/source/d7.2_x2.0/table/moderators.php

	'converted'	=> ', Converted ',//'，已转换',
	'records'	=> ' records.',//'条记录。',

//---------------------------
//convert/source/uch2.0_x1.0/table/home_event.php++

	'uchome_data'	=> 'UCHome data',//'UCHome数据',
	'uchome_events'	=> 'UCHome events',//'UCHome活动',
	'uchome_events_convert'	=> 'Convert the UCenter Home events content',//'从 UCenter Home 转移过来的活动内容',

//---------------------------
//convert/source/uch2.0_x1.0/table/home_group.php++

	'group_home'	=> 'Group Home',//'空间群组',

//---------------------------
//convert/source/uch2.0_x1.0/table/home_magic.php++

	'user_magic'	=> ' User Magic',//'用户道具',
	'magic_records'	=> 'Magic get records',//'道具收入记录',
	'magic_use_records'	=> 'Using magic records',//'道具使用记录',

//---------------------------
//convert/source/uch2.0_x1.0/table/home_poll.php++

	'uchome_polls'	=> 'UCHome polls data',//'UCHome投票数据',
	'uchome_polls_convert'	=> 'Convert the UCenter Home poll content',//'从 UCenter Home 转移过来的投票内容',

//---------------------------
//convert/source/uch2.0_x1.0/table/home_space.php++

	'space_home_error'	=> 'Error: empty space points. Configure the space corresponding points info',//'发生错误,请配置积分对应关系信息',
);
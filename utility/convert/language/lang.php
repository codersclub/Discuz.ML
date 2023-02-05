<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *      Convert Language File by Valery Votintsev, codersclub.org
 *      $Id: source/language/sc/lang_convert.php
 */
$language = array(

	'config_dbhost'		=> '数据库服务器',//'Database server',
	'config_dbuser'		=> '数据库用户名',//'Database username',
	'config_dbpw'		=> '数据库密码',//'Database password',
	'config_dbname'		=> '数据库',//'Database name',
	'config_tablepre'	=> '数据表前缀',//'Table prefix',
	'config_dbcharset'	=> '数据表字符集 (可选)',//'Database Charset (optional)',
	'config_pconnect'	=> '持久连接',//'Persistent connection',

	'config_type_source'	=> '数据源服务器设置 (原始版本的数据库)',//'Source Database settings (the original version of the database)',
	'config_type_target'	=> '目标服务器设置 (已正确安装 Discuz! X 的数据库)',//'Target database settings (correctly installed Discuz! X database)',
	'config_type_ucenter'	=> 'UCenter 服务器设置 (已正确安装 UCenter 的数据库)',//'UCenter server settings (correctly installed UCenter database)',

	'config_type_target_comment'	=> '注意：目标数据库的数据将会被替换或者更新,如当中含有重要内容,请先备份',//'Note: The target database will be replaced or updated the data, as these contain important content, please make a backup before',
	'config_write_error'	=> '转换程序的 data/ 目录不可写,请确保此目录的可写权限,设置 777 属性',//'data/ directory is not writable, please ensure that this directory have write permissions, set the 777 rights',

	'config_save'		=> '保存服务器设置',//'Save the server settings',
	'config_usergroup'	=> '用户组配置',//'User group configuration',
	'config_from_usergroup'	=> '来源用户组',//'Source user group',
	'config_target_usergroup'	=> '目标用户组',//'Target user group',
	'config_extcredits'	=> '积分配置',//'Extended credits configuration',
	'config_credit'		=> '积分',//'points',
	'config_from_credit'	=> '来源积分',//'Source points',
	'config_target_credit'	=> '目标积分',//'Target points',
	'config_experience'	=> '经验值',//'Experience value',
	'config_convert_forum'	=> '数据转换配置',//'Forum data conversion configuration',
	'config_from_data'	=> '源数据',//'Source data',
	'config_target_forum'	=> '目标版块',//'Target forum',
	'config_poll'		=> '投票',//'Polls',
	'config_event'		=> '活动',//'Events',
	'config_auto_create'	=> '自动创建',//'Auto-create',
	'config_convert'	=> '保存转换配置',//'Save converted configuration',

	'submit'		=> '提  交',//'Submit',

	'message_return'	=> '返回上一步',//'Go back',
	'message_stop'		=> '停止运行',//'Stop',
	'message_not_enabled_extcredit'	=> '新系统中至少应开启一个积分,否则无法进行下一步转换',//'In the new system should be open at least points features, otherwise the next step can not be converted',

	'ok'			=> '&nbsp;确&nbsp;&nbsp;定&nbsp;',//'&nbsp;&nbsp;OK&nbsp;&nbsp;',
	'cancel'		=> '&nbsp;取&nbsp;消&nbsp;',//'&nbsp;Cancel&nbsp;',
	'return'		=> '请返回',//'Return',
	'tips'			=> '技巧提示',//'Tips',
	'tips_pconnect'		=> '注意：如果源数据库与目标数据库在同一服务器，该项必须设置为0，否则设置为1',//'Note: If the source database and the target database are placed on the same server, set this to 0, otherwise set to 1',

	'mysql_config_error'	=> '配置不能为空',//'MySQL configuration can not be empty',
	'mysql_connect_error'	=> '连接失败',//'MySQL connection failed',

	'config_success'	=> '服务器配置成功,现在进行下一步',//'Server configured successfully, and now going to the next step',

	'setting_tips'		=> '修改转换程序设置可能导致您的转换效率降低或者无法正常完成转换,所以请您务必小心修改',//'Modifying the conversion settings may cause a lower conversion efficiency or fail to complete the conversion, so please be careful to modify',

	'mysql_connect_error_1'	=> '数据库连接错误,请检查数据库密码和帐号是否正确',//'Database connection error, check whether the database account and password are correct.',
	'mysql_connect_error_2'	=> '数据表检查错误,您可能没有正确填写 “数据表前缀”或者您尚未安装该版本的程序',//'Data tables check failed. May be, you have not correctly filled out the "table prefix", or you have not installed the version of the program',

//---------------------------
// Added by Valery Votintsev
//---------------------------
	'invalid_request'	=> '非法请求',//'Illegal request',

//---------------------------
//convert/include/do_config.inc.php

	'config_delete'			=> '如果无法显示设置项目,请删除文件 data/config.inc.php',//'If you can not display the program settings, delete the file data/config.inc.php',

//---------------------------
//convert/include/do_convert.inc.php

	'select_convert_process'	=> '请首先选择转换程序',//'Please first select the conversion process',
	'update_start_time'	=> '升级开始时间：',//'Update start time:',
	'elapsed_time'		=> '升级程序已经执行了',//'Update procedure has been carried out',
	'days'			=> '天',//'Days',
	'hours'			=> '小时',//'Hours',
	'minutes'		=> '分',//'Minutes',
	'seconds'		=> '秒',//'Seconds',
	'progress'		=> '目前正在执行转换程序',//'Conversion progress',
	'progress_intro1'	=> '转换过程中需要多次跳转,请勿关闭浏览器.',//'The conversion process needs to redirect several times, do not close your browser!',
	'progress_intro2'	=> '如果程序中断或者需要重新开始当前程序,请点击',//'If the program is interrupted or need to re-start the current program, please click',
	'restart'		=> '重新开始',//'Restart',
	'process_finished'	=> '转换程序 执行完毕, 现在跳转到下一个程序',//'Conversion process is finished, now jump to the next process',
	'process_not_found'	=> '数据转换中断! 无法找到转换程序 ',//'Data transfer interrupted! Conversion process can not be found: ',
	'process_all_finished'	=> '转换程序全部运行完毕',//'All the the conversion processes finished',

//---------------------------
//convert/include/do_finish.inc.php

	'conversion_completed'	=> '您已经顺利的完成了数据转换!',//'You have successfully completed the data conversion!',
	'start_time'		=> '本次升级开始时间',//'The upgrade start time',
	'end_time'		=> '本次升级结束时间',//'The upgrade end of time',
	'execution_time'	=> '升级累计执行时间',//'Upgrade total execution time',
	'update_more'		=> '通常情况下,您可能还需要按照以下提示继续进行升级,从而使您的新程序正常运行',//'Under normal circumstances, you may also need to follow the prompts to upgrade, so that normal operation of your new program',
	'read_me'		=> '最后的说明(readme)',//'Finally, read the instructions (readme)',

//---------------------------
//convert/include/do_select.inc.php

	'you_selected'		=> '您选择了',//'You have selected',
	'process_number'	=> '个转换程序,下面开始转换',//'conversion processes, the following start conversion',
	'process_intro'		=> '通常情况下,您需要执行下面所有数据表的转换,除非您在执行过程中出现了意外的中断或者有特殊需求,才进行必要的选择',//'Usually, all the data you need to perform the following conversion table, unless you are in the course of an unexpected disruption or have special needs, choose only if necessary',
	'process_configure'	=> '配置转换过程',//'Configure the conversion process',
	'select_all'		=> '全选',//'Select All',
	'run_before_convert'	=> '转换之前运行的程序',//'Run programs before the conversion',
	'table_convert'		=> '数据表转换程序',//'Table conversion process',
	'other_convert'		=> '其他辅助转换程序',//'Other supporting conversion process',
	'start_conversion'	=> '开始转换',//'Start conversion',

//---------------------------
//convert/include/do_setting.inc.php

	'edit_file'		=> '编辑配置文件',//'Edit the file',
	'r/o'			=> ' 只读 ',//' Read only ',
	'settings_saved_ok'	=> '设置已经更新完毕并成功保存',//'Settings have been updated and saved successfully',
	'file_is_ro'		=> '该设置文件为只读文件,无法保存,请返回',//'The settings file is read-only mode, can not save, go back',
	'settings_not_changed'	=> '您没有改变任何设置',//'You did not changed any settings',

//---------------------------
//convert/include/do_source.inc.php

	'update_permissions'	=> '在开始转换之前,请确保本程序目录下的 data 目录为可写权限,否则无法存储转换设置',//'To begin the conversion, make sure the program data directory and files under the directory have write permissions, or the program can not save converted settings',
	'update_forum_too'	=> '如果有Discuz!和UChome同时需要升级,请务必先升级Discuz!论坛',//'If there Discuz! and UChome also need to upgrade, be sure to upgrade Discuz! Forum',
	'update_choose_process'	=> '请正确选择转换程序,否则可能造成无法转换成功',//'Please choose correctly the conversion process, or it may cause can not be converted successfully',
	'update_more_space'	=> '本转换程序不会破坏原始数据,所以转换需要2倍于原始数据空间',//'The conversion process does not destroy the original data, so the conversion requires 2 times more space than the original data space',
	'source_version'	=> '原始版本',//'Original version',
	'target_version'	=> '目标版本',//'Target version',
	'introduction'		=> '简介',//'Introduction',
	'description'		=> '说明',//'Description',
	'settings'		=> '设置',//'Settings',
	'view_readme'		=> '查看',//'View Read.me',
	'change'		=> '修改',//'Change',
	'start'			=> '开始',//'Start',

//---------------------------
//convert/include/global.func.php

	'jan'	=> '一月',//' January ',
	'feb'	=> '二月',//' February ',
	'mar'	=> '三月',//' March ',
	'apr'	=> '四月',//' April ',
	'may'	=> '五月',//' May ',
	'jun'	=> '六月',//' June ',
	'jul'	=> '七月',//' July ',
	'aug'	=> '八月',//' August ',
	'sep'	=> '九月',//' September ',
	'oct'	=> '十月',//' October ',
	'nov'	=> '十一月',//' November ',
	'dec'	=> '十二月',//' December ',
	'am'	=> '上午',//' AM ',
	'pm'	=> '下午',//' PM ',

	'prompt'		=> '系统提示',//'Prompt',
	'dzx_update'		=> 'Discuz! X 系列产品升级转换',//'Discuz!X Products Upgrade/Conversion',
	'dzx_update_wizard'	=> 'Discuz! X 系列产品升级/转换 向导',//'Discuz!X Products Upgrade/Conversion Wizard',
	'step1'		=> '1.选择产品转换程序',//'1. Select Conversion Type',
	'step2'		=> '2.设置服务器信息',//'2. Setup the Server',
	'step3'		=> '3.配置转换过程',//'3. Setup the Conversion',
	'step4'		=> '4.执行数据转换',//'4. Perform the data conversion',
	'step5'		=> '5.转换完成',//'5. Conversion is completed',

//---------------------------
//convert/source/d7.2_x1.0/pollvoter.php++

	'continue_convert_table '	=> '继续转换数据表 ',//'Continue to convert the data table ',
	'was_converted'			=> ', 已转换 ',//'. Total converted: ',
	'records'			=> '条记录',//'records',


//---------------------------
//convert/source/d7.2_x1.0/table/access.php

	'from'	=> ' 从 ',//' from ',
	'to'	=> ' 至 ',//' to ',
	'lines'	=> ' 行',//' lines.',

//---------------------------
//convert/source/d7.2_x1.0/threadtype.php++

	'convert_thread_type'	=> '继续转换主题分类数据表',//'Convert the thread type table',

//---------------------------
//convert/source/d7.2_x1.5/table/activityapplies.php

	'contacts'	=> ' 联系方式:',//' Contacts: ',

//---------------------------
//convert/source/d7.2_x2.0/table/moderators.php

	'converted'	=> '，已转换',//', Converted ',
	'records'	=> '条记录。',//' records.',

//---------------------------
//convert/source/uch2.0_x1.0/table/home_event.php++

	'uchome_data'	=> 'UCHome数据',//'UCHome data',
	'uchome_events'	=> 'UCHome活动',//'UCHome events',
	'uchome_events_convert'	=> '从 UCenter Home 转移过来的活动内容',//'Convert the UCenter Home events content',

//---------------------------
//convert/source/uch2.0_x1.0/table/home_group.php++

	'group_home'	=> '空间群组',//'Group Home',

//---------------------------
//convert/source/uch2.0_x1.0/table/home_magic.php++

	'user_magic'	=> '用户道具',//' User Magic',
	'magic_records'	=> '道具收入记录',//'Magic get records',
	'magic_use_records'	=> '道具使用记录',//'Using magic records',

//---------------------------
//convert/source/uch2.0_x1.0/table/home_poll.php++

	'uchome_polls'	=> 'UCHome投票数据',//'UCHome polls data',
	'uchome_polls_convert'	=> '从 UCenter Home 转移过来的投票内容',//'Convert the UCenter Home poll content',

//---------------------------
//convert/source/uch2.0_x1.0/table/home_space.php++

	'space_home_error'	=> '发生错误,请配置积分对应关系信息',//'Error: empty space points. Configure the space corresponding points info',
);
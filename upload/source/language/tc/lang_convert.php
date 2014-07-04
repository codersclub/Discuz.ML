<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *      Convert Language File
 *      $Id: utility/convert/language/lang.php by Valery Votintsev, codersclub.org
 */
$lang = array(

	'config_dbhost' => '數據庫服務器',//'Database server',
	'config_dbuser' => '數據庫用戶名',//'Database username',
	'config_dbpw' => '數據庫密碼',//'Database password',
	'config_dbname' => '數據庫',//'Database name',
	'config_tablepre' => '數據表前綴',//'Table prefix',
	'config_dbcharset' => '數據表字符集 (可選)',//'Database Charset (optional)',
	'config_pconnect' => '持久連接',//'Persistent connection',

	'config_type_source' => '數據源服務器設置 (原始版本的數據庫)',//'Source Database settings (the original version of the database)',
	'config_type_target' => '目標服務器設置 (已正確安裝 Discuz! X 的數據庫)',//'Target database settings (correctly installed Discuz! X database)',
	'config_type_ucenter' => 'UCenter 服務器設置 (已正確安裝 UCenter 的數據庫)',//'UCenter server settings (correctly installed UCenter database)',

	'config_type_target_comment' => '注意：目標數據庫的數據將會被替換或者更新，如當中含有重要內容，請先備份',//'Note: The target database will be replaced or updated the data, as these contain important content, please make a backup before',
	'config_write_error' => '轉換程序的 data/ 目錄不可寫，請確保此目錄的可寫權限，設置 777 屬性',//'data/ directory is not writable, please ensure that this directory have write permissions, set the 777 rights',

	'config_save' => '保存服務器設置',//'Save the server settings',
	'config_usergroup' => '用戶組配置',//'User group configuration',
	'config_from_usergroup' => '來源用戶組',//'Source user group',
	'config_target_usergroup' => '目標用戶組',//'Target user group',
	'config_extcredits' => '積分配置',//'Extended points configuration',
	'config_credit' => '積分',//'points',
	'config_from_credit' => '來源積分',//'Source points',
	'config_target_credit' => '目標積分',//'Target points',
	'config_experience' => '經驗值',//'Experience value',
	'config_convert_forum' => '數據轉換配置',//'Forum data conversion configuration',
	'config_from_data' => '源數據',//'Source data',
	'config_target_forum' => '目標版塊',//'Target forum',
	'config_poll' => '投票',//'Polls',
	'config_event' => '活動',//'Events',
	'config_auto_create' => '自動創建',//'Auto-create',
	'config_convert' => '保存轉換配置',//'Save converted configuration',

	'submit' => '提  交',//'Submit',

	'message_return' => '返回上一步',//'Go back',
	'message_stop' => '停止運行',//'Stop',
	'message_not_enabled_extcredit' => '新系統中至少應開啟一個積分，否則無法進行下一步轉換',//'In the new system should be open at least points features, otherwise the next step can not be converted',

	'ok' => '&nbsp;確&nbsp;&nbsp;定&nbsp;',//'&nbsp;&nbsp;OK&nbsp;&nbsp;',
	'cancel' => '&nbsp;取&nbsp;消&nbsp;',//'&nbsp;Cancel&nbsp;',
	'return' => '請返回',//'Return',
	'tips' => '技巧提示',//'Tips',
	'tips_pconnect' => '注意：如果源數據庫與目標數據庫在同一服務器，該項必須設置為0，否則設置為1',//'Note: If the source database and the target database are placed on the same server, set this to 0, otherwise set to 1',

	'mysql_config_error' => '配置不能為空',//'MySQL configuration can not be empty',
	'mysql_connect_error' => '連接失敗',//'MySQL connection failed',

	'config_success' => '服務器配置成功，現在進行下一步',//'Server configured successfully, and now going to the next step',

	'setting_tips' => '<li>修改轉換程序設置可能導致您的轉換效率降低或者無法正常完成轉換，所以請您務必小心修改',//'Modifying the conversion settings may cause a lower conversion efficiency or fail to complete the conversion, so please be careful to modify',

	'mysql_connect_error_1' => '數據庫連接錯誤，請檢查數據庫密碼和帳號是否正確',//'Database connection error, check whether the database account and password are correct.',
	'mysql_connect_error_2' => '數據表檢查錯誤，您可能沒有正確填寫 「數據表前綴」或者您尚未安裝該版本的程序',//'Data tables check failed. May be, you have not correctly filled out the "table prefix", or you have not installed the version of the program',

//---------------------------
	'invalid_request'	=> '非法請求',//'Illegal request',

//---------------------------
//convert/include/do_config.inc.php

	'config_delete'			=> '如果無法顯示設置項目,請刪除文件 data/config.inc.php',//'If you can not display the program settings, delete the file data/config.inc.php',

//---------------------------
//convert/include/do_convert.inc.php

	'select_convert_process'	=> '請首先選擇轉換程序',//'Please first select the conversion process',
	'update_start_time'	=> '升級開始時間：',//'Update start time:',
	'elapsed_time'		=> '升級程序已經執行了',//'Update procedure has been carried out',
	'days'			=> '天',//'Days',
	'hours'			=> '小時',//'Hours',
	'minutes'		=> '分',//'Minutes',
	'seconds'		=> '秒',//'Seconds',//
	'progress'		=> '目前正在執行轉換程序',//'Conversion progress',
	'progress_intro1'	=> '轉換過程中需要多次跳轉,請勿關閉瀏覽器.',//'The conversion process needs to redirect several times, do not close your browser!',
	'progress_intro2'	=> '如果程序中斷或者需要重新開始當前程序,請點擊',//'If the program is interrupted or need to re-start the current program, please click',
	'restart'		=> '重新開始',//'Restart',
	'process_finished'	=> '轉換程序 執行完畢, 現在跳轉到下一個程序',//'conversion process is finished, now jump to the next process',
	'process_not_found'	=> '數據轉換中斷! 無法找到轉換程序 ',//'Data transfer interrupted! Conversion process can not be found: ',
	'process_all_finished'	=> '轉換程序全部運行完畢',//'All the the conversion processes finished',

//---------------------------
//convert/include/do_finish.inc.php

	'conversion_completed'	=> '您已經順利的完成了數據轉換!',//'You have successfully completed the data conversion!',
	'start_time'		=> '本次升級開始時間',//'Upgrade start time',
	'end_time'		=> '本次升級結束時間',//'Upgrade end of time',
	'execution_time'	=> '升級累計執行時間',//'Upgrade total execution time',
	'update_more'		=> '通常情況下,您可能還需要按照以下提示繼續進行升級,從而使您的新程序正常運行',//'Under normal circumstances, you may also need to follow the prompts to upgrade, so that normal operation of your new program',
	'read_me'		=> '最後的說明(readme)',//'Finally, read the instructions (readme)',

//---------------------------
//convert/include/do_select.inc.php

	'you_selected'		=> '您選擇了',//'You have selected',
	'process_number'	=> '個轉換程序,下面開始轉換',//'Conversion process start the following conversion',
	'process_intro'		=> '通常情況下,您需要執行下面所有數據表的轉換,除非您在執行過程中出現了意外的中斷或者有特殊需求,才進行必要的選擇',//'Usually, all the data you need to perform the following conversion table, unless you are in the course of an unexpected disruption or have special needs, choose only if necessary',
	'process_configure'	=> '配置轉換過程',//'Configure the conversion process',
	'select_all'		=> '全選',//'Select All',
	'run_before_convert'	=> '轉換之前運行的程序',//'Run programs before the conversion',
	'table_convert'		=> '數據表轉換程序',//'Table conversion process',
	'other_convert'		=> '其他輔助轉換程序',//'Other supporting conversion process',
	'start_conversion'	=> '開始轉換',//'Start conversion',

//---------------------------
//convert/include/do_setting.inc.php

	'edit_file'		=> '編輯配置文件',//'Edit the file',
	'r/o'			=> ' 只讀 ',//' Read only ',
	'settings_saved_ok'	=> '設置已經更新完畢並成功保存',//'Settings have been updated and saved successfully',
	'file_is_ro'		=> '該設置文件為只讀文件,無法保存,請返回',//'The settings file is read-only mode, can not save, go back',
	'settings_not_changed'	=> '您沒有改變任何設置',//'You did not changed any settings',

//---------------------------
//convert/include/do_source.inc.php

	'update_permissions'	=> '在開始轉換之前,請確保本程序目錄下的 data 目錄為可寫權限,否則無法存儲轉換設置',//'To begin the conversion, make sure the program data directory and files under the directory have write permissions, or the program can not save converted settings',
	'update_forum_too'	=> '如果有Discuz!和UChome同時需要升級,請務必先升級Discuz!論壇',//'If there Discuz! and UChome also need to upgrade, be sure to upgrade Discuz! Forum',
	'update_choose_process'	=> '請正確選擇轉換程序,否則可能造成無法轉換成功',//'Please choose correctly the conversion process, or it may cause can not be converted successfully',
	'update_more_space'	=> '本轉換程序不會破壞原始數據,所以轉換需要2倍於原始數據空間',//'The conversion process does not destroy the original data, so the conversion requires 2 times more space than the original data space',
	'source_version'	=> '原始版本',//'Original version',
	'target_version'	=> '目標版本',//'Target version',
	'introduction'		=> '簡介',//'Introduction',
	'description'		=> '說明',//'Description',
	'settings'		=> '設置',//'Settings',
	'view_readme'		=> '查看',//'View Read.me',
	'change'		=> '修改',//'Change',
	'start'			=> '開始',//'Start',

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

	'prompt'		=> '系統提示',//'Prompt',
	'dzx_update'		=> 'Discuz! X 系列產品升級轉換',//'Discuz!X Products Upgrade/Conversion',
	'dzx_update_wizard'	=> 'Discuz! X 系列產品升級/轉換 嚮導',//'Discuz!X Products Upgrade/Conversion Wizard',
	'step1'		=> '1.選擇產品轉換程序',//'1. Select Conversion Type',
	'step2'		=> '2.設置服務器信息',//'2. Setup the Server',
	'step3'		=> '3.配置轉換過程',//'3. Setup the Conversion',
	'step4'		=> '4.執行數據轉換',//'4. Perform the data conversion',
	'step5'		=> '5.轉換完成',//'5. Conversion is completed',

//---------------------------
//convert/source/d7.2_x1.0/pollvoter.php++

	'continue_convert_table '	=> '繼續轉換數據表 ',//'Continue to convert the data table ',
	'was_converted'			=> ', 已轉換 ',//'. Total converted: ',
	'records'			=> '條記錄',//'records',


//---------------------------
//convert/source/d7.2_x1.0/table/access.php

	'from'	=> ' 從 ',//' from ',
	'to'	=> ' 至 ',//' to ',
	'lines'	=> ' 行',//' lines.',

//---------------------------
//convert/source/d7.2_x1.0/threadtype.php++

	'convert_thread_type'	=> '繼續轉換主題分類數據表',//'Convert the thread type table',

//---------------------------
//convert/source/d7.2_x1.5/table/activityapplies.php

	'contacts'	=> ' 聯繫方式:',//' Contacts: ',

//---------------------------
//convert/source/d7.2_x2.0/table/moderators.php

	'converted'	=> '，已轉換',//', Converted ',
	'records'	=> '條記錄。',//' records.',

//---------------------------
//convert/source/uch2.0_x1.0/table/home_event.php++

	'uchome_data'	=> 'UCHome數據',//'UCHome data',
	'uchome_events'	=> 'UCHome活動',//'UCHome events',
	'uchome_events_convert'	=> '從 UCenter Home 轉移過來的活動內容',//'Convert the UCenter Home events content',

//---------------------------
//convert/source/uch2.0_x1.0/table/home_group.php++

	'group_home'	=> '空間群組',//'Group Home',

//---------------------------
//convert/source/uch2.0_x1.0/table/home_magic.php++

	'user_magic'	=> '用戶道具',//' User Magic',
	'magic_records'	=> '道具收入記錄',//'Magic get records',
	'magic_use_records'	=> '道具使用記錄',//'Using magic records',

//---------------------------
//convert/source/uch2.0_x1.0/table/home_poll.php++

	'uchome_polls'	=> 'UCHome投票數據',//'UCHome polls data',
	'uchome_polls_convert'	=> '從 UCenter Home 轉移過來的投票內容',//'Convert the UCenter Home poll content',

//---------------------------
//convert/source/uch2.0_x1.0/table/home_space.php++

	'space_home_error'	=> '發生錯誤,請配置積分對應關係信息',//'Error: empty space points. Configure the space corresponding points info',
);
/*
	[Discuz!] (C)2001-2009 Comsenz Inc.
	This is NOT a freeware, use is subject to license terms

	Javascript Language variables

	$Id: lang_js.js by Valery Votintsev, codersclub.org

*/

//--------------------------------
//static/js/register.js

// Suggested email domains for registering:
var emaildomains = [
		'163.com',
		'gmail.com',
		'hotmail.com',
		'msn.com',
		'qq.com',
		'sina.com',
		'sohu.com',
		'yahoo.cn',
		'yahoo.com'
		];

//--------------------------------
//static/js/common.js

var colortexts = {
	'Black'			: '黑色',
	'Sienna'		: '赭色',
	'DarkOliveGreen'	: '暗橄欖綠色',
	'DarkGreen'		: '暗綠色',
	'DarkSlateBlue'		: '暗灰藍色',
	'Navy'			: '海軍色',
	'Indigo'		: '靛青色',
	'DarkSlateGray'		: '墨綠色',
	'DarkRed'		: '暗紅色',
	'DarkOrange'		: '暗桔黃色',
	'Olive'			: '橄欖色',
	'Green'			: '綠色',
	'Teal'			: '水鴨色',
	'Blue'			: '藍色',
	'SlateGray'		: '灰石色',
	'DimGray'		: '暗灰色',
	'Red'			: '紅色',
	'SandyBrown'		: '沙褐色',
	'YellowGreen'		: '黃綠色',
	'SeaGreen'		: '海綠色',
	'MediumTurquoise'	: '間綠寶石',
	'RoyalBlue'		: '皇家藍',
	'Purple'		: '紫色',
	'Gray'			: '灰色',
	'Magenta'		: '紅紫色',
	'Orange'		: '橙色',
	'Yellow'		: '黃色',
	'Lime'			: '酸橙色',
	'Cyan'			: '青色',
	'DeepSkyBlue'		: '深天藍色',
	'DarkOrchid'		: '暗紫色',
	'Silver'		: '銀色',
	'Pink'			: '粉色',
	'Wheat'			: '淺黃色',
	'LemonChiffon'		: '檸檬綢色',
	'PaleGreen'		: '蒼綠色',
	'PaleTurquoise'		: '蒼寶石綠',
	'LightBlue'		: '亮藍色',
	'Plum'			: '洋李色',
	'White'			: '白色'
};

/*
',',	//'，',
'.',	//'。',
':',	//'點',
'!',	//'！'
'&laquo;',//'《',
'&raquo;',//'》',
*/


//--------------------------------

var lng = {

//---------------------------
//static/image/editor/editor_base.js
// USED in /source/module/home/home_editor.php
// MOVE TO:
//static/js/editor_base.js
	'restore_last_saved'	: '您確定要恢復上次保存?',
	'cut_manually'		: '您的瀏覽器安全設置不允許編輯器自動執行剪切操作,請使用鍵盤快捷鍵(Ctrl+X)來完成',
	'copy_manually'		: '您的瀏覽器安全設置不允許編輯器自動執行拷貝操作,請使用鍵盤快捷鍵(Ctrl+C)來完成',
	'paste_manually'	: '您的瀏覽器安全設置不允許編輯器自動執行粘貼操作,請使用鍵盤快捷鍵(Ctrl+V)來完成',
	'graffiti_no_init'	: '找不到塗鴉板初始化數據',
	'ie5_only'		: '只支持IE 5.01以上版本',
	'edit_raw'		: '編輯源碼',
	'plain_text_warn'	: '轉換為純文本時將會遺失某些格式。\n您確定要繼續嗎？',
	'browser_update'	: '你的瀏覽器不支持此功能，請升級瀏覽器版本',
	'tips'			: '小提示',

//---------------------------
//static/image/editor/editor_function.js
// USED in: /source/admincp/admincp_feed.php
// USED in: /template/default/home/cpacecp_blog.htm
// USED in: /template/default/portal/portalcp_article.htm
// MOVED TO:
//static/js/editor_function.js
	'wysiwyg_only'		: '本操作只在多媒體編輯模式下才有效',

//---------------------------
//static/image/admincp/cloud/cloud.js
	'int_cloud_test'	: '雲平台其他接口測試',
	'int_roaming_test'	: '漫遊其他接口測試',
	'int_qq_test'		: 'QQ互聯接口測試',//'Testing QQ Internet interface',
	'server_busy'		: '服務器繁忙，請稍後再試',//'The server is busy, please try again later',
	'tested_ok'		: '測試成功，耗時 ',//'The test is successful, time used: ',
//	'seconds'		: ' 秒',//' sec.',

//---------------------------
//static/image/admincp/cloud/qqgroup.js
	'select_topic_to_push'	: '請至少推送一條頭條主題和一條列表主題',
	'select_item_to_push'	: '請至少推送一條信息到列表區域',
	'loading'		: '加載中...',
	'push5reached'		: '推送帖子已達到5條，請在右側取消一些再重試。',
	'click_left'		: '點擊左側',
	'push_to_list'		: '將信息推送到列表',
	'wait_image_upload'	: '圖片上傳中，請稍後...',





//---------------------------
//upload/static/js/autoloadpage.js
	'loading_content_wait'	: '正在加载, 请稍后...',//'Loading content, wait please...',

//---------------------------
//upload/static/js/at.js
//	'enter_username'	: '請輸用戶名',//'Please enter the user name',

//--------------------------------
//static/js/calendar.js
//static/js/forum_calendar.js
//static/js/home_calendar.js

	'prev_month'	: '上一月',
	'next_month'	: '下一月',
	'select_year'	: '點擊選擇年份',
	'select_month'	: '點擊選擇月份',
	'wday0'		: '日',
	'wday1'		: '一',
	'wday2'		: '二',
	'wday3'		: '三',
	'wday4'		: '四',
	'wday5'		: '五',
	'wday6'		: '六',
	'month'		: '月',
	'today'		: '今天',
	'hours'		: '點',
	'minutes'	: '分',
	'halfhour'	: 'Half hour',//'分',
	'ok'		: 'Ok',//'OK',

//--------------------------------
//static/js/common.js

	'open_new_win'		: '在新窗口打開',
	'actual_size'		: '實際大小',
	'close'			: '關閉',
	'wheel_zoom'		: '鼠標滾輪縮放圖片',
	'reminder'		: '提示信息',
	'submit'		: '確定',
	'cancel'		: '取消',
	'wait_please'		: '請稍候...',
	'int_error'		: '內部錯誤，無法顯示此內容',
	'flash_required'	: '此內容需要 Adobe Flash Player 9.0.124 或更高版本',
	'flash_download'	: '下載 Flash Player',
	'day1'			: '一天',
	'week1'			: '一周',
	'days7'			: '7 天',
	'days14'		: '14 天',
	'month1'		: '一個月',
	'month3'		: '三個月',
	'month6'		: '半年',
	'year1'			: '一年',
	'custom'		: '自定義',
	'permanent'		: '永久',
	'show_all_expr'		: '顯示所有表情',
	'page_prev'		: '上頁',
	'page_next'		: '下頁',
	'copy2clipboard'	: '點此複製到剪貼板',
// ATTENTION!
// The next line must have the same value as in /template.php - 'enter_content' !!!
	'enter_search_string'	: '請輸入搜索內容',
	'refresh_q&a'		: '刷新驗證問答',
	'refresh_code'		: '刷新驗證碼',
	'code_invalid'		: '驗證碼錯誤，請重新填寫',
	'q&a_invalid'		: '驗證問答錯誤，請重新填寫',
	'code_clipboard'	: '代碼已複製到剪貼板',
	'enter_link_url'	: '請輸入鏈接地址',
	'enter_link_text'	: '請輸入鏈接文字',
	'enter_image_url'	: '請輸入圖片地址',
	'width_optional'	: '寬(可選)',
	'height_optional'	: '高(可選)',
	'narrow_screen'		: '切換到窄版',
	'wide_screen'		: '切換到寬版',
	'logging_wait'		: '登錄中，請稍後...',
	'notices_no'		: '【　　　】',
	'notices_yes'		: '【新提醒】',
	'sec_after_win_closed'	: ' 秒後窗口關閉',
	'sec_after_page_jump'	: ' 秒後頁面跳轉',
	'jump_now'		: '立即跳轉',
	'error_message'		: '錯誤信息',
	'ctrl_d_favorites'	: '請按 Ctrl+D 鍵添加到收藏夾',
	'non_ie_manually'	: '非 IE 瀏覽器請手動將本站設為首頁',
	'blind_enable'		: '開啟盲人體驗',//'Enable blind experience',
	'blind_disable'		: '關閉盲人體驗',//'Disable blind experience',

//--------------------------------
//static/js/common_diy.js

	'edit'			: '編輯',
	'warn_not_saved'	: '您的數據已經修改,退出將無法保存您的修改。',
	'confirm_exit'		: '退出將不會保存您剛才的設置。是否確認退出？',
	'select_image_upload'	: '請選擇您要上傳的圖片',

//--------------------------------
//static/js/common_extra.js
//	'wait_please'		: 'Loading ...',//'請稍候...',
	'copy_failed'		: '複製失敗，請選擇「允許訪問」',
	'prev'			: '上一張',
	'next'			: '下一張',
        'shortcut_add'		: '添加桌面快捷',
        'shortcut_1'		: '1、點擊"',
        'shortcut_1_1'		: '下載桌面快捷',
        'shortcut_1_2'		: '"，下載完成後，可移動文件到系統桌面',
        'shortcut_2'		: '2、點擊"',
        'shortcut_2_1'		: '下載ICO圖標',
        'shortcut_2_2'		: '"，下載完成後，右擊桌面快捷文件->屬性->更改圖標，選擇已下載的ICO圖標即可',

//--------------------------------
//static/js/editor.js

	'restore_size_edit'	: '恢復編輯器大小',
	'full_screen_edit'	: '全屏方式編輯',
	'current_length'	: '當前長度',
	'bytes'			: '字節',
	'system_limit'		: '系統限制',
	'up_to'			: '到',
	'check_length'		: '字數檢查',
	'data_restored'		: '數據已恢復',
	'data_saved'		: '數據已保存',
	'clear_all_sure'	: '您確認要清除所有內容嗎？',
	'hide_content'		: '請輸入要隱藏的信息內容',
	'free_content'		: '如果您設置了帖子售價，請輸入購買前免費可見的信息內容',
	'when_thread_replied'	: '只有當瀏覽者回復本帖時才顯示',
	'when_points_more'	: '只有當瀏覽者積分高於',
	'when_show'		: '時才顯示',
	'table_rows'		: '表格行數',
	'table_columns'		: '表格列數',
	'table_width'		: '表格寬度: ',
	'bg_color'		: '背景顏色',
	'table_intro0'		: '快速書寫表格提示',
	'table_intro1'		: '「[tr=顏色]」 定義行背景<br />「[td=寬度]」 定義列寬<br />「[td=列跨度,行跨度,寬度]」 定義行列跨度<br /><br />快速書寫表格範例：',
	'table_intro2'		: '[table]<br />Name:|Discuz!<br />Version:|X1<br />[/table]',
	'table_intro3'		: '用「|」分隔每一列，表格中如有「|」用「\\|」代替，換行用「\\n」代替。',
	'audio_url'		: '請輸入音樂文件地址',
	'video_url'		: '請輸入視頻地址',
	'auto_play'		: '是否自動播放',
	'flash_url'		: '請輸入 Flash 文件地址',
	'enter_please'		: '請輸入第',
	'nth_parameter'		: ' 個參數',
	'font'			: '字體',
	'full_screen'		: '全屏',
	'restore_size'		: '恢復',
	'general'		: '常用',
	'simple'		: '高級',
	'bad_browser'		: '你的瀏覽器不支持此功能',
	'click_autosave_enable'	: '點擊開啟自動保存',
	'autosave_enable'	: '開啟自動保存',
	'autosave_disable'	: '點擊關閉自動保存',
	'autosave_enabled'	: '數據自動保存已開啟',
	'autosave_disabled'	: '數據自動保存已關閉',
	'data_saved_at'		: '數據已於',
	'saved_time'		: '保存',
	'sec_before_saving'	: '秒後保存',
	'insert_quote'		: '請輸入要插入的引用',
	'insert_code'		: '請輸入要插入的代碼',
	'enter_item_list'	: '輸入一個列表項目.\r\n留空或者點擊取消完成此列表.',
	'width'			: '寬',
	'height'		: '高',
	'audio_support'		: '支持 wma mp3 ra rm 等音樂格式<br />示例: http://server/audio.wma',
	'video_support'		: '支持優酷、土豆、56、酷6等視頻站的視頻網址<br />支持 wmv avi rmvb mov swf flv 等視頻格式<br />示例: http://server/movie.wmv',
	'flash_support'		: '支持 swf flv 等 Flash 網址<br />示例: http://server/flash.swf',
	'paste_from_word'	: '從 Word 粘貼內容',
	'paste_word_tip'	: '請通過快捷鍵(Ctrl+V)把 Word 文件中的內容粘貼到上',
	'show_tips'		: '友情提示',//'Show Tips',
	'expire_days'		: '有效天數',//'Valid for (days)',
	'expire_days_invalid'	: '距離發帖日期大於這個天數時標籤自動失效',//'Distance from the posting date is greater than the number of days when the label automatically expire',
	'download_remote'	: '正在下载远程附件，请稍等……',//'Downloading remote attachment, please wait ...',
	'create_post_directory'	: '创建帖子目录',//'Create post directory',
	'page_number'		: '页码',//'Page number',
	'jump_to_page'		: '跳转到指定的页',//'Jump to specified page',
	'jump_to_page_comment'	: '用 [page] 对当前帖子分页后的页码',//'Use [page] tag for add a page break',
	'jump_to_post'		: '跳转到指定的帖子',//'Jump to specified post',
	'jump_tip_pid'		: '帖子的 TID 和 PID',//'Post TID and PID',
	'add_indent'		: '添加行首缩进',//'Add the first line indent',
	'enter_post_password'	: '请输入帖子密码',//'Please enter the post password',
	'begin_flash_img'	: '请输入开头动画 Flash 或 图片 地址',//'Enter the beginning Flash or image animation URL',
	'begin_click_url'	: '点击链接地址',//'Click on the link URL',
	'begin_stay_seconds'	: '停留秒数',//'Display seconds',
	'begin_disappearance'	: '载入、消失的效果',//'Disappear effect after loading',
	'none'			: '无',//'None',
	'begin_fade'		: '淡入淡出',//'Fade',
	'begin_explosive'	: '展开闭合',//'Explode',
	'begin_info'		: '支持 swf flv jpg gif png 网址<br />宽高范围: 宽400~1024 高300~640<br />示例: http://server/flash.swf',//'Supported formats: swf flv jpg gif png<br/>Width range: 400~1024, Height range: 300~640<br/>Example: http://server/flash.swf',

//--------------------------------
//static/js/forum.js

	'del_thread_sure'	: '您確認要把此主題從熱點主題中移除麼？',
	'there_are'		: '有',
	'new_reply_exists'	: '有新回復的主題，點擊查看',
	'finished'		: '已结束',//'Finished',
	'days_num'		: '天',//' days',
	'hours_num'		: '小时',//' hours',
	'minutes_num'		: '分',//' minutes',
	'seconds'		: ' 秒',//' sec.',

//--------------------------------
//static/js/forum_google.js

	'search_net'	: '網頁搜索',
	'search_site'	: '站內搜索',
	'search'	: '搜索',

//--------------------------------
//static/js/forum_moderate.js

	'choose_tread'	: '請選擇需要操作的帖子',

//--------------------------------
//static/js/forum_post.js

	'internal_error'	: '內部服務器錯誤',
	'upload_ok'		: '上傳成功',
	'ext_not_supported'	: '不支持此類擴展名',
	'sorry_ext_not_supported'	: '對不起，不支持上傳此類擴展名的附件。',
	'illegal_image_type'	: '圖片附件不合法',
	'can_not_save_attach'	: '附件文件無法保存',
	'invalid_file'		: '沒有合法的文件被上傳',
	'illegal_operation'	: '非法操作',
	'today_upload_large'	: '今日您已无法上传那么大的附件',//'Today you can not upload so much attachments',
	'enter_content'		: '請完成標題或內容欄',
	'select_category'	: '請選擇主題對應的分類',
	'select_category_info'	: '請選擇主題對應的分類信息',
	'title_long'		: '您的標題超過 80 個字符的限制',
	'content_long'		: '您的帖子長度不符合要求。\n\n',
	'ignore_pending_attach'	: '您有等待上傳的附件，確認不上傳這些附件嗎？',
	'still_uploading'	: '您有正在上傳的附件，請稍候，上傳完成後帖子將會自動發表...',
	'no_data_recover'	: '沒有可以恢復的數據！',
	'content_overwrite'	: '此操作將覆蓋當前帖子內容，確定要恢復數據嗎？',
	'upload_finished'	: '附件上傳完成！',
	'successfull'		: '成功',
	'failed'		: '失敗',
	'ones'			: '個',
	'uploading'		: '上傳中...',
	'select_image_files'	: '請選擇圖片文件',
	'delete'		: '刪除',
	'contains'		: '包含',
	'img_attached_num'	: '個圖片附件',
	'files attached_num'	: '個附件',
	'images'		: '圖片',
	'attachments'		: '附件',
//	'upload_failed'		: '上傳失敗',
	'remote_attach_loaded'	: '远程附件下载完成!',//'Remote attachment download is completed!',
	'select_all'		: '全选',//'Select All',
	'unused'		: '未使用的',//'Unused',
	'award_more_total'	: '回帖奖励积分总额过大',//'Reply Reward Points total is too large',
	'return'		: '返还',//'Return',

	'attach_big'		: '服務器限制無法上傳那麼大的附件',
	'attach_group_big'	: '用戶組限制無法上傳那麼大的附件',
	'attach_type_big'	: '文件類型限制無法上傳那麼大的附件',
	'attach_daily_big'	: '本日已無法上傳更多的附件',
	'validating_q&a'	: '驗證問答校驗中，請稍後',
	'validating_code'	: '驗證碼校驗中，請稍後',
	'attach_type_disabled'	: '附件類型被禁止',
	'attach_max'		: '不能超過',
	'vote_max_reached'	: '已達到最大投票數',
	'no_remote_attach'	: '抱歉，暫無遠程附件',
	'delete_post_sure'	: '確定要刪除該帖子嗎？',
	'feed_add_confirm'	: '由於您設置了閱讀權限或出售帖，您確認還轉播給您的聽眾看嗎？',//'Because of you have set read permission or sell the post, do you confirm also the broadcast to your listeners to see?',
//--------------------------------
//static/js/forum_viewthread.js

	'best_answer_sure'	: '您確認要把該回復選為「最佳答案」嗎？',
	'premoderated'		: '本版回帖需要審核，您的帖子將在通過審核後顯示',
	'credit_confirm1'	: '下載需要消耗',
	'credit_confirm2'	: '，您是否要下載？',
	'thread_to_clipboard'	: '帖子地址已經複製到剪貼板',
	'click_to_enlarge'	: '點擊放大',
	'notify_on_reply'	: '接收回復通知',
	'notify_on_reply_cancel'	: '取消回復通知',
	'share_connection_failed'	: '分享服務連接失敗，請稍後再試',
	'qq_bind'		: '請先綁定QQ賬號',
	'quote_by'		: '本帖最後由 .*? 於 .*? 編輯',
	'copy_code'		: '複製代碼',
	'download_pocket_forum'	: '下载掌上论坛',//'Download Pocket Forum',
	'pocket_forum_android'	: 'Andriod版本，扫描二维码可以直接下载到手机',//'If Andriod version, Scan thw QR-code can be downloaded directly to the phone',
	'pocket_forum_android_alt'	: '适用于装有安卓系统的三星/HTC/小米等手机',//'Suitable for Android-based smartphones like Samsung/HTC/etc',
	'pocket_forum_ios'	: 'iPhone版本，扫描二维码可以直接下载到手机',//'If iPhone used, Scan thw QR-code can be downloaded directly to the phone',
	'pocket_forum_ios_alt'	: '适用于苹果手机',//'Suitable for Apple mobile phone',
	'quick_reply_here'	: '#在这里快速回复#',//'#Quick Reply Here#',
	'set_cover'		: '设为封面',//'Set as cover',
	'source'		: '出处',//'Source',
	'view_all'		: '查看所有',//'View All',
	'index'			: '目录',//'Thread Index',

//--------------------------------
//static/js/handlers.js
	'file_selected_exceed'	: '您選擇的文件個數超過限制。',//'You have selected too many files.',
	'upload_number_exceed'	: '您已達到上傳文件的上限了。',//'You cannot add any more files.',
	'can_choose_more'	: '您還可以選擇 ',//'You may only add ',
	'files'			: ' 個文件',//' more files',
	'file_is_large'		: '文件太大.',//'File is too large.',
	'file_is_empty'		: '不能上傳零字節文件.',//'You can not upload a zero byte file.',
	'file_type_disabled'	: '禁止上傳該類型的文件.',//'Upload of such type files is disabled.',
	'unhandled_error'	: 'Unhandled Error',//'',
	'upload_progress'	: '正在上傳',//'Uploaded ',
	'upload_cancelled'	: '取消上傳',//'Cancelled',
	'file_description'	: '圖片描述',//'File Description',
	'image_upload_failed'	: '圖片上傳失敗',//'Image upload failed',
	'upload_failed'		: '上傳失敗',//'Upload failed',
	'upload_completed'	: '上傳完成.',//'Upload completed.',
	'upload_error'		: 'Upload Error: ',//'',
	'config_error'		: 'Configuration Error',//'',
	'server_error'		: 'Server (IO) Error',//'',
	'security_error'	: 'Security Error',//'',
	'upload_limit_exceed'	: 'Upload limit exceeded.',//'',
	'file_not_found'	: 'File not found.',//'',
	'validation_failed'	: 'Failed Validation. Upload skipped.',//'',
	'upload_stopped'	: 'Stopped',//'',

//--------------------------------
//static/js/home.js
	'day'			: '日',
	'category_empty'	: '分類名不能為空！',

//--------------------------------
//static/js/home_ajax.js

//	'close'			: '關閉',
//	'wait_please'		: '請稍候...',

//--------------------------------
//static/js/home_blog.js

	'title_length_invalid'	: '標題長度(1~80字符)不符合要求',

//--------------------------------
//static/js/home_common.js

	'show_orig_image'	: '點擊圖片，在新窗口顯示原始尺寸',
	'continue_sure'		: '您確定要執行本操作嗎？',
	'select_item'		: '請選擇要操作的對象',
	'image_url_invalid'	: '圖片地址不正確',
	'audio_url_invalid'	: '音樂地址錯誤，不能為空',

//!!!!! MayBe wrap this names!!
	'collapse'		: '收起',
	'expand'		: '展開',

//--------------------------------
//static/js/home_friendselector.js

	'select_max'		: '最多只允許選擇',
	'users'			: '個用戶',
	'allready_exists'	: '已經存在',

//--------------------------------
//static/js/home_manage.js

	'you_friends_now'	: '你們現在是好友了，接下來，您還可以：',
	'leave_message'		: '給TA留言',
	'or'			: '或者',
	'send_greeting'		: '打個招呼',
	'reply'			: '回復',
	'comment'		: '評論',
	'close_list'		: '收起列表',
	'more_feeds'		: '更多動態',

//--------------------------------
//static/js/home_uploadpic.js

	'image_type_invalid'	: '對不起，不支持上傳此類擴展名的圖片',
	'insert_to_content'	: '點擊這裡插入內容中當前光標的位置',
	'insert'		: '插入',
	'image_description'	: '圖片描述',
	'uploading_wait'	: '上傳中，請等待',
	'retry'			: '重試',

//---------------------------
//static/js/makehtml.js
	'generate'		: '生成',//'Generate ',
	'generate_ok'		: '生成成功',//' generated successfully',
	'generate_error'	: '生成失败',//' generation failed',
	'generate_start'	: '开始生成 ',//'Start generating of ',
	'generate_click_continue'	: '如果您的浏览器没有反应，请点击继续...',//'If your browser does not respond, Click to continue...',
	'generate_completed'	: ' 生成完成',//' generation is completed',
	'generate_total'	: '本次共需要生成 ',//'Total need to generate ',
	'generate_files'	: ' 文件，成功生成 ',//' files, Successfully generated ',
	'generate_first'	: '正在生成第 ',//'generated first ',
	'generate_percent'	: '已经完成 ',//'has been completed ',

//---------------------------
//static/js/mobile/common.js
	'first'		: '第 ',//'First ',
	'page'		: '页',//'Page',
	'pages'		: '页',//' pages',
	'prev_page'	: '上一页',//'Prev',
	'next_page'	: '下一页',//'Next',

	'click_to_reload'	: '点击重新加载',//'Click to reload',
	'loading_now'		: '正在加载...',//'Loading...',

	'geo_timeout'		: '获取位置超时，请重试',//'Get location timeout, please try again',
	'geo_error'		: '无法检测到您的当前位置',//'Unable to detect your current location',
	'geo_permission'	: '请允许能够正常访问您的当前位置',//'Please allow normal access to your current location',
	'unknown_error'		: '发生未知错误',//'Unknown error occurred',
	'touch_down_refresh'	: '下拉可以刷新',//'Touch down to refresh',
	'touch_up_refresh'	: '松开可以刷新',//'Touch UP to refresh',

//--------------------------------
//static/js/portal.js

	'delete_sure'		: '您確定要刪除該數據嗎？',
	'ignore_sure'		: '您確定要屏蔽該數據嗎？',
	'to'			: '到',

	'choose_block'		: '選擇模塊',
	'blocks_found1'		: '找到',
	'blocks_found2'		: '個相應的模塊',
	'blocks_not_found'	: '沒有相應的模塊',
	'select_block'		: '請選擇一個模塊！',
	'show_settings'		: '展開設置項',
	'hide_settings'		: '收起設置項',
	'block_name_empty'	: '模塊標識不能為空',
	'block_convert_sure'	: '你確定要轉換模塊的類型從',
	'back'			: '返回',
	'settings_expand'	: '展開設置項',
	'settings_hide'		: '收起設置項',
	'custom_content_error'	: '自定義內容錯誤，',
	'html_error'		: 'HTML代碼：',
	'tags_not_match'	: ' 標籤不匹配',
	'entered'		: '已輸入 ',//'Have entered ',
	'exceed'		: '超出 ',//'Exceed ',
	'title_length_bad'	: '標題長度不正確',//'The title is incorrect',
	'summary_length_bad'	: '簡介長度不正確',//'Summary length is incorrect',

//--------------------------------
//static/js/portal_diy.js

	'choose_style'		: '選擇樣式',
	'style'			: '樣式',
	'style1'		: '樣式1',
	'style2'		: '樣式2',
	'style3'		: '樣式3',
	'style4'		: '樣式4',
	'style5'		: '樣式5',
	'style6'		: '樣式6',
	'style7'		: '樣式7',
	'no_border'		: '無邊框框架',
	'no_border_no_margin'	: '無邊框且無邊距',

	'title'			: '標題',
	'attribute'		: '屬性',
	'data'			: '數據',
	'update'		: '更新',
	'export'		: '導出',
	'repeat'		: '平鋪',
	'no_repeat'		: '不平鋪',
	'repeat_x'		: '橫向平鋪',
	'repeat_y'		: '縱向平鋪',
	'no_style'		: '無樣式',
	'solid_line'		: '實線',
	'dotted_line'		: '點線',
	'dashed_line'		: '虛線',
	'link'			: '鏈接',
	'border'		: '邊框',
	'size'			: '大小',
	'color'			: '顏色',
	'separate_config'	: '分別設置',
	'right'			: '右',
	'bottom'		: '下',
	'top'			: '上',
	'left'			: '左',
	'margin'		: '外邊距',
	'padding'		: '內邊距',
	'bg_image'		: '背景圖片',
	'class'			: '指定class',
	'block'			: '模塊',
	'frame'			: '框架',
	'onclick'		: '點擊',
	'onmouseover'		: '滑過',
	'switch_type'		: '切換類型',
	'image'			: '圖片',
	'position'		: '位置',
	'align_left'		: '居左',
	'align_right'		: '居右',
	'offset'		: '偏移量',
//!!! mainly the same as 'color' !!!!!!
//	'colour'		: '色',
	'add_new_title'		: '添加新標題',
	'delete_this_sure'	: '您確實要刪除嗎,刪除以後將不可恢復',
	'loading_content'	: '正在加載內容...',
	'modified_import'	: '您已經做過修改，請保存後再做導出，否則導出的數據將不包括您這次所做的修改。',
	'total'			: '共',
	'blocks'		: '個模塊',
	'updating_the'		: '正在更新第',
	'done'			: '已完成',
	'start_updating'	: '開始更新...',
	'update_block_data'	: '更新模塊數據',
	'clear_diy_sure'	: '您確實要清空頁面上所在DIY數據嗎,清空以後將不可恢復',
	'frame_not_found'	: '提示：未找到框架，請先添加框架。',
	'apply_all_pages'	: '應用於此類全部頁面',
	'apply_current_page'	: '只應用於本頁面',
	'save_temp_sure'	: '是否保留暫存數據？<br />按確定按鈕將保留暫存數據，按取消按鈕將刪除暫存數據。',
	'save_temp'		: '保留暫存數據',
	'revert_last_saved'	: '您確定要恢復到上一版本保存的結果嗎？',
	'continue_temp_sure'	: '是否繼續暫存數據的DIY？',
	'update_completed'	: '已更新完成。',
	'tab_label'		: 'tab標籤',
	'temp_action'		: '按繼續按鈕將打開暫存數據並DIY，<br />按刪除按鈕將刪除暫存數據。',
	'continue'		: '繼續',
	'block_no_rights'	: '抱歉，您沒有權限添加或編輯模塊',//'Sorry, you have no permission to add or edit block',

//--------------------------------
//static/js/portal_diy_data.js
	'data_manage'		: '可直接管理模塊數據',//'Direct management of the block data',
	'quit'			: '退出',//'Quit',
//--------------------------------
//static/js/qshare.js
	'from_tencent'		: "\u6211\u6765\u81EA\u4E8E\u817E\u8BAF\u5FAE\u535A\u5F00\u653E\u5E73\u53F0",

//--------------------------------
//static/js/register.js

	'username_invalid'	: '用戶名包含敏感字符',
	'username_short'	: '用戶名小於 2 個字符',
	'username_long'		: '用戶名超過 15 個字符',
	'username_long_64'	: '用戶名超過 64 個字符',//'User name is longer than 64 bytes',
	'passwords_not_equal'	: '兩次輸入的密碼不一致',
	'email_invalid'		: 'Email 包含敏感字符',
	'invite_code_invalid'	: '邀請碼包含敏感字符',
	'password_fill'		: '請填寫密碼',
	'password_again'	: '請再次輸入密碼',
	'email_fill'		: '請輸入郵箱地址',
	'length_min'		: ', 最小長度為 ',//', Minimum length',
	'chars'			: ' 個字符',//' characters',
	'password_strength'	: '密碼強度:',//'Password strength: ',
	'pw_weak'		: '弱',//'Weak',
	'pw_middle'		: '中',//'So-so',
	'pw_strong'		: '強',//'Strong'
	'pass_short'		: '密碼太短，不得少於 ',//'Password is too short, must be not less than ',
	'digital'		: '數字',//'Digital',
	'lowercase'		: '小寫字母',//'Lowercase letters',
	'capitals'		: '大寫字母',//'Capital letters',
	'specials'		: '特殊符號',//'Special symbols',
	'pw_weak_info'		: '密碼太弱，密碼中必須包含 ',//'Weak password, the password must contain ',
	'leave_blank_old_pass'	: '如不需要更改密码，此处请留空',//'Leave blank if you do not need to change the password',

//--------------------------------
//static/js/seditor.js
	'enter_username'	: '請輸用戶名',//'Please enter the user name',
	'at_friend'		: '@朋友賬號，就能提醒他來看帖子',//'@Friend, you can remind him to view the post',

//--------------------------------
//static/js/smilies.js

//--------------------------------
//static/js/space_diy.js

	'save_js'		: 'javascript腳本保存後顯示',
	'settings'		: '設置',

//---------------------------
//static/js/swfupload.js

	'attach_file'		: 'Attachment',

//---------------------------
//static/js/threadsort.js

	'select_please'		: '請選擇',
	'required_fill'		: '必填項目沒有填寫',
	'select_next_level'	: '請選擇下一級',
	'numeric_invalid'	: '數字填寫不正確',
	'email_invalid'		: '郵件地址不正確',
	'text_too_long'		: '填寫項目長度過長',
	'value_is_greater'	: '大於設置最大值',
	'value_is_less'		: '小於設置最小值',
	'enter_valid_url'	: '請正確填寫以http://開頭的URL地址',//'Please enter correct URL address beginning with http://',

//--------------------------------
//static/js/upload.js

	'file_not_supported'	: '對不起，不支持上傳此類文件',
	'wait_upload'		: '等待上传...',//'Wait for upload...',
	'upload_selectfile'	: '瀏覽',//'Browse',

//-------------------------------------
//source/function/function_admincp.php
	'version_uptodate'	: 'You are currently using Up-to-date version of Discuz! program. Please refer to the following tips to make timely upgrades.',

//-------------------------------------
//api/manyou/cloud_iframe.js
	'add_operation'		: '添加到常用操作',

//--------------------------------------------
//static/js/googlemap.js + static/js/editor.js

	'map_title'		: 'google圖',//'Google Maps',
	'map_insert'		: '插入google地圖',//'Insert Google Map',
	'map_insert_tips'	: '通過搜索插入google地圖（暫只支持單點標注）！',//'Insert Google Maps by address searching (temporarily supported only single label!)',
	'map_center_changed'	: '地圖中心已經改變！',//'The map center is changed!',
	'map_wrong_address'	: ' 地址錯誤，未找到當前地址',//'Wrong address! Current address was not found',

//-------------------------------------
//	''	: '',//'',

'fiction'	: '' // This key MUST BE THE LAST row!

};

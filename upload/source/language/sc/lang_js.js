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
	'DarkOliveGreen'	: '暗橄榄绿色',
	'DarkGreen'		: '暗绿色',
	'DarkSlateBlue'		: '暗灰蓝色',
	'Navy'			: '海军色',
	'Indigo'		: '靛青色',
	'DarkSlateGray'		: '墨绿色',
	'DarkRed'		: '暗红色',
	'DarkOrange'		: '暗桔黄色',
	'Olive'			: '橄榄色',
	'Green'			: '绿色',
	'Teal'			: '水鸭色',
	'Blue'			: '蓝色',
	'SlateGray'		: '灰石色',
	'DimGray'		: '暗灰色',
	'Red'			: '红色',
	'SandyBrown'		: '沙褐色',
	'YellowGreen'		: '黄绿色',
	'SeaGreen'		: '海绿色',
	'MediumTurquoise'	: '间绿宝石',
	'RoyalBlue'		: '皇家蓝',
	'Purple'		: '紫色',
	'Gray'			: '灰色',
	'Magenta'		: '红紫色',
	'Orange'		: '橙色',
	'Yellow'		: '黄色',
	'Lime'			: '酸橙色',
	'Cyan'			: '青色',
	'DeepSkyBlue'		: '深天蓝色',
	'DarkOrchid'		: '暗紫色',
	'Silver'		: '银色',
	'Pink'			: '粉色',
	'Wheat'			: '浅黄色',
	'LemonChiffon'		: '柠檬绸色',
	'PaleGreen'		: '苍绿色',
	'PaleTurquoise'		: '苍宝石绿',
	'LightBlue'		: '亮蓝色',
	'Plum'			: '洋李色',
	'White'			: '白色'
};

/*
',',	//'，',
'.',	//'。',
':',	//'点',
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
	'restore_last_saved'	: '您确定要恢复上次保存?',
	'cut_manually'		: '您的浏览器安全设置不允许编辑器自动执行剪切操作,请使用键盘快捷键(Ctrl+X)来完成',
	'copy_manually'		: '您的浏览器安全设置不允许编辑器自动执行拷贝操作,请使用键盘快捷键(Ctrl+C)来完成',
	'paste_manually'	: '您的浏览器安全设置不允许编辑器自动执行粘贴操作,请使用键盘快捷键(Ctrl+V)来完成',
	'graffiti_no_init'	: '找不到涂鸦板初始化数据',
	'ie5_only'		: '只支持IE 5.01以上版本',
	'edit_raw'		: '编辑源码',
	'plain_text_warn'	: '转换为纯文本时将会遗失某些格式。\n您确定要继续吗？',
	'browser_update'	: '你的浏览器不支持此功能，请升级浏览器版本',
	'tips'			: '小提示',

//---------------------------
//static/image/editor/editor_function.js
// USED in: /source/admincp/admincp_feed.php
// USED in: /template/default/home/cpacecp_blog.htm
// USED in: /template/default/portal/portalcp_article.htm
// MOVED TO:
//static/js/editor_function.js
	'wysiwyg_only'		: '本操作只在多媒体编辑模式下才有效',

//---------------------------
//static/image/admincp/cloud/cloud.js
	'int_cloud_test'	: '云平台其他接口测试',
	'int_roaming_test'	: '漫游其他接口测试',
	'int_qq_test'		: 'QQ互联接口测试',
	'server_busy'		: '服务器繁忙，请稍后再试',//'The server is busy, please try again later',
	'tested_ok'		: '测试成功，耗时 ',//'The test is successful, time used: ',
//	'seconds'		: ' 秒',//' sec.',

//---------------------------
//static/image/admincp/cloud/qqgroup.js
	'select_topic_to_push'	: '请至少推送一条头条主题和一条列表主题',
	'select_item_to_push'	: '请至少推送一条信息到列表区域',
	'loading'		: '加载中...',
	'push5reached'		: '推送帖子已达到5条，请在右侧取消一些再重试。',
	'click_left'		: '点击左侧',
	'push_to_list'		: '将信息推送到列表',
	'wait_image_upload'	: '图片上传中，请稍后...',





//---------------------------
//upload/static/js/autoloadpage.js
	'loading_content_wait'	: '正在加载, 请稍后...',//'Loading content, wait please...',

//---------------------------
//upload/static/js/at.js
//	'enter_username'	: 'Please enter the user name',//'请输用户名',

//--------------------------------
//static/js/calendar.js
//static/js/forum_calendar.js
//static/js/home_calendar.js

	'prev_month'	: '上一月',
	'next_month'	: '下一月',
	'select_year'	: '点击选择年份',
	'select_month'	: '点击选择月份',
	'wday0'		: '日',
	'wday1'		: '一',
	'wday2'		: '二',
	'wday3'		: '三',
	'wday4'		: '四',
	'wday5'		: '五',
	'wday6'		: '六',
	'month'		: '月',
	'today'		: '今天',
	'hours'		: '点',
	'minutes'	: '分',
	'halfhour'	: '分',//'Half hour',
	'ok'		: 'OK',//'Ok',

//--------------------------------
//static/js/common.js

	'open_new_win'		: '在新窗口打开',
	'actual_size'		: '实际大小',
	'close'			: '关闭',
	'wheel_zoom'		: '鼠标滚轮缩放图片',
	'reminder'		: '提示信息',
	'submit'		: '确定',
	'cancel'		: '取消',
	'wait_please'		: '请稍候...',
	'int_error'		: '内部错误，无法显示此内容',
	'flash_required'	: '此内容需要 Adobe Flash Player 9.0.124 或更高版本',
	'flash_download'	: '下载 Flash Player',
	'day1'			: '一天',
	'week1'			: '一周',
	'days7'			: '7 天',
	'days14'		: '14 天',
	'month1'		: '一个月',
	'month3'		: '三个月',
	'month6'		: '半年',
	'year1'			: '一年',
	'custom'		: '自定义',
	'permanent'		: '永久',
	'show_all_expr'		: '显示所有表情',
	'page_prev'		: '上页',
	'page_next'		: '下页',
	'copy2clipboard'	: '点此复制到剪贴板',
// ATTENTION!
// The next line must have the same value as in /template.php - 'enter_content' !!!
	'enter_search_string'	: '请输入搜索内容',
	'refresh_q&a'		: '刷新验证问答',
	'refresh_code'		: '刷新验证码',
	'code_invalid'		: '验证码错误，请重新填写',
	'q&a_invalid'		: '验证问答错误，请重新填写',
	'code_clipboard'	: '代码已复制到剪贴板',
	'enter_link_url'	: '请输入链接地址',
	'enter_link_text'	: '请输入链接文字',
	'enter_image_url'	: '请输入图片地址',
	'width_optional'	: '宽(可选)',
	'height_optional'	: '高(可选)',
	'narrow_screen'		: '切换到窄版',
	'wide_screen'		: '切换到宽版',
	'logging_wait'		: '登录中，请稍后...',
	'notices_no'		: '【　　　】',
	'notices_yes'		: '【新提醒】',
	'sec_after_win_closed'	: ' 秒后窗口关闭',
	'sec_after_page_jump'	: ' 秒后页面跳转',
	'jump_now'		: '立即跳转',
	'error_message'		: '错误信息',
	'ctrl_d_favorites'	: '请按 Ctrl+D 键添加到收藏夹',
	'non_ie_manually'	: '非 IE 浏览器请手动将本站设为首页',
	'blind_enable'		: '开启盲人体验',//tc:'開啟盲人體驗',//'Enable blind experience',
	'blind_disable'		: '关闭盲人体验',//tc:'關閉盲人體驗',//'Disable blind experience',

//--------------------------------
//static/js/common_diy.js

	'edit'			: '编辑',
	'warn_not_saved'	: '您的数据已经修改,退出将无法保存您的修改。',
	'confirm_exit'		: '退出将不会保存您刚才的设置。是否确认退出？',
	'select_image_upload'	: '请选择您要上传的图片',

//--------------------------------
//static/js/common_extra.js
//	'wait_please'		: 'Loading ...',//'请稍候...',
	'copy_failed'		: '复制失败，请选择“允许访问”',
	'prev'			: '上一张',
	'next'			: '下一张',//'下一页',
        'shortcut_add'		: '添加桌面快捷',
        'shortcut_1'		: '1、点击"',
        'shortcut_1_1'		: '下载桌面快捷',
        'shortcut_1_2'		: '"，下载完成后，可移动文件到系统桌面',
        'shortcut_2'		: '2、点击"',
        'shortcut_2_1'		: '下载ICO图标',
        'shortcut_2_2'		: '"，下载完成后，右击桌面快捷文件->属性->更改图标，选择已下载的ICO图标即可',

//--------------------------------
//static/js/editor.js

	'restore_size_edit'	: '恢复编辑器大小',
	'full_screen_edit'	: '全屏方式编辑',
	'current_length'	: '当前长度',
	'bytes'			: '字节',
	'system_limit'		: '系统限制',
	'up_to'			: '到',
	'check_length'		: '字数检查',
	'data_restored'		: '数据已恢复',
	'data_saved'		: '数据已保存',
	'clear_all_sure'	: '您确认要清除所有内容吗？',
	'hide_content'		: '请输入要隐藏的信息内容',
	'free_content'		: '如果您设置了帖子售价，请输入购买前免费可见的信息内容',
	'when_thread_replied'	: '只有当浏览者回复本帖时才显示',
	'when_points_more'	: '只有当浏览者积分高于',
	'when_show'		: '时才显示',
	'table_rows'		: '表格行数',
	'table_columns'		: '表格列数',
	'table_width'		: '表格宽度: ',
	'bg_color'		: '背景颜色',
	'table_intro0'		: '快速书写表格提示',
	'table_intro1'		: '“[tr=颜色]” 定义行背景<br />“[td=宽度]” 定义列宽<br />“[td=列跨度,行跨度,宽度]” 定义行列跨度<br /><br />快速书写表格范例：',
	'table_intro2'		: '[table]<br />Name:|Discuz!<br />Version:|X1<br />[/table]',
	'table_intro3'		: '用“|”分隔每一列，表格中如有“|”用“\\|”代替，换行用“\\n”代替。',
	'audio_url'		: '请输入音乐文件地址',
	'video_url'		: '请输入视频地址',
	'auto_play'		: '是否自动播放',
	'flash_url'		: '请输入 Flash 文件地址',
	'enter_please'		: '请输入第',
	'nth_parameter'		: ' 个参数',
	'font'			: '字体',
	'full_screen'		: '全屏',
	'restore_size'		: '恢复',
	'general'		: '常用',
	'simple'		: '高级',
	'bad_browser'		: '你的浏览器不支持此功能',
	'click_autosave_enable'	: '点击开启自动保存',
	'autosave_enable'	: '开启自动保存',
	'autosave_disable'	: '点击关闭自动保存',
	'autosave_enabled'	: '数据自动保存已开启',
	'autosave_disabled'	: '数据自动保存已关闭',
	'data_saved_at'		: '数据已于',
	'saved_time'		: '保存',
	'sec_before_saving'	: '秒后保存',
	'insert_quote'		: '请输入要插入的引用',
	'insert_code'		: '请输入要插入的代码',
	'enter_item_list'	: '输入一个列表项目.\r\n留空或者点击取消完成此列表.',
	'width'			: '宽',
	'height'		: '高',
	'audio_support'		: '支持 wma mp3 ra rm 等音乐格式<br />示例: http://server/audio.wma',
	'video_support'		: '支持优酷、土豆、56、酷6等视频站的视频网址<br />支持 wmv avi rmvb mov swf flv 等视频格式<br />示例: http://server/movie.wmv',
	'flash_support'		: '支持 swf flv 等 Flash 网址<br />示例: http://server/flash.swf',
	'paste_from_word'	: '从 Word 粘贴内容',
	'paste_word_tip'	: '请通过快捷键(Ctrl+V)把 Word 文件中的内容粘贴到上',
	'show_tips'		: '友情提示',
	'expire_days'		: '有效天数',//'Valid for (days)',
	'expire_days_invalid'	: '距离发帖日期大于这个天数时标签自动失效',//'Distance from the posting date is greater than the number of days when the label automatically expire',
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

	'del_thread_sure'	: '您确认要把此主题从热点主题中移除么？',
	'there_are'		: '有',
	'new_reply_exists'	: '有新回复的主题，点击查看',
	'finished'		: '已结束',//'Finished',
	'days_num'		: '天',//' days',
	'hours_num'		: '小时',//' hours',
	'minutes_num'		: '分',//' minutes',
	'seconds'		: ' 秒',//' sec.',

//--------------------------------
//static/js/forum_google.js

	'search_net'	: '网页搜索',
	'search_site'	: '站内搜索',
	'search'	: '搜索',

//--------------------------------
//static/js/forum_moderate.js

	'choose_tread'	: '请选择需要操作的帖子',

//--------------------------------
//static/js/forum_post.js

	'internal_error'	: '内部服务器错误',
	'upload_ok'		: '上传成功',
	'ext_not_supported'	: '不支持此类扩展名',
	'sorry_ext_not_supported'	: '对不起，不支持上传此类扩展名的附件。',
	'illegal_image_type'	: '图片附件不合法',
	'can_not_save_attach'	: '附件文件无法保存',
	'invalid_file'		: '没有合法的文件被上传',
	'illegal_operation'	: '非法操作',
	'today_upload_large'	: '今日您已无法上传那么大的附件',//'Today you can not upload so much attachments',
	'enter_content'		: '请完成标题或内容栏',
	'select_category'	: '请选择主题对应的分类',
	'select_category_info'	: '请选择主题对应的分类信息',
	'title_long'		: '您的标题超过 80 个字符的限制',
	'content_long'		: '您的帖子长度不符合要求。\n\n',
	'ignore_pending_attach'	: '您有等待上传的附件，确认不上传这些附件吗？',
	'still_uploading'	: '您有正在上传的附件，请稍候，上传完成后帖子将会自动发表...',
	'no_data_recover'	: '没有可以恢复的数据！',
	'content_overwrite'	: '此操作将覆盖当前帖子内容，确定要恢复数据吗？',
	'upload_finished'	: '附件上传完成！',
	'successfull'		: '成功',
	'failed'		: '失败',
	'ones'			: '个',
	'uploading'		: '上传中...',
	'select_image_files'	: '请选择图片文件',
	'delete'		: '删除',
	'contains'		: '包含',
	'img_attached_num'	: '个图片附件',
	'files attached_num'	: '个附件',
	'images'		: '图片',
	'attachments'		: '附件',
//	'upload_failed'		: '上传失败',
	'remote_attach_loaded'	: '远程附件下载完成!'//'Remote attachment download is completed!',
	'select_all'		: '全选',//'Select All',
	'unused'		: '未使用的',//'Unused',
	'award_more_total'	: '回帖奖励积分总额过大',//'Reply Reward Points total is too large',
	'return'		: '返还',//'Return',

	'attach_big'		: '服务器限制无法上传那么大的附件',
	'attach_group_big'	: '用户组限制无法上传那么大的附件',
	'attach_type_big'	: '文件类型限制无法上传那么大的附件',
	'attach_daily_big'	: '本日已无法上传更多的附件',
	'validating_q&a'	: '验证问答校验中，请稍后',
	'validating_code'	: '验证码校验中，请稍后',
	'attach_type_disabled'	: '附件类型被禁止',
	'attach_max'		: '不能超过',
	'vote_max_reached'	: '已达到最大投票数',
	'no_remote_attach'	: '抱歉，暂无远程附件',
	'delete_post_sure'	: '确定要删除该帖子吗？',
	'feed_add_confirm'	: '由于您设置了阅读权限或出售帖，您确认还转播给您的听众看吗？',//'Because of you have set read permission or sell the post, do you confirm also the broadcast to your listeners to see?',
//--------------------------------
//static/js/forum_viewthread.js

	'best_answer_sure'	: '您确认要把该回复选为“最佳答案”吗？',
	'premoderated'		: '本版回帖需要审核，您的帖子将在通过审核后显示',
	'credit_confirm1'	: '下载需要消耗',
	'credit_confirm2'	: '，您是否要下载？',
	'thread_to_clipboard'	: '帖子地址已经复制到剪贴板',
	'click_to_enlarge'	: '点击放大',
	'notify_on_reply'	: '接收回复通知',
	'notify_on_reply_cancel'	: '取消回复通知',
	'share_connection_failed'	: '分享服务连接失败，请稍后再试',
	'qq_bind'		: '请先绑定QQ账号',
	'quote_by'		: '本帖最后由 .*? 于 .*? 编辑',
	'copy_code'		: '复制代码',
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
	'file_selected_exceed'	: '您选择的文件个数超过限制。',//'You have selected too many files.',
	'upload_number_exceed'	: '您已达到上传文件的上限了。',//'You cannot add any more files.',
	'can_choose_more'	: '您还可以选择 ',//'You may only add ',
	'files'			: ' 个文件',//' more files',
	'file_is_large'		: '文件太大.',//'File is too large.',
	'file_is_empty'		: '不能上传零字节文件.',//'You can not upload a zero byte file.',
	'file_type_disabled'	: '禁止上传该类型的文件.',//'Upload of such type files is disabled.',
	'unhandled_error'	: 'Unhandled Error',//'',
	'upload_progress'	: '正在上传',//'Uploaded ',
	'upload_cancelled'	: '取消上传',//'Cancelled',
	'file_description'	: '图片描述',//'File Description',
	'image_upload_failed'	: '图片上传失败',//'Image upload failed',
	'upload_failed'		: '上传失败',//'Upload failed',
	'upload_completed'	: '上传完成.',//'Upload completed.',
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
	'category_empty'	: '分类名不能为空！',

//--------------------------------
//static/js/home_ajax.js

//	'close'			: '关闭',
//	'wait_please'		: '请稍候...',

//--------------------------------
//static/js/home_blog.js

	'title_length_invalid'	: '标题长度(1~80字符)不符合要求',

//--------------------------------
//static/js/home_common.js

	'show_orig_image'	: '点击图片，在新窗口显示原始尺寸',
	'continue_sure'		: '您确定要执行本操作吗？',
	'select_item'		: '请选择要操作的对象',
	'image_url_invalid'	: '图片地址不正确',
	'audio_url_invalid'	: '音乐地址错误，不能为空',

//!!!!! MayBe wrap this names!!
	'collapse'		: '收起',
	'expand'		: '展开',

//--------------------------------
//static/js/home_friendselector.js

	'select_max'		: '最多只允许选择',
	'users'			: '个用户',
	'allready_exists'	: '已经存在',

//--------------------------------
//static/js/home_manage.js

	'you_friends_now'	: '你们现在是好友了，接下来，您还可以：',
	'leave_message'		: '给TA留言',
	'or'			: '或者',
	'send_greeting'		: '打个招呼',
	'reply'			: '回复',
	'comment'		: '评论',
	'close_list'		: '收起列表',
	'more_feeds'		: '更多动态',

//--------------------------------
//static/js/home_uploadpic.js

	'image_type_invalid'	: '对不起，不支持上传此类扩展名的图片',
	'insert_to_content'	: '点击这里插入内容中当前光标的位置',
	'insert'		: '插入',
	'image_description'	: '图片描述',
	'uploading_wait'	: '上传中，请等待',
	'retry'			: '重试',

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
	'generate_first'	: '正在生成第 ',//' generated first ',
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

	'delete_sure'		: '您确定要删除该数据吗？',
	'ignore_sure'		: '您确定要屏蔽该数据吗？',
	'to'			: '到',

	'choose_block'		: '选择模块',
	'blocks_found1'		: '找到',
	'blocks_found2'		: '个相应的模块',
	'blocks_not_found'	: '没有相应的模块',
	'select_block'		: '请选择一个模块！',
	'show_settings'		: '展开设置项',
	'hide_settings'		: '收起设置项',
	'block_name_empty'	: '模块标识不能为空',
	'block_convert_sure'	: '你确定要转换模块的类型从',
	'back'			: '返回',
	'settings_expand'	: '展开设置项',
	'settings_hide'		: '收起设置项',
	'custom_content_error'	: '自定义内容错误，',
	'html_error'		: 'HTML代码：',
	'tags_not_match'	: ' 标签不匹配',
	'entered'		: '已输入 ',//'Have entered ',
	'exceed'		: '超出 ',//'Exceed ',
	'title_length_bad'	: '标题长度不正确',//'The title is incorrect',
	'summary_length_bad'	: '简介长度不正确',//'Summary length is incorrect',

//--------------------------------
//static/js/portal_diy.js

	'choose_style'		: '选择样式',
	'style'			: '样式',
	'style1'		: '样式1',
	'style2'		: '样式2',
	'style3'		: '样式3',
	'style4'		: '样式4',
	'style5'		: '样式5',
	'style6'		: '样式6',
	'style7'		: '样式7',
	'no_border'		: '无边框框架',
	'no_border_no_margin'	: '无边框且无边距',

	'title'			: '标题',
	'attribute'		: '属性',
	'data'			: '数据',
	'update'		: '更新',
	'export'		: '导出',
	'repeat'		: '平铺',
	'no_repeat'		: '不平铺',
	'repeat_x'		: '横向平铺',
	'repeat_y'		: '纵向平铺',
	'no_style'		: '无样式',
	'solid_line'		: '实线',
	'dotted_line'		: '点线',
	'dashed_line'		: '虚线',
	'link'			: '链接',
	'border'		: '边框',
	'size'			: '大小',
	'color'			: '颜色',
	'separate_config'	: '分别设置',
	'right'			: '右',
	'bottom'		: '下',
	'top'			: '上',
	'left'			: '左',
	'margin'		: '外边距',
	'padding'		: '内边距',
	'bg_image'		: '背景图片',
	'class'			: '指定class',
	'block'			: '模块',
	'frame'			: '框架',
	'onclick'		: '点击',
	'onmouseover'		: '滑过',
	'switch_type'		: '切换类型',
	'image'			: '图片',
	'position'		: '位置',
	'align_left'		: '居左',
	'align_right'		: '居右',
	'offset'		: '偏移量',
//!!! mainly the same as 'color' !!!!!!
//	'colour'		: '色',
	'add_new_title'		: '添加新标题',
	'delete_this_sure'	: '您确实要删除吗,删除以后将不可恢复',
	'loading_content'	: '正在加载内容...',
	'modified_import'	: '您已经做过修改，请保存后再做导出，否则导出的数据将不包括您这次所做的修改。',
	'total'			: '共',
	'blocks'		: '个模块',
	'updating_the'		: '正在更新第',
	'done'			: '已完成',
	'start_updating'	: '开始更新...',
	'update_block_data'	: '更新模块数据',
	'clear_diy_sure'	: '您确实要清空页面上所在DIY数据吗,清空以后将不可恢复',
	'frame_not_found'	: '提示：未找到框架，请先添加框架。',
	'apply_all_pages'	: '应用于此类全部页面',
	'apply_current_page'	: '只应用于本页面',
	'save_temp_sure'	: '是否保留暂存数据？<br />按确定按钮将保留暂存数据，按取消按钮将删除暂存数据。',
	'save_temp'		: '保留暂存数据',
	'revert_last_saved'	: '您确定要恢复到上一版本保存的结果吗？',
	'continue_temp_sure'	: '是否继续暂存数据的DIY？',
	'update_completed'	: '已操作完成。',//'Operation completed successfully.',
	'tab_label'		: 'tab标签',
	'temp_action'		: '按继续按钮将打开暂存数据并DIY，<br />按删除按钮将删除暂存数据。',
	'continue'		: '继续',
	'block_no_rights'	: '抱歉，您没有权限添加或编辑模块',//'Sorry, you have no permission to add or edit block',

//--------------------------------
//static/js/portal_diy_data.js
	'data_manage'		: '可直接管理模块数据',//'Direct management of the block data',
	'quit'			: '退出',//'Quit',
//--------------------------------
//static/js/qshare.js
	'from_tencent'		: "\u6211\u6765\u81EA\u4E8E\u817E\u8BAF\u5FAE\u535A\u5F00\u653E\u5E73\u53F0",

//--------------------------------
//static/js/register.js

	'username_invalid'	: '用户名包含敏感字符',
	'username_short'	: '用户名小于 3 个字符',
	'username_long'		: '用户名超过 15 个字符',
	'username_long_64'	: '用户名超过 64 个字符',//'User name is longer than 64 bytes',
	'passwords_not_equal'	: '两次输入的密码不一致',
	'email_invalid'		: 'Email 包含敏感字符',
	'invite_code_invalid'	: '邀请码包含敏感字符',
	'password_fill'		: '请填写密码',
	'password_again'	: '请再次输入密码',
	'email_fill'		: '请输入邮箱地址',
	'length_min'		: ', 最小长度为 ',//', Minimum length',
	'chars'			: ' 个字符',//' characters',
	'password_strength'	: '密码强度:',//'Password strength: ',
	'pw_weak'		: '弱',//'Weak',
	'pw_middle'		: '中',//'So-so',
	'pw_strong'		: '强',//'Strong'
	'pass_short'		: '密码太短，不得少于 ',//'Password is too short, must be not less than ',
	'digital'		: '数字',//'Digital',
	'lowercase'		: '小写字母',//'Lowercase letters',
	'capitals'		: '大写字母',//'Capital letters',
	'specials'		: '特殊符号',//'Special symbols',
	'pw_weak_info'		: '密码太弱，密码中必须包含 ',//'Weak password, the password must contain ',
	'leave_blank_old_pass'	: '如不需要更改密码，此处请留空',//'Leave blank if you do not need to change the password',

//--------------------------------
//static/js/seditor.js
	'enter_username'	: '请输用户名',//'Please enter the user name',
	'at_friend'		: '@朋友账号，就能提醒他来看帖子',//'@Friend, you can remind him to view the post',

//--------------------------------
//static/js/smilies.js

//--------------------------------
//static/js/space_diy.js

	'save_js'		: 'javascript脚本保存后显示',
	'settings'		: '设置',

//---------------------------
//static/js/swfupload.js

	'attach_file'		: 'Attachment',

//---------------------------
//static/js/threadsort.js

	'select_please'		: '请选择',
	'required_fill'		: '必填项目没有填写',
	'select_next_level'	: '请选择下一级',
	'numeric_invalid'	: '数字填写不正确',
	'email_invalid'		: '邮件地址不正确',
	'text_too_long'		: '填写项目长度过长',
	'value_is_greater'	: '大于设置最大值',
	'value_is_less'		: '小于设置最小值',
	'enter_valid_url'	: '请正确填写以http://开头的URL地址',//'Please enter correct URL address beginning with http://',

//--------------------------------
//static/js/upload.js

	'file_not_supported'	: '对不起，不支持上传此类文件',
	'wait_upload'		: '等待上传...',//'Wait for upload...',

//-------------------------------------
//source/function/function_admincp.php
	'version_uptodate'	: 'You are currently using Up-to-date version of Discuz! program. Please refer to the following tips to make timely upgrades.',

//-------------------------------------
//api/manyou/cloud_iframe.js
	'add_operation'		: '&#28155;&#21152;&#21040;&#24120;&#29992;&#25805;&#20316;',

//--------------------------------------------
//static/js/googlemap.js + static/js/editor.js

	'map_title'		: 'google图',//'Google Maps',
	'map_insert'		: '插入google地图',//'Insert Google Map',
	'map_insert_tips'	: '通过搜索插入google地图（暂只支持单点标注）！',//'Insert Google Maps by address searching (temporarily supported only single label!)',
	'map_center_changed'	: '地图中心已经改变！',//'The map center is changed!',
	'map_wrong_address'	: ' 地址错误，未找到当前地址',//'Wrong address! Current address was not found',

//-------------------------------------
//	''	: '',//'',

'fiction'	: '' // This key MUST BE THE LAST row!

};

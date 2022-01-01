<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: lang_template.php 33048 2013-04-12 08:50:27Z zhangjie $
 *
 *      Modified by Valery Votintsev, codersclub.org
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

$lang = array (
  'forum' => '版块',
  'homepage' => '首页',
  'no_content' => '抱歉，此模块没有更多内容',
  'portal' => '{$_G[\'setting\'][\'navs\'][1][\'navname\']}',
  'category' => '分类',
  'comment' => '评论',
  'comment_view' => '查看评论',
  'hide_portal_comment' => '提示：本页有 $pricount 个评论因未通过审核而被隐藏',
  'post_comment' => '发表评论',
  'delete' => '删除',
  'edit' => '编辑',
  'moderate_not_validate' => '审核未通过',
  'quote' => '引用',
  'article_publish' => '发布文章',
  'category_related' => '相关分类',
  'rss_subscribe_this' => '订阅',
  'sub_category' => '下级分类',
  'article_hot' => '热门内容',
  'article_last' => '最新文章',
  'portal_attachment_big_img' => '插入大图',
  'portal_attachment_set_cover' => '设为封面',
  'portal_attachment_small_img' => '小图',
  'latest_comment' => '最新评论',
  'view_all_comments' => '查看全部评论',
  'diyhelp_doit' => '自己动手，让自己拥有个性的页面。请点击上面的按钮开始 DIY，或者',
  'diyhelp_import' => '导入程序现有模板',
  'diyhelp_no_content' => '正在建设中，请稍候……',
  'diyhelp_start_diy' => '开始 DIY',
  'frame' => '框架',
  'article_author' => '原作者',
  'article_auto_grab' => '自动获取',
  'article_category' => '频道栏目',
  'article_comment_setup' => '评论设置',
  'article_dateline' => '发布时间',
  'article_delete' => '删除文章',
  'article_delete_direct' => '直接删除',
  'article_delete_recyclebin' => '放入回收站',
  'article_delete_sure' => '确认要删除此文章吗？',
  'article_description' => '摘要',
  'article_edit' => '编辑文章',
  'article_forbidcomment_description' => '禁止评论',
  'article_getauthorall' => '获取楼主所有帖子',
  'article_id' => '文章 ID',
  'article_pushplus' => '文章连载',
  'article_related' => '添加相关文章',
  'article_send_continue' => '继续发布新文章',
  'article_send_succeed' => '发布文章成功',
  'article_show_inner_navigation' => '显示分页导航',
  'article_source' => '文章来源',
  'article_source_url' => '来源地址',
  'article_tag' => '聚合标签',
  'article_title' => '标　　题',
  'article_url' => '跳转URL',
  'article_validate_category' => '请选择系统分类',
  'article_validate_has_added' => '该文章已经添加过了',
  'article_validate_noexist' => '没有找到指定的文章',
  'article_html_existed' => 'HTML静态文件名重名',
  'article_validate_title' => '标题长度不符合要求',
  'grab' => '获取',
  'ignore' => '忽略',
  'moderate_article' => '审核文章',
  'page_title' => '分页标题',
  'passed' => '通过',
  'portalcp_article_message1' => '个新帖将添加到文章连载。',
  'portalcp_article_message2' => '提示：$pushedcount 个帖子已经在连载中了',
  'select' => '选择',
  'select_color' => '点击选择颜色',
  'submit' => '提交',
  'view_article' => '查看文章',
  'block_adddata' => '添加',
  'block_adddata_comment' => '添加数据',
  'block_cancel_favorite' => '取消收藏',
  'block_data' => '模块数据',
  'block_data_block' => '屏蔽数据',
  'block_data_custom' => '自定义内容',
  'block_data_from_datasource' => '从数据源获取',
  'block_data_source' => '数据来源',
  'block_data_update_cache' => '数据缓存更新',
  'block_display_position' => '显示位置',
  'block_display_style' => '显示样式',
  'block_edit' => '编辑模块',
  'block_expire_time' => '失效时间',
  'block_expire_time_comment' => '留空表示不失效',
  'block_favorite' => '收藏',
  'block_id' => '模块标识',
  'block_isblank' => '只接受推送数据',
  'block_isblank_tips' => '勾选此项，则该模块只显示推送的数据，不自动聚合数据',
  'block_item_display_num' => '显示条数',
  'block_itemdata' => '推送库',
  'block_management' => '模块管理',
  'block_moreurl' => '更多页设置',
  'block_properties' => '模块属性',
  'block_properties_comment' => '此模块数据由属性决定，请编辑属性以展示需要的数据',
  'block_start_time' => '开始时间',
  'block_start_time_comment' => '留空表示立即开始',
  'block_stop' => '屏蔽',
  'block_template' => '模块模板',
  'block_type' => '模块分类',
  'block_type_convert_tips' => '此模块分类支持转换模块的类型，但<font color=\'red\'>可能会存在部分特殊字段的丢失且模块的显示样式将会变为自定义模板</font>，请根据需要使用。<br/><font color=\'red\'>注意：</font>选择下拉列表中的模块类型以后模块分类立即发生改变。',
  'block_view_banned_data' => '查看屏蔽数据',
  'cachetimerange' => '更新区间',
  'cancel' => '取消',
  'current_data_odd' => '当前数据是否在奇数行',
  'current_data_order' => '当前数据顺序',
  'data_repeat_recommend' => '此信息已被推送，再次推送将使用本次修改数据',
  'day' => '天',
  'default_loop_content' => '默认循环显示内容',
  'diy_module' => '自定义模板',
  'edit_data' => '编辑数据',
  'edit_diy_content' => '编辑自定义内容',
  'grammar' => '语法',
  'hide' => '隐藏',
  'hide_setting' => '收起设置项',
  'hidedisplay' => '隐藏输出',
  'hidedisplay_tips' => '不输出模块内容；而是提供数据供模板调用。',
  'hour' => '小时',
  'image' => '图片',
  'is_stick' => '是否置顶',
  'locked' => '固定',
  'minute' => '分钟',
  'mod_name' => '模块模板名称',
  'mod_save_to' => '模板另存为...',
  'moderate_data' => '审核数据',
  'moderate_message' => '勾选则加入审核库；否则直接加入模块推送库',
  'more_introduction' => '更多说明...',
  'more_url' => '更多链接',
  'need_moderate' => '需要审核',
  'never_update' => '永不更新',
  'no' => '否',
  'no_data' => '没有相关数据',
  'no_data_mod' => '此模块的推送库里还没有任何数据',
  'not_auto_update' => '不自动更新',
  'not_stick' => '不置顶',
  'operation' => '操作',
  'pass_moderate_time' => '通过审核时间',
  'perpage' => '显示条数',
  'perpage_tips' => '设置更多页每页显示数据的条数',
  'point' => '点',
  'portalcp_block_message1' => '提醒： 您选择了隐藏输出，模块不会输出任何内容；但是您可以在页面模板中调用模块的数据。',
  'portalcp_block_message2' => '输入名称将此样式保存到公共模块模板(以便在其他模块中使用)',
  'position' => '位置',
  'preorder' => '预订',
  'punctualupdate' => '准时更新',
  'punctualupdate_tips' => '为了减轻系统负载，系统设定为同一时间最多只更新一个模块；勾选此项可以忽略此优化，保证模块按指定缓存时间及时更新(警告：这会严重加重系统负载！不要同一页面内设置大量“准时更新”模块！)',
  'reference_call_data' => '参考调用格式',
  'reference_call_field' => '可调用字段',
  'reference_message' => '请参考： 后台 - 门户 - 模块模板 - 编辑/添加模板',
  'replace_loop_content' => '替代对应loop中指定数据内容，[order=odd]为奇数行，[order=even]为偶数行',
  'seodescription' => 'SEO Description',
  'seodescription_tips' => '设置更多页的页面SEO Description',
  'seokeywords' => 'SEO Keywords',
  'seokeywords_tips' => '设置更多页的页面SEO Keywords',
  'seotitle' => 'SEO Title',
  'seotitle_tips' => '设置更多页的页面SEO Title',
  'set_open_link' => '可设置打开方式的链接',
  'set_small_pic' => '可设置缩略图大小的图片',
  'special_data_content' => '特殊指定数据显示内容',
  'statements' => '语句',
  'stick' => '置顶',
  'stick_level' => '置顶等级',
  'title' => '标题',
  'todo_updateblock' => '更新模块',
  'todo_updateblock_message' => '即时更新模块数据',
  'update_mod' => '更新模块',
  'update_mod_now' => '立即更新该模块数据',
  'verify_message' => '您推送的信息将进入审核库',
  'cut' => '裁切',
  'remote' => '远程',
  'block_link_target_blank' => '新链接打开',
  'block_link_target_self' => '本页面打开',
  'block_link_target_top' => '本页面打开(跳出框架)',
  'block_link_target_type' => '链接打开方式',
  'block_thumb_height' => '缩略图高度',
  'block_thumb_width' => '缩略图宽度',
  'dateformat' => '日期格式',
  'dateuformat' => '使用人性化日期格式',
  'dateuformat_tips' => '勾选此项，则最近的时间显示“几天前”的形式',
  'action_invalid' => '请选择要进行的操作',
  'all' => '全部',
  'article_category_move' => '移到栏目',
  'article_manage' => '文章管理',
  'article_new' => '新文章',
  'article_not_choose' => '请选择要操作的文章',
  'article_operation' => '操作',
  'article_subject' => '文章标题',
  'category_management' => '频道栏目',
  'ignored' => '已忽略',
  'me' => '我的文章',
  'moderate' => '审核',
  'portalcp_perpage' => '每页显示',
  'view_space' => '查看空间',
  'comment_delete' => '删除回复',
  'comment_delete_confirm' => '确定删除指定的回复吗？',
  'comment_edit_content' => '编辑内容',
  'background' => '背景',
  'background_attach_fixed' => '固定',
  'background_attach_mode' => '背景滚动',
  'background_attach_scroll' => '滚动',
  'background_color' => '背景颜色',
  'background_image_cancel' => '取消背景图',
  'content_area' => '内容区',
  'diy_change' => '更换',
  'diy_editing' => '正在编辑',
  'diy_systemfile' => '系统内置',
  'diy_update_start' => '开始上传',
  'diy_upload_image' => '上传新图片',
  'diy_uploadfile' => '上传文件',
  'image_position' => '图片位置',
  'image_repeat' => '平铺',
  'image_repeat_direct' => '直接使用',
  'image_repeat_horizontal' => '横向平铺',
  'image_repeat_mode' => '图片平铺',
  'image_repeat_vertical' => '纵向平铺',
  'import' => '导入',
  'import_frame' => '导入框架',
  'import_select_file' => '选择要导入的文件',
  'import_system_file_no_exists' => '没有找到内置文件',
  'import_text_file_from' => '文本文件的位置',
  'link_color' => '链接颜色',
  'restore_skin' => '恢复原装皮肤',
  'text_color' => '文字颜色',
  'title_bar' => '标题栏',
  'article_numbers' => '文章数',
  'category_name' => '分类名称',
  'category_push_select' => '选择一个频道分类：',
  'portalcp_has_no_category' => '您还没有创建任何频道栏目',
  'portalcp_index_message' => '您还没有可管理的频道栏目',
  'block_recommend_data_in_block' => '已被推送到的模块',
  'has_no_block' => '没有要推送的模块',
  'select_block' => '请在下面选择要推送的模块',
  'admin_pm' => '通知作者',
  'all_page' => '全部页面',
  'block_in_updateline' => '已进入更新队列',
  'block_list' => '模块列表',
  'block_no_managable' => '没有可管理的模块',
  'block_not_in_updateline' => ' 秒后进入更新队列',
  'block_operation' => '操作',
  'block_page' => '所在页面',
  'block_verifieddata' => '已审核数据',
  'block_verifydata' => '未审核数据',
  'click_return_list' => '点击返回列表页',
  'data' => '数据',
  'find' => '查找',
  'mod_category' => '模块分类',
  'property' => '属性',
  'push' => '推送',
  'push_dateline' => '推送时间',
  'push_people' => '推送者',
  'push_updateblock' => '加入更新队列',
  'push_updateblock_tips' => '已经加入更新队列的模块并不立即更新，当此模块所在的页面被访问时才触发更新，请耐心等待',
  'show_push' => '显示推送标志',
  'unoperation' => '&minus;',
  'unused' => '未使用',
  'update_block_tips' => '数据通过审核以后，相应的模块将加入更新队列',
  'view_select_mod' => '仅显示搜索条件下的模块。 ',
  'add_by_self' => '手工添加',
  'add_portal_related_success' => '操作成功 ',
  'already_select' => '已选',
  'manage_related_article' => '管理相关文章',
  'max_wait_select' => '最多显示50条',
  'move_down' => '下移',
  'move_up' => '上移',
  'selected_tag_selected' => '将选中项标记为已选',
  'wait_select' => '待选',
  'link_to_internet' => '网络链接',
  'modify' => '修改',
  'topic_add' => '新建专题',
  'topic_additional' => '附加内容',
  'topic_allowcomment' => '是否允许评论',
  'topic_cover' => '专题封面',
  'topic_cover_current' => '当前封面',
  'topic_create_closed' => '创建专题时默认为关闭',
  'topic_custom_start' => '开始自定义 <b>{$topic[\'title\']}</b> 吧～',
  'topic_description' => 'SEO 描述',
  'topic_description_comment' => '专题介绍,此描述内容用于搜索引擎优化，放在 meta 的 description 标签中',
  'topic_domain' => '二级域名',
  'topic_domain_comment' => '根域名设置完后，此处域名绑定才能生效，<a href="admin.php?action=domain&operation=root&highlight=专题" target="_blank">设置根域名</a>，专题的二级域名，不能重复',
  'topic_edit' => '编辑专题',
  'topic_keyword' => 'SEO 关键字',
  'topic_keyword_comment' => '此关键词用于搜索引擎优化，放在 meta 的 keyword 标签中，多个关键字间请用半角逗号 "," 隔开',
  'topic_navs' => '站点导航',
  'topic_opened' => '是否开启',
  'topic_page_bottom' => '站点尾部信息',
  'topic_static_name' => '静态化名称',
  'topic_static_name_comment' => '用于专题静态化时显示在链接中的个性化名称，不能重复',
  'topic_submit' => '专题标题',
  'topic_tplname_comment' => '请将模板文件上传到模板目录的portal目录下，如：template/default/portal目录下，文件名必须为portal_topic_*.htm，*为自定义文件名<br />如果要重新选择模板，请确保新模板与原模板中可拖拽区域具有相同的ID，否则将会丢失分部或全部原DIY数据',
  'tplname' => '模板名',
  'upload_from_local' => '本地上传',
  'yes' => '是',
  'article_inner_navigation' => '本文导航',
  'article_inner_page' => '页',
  'article_inner_page_pre' => '第',
  'from' => '来自',
  'nav_index' => '{$_G[\'setting\'][\'navs\'][1][\'navname\']}',
  'view_author_original' => '原作者',
  'view_comments' => '评论',
  'view_content' => '查看内容',
  'view_publisher' => '发布者',
  'view_related' => '相关阅读',
  'view_views' => '查看',
  'pre_article' => '上一篇：',
  'next_article' => '下一篇：',
  'display_order' => '显示位置',
  'filename' => '文件名',

// Added by Valery Votintsev
	'select_all'	=> '全选',//'Select All',
	'select_mod'	=> '选择模块',//'Choose module',
	'select_page'	=> '选择页面',//'Select page',
);


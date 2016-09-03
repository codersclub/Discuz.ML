<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: lang_setting.php by Valery Votintsev, codersclub.org
 *
 *      This file is automatically generate
 */

$lang = array (
//---------------------------
//vot: Titles from install_var.php, pre_common_nav table

	'nav_1'		=> '门户',//'Portal',
	'nav_2'		=> '论坛',//'Forum',
	'nav_3'		=> '群组',//'Groups',
	'nav_4'		=> '家园',//'Space',
	'nav_5'		=> '应用',//'Applications',
	'nav_6'		=> '插件',//'Plugins',
	'nav_7'		=> '帮助',//'Help',
	'nav_8'		=> '排行榜',//'RankList',
	'nav_9'		=> '广播',//'Follows',
	'nav_10'	=> '导读',//'Guide',
	'nav_11'	=> '淘帖',//'Collections',
	'nav_12'	=> '日志',//'Blogs',
	'nav_13'	=> '相册',//'Albums',
	'nav_14'	=> '分享',//'Shares',
	'nav_15'	=> '记录',//'Moods',
//--
	'nav_portal'	=> '门户',//'Portal',
	'nav_blog'	=> '日志',//'Blogs',
	'nav_album'	=> '相册',//'Albums',
	'nav_share'	=> '分享',//'Shares',
	'nav_doing'	=> '记录',//'Doings',
	'nav_wall'	=> '留言板',//'Wall',
	'nav_group'	=> '群组',//'Groups',
	'nav_ranklist'	=> '排行榜',//'RankList',
	'nav_follow'	=> '广播',//'Follows',
	'nav_guide'	=> '导读',//'Guide',
	'nav_collection'	=> '淘帖',//'Collections',

	'nav_stat'	=> '站点统计',//'Statistics',
	'nav_report'	=> '举报',//'Reports',
	'nav_archiver'	=> 'Archive',
	'nav_mobile'	=> '手机版',//'Mobile',
	'nav_friend'	=> '好友',//'Friends',
	'nav_thread'	=> '帖子',//'Threads',
	'nav_favorite'	=> '收藏',//'Favorites',
	'nav_magic'	=> '道具',//'Magic',
	'nav_medal'	=> '勋章',//'Medals',
	'nav_task'	=> '任务',//'Tasks',
	'nav_feed'	=> '动态',//'Feeds',

	'nav_sethomepage'	=> '<img src="static/image/common/home.gif" title="设为首页">',//'<img src="static/image/common/home.gif" title="Set as Homepage">',
	'nav_setfavorite'	=> '<img src="static/image/common/fav.gif" title="收藏本站">',//'<img src="static/image/common/fav.gif" title="Add to Favorites">',
	'nav_uchome'		=> 'UCHome',//'UCHome',

	'idcardtype_choice'	=> '身份证\n护照\n驾驶证',//'ID\nPassport\nDriving license',//tc:'身份證\n護照\n駕駛證',
	'education_choice'	=> '博士\n硕士\n本科\n专科\n中学\n小学\n其它',//'Doctor\nMaster\nBachelor\nSpecialist\nSchool\nPrimary School\nOther',//tc:'博士\n碩士\n本科\n專科\n中學\n小學\n其它',
	'bloodtype_choice'	=> 'A\nB\nAB\nO\n其它',//'A\nB\nAB\nO\nOther',//tc:'A\nB\nAB\nO\n其它',

// Titles from pre_common_credit_rule table
	'credit_rule_post'		=> '发表主题',//'發表主題',//'Publish post',
	'credit_rule_reply'		=> '发表回复',//'發表回復',//'Reply post',
	'credit_rule_digest'		=> '加精华',//'加精華',//'Add Digest',
	'credit_rule_postattach'	=> '上传附件',//'上傳附件',//'Upload attachment',
	'credit_rule_getattach'		=> '下载附件',//'下載附件',//'Download attachment',
	'credit_rule_sendpm'		=> '发短消息',//'發短消息',//'Send PM',
	'credit_rule_search'		=> '搜索',//'搜索',//'Search',
	'credit_rule_promotion_visit'	=> '访问推广',//'訪問推廣',//'Visit Promotion',
	'credit_rule_promotion_register'	=> '注册推广',//'註冊推廣',//'Register by Promotion',
	'credit_rule_tradefinished'	=> '成功交易',//'成功交易',//'Trade finished',
	'credit_rule_realemail'		=> '邮箱认证',//'郵箱認證',//'E-mail verification',
	'credit_rule_setavatar'		=> '设置头像',//'設置頭像',//'Upload avatar',
	'credit_rule_videophoto'	=> '视频认证',//'視頻認證',//'Video verification',
	'credit_rule_hotinfo'		=> '热点信息',//'熱點信息',//'Hot provided',
	'credit_rule_daylogin'		=> '每天登录',//'每天登錄',//'Daily login',
	'credit_rule_visit'		=> '访问别人空间',//'訪問別人空間',//'Visit other space',
	'credit_rule_poke'		=> '打招呼',//'打招呼',//'Greeting',
	'credit_rule_guestbook'		=> '留言',//'留言',//'Write to Guestbook',
	'credit_rule_getguestbook'	=> '被留言',//'被留言',//'Get Guestbook Message',
	'credit_rule_doing'		=> '发表记录',//'發表記錄',//'Publish doing',
	'credit_rule_publishblog'	=> '发表日志',//'發表日誌',//'Publish Blog',
	'credit_rule_joinpoll'		=> '参与投票',//'參與投票',//'Poll Vote',
	'credit_rule_createshare'	=> '发起分享',//'發起分享',//'Create Share',
	'credit_rule_comment'		=> '评论',//'評論',//'Write Comment',
	'credit_rule_getcomment'	=> '被评论',//'被評論',//'Get comment',
	'credit_rule_installapp'	=> '安装应用',//'安裝應用',//'Install application',
	'credit_rule_useapp'		=> '使用应用',//'使用應用',//'Use application',
	'credit_rule_click'		=> '信息表态',//'信息表態',//'Rate object',
	'credit_rule_modifydomain'	=> '修改域名',//'修改域名',//'Modify domain',
	'credit_rule_portalcomment'	=> '文章评论',//'文章評論',//'Comment Article',
	'credit_rule_followedcollection'	=> '淘专辑被订阅',//'淘專輯被訂閱',//'Collection followed',

//	'credit_rule_uploadimage'	=> 'Upload image',//
//	'credit_rule_report'		=> 'Report abuse',//
//	'credit_rule_invitefriend'	=> 'Successfully invite friends',//
//	'credit_rule_register'		=> 'Registration',//
//	'credit_rule_realname'		=> 'Real name verification',//
//	'credit_rule_editrealname'	=> 'Modify real name',//
//	'credit_rule_editrealemail'	=> 'Change verified E-mail',//
//	'credit_rule_delavatar'		=> 'Delete avatar',//

// Titles from instal_var for EXTCREDITS
	'extcredits1'		=> '威望',//'Reputation',
	'extcredits2'		=> '金钱',//'Money',
	'extcredits3'		=> '贡献',//'Contribution',
	'extcredits4'		=> 'extcredits4',
	'extcredits5'		=> 'extcredits5',
	'extcredits6'		=> 'extcredits6',
	'extcredits7'		=> 'extcredits7',
	'extcredits8'		=> 'extcredits8',
// Credits Formula Explanation
	'digestposts'	=> '精华帖数',//'精華帖數',
	'posts'		=> '发帖数',//'發帖數',
	'threads'	=> '主题数',//'主題數',
	'replies'	=> '回帖数',//'回帖數',
	'oltime'	=> '在线时间',//'在線時間(小時)',
	'blogs'		=> '日志数',//'日誌數',
	'friends'	=> '好友数',//'好友數',
	'albums'	=> '相册数',//'相冊數',
	'doings'	=> '记录数',//'記錄數',
	'polls'		=> '投票数',//'投票數',
	'sharings'	=> '分享数',//'分享數',

//	'nav_'		=> '',//'',

);

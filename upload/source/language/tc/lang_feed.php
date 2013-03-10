<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: lang_feed.php 27449 2012-02-01 05:32:35Z zhangguosheng $
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

$lang = array
(

	'feed_blog_password' => '{actor} 發表了新加密日誌 {subject}',
	'feed_blog_title' => '{actor} 發表了新日誌',
	'feed_blog_body' => '<b>{subject}</b><br />{summary}',
	'feed_album_title' => '{actor} 更新了相冊',
	'feed_album_body' => '<b>{album}</b><br />共 {picnum} 張圖片',
	'feed_pic_title' => '{actor} 上傳了新圖片',
	'feed_pic_body' => '{title}',



	'feed_poll' => '{actor} 發起了新投票',

	'feed_comment_space' => '{actor} 在 {touser} 的留言板留了言',
	'feed_comment_image' => '{actor} 評論了 {touser} 的圖片',
	'feed_comment_blog' => '{actor} 評論了 {touser} 的日誌 {blog}',
	'feed_comment_poll' => '{actor} 評論了 {touser} 的投票 {poll}',
	'feed_comment_event' => '{actor} 在 {touser} 組織的活動 {event} 中留言了',
	'feed_comment_share' => '{actor} 對 {touser} 分享的 {share} 發表了評論',

	'feed_showcredit' => '{actor} 贈送給 {fusername} 競價積分 {credit} 個，幫助好友提升在<a href="misc.php?mod=ranklist&type=member" target="_blank">競價排行榜</a>中的名次',
	'feed_showcredit_self' => '{actor} 增加競價積分 {credit} 個，提升自己在<a href="misc.php?mod=ranklist&type=member" target="_blank">競價排行榜</a>中的名次',
	'feed_doing_title' => '{actor}：{message}',
	'feed_friend_title' => '{actor} 和 {touser} 成為了好友',



	'feed_click_blog' => '{actor} 送了一個「{click}」給 {touser} 的日誌 {subject}',
	'feed_click_thread' => '{actor} 送了一個「{click}」給 {touser} 的話題 {subject}',
	'feed_click_pic' => '{actor} 送了一個「{click}」給 {touser} 的圖片',
	'feed_click_article' => '{actor} 送了一個「{click}」給 {touser} 的文章 {subject}',


	'feed_task' => '{actor} 完成了有獎任務 {task}',
	'feed_task_credit' => '{actor} 完成了有獎任務 {task}，領取了 {credit} 個獎勵積分',

	'feed_profile_update_base' => '{actor} 更新了自己的基本資料',
	'feed_profile_update_contact' => '{actor} 更新了自己的聯繫方式',
	'feed_profile_update_edu' => '{actor} 更新了自己的教育情況',
	'feed_profile_update_work' => '{actor} 更新了自己的工作信息',
	'feed_profile_update_info' => '{actor} 更新了自己的個人信息',
	'feed_profile_update_bbs' => '{actor} 更新了自己的論壇信息',
	'feed_profile_update_verify' => '{actor} 更新了自己的認證信息',

	'feed_add_attachsize' => '{actor} 用 {credit} 個積分兌換了 {size} 附件空間，可以上傳更多的圖片啦(<a href="home.php?mod=spacecp&ac=credit&op=addsize">我也來兌換</a>)',

	'feed_invite' => '{actor} 發起邀請，和 {username} 成為了好友',

	'magicuse_thunder_announce_title' => '<strong>{username} 發出了「雷鳴之聲」</strong>',
	'magicuse_thunder_announce_body' => '大家好，我上線啦<br /><a href="home.php?mod=space&uid={uid}" target="_blank">歡迎來我家串個門</a>',


	'feed_thread_title' =>			'{actor} 發表了新話題',
	'feed_thread_message' =>		'<b>{subject}</b><br />{message}',

	'feed_reply_title' =>			'{actor} 回復了 {author} 的話題 {subject}',
	'feed_reply_title_anonymous' =>		'{actor} 回復了話題 {subject}',
	'feed_reply_message' =>			'',

	'feed_thread_poll_title' =>		'{actor} 發起了新投票',
	'feed_thread_poll_message' =>		'<b>{subject}</b><br />{message}',

	'feed_thread_votepoll_title' =>		'{actor} 參與了關於 {subject} 的投票',
	'feed_thread_votepoll_message' =>	'',

	'feed_thread_goods_title' =>		'{actor} 出售了一個新商品',
	'feed_thread_goods_message_1' =>	'<b>{itemname}</b><br />售價 {itemprice} 元 附加 {itemcredit}{creditunit}',
	'feed_thread_goods_message_2' =>	'<b>{itemname}</b><br />售價 {itemprice} 元',
	'feed_thread_goods_message_3' =>	'<b>{itemname}</b><br />售價 {itemcredit}{creditunit}',

	'feed_thread_reward_title' =>		'{actor} 發起了新懸賞',
	'feed_thread_reward_message' =>		'<b>{subject}</b><br />懸賞 {rewardprice}{extcredits}',

	'feed_reply_reward_title' =>		'{actor} 回復了關於 {subject} 的懸賞',
	'feed_reply_reward_message' =>		'',

	'feed_thread_activity_title' =>		'{actor} 發起了新活動',
	'feed_thread_activity_message' =>	'<b>{subject}</b><br />開始時間：{starttimefrom}<br />活動地點：{activityplace}<br />{message}',

	'feed_reply_activity_title' =>		'{actor} 報名參加了 {subject} 的活動',
	'feed_reply_activity_message' =>	'',

	'feed_thread_debate_title' =>		'{actor} 發起了新辯論',
	'feed_thread_debate_message' =>		'<b>{subject}</b><br />正方：{affirmpoint}<br />反方：{negapoint}<br />{message}',

	'feed_thread_debatevote_title_1' =>	'{actor} 以正方身份參與了關於 {subject} 的辯論',
	'feed_thread_debatevote_title_2' =>	'{actor} 以反方身份參與了關於 {subject} 的辯論',
	'feed_thread_debatevote_title_3' =>	'{actor} 以中立身份參與了關於 {subject} 的辯論',
	'feed_thread_debatevote_message_1' =>	'',
	'feed_thread_debatevote_message_2' =>	'',
	'feed_thread_debatevote_message_3' =>	'',

);

?>
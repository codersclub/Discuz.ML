<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: lang_notification.php 33824 2013-08-19 08:26:11Z nemohou $
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

$lang = array
(

	'type_wall' => '留言',
	'type_piccomment' => '圖片評論',
	'type_blogcomment' => '日誌評論',
	'type_clickblog' => '日誌表態',
	'type_clickarticle' => '文章表態',
	'type_clickpic' => '圖片表態',
	'type_sharecomment' => '分享評論',
	'type_doing' => '記錄',
	'type_friend' => '好友',
	'type_credit' => '積分',
	'type_bbs' => '論壇',
	'type_system' => '系統',
	'type_thread' => '主題',
	'type_task' => '任務',
	'type_group' => '群組',

	'mail_to_user' => '有新的通知',
	'showcredit' => '{actor} 贈送給您 {credit} 個競價積分，幫助提升您在 <a href="misc.php?mod=ranklist&type=member" target="_blank">競價排行榜</a> 中的名次',
	'share_space' => '{actor} 分享了您的空間',
	'share_blog' => '{actor} 分享了您的日誌 <a href="{url}" target="_blank">{subject}</a>',
	'share_album' => '{actor} 分享了您的相冊 <a href="{url}" target="_blank">{albumname}</a>',
	'share_pic' => '{actor} 分享了您的相冊 {albumname} 中的 <a href="{url}" target="_blank"> 圖片</a>',
	'share_thread' => '{actor} 分享了您的帖子 <a href="{url}" target="_blank">{subject}</a>',
	'share_article' => '{actor} 分享了您的文章 <a href="{url}" target="_blank">{subject}</a>',
	'magic_present_note' => '送給您一個道具 <a href="{url}" target="_blank">{name}</a>',
	'friend_add' => '{actor} 和您成為了好友',
	'friend_request' => '{actor} 請求加您為好友{note}&nbsp;&nbsp;<a onclick="showWindow(this.id, this.href, \'get\', 0);" class="xw1" id="afr_{uid}" href="{url}">批准申請</a>',
	'doing_reply' => '{actor} 回復了您的 <a href="{url}" target="_blank">記錄</a>',
	'wall_reply' => '{actor} 回復了您的 <a href="{url}" target="_blank">留言</a>',
	'pic_comment_reply' => '{actor} 回復了您的 <a href="{url}" target="_blank">圖片評論</a>',
	'blog_comment_reply' => '{actor} 回復了您的 <a href="{url}" target="_blank">日誌評論</a>',
	'share_comment_reply' => '{actor} 回復了您的 <a href="{url}" target="_blank">分享評論</a>',
	'wall' => '{actor} 在留言板上給您 <a href="{url}" target="_blank">留言</a>',
	'pic_comment' => '{actor} 評論了您的 <a href="{url}" target="_blank">圖片</a>',
	'blog_comment' => '{actor} 評論了您的日誌 <a href="{url}" target="_blank">{subject}</a>',
	'share_comment' => '{actor} 評論了您的 <a href="{url}" target="_blank">分享</a>',
	'click_blog' => '{actor} 對您的日誌 <a href="{url}" target="_blank">{subject}</a> 做了表態',
	'click_pic' => '{actor} 對您的 <a href="{url}" target="_blank">圖片</a> 做了表態',
	'click_article' => '{actor} 對您的文章 <a href="{url}" target="_blank">{subject}</a> 做了表態',
	'show_out' => '{actor} 訪問了您的主頁後，您在競價排名榜中的最後一個積分也被消費掉了',
	'puse_article' => '恭喜您，您的<a href="{url}" target="_blank">{subject}</a>已被添加到文章列表， <a href="{newurl}" target="_blank">點擊查看</a>',

	'myinvite_request' => '有新的應用消息<a href="home.php?mod=space&do=notice&view=userapp">點此進入應用消息頁面進行相關操作</a>',


	'group_member_join' => '{actor} 加入您的 <a href="forum.php?mod=group&fid={fid}" target="_blank">{groupname}</a> 群組需要審核，請到群組<a href="{url}" target="_blank">管理後台</a> 進行審核',
	'group_member_invite' => '{actor} 邀請您加入 <a href="forum.php?mod=group&fid={fid}" target="_blank">{groupname}</a> 群組，<a href="{url}" target="_blank">點此馬上加入</a>',
	'group_member_check' => '您已通過了 <a href="{url}" target="_blank">{groupname}</a> 群組的審核，請 <a href="{url}" target="_blank">點擊這裡訪問</a>',
	'group_member_check_failed' => '您沒有通過 <a href="{url}" target="_blank">{groupname}</a> 群組的審核。',
	'group_mod_check' => '您的創建的群組 <a href="{url}" target="_blank">{groupname}</a> 審核通過了，請 <a href="{url}" target="_blank">點擊這裡訪問</a>',

	'reason_moderate' => '您的主題 <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> 被 {actor} {modaction} <div class="quote"><blockquote>{reason}</blockquote></div>',

	'reason_merge' => '您的主題 <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> 被 {actor} {modaction} <div class="quote"><blockquote>{reason}</blockquote></div>',

	'reason_delete_post' => '您在 <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> 的帖子被 {actor} 刪除 <div class="quote"><blockquote>{reason}</blockquote></div>',

	'reason_delete_comment' => '您在 <a href="forum.php?mod=redirect&goto=findpost&pid={pid}&ptid={tid}" target="_blank">{subject}</a> 的點評被 {actor} 刪除 <div class="quote"><blockquote>{reason}</blockquote></div>',

	'reason_ban_post' => '您的主題 <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> 被 {actor} {modaction} <div class="quote"><blockquote>{reason}</blockquote></div>',

	'reason_warn_post' => '您的主題 <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> 被 {actor} {modaction}<br />
連續 {warningexpiration} 天內累計 {warninglimit} 次警告，您將被自動禁止發言 {warningexpiration} 天。<br />
截止至目前，您已被警告 {authorwarnings} 次，請注意！<div class="quote"><blockquote>{reason}</blockquote></div>',

	'reason_move' => '您的主題 <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> 被 {actor} 移動到 <a href="forum.php?mod=forumdisplay&fid={tofid}" target="_blank">{toname}</a> <div class="quote"><blockquote>{reason}</blockquote></div>',

	'reason_copy' => '您的主題 <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> 被 {actor} 複製為 <a href="forum.php?mod=viewthread&tid={threadid}" target="_blank">{subject}</a> <div class="quote"><blockquote>{reason}</blockquote></div>',

	'reason_remove_reward' => '您的懸賞主題 <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> 被 {actor} 撤銷 <div class="quote"><blockquote>{reason}</blockquote></div>',

	'reason_stamp_update' => '您的主題 <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> 被 {actor} 添加了圖章 {stamp} <div class="quote"><blockquote>{reason}</blockquote></div>',

	'reason_stamp_delete' => '您的主題 <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> 被 {actor} 撤銷了圖章 <div class="quote"><blockquote>{reason}</blockquote></div>',

	'reason_stamplist_update' => '您的主題 <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> 被 {actor} 添加了圖標 {stamp} <div class="quote"><blockquote>{reason}</blockquote></div>',

	'reason_stamplist_delete' => '您的主題 <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> 被 {actor} 撤銷了圖標 <div class="quote"><blockquote>{reason}</blockquote></div>',

	'reason_stickreply' => '您在主題 <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> 的回帖被 {actor} 置頂 <div class="quote"><blockquote>{reason}</blockquote></div>',

	'reason_stickdeletereply' => '您在主題 <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> 的回帖被 {actor} 撤銷置頂 <div class="quote"><blockquote>{reason}</blockquote></div>',

	'reason_quickclear' => '您的{cleartype} 被 {actor} 清除 <div class="quote"><blockquote>{reason}</blockquote></div>',

	'reason_live_update' => '您的主題 <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> 被 {actor} 設置為直播貼 <div class="quote"><blockquote>{reason}</blockquote></div>',
	'reason_live_cancle' => '您的主題 <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> 被 {actor} 取消直播 <div class="quote"><blockquote>{reason}</blockquote></div>',

	'modthreads_delete' => '您發表的主題 {threadsubject} 未通過審核，現已被刪除！',

	'modthreads_delete_reason' => '您發表的主題 {threadsubject} 未通過審核，現已被刪除！<div class="quote"><blockquote>{reason}</blockquote></div>',
	'modthreads_validate' => '您發表的主題 <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{threadsubject}</a> 已審核通過！ &nbsp; <a href="forum.php?mod=viewthread&tid={tid}" target="_blank" class="lit">查看 &rsaquo;</a>',

	'modreplies_delete' => '您發表回復未通過審核，現已被刪除！ <p class="summary">回復內容：<span>{post}</span></p>',

	'modreplies_validate' => '您發表的回復已審核通過！ &nbsp; <a href="forum.php?mod=redirect&goto=findpost&pid={pid}&ptid={tid}" target="_blank" class="lit">查看 &rsaquo;</a> <p class="summary">回復內容：<span>{post}</span></p>',

	'transfer' => '您收到一筆來自 {actor} 的積分轉賬 {credit} &nbsp; <a href="home.php?mod=spacecp&ac=credit&op=log&suboperation=creditslog" target="_blank" class="lit">查看 &rsaquo;</a>
<p class="summary">{actor} 說：<span>{transfermessage}</span></p>',

	'addfunds' => '您提交的積分充值請求已完成，相應數額的積分已存入您的積分賬戶 &nbsp; <a href="home.php?mod=spacecp&ac=credit&op=base" target="_blank" class="lit">查看 &rsaquo;</a>
<p class="summary">訂單號：<span>{orderid}</span></p><p class="summary">支出：<span>人民幣 {price} 元</span></p><p class="summary">收入：<span>{value}</span></p>',

	'rate_reason' => '您在主題 <a href="forum.php?mod=redirect&goto=findpost&pid={pid}&ptid={tid}" target="_blank">{subject}</a> 的帖子被 {actor} 評分 {ratescore} <div class="quote"><blockquote>{reason}</blockquote></div>',

	'recommend_note_post' => '恭喜，您的帖子 <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> 被編輯採用',

	'rate_removereason' => '您在主題 <a href="forum.php?mod=redirect&goto=findpost&pid={pid}&ptid={tid}" target="_blank">{subject}</a> 中帖子的評分 {ratescore} <div class="quote"><blockquote>{reason}</blockquote></div> 被 {actor} 撤銷',

	'trade_seller_send' => '<a href="home.php?mod=space&uid={buyerid}" target="_blank">{buyer}</a> 購買您的商品 <a href="forum.php?mod=trade&orderid={orderid}" target="_blank">{subject}</a>，對方已付款，等待您發貨 &nbsp; <a href="forum.php?mod=trade&orderid={orderid}" target="_blank" class="lit">查看 &rsaquo;</a>',

	'trade_buyer_confirm' => '您購買的商品 <a href="forum.php?mod=trade&orderid={orderid}" target="_blank">{subject}</a>，<a href="home.php?mod=space&uid={sellerid}" target="_blank">{seller}</a> 已發貨，等待您確認 &nbsp; <a href="forum.php?mod=trade&orderid={orderid}" target="_blank" class="lit">查看 &rsaquo;</a>',

	'trade_fefund_success' => '商品 <a href="forum.php?mod=trade&orderid={orderid}" target="_blank">{subject}</a> 已退款成功 &nbsp; <a href="forum.php?mod=trade&orderid={orderid}" target="_blank" class="lit">評價 &rsaquo;</a>',

	'trade_success' => '商品 <a href="forum.php?mod=trade&orderid={orderid}" target="_blank">{subject}</a> 已交易成功 &nbsp; <a href="forum.php?mod=trade&orderid={orderid}" target="_blank" class="lit">評價 &rsaquo;</a>',

	'trade_order_update_sellerid' => '賣家 <a href="home.php?mod=space&uid={sellerid}" target="_blank">{seller}</a> 修改了商品 <a href="forum.php?mod=trade&orderid={orderid}" target="_blank">{subject}</a> 的交易單，請確認 &nbsp; <a href="forum.php?mod=trade&orderid={orderid}" target="_blank" class="lit">查看 &rsaquo;</a>',

	'trade_order_update_buyerid' => '買家 <a href="home.php?mod=space&uid={buyerid}" target="_blank">{buyer}</a> 修改了商品 <a href="forum.php?mod=trade&orderid={orderid}" target="_blank">{subject}</a> 的交易單，請確認 &nbsp; <a href="forum.php?mod=trade&orderid={orderid}" target="_blank" class="lit">查看 &rsaquo;</a>',

	'eccredit' => '與您交易的 {actor} 已對您作了評價 &nbsp; <a href="forum.php?mod=trade&orderid={orderid}" target="_blank" class="lit">回評 &rsaquo;</a>',

	'activity_notice' => '{actor} 申請加入您舉辦的活動 <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a>，請審核 &nbsp; <a href="forum.php?mod=viewthread&tid={tid}" target="_blank" class="lit">查看 &rsaquo;</a>',

	'activity_apply' => '活動 <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> 的發起人 {actor} 已批准您參加此活動 &nbsp; <a href="forum.php?mod=viewthread&tid={tid}" target="_blank" class="lit">查看 &rsaquo;</a> <div class="quote"><blockquote>{reason}</blockquote></div>',

	'activity_replenish' => '活動 <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> 的發起人 {actor} 通知您需要完善活動報名信息 &nbsp; <a href="forum.php?mod=viewthread&tid={tid}" target="_blank" class="lit">查看 &rsaquo;</a> <div class="quote"><blockquote>{reason}</blockquote></div>',

	'activity_delete' => '活動 <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> 的發起人 {actor} 拒絕您參加此活動 &nbsp; <a href="forum.php?mod=viewthread&tid={tid}"  target="_blank" class="lit">查看 &rsaquo;</a> <div class="quote"><blockquote>{reason}</blockquote></div>',

	'activity_cancel' => '{actor} 取消了參加 <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> 活動 &nbsp; <a href="forum.php?mod=viewthread&tid={tid}"  target="_blank" class="lit">查看 &rsaquo;</a> <div class="quote"><blockquote>{reason}</blockquote></div>',

	'activity_notification' => '活動 <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> 的發起人 {actor} 發來通知&nbsp; <a href="forum.php?mod=viewthread&tid={tid}" target="_blank" class="lit">查看活動 &rsaquo;</a> <div class="quote"><blockquote>{msg}</blockquote></div>',

	'reward_question' => '您的懸賞主題 <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> 被 {actor} 設置了最佳答案 &nbsp; <a href="forum.php?mod=viewthread&tid={tid}" target="_blank" class="lit">查看 &rsaquo;</a>',

	'reward_bestanswer' => '您的回復被懸賞主題 <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> 的作者 {actor} 選為最佳答案 &nbsp; <a href="forum.php?mod=viewthread&tid={tid}" target="_blank" class="lit">查看 &rsaquo;</a>',

	'reward_bestanswer_moderator' => '您在懸賞主題 <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> 的回復被選為最佳答案 &nbsp; <a href="forum.php?mod=viewthread&tid={tid}" target="_blank" class="lit">查看 &rsaquo;</a>',

	'comment_add' => '{actor} 點評了您曾經在主題 <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> 發表的帖子 &nbsp; <a href="forum.php?mod=redirect&goto=findpost&pid={pid}&ptid={tid}" target="_blank" class="lit">查看 &rsaquo;</a>',

	'reppost_noticeauthor' => '{actor} 回復了您的帖子 <a href="forum.php?mod=redirect&goto=findpost&ptid={tid}&pid={pid}" target="_blank">{subject}</a> &nbsp; <a href="forum.php?mod=redirect&goto=findpost&pid={pid}&ptid={tid}" target="_blank" class="lit">查看</a>',

	'task_reward_credit' => '恭喜您完成任務：<a href="home.php?mod=task&do=view&id={taskid}" target="_blank">{name}</a>，獲得積分 {creditbonus} &nbsp; <a href="home.php?mod=spacecp&ac=credit&op=base" target="_blank" class="lit">查看我的積分 &rsaquo;</a></p>',

	'task_reward_magic' => '恭喜您完成任務：<a href="home.php?mod=task&do=view&id={taskid}" target="_blank">{name}</a>，獲得道具 <a href="home.php?mod=magic&action=mybox" target="_blank">{rewardtext}</a> {bonus} 張',

	'task_reward_medal' => '恭喜您完成任務：<a href="home.php?mod=task&do=view&id={taskid}" target="_blank">{name}</a>，獲得勳章 <a href="home.php?mod=medal" target="_blank">{rewardtext}</a> 有效期 {bonus} 天',

	'task_reward_medal_forever' => '恭喜您完成任務：<a href="home.php?mod=task&do=view&id={taskid}" target="_blank">{name}</a>，獲得勳章 <a href="home.php?mod=medal" target="_blank">{rewardtext}</a> 永久有效',

	'task_reward_invite' => '恭喜您完成任務：<a href="home.php?mod=task&do=view&id={taskid}" target="_blank">{name}</a>，獲得<a href="home.php?mod=spacecp&ac=invite" target="_blank">邀請碼 {rewardtext}個</a> 有效期 {bonus} 天',

	'task_reward_group' => '恭喜您完成任務：<a href="home.php?mod=task&do=view&id={taskid}" target="_blank">{name}</a>，獲得用戶組 {rewardtext} 有效期 {bonus} 天 &nbsp; <a href="home.php?mod=spacecp&ac=usergroup" target="_blank" class="lit">看看我能做什麼 &rsaquo;</a>',

	'user_usergroup' => '您的用戶組升級為 {usergroup} &nbsp; <a href="home.php?mod=spacecp&ac=usergroup" target="_blank" class="lit">看看我能做什麼 &rsaquo;</a>',

	'grouplevel_update' => '恭喜您，您的群組 {groupname} 已升級到 {newlevel}。',

	'thread_invite' => '{actor} 邀請您{invitename} <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> &nbsp; <a href="forum.php?mod=viewthread&tid={tid}" target="_blank" class="lit">查看 &rsaquo;</a>',
	'blog_invite' => '{actor} 邀請您查看日誌 <a href="home.php?mod=space&uid={uid}&do=blog&id={blogid}" target="_blank">{subject}</a> &nbsp; <a href="home.php?mod=space&uid={uid}&do=blog&id={blogid}" target="_blank" class="lit">查看 &rsaquo;</a>',
	'article_invite' => '{actor} 邀請您查看文章 <a href="{url}" target="_blank">{subject}</a> &nbsp; <a href="{url}" target="_blank" class="lit">查看 &rsaquo;</a>',
	'invite_friend' => '恭喜您成功邀請到 {actor} 並成為您的好友',

	'poke_request' => '<a href="{fromurl}" class="xi2">{fromusername}</a>: <span class="xw0">{pokemsg}&nbsp;</span><a href="home.php?mod=spacecp&ac=poke&op=reply&uid={fromuid}&from=notice" id="a_p_r_{fromuid}" class="xw1" onclick="showWindow(this.id, this.href, \'get\', 0);">回打招呼</a><span class="pipe">|</span><a href="home.php?mod=spacecp&ac=poke&op=ignore&uid={fromuid}&from=notice" id="a_p_i_{fromuid}" onclick="showWindow(\'pokeignore\', this.href, \'get\', 0);">忽略</a>',

	'profile_verify_error' => '{verify}資料審核被拒絕,以下字段需要重新填寫:<br/>{profile}<br/>拒絕理由:{reason}',
	'profile_verify_pass' => '恭喜您，您填寫的{verify}資料審核已通過',
	'profile_verify_pass_refusal' => '很遺憾，您填寫的{verify}資料審核已被拒絕',
	'member_ban_speak' => '您已被 {user} 禁止發言，期限：{day}天(0：代表永久禁言)，禁言理由：{reason}',
	'member_ban_visit' => '您已被 {user} 禁止訪問，期限：{day}天(0：代表永久禁止訪問)，禁止訪問理由：{reason}',
	'member_ban_status' => '您已被 {user} 鎖定，禁止訪問理由：{reason}',
	'member_follow' => '您關注的人已有{count}條新動態。<a href="home.php?mod=follow">點擊查看</a>',
	'member_follow_add' => '{actor} 收聽了您。<a href="home.php?mod=follow&do=follower">點擊查看</a>',

	'member_moderate_invalidate' => '您的賬號未能通過管理員的審核，請<a href="home.php?mod=spacecp&ac=profile">重新提交註冊信息</a>。<br />管理員留言: <b>{remark}</b>',
	'member_moderate_validate' => '您的賬號已通過審核。<br />管理員留言: <b>{remark}</b>',
	'member_moderate_invalidate_no_remark' => '您的賬號未能通過管理員的審核，請<a href="home.php?mod=spacecp&ac=profile">重新提交註冊信息</a>。',
	'member_moderate_validate_no_remark' => '您的賬號已通過審核。',
	'manage_verifythread' => '有新的待審核主題。<a href="admin.php?action=moderate&operation=threads&dateline=all">現在進行審核</a>',
	'manage_verifypost' => '有新的待審核回帖。<a href="admin.php?action=moderate&operation=replies&dateline=all">現在進行審核</a>',
	'manage_verifyuser' => '有新的待審核會員。<a href="admin.php?action=moderate&operation=members">現在進行審核</a>',
	'manage_verifyblog' => '有新的待審核日誌。<a href="admin.php?action=moderate&operation=blogs">現在進行審核</a>',
	'manage_verifydoing' => '有新的待審核記錄。<a href="admin.php?action=moderate&operation=doings">現在進行審核</a>',
	'manage_verifypic' => '有新的待審核圖片。<a href="admin.php?action=moderate&operation=pictures">現在進行審核</a>',
	'manage_verifyshare' => '有新的待審核分享。<a href="admin.php?action=moderate&operation=shares">現在進行審核</a>',
	'manage_verifycommontes' => '有新的待審核留言/評論。<a href="admin.php?action=moderate&operation=comments">現在進行審核</a>',
	'manage_verifyrecycle' => '回收站有新的待處理主題。<a href="admin.php?action=recyclebin">現在處理</a>',
	'manage_verifyrecyclepost' => '回帖回收站有新的待處理回帖。<a href="admin.php?action=recyclebinpost">現在處理</a>',
	'manage_verifyarticle' => '有新的待審核文章。<a href="admin.php?action=moderate&operation=articles">現在進行審核</a>',
	'manage_verifymedal' => '有新的待審核勳章申請。<a href="admin.php?action=medals&operation=mod">現在進行審核</a>',
	'manage_verifyacommont' => '有新的待審核文章評論。<a href="admin.php?action=moderate&operation=articlecomments">現在進行審核</a>',
	'manage_verifytopiccommont' => '有新的待審核專題評論。<a href="admin.php?action=moderate&operation=topiccomments">現在進行審核</a>',
	'manage_verify_field' => '有新的待處理{verifyname}。<a href="admin.php?action=verify&operation=verify&do={doid}">現在處理</a>',
	'system_notice' => '{subject}<p class="summary">{message}</p>',
	'system_adv_expiration' => '您站點的以下廣告將於 {day} 天後到期，請及時處理：<br />{advs}',
	'report_change_credits' => '{actor} 處理了您的舉報 {creditchange} {msg}',
	'at_message' => '<a href="home.php?mod=space&uid={buyerid}" target="_blank">{buyer}</a> 在主題 <a href="forum.php?mod=redirect&goto=findpost&ptid={tid}&pid={pid}" target="_blank">{subject}</a> 中提到了您<div class="quote"><blockquote>{message}</blockquote></div><a href="forum.php?mod=redirect&goto=findpost&ptid={tid}&pid={pid}" target="_blank">現在去看看</a>。',
	'new_report' => '有新的舉報等待處理，<a href="admin.php?action=report" target="_blank">點此進入後台處理</a>。',
	'new_post_report' => '有新的舉報等待處理，<a href="forum.php?mod=modcp&action=report&fid={fid}" target="_blank">點此進入管理面版</a>。',
	'magics_receive' => '您收到 {actor} 送給您的道具 {magicname}
<p class="summary">{actor} 說：<span>{msg}</span></p>
<p class="mbn"><a href="home.php?mod=magic" target="_blank">回贈道具</a><span class="pipe">|</span><a href="home.php?mod=magic&action=mybox" target="_blank">查看我的道具箱</a></p>',
	'invite_collection' => '{actor} 邀請您參與維護淘專輯  <a href="forum.php?mod=collection&action=view&ctid={ctid}">{collectionname}</a>。<br /> <a href="forum.php?mod=collection&action=edit&op=acceptinvite&ctid={ctid}&dateline={dateline}">接受邀請</a>',
	'collection_removed' => '您參與維護的淘專輯  <a href="forum.php?mod=collection&action=view&ctid={ctid}">{collectionname}</a> 已被 {actor} 關閉。',
	'exit_collection' => '您已經退出維護淘專輯  <a href="forum.php?mod=collection&action=view&ctid={ctid}">{collectionname}</a>。',
	'collection_becommented' => '您的淘專輯  <a href="forum.php?mod=collection&action=view&ctid={ctid}">{collectionname}</a> 收到了新評論。',
	'collection_befollowed' => '您的淘專輯  <a href="forum.php?mod=collection&action=view&ctid={ctid}">{collectionname}</a> 有新用戶訂閱了！',
	'collection_becollected' => '恭喜您的主題 <a href="forum.php?mod=viewthread&tid={tid}">{threadname}</a> 被淘專輯  <a href="forum.php?mod=collection&action=view&ctid={ctid}">{collectionname}</a> 收錄了！',

	'pmreportcontent' => '{pmreportcontent}',

	'thread_hidden' => '您的主題 <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> 被多個用戶認定為垃圾帖，現已被隱藏 &nbsp; <a href="forum.php?mod=viewthread&tid={tid}" target="_blank" class="lit">查看 &rsaquo;</a>',

);

?>
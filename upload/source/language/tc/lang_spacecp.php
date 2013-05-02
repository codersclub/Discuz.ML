<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: lang_spacecp.php 32426 2013-01-15 10:00:21Z liulanbo $
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

$lang = array(

	'by' => '通過',
	'tab_space' => ' ',

	'share' => '分享',
	'share_action' => '分享了',

	'pm_comment' => '答覆點評',
	'pm_thread_about' => '關於您在「{subject}」的帖子',

	'wall_pm_subject' => '您好，我給您留言了',
	'wall_pm_message' => '我在您的留言板給您留言了，[url=\\1]點擊這裡去留言板看看吧[/url]',
	'reward' => '懸賞',
	'reward_info' => '參與投票可獲得  \\1 積分',
	'poll_separator' => '"、"',

	'pm_report_content' => '<a href="home.php?mod=space&uid={reporterid}" target="_blank">{reportername}</a>舉報短消息：<br>來自<a href="home.php?mod=space&uid={uid}" target="_blank">{username}</a>的短消息<br>內容：{message}',
	'message_can_not_send_1' => '發送失敗，您當前超出了24小時內兩人會話的上限',
	'message_can_not_send_2' => '兩次發送短消息太快，請稍候再發送',
	'message_can_not_send_3' => '抱歉，您不能給非好友批量發送短消息',
	'message_can_not_send_4' => '抱歉，您目前還不能使用發送短消息功能',
	'message_can_not_send_5' => '您超出了24小時內群聊會話的上限',
	'message_can_not_send_6' => '對方屏蔽了您的短消息',
	'message_can_not_send_7' => '超過了群聊人數上限',
	'message_can_not_send_8' => '抱歉，您不能給自己發短消息',
	'message_can_not_send_9' => '收件人為空或對方屏蔽了您的短消息',
	'message_can_not_send_10' => '發起群聊人數不能小於兩人',
	'message_can_not_send_11' => '該會話不存在',
	'message_can_not_send_12' => '抱歉，您沒有權限操作',
	'message_can_not_send_13' => '這不是群聊消息',
	'message_can_not_send_14' => '這不是私人消息',
	'message_can_not_send_15' => '數據有誤',
	'message_can_not_send_16' => '您超出了24小時內發短消息數量的上限',
	'message_can_not_send_onlyfriend' => '該用戶只接收好友發送的短消息',


	'friend_subject' => '<a href="{url}" target="_blank">{username} 請求加您為好友</a>',
	'friend_request_note' => '，附言：{note}',
	'comment_friend' =>'<a href="\\2" target="_blank">\\1 給您留言了</a>',
	'photo_comment' => '<a href="\\2" target="_blank">\\1 評論了您的照片</a>',
	'blog_comment' => '<a href="\\2" target="_blank">\\1 評論了您的日誌</a>',
	'poll_comment' => '<a href="\\2" target="_blank">\\1 評論了您的投票</a>',
	'share_comment' => '<a href="\\2" target="_blank">\\1 評論了您的分享</a>',
	'friend_pm' => '<a href="\\2" target="_blank">\\1 給您發私信了</a>',
	'poke_subject' => '<a href="\\2" target="_blank">\\1 向您打招呼</a>',
	'mtag_reply' => '<a href="\\2" target="_blank">\\1 回復了您的話題</a>',
	'event_comment' => '<a href="\\2" target="_blank">\\1 評論了您的活動</a>',

	'friend_pm_reply' => '\\1 回復了您的私信',
	'comment_friend_reply' => '\\1 回復了您的留言',
	'blog_comment_reply' => '\\1 回復了您的日誌評論',
	'photo_comment_reply' => '\\1 回復了您的照片評論',
	'poll_comment_reply' => '\\1 回復了您的投票評論',
	'share_comment_reply' => '\\1 回復了您的分享評論',
	'event_comment_reply' => '\\1 回復了您的活動評論',

	'mail_my' => '好友與我的互動提醒',
  	'mail_system' => '系統提醒',

	'invite_subject' => '{username}邀請您加入{sitename}，並成為好友',
	'invite_massage' => '<table border="0">
		<tr>
		<td valign="top">{avatar}</td>
		<td valign="top">
		<h3>Hi，我是{username}，邀請您也加入{sitename}並成為我的好友</h3><br>
		請加入到我的好友中，您就可以瞭解我的近況，與我一起交流，隨時與我保持聯繫。<br>
		<br>
		邀請附言：<br>{saymsg}
		<br><br>
		<strong>請您點擊以下鏈接，接受好友邀請：</strong><br>
		<a href="{inviteurl}">{inviteurl}</a><br>
		<br>
		<strong>如果您擁有{sitename}上面的賬號，請點擊以下鏈接查看我的個人主頁：</strong><br>
		<a href="{siteurl}home.php?mod=space&uid={uid}">{siteurl}home.php?mod=space&uid={uid}</a><br>
		</td></tr></table>',

	'app_invite_subject' => '{username}邀請您加入{sitename}，一起來玩{appname}',
	'app_invite_massage' => '<table border="0">
		<tr>
		<td valign="top">{avatar}</td>
		<td valign="top">
		<h3>Hi，我是{username}，在{sitename}上玩 {appname}，邀請您也加入一起玩</h3><br>
		<br>
		邀請附言：<br>
		{saymsg}
		<br><br>
		<strong>請您點擊以下鏈接，接受好友邀請一起玩{appname}：</strong><br>
		<a href="{inviteurl}">{inviteurl}</a><br>
		<br>
		<strong>如果您擁有{sitename}上面的賬號，請點擊以下鏈接查看我的個人主頁：</strong><br>
		<a href="{siteurl}home.php?mod=space&uid={uid}">{siteurl}home.php?mod=space&uid={uid}</a><br>
		</td></tr></table>',

	'person' => '人',
	'delete' => '刪除',

	'space_update' => '{actor} 被SHOW了一下',

	'active_email_subject' => '您的郵箱激活郵件',
	'active_email_msg' => '請複製下面的激活鏈接到瀏覽器進行訪問，以便激活您的郵箱。<br>郵箱激活鏈接:<br><a href="{url}" target="_blank">{url}</a>',
	'share_space' => '分享了一個用戶',
	'share_blog' => '分享了一篇日誌',
	'share_album' => '分享了一個相冊',
	'default_albumname' => '默認相冊',
	'share_image' => '分享了一張圖片',
	'share_article' => '分享了一篇文章',
	'album' => '相冊',
	'share_thread' => '分享了一個帖子',
	'mtag' => '{$_G[setting][navs][3][navname]}',
	'share_mtag' => '分享了一個{$_G[setting][navs][3][navname]}',
	'share_mtag_membernum' => '現有 {membernum} 名成員',
	'share_tag' => '分享了一個標籤',
	'share_tag_blognum' => '現有 {blognum} 篇日誌',
	'share_link' => '分享了一個網址',
	'share_video' => '分享了一個視頻',
	'share_music' => '分享了一個音樂',
	'share_flash' => '分享了一個 Flash',
	'share_event' => '分享了一個活動',
	'share_poll' => '分享了一個\\1投票',
	'event_time' => '活動時間',
	'event_location' => '活動地點',
	'event_creator' => '發起人',
	'the_default_style' => '默認風格',
	'the_diy_style' => '自定義風格',

	'thread_edit_trail' => '<ins class="modify">[本話題由 \\1 於 \\2 編輯]</ins>',
	'create_a_new_album' => '創建了新相冊',
	'not_allow_upload' => '您現在沒有權限上傳圖片',
	'not_allow_upload_extend' => '不允許上傳{extend}類型的圖片',
	'files_can_not_exceed_size' => '{extend}類文件不能超過{size}',
	'get_passwd_subject' => '取回密碼郵件',
	'get_passwd_message' => '您只需在提交請求後的三天之內，通過點擊下面的鏈接重置您的密碼：<br />\\1<br />(如果上面不是鏈接形式，請將地址手工粘帖到瀏覽器地址欄再訪問)<br />上面的頁面打開後，輸入新的密碼後提交，之後您即可使用新的密碼登錄了。',
	'file_is_too_big' => '文件過大',

	'take_part_in_the_voting' => '{actor} 參與了 {touser} 的{reward}投票 <a href="{url}" target="_blank">{subject}</a>',
	'lack_of_access_to_upload_file_size' => '無法獲取上傳文件大小',
	'only_allows_upload_file_types' => '只允許上傳jpg、jpeg、gif、png標準格式的圖片',
	'unable_to_create_upload_directory_server' => '服務器無法創建上傳目錄',
	'inadequate_capacity_space' => '空間容量不足，不能上傳新附件',
	'mobile_picture_temporary_failure' => '無法轉移臨時文件到服務器指定目錄',
	'ftp_upload_file_size' => '遠程上傳圖片失敗',
	'comment' => '評論',
	'upload_a_new_picture' => '上傳了新圖片',
	'upload_album' => '更新了相冊',
	'the_total_picture' => '共 \\1 張圖片',

	'space_open_subject' => '快來打理一下您的個人主頁吧',
	'space_open_message' => 'hi，我今天去拜訪了一下您的個人主頁，發現您自己還沒有打理過呢。趕快來看看吧。地址是：\\1space.php',



	'apply_mtag_manager' => '想申請成為 <a href="\\1" target="_blank">\\2</a> 的群主，理由如下:\\3。<a href="\\1" target="_blank">(點擊這裡進入管理)</a>',


	'magicunit' => '個',
	'magic_note_wall' => '{actor}在留言板上給您<a href="{url}" target="_blank">留言</a>',
	'magic_call' => '在日誌中點了您的名，<a href="{url}" target="_blank">快去看看吧</a>',


	'present_user_magics' => '您收到了管理員贈送的道具：\\1',
	'has_not_more_doodle' => '您沒有塗鴉板了',

	'do_stat_login' => '來訪用戶',
	'do_stat_mobilelogin' => '手機訪問',
	'do_stat_connectlogin' => 'QQ登錄訪問',
	'do_stat_register' => '新註冊用戶',
	'do_stat_invite' => '好友邀請',
	'do_stat_appinvite' => '應用邀請',
	'do_stat_add' => '信息發佈',
	'do_stat_comment' => '信息互動',
	'do_stat_space' => '互動',
	'do_stat_doing' => '記錄',
	'do_stat_blog' => '日誌',
	'do_stat_activity' => '活動',
	'do_stat_reward' => '懸賞',
	'do_stat_debate' => '辯論',
	'do_stat_trade' => '商品',
	'do_stat_group' => "創建{$_G[setting][navs][3][navname]}",
	'do_stat_tgroup' => "{$_G[setting][navs][3][navname]}",
	'do_stat_home' => "{$_G[setting][navs][4][navname]}",
	'do_stat_forum' => "{$_G[setting][navs][2][navname]}",
	'do_stat_groupthread' => '群組主題',
	'do_stat_post' => '主題回復',
	'do_stat_grouppost' => '群組回復',
	'do_stat_pic' => '圖片',
	'do_stat_poll' => '投票',
	'do_stat_event' => '活動',
	'do_stat_share' => '分享',
	'do_stat_thread' => '主題',
	'do_stat_docomment' => '記錄回復',
	'do_stat_blogcomment' => '日誌評論',
	'do_stat_piccomment' => '圖片評論',
	'do_stat_pollcomment' => '投票評論',
	'do_stat_pollvote' => '參與投票',
	'do_stat_eventcomment' => '活動評論',
	'do_stat_eventjoin' => '參加活動',
	'do_stat_sharecomment' => '分享評論',
	'do_stat_post' => '主題回帖',
	'do_stat_click' => '表態',
	'do_stat_wall' => '留言',
	'do_stat_poke' => '打招呼',
	'do_stat_sendpm' => '發短消息',
	'do_stat_addfriend' => '好友請求',
	'do_stat_friend' => '成為好友',
	'do_stat_post_number' => '發帖量',
	'do_stat_statistic' => '合併統計',
	'logs_credit_update_INDEX' => array('TRC','RTC','RAC','MRC','BMC','TFR','RCV','CEC','ECU','SAC','BAC','PRC','RSC','STC','BTC','AFD','UGP','RPC','ACC','RCT','RCA','RCB','CDC','RGC','BGC','AGC','RKC','BME','RPR','RPZ','FCP','BGC'),
	'logs_credit_update_TRC' => '任務獎勵',
	'logs_credit_update_RTC' => '懸賞主題',
	'logs_credit_update_RAC' => '最佳答案',
	'logs_credit_update_MRC' => '道具隨機獲取',
	'logs_credit_update_BMC' => '購買道具',
	'logs_credit_update_TFR' => '轉賬轉出',
	'logs_credit_update_RCV' => '轉賬接收',
	'logs_credit_update_CEC' => '積分兌換',
	'logs_credit_update_ECU' => 'UCenter積分兌換支出',
	'logs_credit_update_SAC' => '出售附件',
	'logs_credit_update_BAC' => '購買附件',
	'logs_credit_update_PRC' => '帖子被評分',
	'logs_credit_update_RSC' => '帖子評分',
	'logs_credit_update_STC' => '出售主題',
	'logs_credit_update_BTC' => '購買主題',
	'logs_credit_update_AFD' => '購買積分',
	'logs_credit_update_UGP' => '購買擴展用戶組',
	'logs_credit_update_RPC' => '舉報獎懲',
	'logs_credit_update_ACC' => '參與活動',
	'logs_credit_update_RCT' => '回帖獎勵',
	'logs_credit_update_RCA' => '回帖中獎',
	'logs_credit_update_RCB' => '返還回帖獎勵積分',
	'logs_credit_update_CDC' => '卡密充值',
	'logs_credit_update_RGC' => '回收紅包',
	'logs_credit_update_BGC' => '埋下紅包',
	'logs_credit_update_AGC' => '獲得紅包',
	'logs_credit_update_RKC' => '競價排名',
	'logs_credit_update_BME' => '購買勳章',
	'logs_credit_update_RPR' => '後台積分獎懲',
	'logs_credit_update_RPZ' => '後台積分獎懲清零',
	'logs_credit_update_FCP' => '付費版塊',
	'logs_credit_update_BGR' => '創建群組',
	'buildgroup' => '查看已創建的群組',
	'logs_credit_update_reward_clean' => '清零',
	'logs_select_operation' => '請選擇操作類型',
	'task_credit' => '任務獎勵積分',
	'special_3_credit' => '懸賞主題扣除積分',
	'special_3_best_answer' => '最佳答案獲取懸賞積分',
	'magic_credit' => '道具隨機獲取積分',
	'magic_space_gift' => '在自已空間首頁埋下紅包',
	'magic_space_re_gift' => '回收還沒有用完的紅包',
	'magic_space_get_gift' => '訪問空間領取的紅包',
	'credit_transfer' => '進行積分轉帳',
	'credit_transfer_tips' => '的轉賬收入',
	'credit_exchange_tips_1' => '執行積分對兌換操作,將 ',
	'credit_exchange_to' => '兌換成',
	'credit_exchange_center' => '通過UCenter兌換積分',
	'attach_sell' => '出售',
	'attach_sell_tips' => '的附件獲得積分',
	'attach_buy' => '購買',
	'attach_buy_tips' => '的附件支出積分',
	'grade_credit' => '被評分獲得的積分',
	'grade_credit2' => '帖子評分扣除的積分',
	'thread_credit' => '主題獲得積分',
	'thread_credit2' => '主題支出積分',
	'buy_credit' => '對積分充值',
	'buy_usergroup' => '購買擴展用戶組支出積分',
	'buy_medal' => '購買勳章',
	'buy_forum' => '購買付費版塊的訪問權限',
	'report_credit' => '舉報功能中的獎懲',
	'join' => '參與',
	'activity_credit' => '活動扣除積分',
	'thread_send' => '扣除發表',
	'replycredit' => '散發的積分',
	'add_credit' => '獎勵積分',
	'recovery' => '回收',
	'replycredit_post' => '回帖獎勵',
	'replycredit_thread' => '散發的帖子',
	'card_credit' => '卡密充值獲得的積分',
	'ranklist_top' => '參加競價排名消費積分',
	'admincp_op_credit' => '後台積分獎懲操作',
	'credit_update_reward_clean' => '清零',

	'profile_unchangeable' => '此項資料提交後不可修改',
	'profile_is_verifying' => '此項資料正在審核中',
	'profile_mypost' => '我提交的內容',
	'profile_need_verifying' => '此項資料提交後需要審核',
	'profile_edit' => '修改',
	'profile_censor' => '(含有敏感詞彙)',
	'profile_verify_modify_error' => '{verify}已經認證通過不允許修改',
	'profile_verify_verifying' => '您的{verify}信息已提交，請耐心等待核查。',

	'district_level_1' => '-省份-',
	'district_level_2' => '-城市-',
	'district_level_3' => '-州縣-',
	'district_level_4' => '-鄉鎮-',
	'invite_you_to_visit' => '{user}邀請您訪問{bbname}',

	'portal' => '門戶',
	'group' => '群組',
	'follow' => '廣播',
	'collection' => '淘帖',
	'guide' => '導讀',
	'feed' => '動態',
	'blog' => '日誌',
	'doing' => '記錄',
	'wall' => '留言板',
	'homepage' => '個人主頁',
	'ranklist' => '排行榜',
	'select_the_navigation_position' => '選擇{type}導航位置',
	'close_module' => '關閉{type}功能',

	'follow_add_remark' => '添加備註',
	'follow_modify_remark' => '修改備註',
	'follow_specified_group' => '廣播專區',
	'follow_specified_forum' => '廣播專版',

	'filesize_lessthan' => '文件大小應該小於',

	'spacecp_message_prompt' => '(支持 {msg} 代碼,最大 1000 字)',
	'card_update_doing' => ' <a class="xi2" href="###">[更新記錄]</a>',
	'email_acitve_message' => '<img src="{imgdir}/mail_inactive.png" alt="未驗證" class="vm" /> <span class="xi1">新郵箱({newemail})等待驗證中...</span><br />
								系統已經向該郵箱發送了一封驗證激活郵件，請查收郵件，進行驗證激活。<br>
								如果沒有收到驗證郵件，您可以更換一個郵箱，或者<a href="home.php?mod=spacecp&ac=profile&op=password&resend=1" class="xi2">重新接收驗證郵件</a>',
	'qq_set_status' => '設置我的QQ在線狀態',
	'qq_dialog' => '發起QQ聊天',

);

?>
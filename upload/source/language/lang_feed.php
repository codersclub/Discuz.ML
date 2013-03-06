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

	'feed_blog_password' => '{actor} �������¼�����־ {subject}',
	'feed_blog_title' => '{actor} ����������־',
	'feed_blog_body' => '<b>{subject}</b><br />{summary}',
	'feed_album_title' => '{actor} ���������',
	'feed_album_body' => '<b>{album}</b><br />�� {picnum} ��ͼƬ',
	'feed_pic_title' => '{actor} �ϴ�����ͼƬ',
	'feed_pic_body' => '{title}',



	'feed_poll' => '{actor} ��������ͶƱ',

	'feed_comment_space' => '{actor} �� {touser} �����԰�������',
	'feed_comment_image' => '{actor} ������ {touser} ��ͼƬ',
	'feed_comment_blog' => '{actor} ������ {touser} ����־ {blog}',
	'feed_comment_poll' => '{actor} ������ {touser} ��ͶƱ {poll}',
	'feed_comment_event' => '{actor} �� {touser} ��֯�Ļ {event} ��������',
	'feed_comment_share' => '{actor} �� {touser} ����� {share} ����������',

	'feed_showcredit' => '{actor} ���͸� {fusername} ���ۻ��� {credit} ������������������<a href="misc.php?mod=ranklist&type=member" target="_blank">�������а�</a>�е�����',
	'feed_showcredit_self' => '{actor} ���Ӿ��ۻ��� {credit} ���������Լ���<a href="misc.php?mod=ranklist&type=member" target="_blank">�������а�</a>�е�����',
	'feed_doing_title' => '{actor}��{message}',
	'feed_friend_title' => '{actor} �� {touser} ��Ϊ�˺���',



	'feed_click_blog' => '{actor} ����һ����{click}���� {touser} ����־ {subject}',
	'feed_click_thread' => '{actor} ����һ����{click}���� {touser} �Ļ��� {subject}',
	'feed_click_pic' => '{actor} ����һ����{click}���� {touser} ��ͼƬ',
	'feed_click_article' => '{actor} ����һ����{click}���� {touser} ������ {subject}',


	'feed_task' => '{actor} ������н����� {task}',
	'feed_task_credit' => '{actor} ������н����� {task}����ȡ�� {credit} ����������',

	'feed_profile_update_base' => '{actor} �������Լ��Ļ�������',
	'feed_profile_update_contact' => '{actor} �������Լ�����ϵ��ʽ',
	'feed_profile_update_edu' => '{actor} �������Լ��Ľ������',
	'feed_profile_update_work' => '{actor} �������Լ��Ĺ�����Ϣ',
	'feed_profile_update_info' => '{actor} �������Լ��ĸ�����Ϣ',
	'feed_profile_update_bbs' => '{actor} �������Լ�����̳��Ϣ',
	'feed_profile_update_verify' => '{actor} �������Լ�����֤��Ϣ',

	'feed_add_attachsize' => '{actor} �� {credit} �����ֶһ��� {size} �����ռ䣬�����ϴ������ͼƬ��(<a href="home.php?mod=spacecp&ac=credit&op=addsize">��Ҳ���һ�</a>)',

	'feed_invite' => '{actor} �������룬�� {username} ��Ϊ�˺���',

	'magicuse_thunder_announce_title' => '<strong>{username} �����ˡ�����֮����</strong>',
	'magicuse_thunder_announce_body' => '��Һã���������<br /><a href="home.php?mod=space&uid={uid}" target="_blank">��ӭ���ҼҴ�����</a>',


	'feed_thread_title' =>			'{actor} �������»���',
	'feed_thread_message' =>		'<b>{subject}</b><br />{message}',

	'feed_reply_title' =>			'{actor} �ظ��� {author} �Ļ��� {subject}',
	'feed_reply_title_anonymous' =>		'{actor} �ظ��˻��� {subject}',
	'feed_reply_message' =>			'',

	'feed_thread_poll_title' =>		'{actor} ��������ͶƱ',
	'feed_thread_poll_message' =>		'<b>{subject}</b><br />{message}',

	'feed_thread_votepoll_title' =>		'{actor} �����˹��� {subject} ��ͶƱ',
	'feed_thread_votepoll_message' =>	'',

	'feed_thread_goods_title' =>		'{actor} ������һ������Ʒ',
	'feed_thread_goods_message_1' =>	'<b>{itemname}</b><br />�ۼ� {itemprice} Ԫ ���� {itemcredit}{creditunit}',
	'feed_thread_goods_message_2' =>	'<b>{itemname}</b><br />�ۼ� {itemprice} Ԫ',
	'feed_thread_goods_message_3' =>	'<b>{itemname}</b><br />�ۼ� {itemcredit}{creditunit}',

	'feed_thread_reward_title' =>		'{actor} ������������',
	'feed_thread_reward_message' =>		'<b>{subject}</b><br />���� {rewardprice}{extcredits}',

	'feed_reply_reward_title' =>		'{actor} �ظ��˹��� {subject} ������',
	'feed_reply_reward_message' =>		'',

	'feed_thread_activity_title' =>		'{actor} �������»',
	'feed_thread_activity_message' =>	'<b>{subject}</b><br />��ʼʱ�䣺{starttimefrom}<br />��ص㣺{activityplace}<br />{message}',

	'feed_reply_activity_title' =>		'{actor} �����μ��� {subject} �Ļ',
	'feed_reply_activity_message' =>	'',

	'feed_thread_debate_title' =>		'{actor} �������±���',
	'feed_thread_debate_message' =>		'<b>{subject}</b><br />������{affirmpoint}<br />������{negapoint}<br />{message}',

	'feed_thread_debatevote_title_1' =>	'{actor} ��������ݲ����˹��� {subject} �ı���',
	'feed_thread_debatevote_title_2' =>	'{actor} �Է�����ݲ����˹��� {subject} �ı���',
	'feed_thread_debatevote_title_3' =>	'{actor} ��������ݲ����˹��� {subject} �ı���',
	'feed_thread_debatevote_message_1' =>	'',
	'feed_thread_debatevote_message_2' =>	'',
	'feed_thread_debatevote_message_3' =>	'',

);

?>
<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: lang_notification.php 32028 2012-10-31 10:12:22Z zhangjie $
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

$lang = array
(

	'type_wall' => '����',
	'type_piccomment' => 'ͼƬ����',
	'type_blogcomment' => '��־����',
	'type_clickblog' => '��־��̬',
	'type_clickarticle' => '���±�̬',
	'type_clickpic' => 'ͼƬ��̬',
	'type_sharecomment' => '��������',
	'type_doing' => '��¼',
	'type_friend' => '����',
	'type_credit' => '����',
	'type_bbs' => '��̳',
	'type_system' => 'ϵͳ',
	'type_thread' => '����',
	'type_task' => '����',
	'type_group' => 'Ⱥ��',

	'mail_to_user' => '���µ�֪ͨ',
	'showcredit' => '{actor} ���͸��� {credit} �����ۻ��֣������������� <a href="misc.php?mod=ranklist&type=member" target="_blank">�������а�</a> �е�����',
	'share_space' => '{actor} ���������Ŀռ�',
	'share_blog' => '{actor} ������������־ <a href="{url}" target="_blank">{subject}</a>',
	'share_album' => '{actor} ������������� <a href="{url}" target="_blank">{albumname}</a>',
	'share_pic' => '{actor} ������������� {albumname} �е� <a href="{url}" target="_blank"> ͼƬ</a>',
	'share_thread' => '{actor} �������������� <a href="{url}" target="_blank">{subject}</a>',
	'share_article' => '{actor} �������������� <a href="{url}" target="_blank">{subject}</a>',
	'magic_present_note' => '�͸���һ������ <a href="{url}" target="_blank">{name}</a>',
	'friend_add' => '{actor} ������Ϊ�˺���',
	'friend_request' => '{actor} �������Ϊ����{note}&nbsp;&nbsp;<a onclick="showWindow(this.id, this.href, \'get\', 0);" class="xw1" id="afr_{uid}" href="{url}">��׼����</a>',
	'doing_reply' => '{actor} �ظ������� <a href="{url}" target="_blank">��¼</a>',
	'wall_reply' => '{actor} �ظ������� <a href="{url}" target="_blank">����</a>',
	'pic_comment_reply' => '{actor} �ظ������� <a href="{url}" target="_blank">ͼƬ����</a>',
	'blog_comment_reply' => '{actor} �ظ������� <a href="{url}" target="_blank">��־����</a>',
	'share_comment_reply' => '{actor} �ظ������� <a href="{url}" target="_blank">��������</a>',
	'wall' => '{actor} �����԰��ϸ��� <a href="{url}" target="_blank">����</a>',
	'pic_comment' => '{actor} ���������� <a href="{url}" target="_blank">ͼƬ</a>',
	'blog_comment' => '{actor} ������������־ <a href="{url}" target="_blank">{subject}</a>',
	'share_comment' => '{actor} ���������� <a href="{url}" target="_blank">����</a>',
	'click_blog' => '{actor} ��������־ <a href="{url}" target="_blank">{subject}</a> ���˱�̬',
	'click_pic' => '{actor} ������ <a href="{url}" target="_blank">ͼƬ</a> ���˱�̬',
	'click_article' => '{actor} ���������� <a href="{url}" target="_blank">{subject}</a> ���˱�̬',
	'show_out' => '{actor} ������������ҳ�����ھ����������е����һ������Ҳ�����ѵ���',
	'puse_article' => '��ϲ��������<a href="{url}" target="_blank">{subject}</a>�ѱ���ӵ������б� <a href="{newurl}" target="_blank">����鿴</a>',

	'myinvite_request' => '���µ�Ӧ����Ϣ<a href="home.php?mod=space&do=notice&view=userapp">��˽���Ӧ����Ϣҳ�������ز���</a>',


	'group_member_join' => '{actor} �������� <a href="forum.php?mod=group&fid={fid}" target="_blank">{groupname}</a> Ⱥ����Ҫ��ˣ��뵽Ⱥ��<a href="{url}" target="_blank">�����̨</a> �������',
	'group_member_invite' => '{actor} ���������� <a href="forum.php?mod=group&fid={fid}" target="_blank">{groupname}</a> Ⱥ�飬<a href="{url}" target="_blank">������ϼ���</a>',
	'group_member_check' => '����ͨ���� <a href="{url}" target="_blank">{groupname}</a> Ⱥ�����ˣ��� <a href="{url}" target="_blank">����������</a>',
	'group_member_check_failed' => '��û��ͨ�� <a href="{url}" target="_blank">{groupname}</a> Ⱥ�����ˡ�',
	'group_mod_check' => '���Ĵ�����Ⱥ�� <a href="{url}" target="_blank">{groupname}</a> ���ͨ���ˣ��� <a href="{url}" target="_blank">����������</a>',

	'reason_moderate' => '�������� <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> �� {actor} {modaction} <div class="quote"><blockquote>{reason}</blockquote></div>',

	'reason_merge' => '�������� <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> �� {actor} {modaction} <div class="quote"><blockquote>{reason}</blockquote></div>',

	'reason_delete_post' => '���� <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> �����ӱ� {actor} ɾ�� <div class="quote"><blockquote>{reason}</blockquote></div>',

	'reason_delete_comment' => '���� <a href="forum.php?mod=redirect&goto=findpost&pid={pid}&ptid={tid}" target="_blank">{subject}</a> �ĵ����� {actor} ɾ�� <div class="quote"><blockquote>{reason}</blockquote></div>',

	'reason_ban_post' => '�������� <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> �� {actor} {modaction} <div class="quote"><blockquote>{reason}</blockquote></div>',

	'reason_warn_post' => '�������� <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> �� {actor} {modaction}<br />
���� {warningexpiration} �����ۼ� {warninglimit} �ξ��棬�������Զ���ֹ���� {warningexpiration} �졣<br />
��ֹ��Ŀǰ�����ѱ����� {authorwarnings} �Σ���ע�⣡<div class="quote"><blockquote>{reason}</blockquote></div>',

	'reason_move' => '�������� <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> �� {actor} �ƶ��� <a href="forum.php?mod=forumdisplay&fid={tofid}" target="_blank">{toname}</a> <div class="quote"><blockquote>{reason}</blockquote></div>',

	'reason_copy' => '�������� <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> �� {actor} ����Ϊ <a href="forum.php?mod=viewthread&tid={threadid}" target="_blank">{subject}</a> <div class="quote"><blockquote>{reason}</blockquote></div>',

	'reason_remove_reward' => '������������ <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> �� {actor} ���� <div class="quote"><blockquote>{reason}</blockquote></div>',

	'reason_stamp_update' => '�������� <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> �� {actor} �����ͼ�� {stamp} <div class="quote"><blockquote>{reason}</blockquote></div>',

	'reason_stamp_delete' => '�������� <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> �� {actor} ������ͼ�� <div class="quote"><blockquote>{reason}</blockquote></div>',

	'reason_stamplist_update' => '�������� <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> �� {actor} �����ͼ�� {stamp} <div class="quote"><blockquote>{reason}</blockquote></div>',

	'reason_stamplist_delete' => '�������� <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> �� {actor} ������ͼ�� <div class="quote"><blockquote>{reason}</blockquote></div>',

	'reason_stickreply' => '�������� <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> �Ļ����� {actor} �ö� <div class="quote"><blockquote>{reason}</blockquote></div>',

	'reason_stickdeletereply' => '�������� <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> �Ļ����� {actor} �����ö� <div class="quote"><blockquote>{reason}</blockquote></div>',

	'reason_quickclear' => '����{cleartype} �� {actor} ��� <div class="quote"><blockquote>{reason}</blockquote></div>',

	'reason_live_update' => '�������� <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> �� {actor} ����Ϊֱ���� <div class="quote"><blockquote>{reason}</blockquote></div>',
	'reason_live_cancle' => '�������� <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> �� {actor} ȡ��ֱ�� <div class="quote"><blockquote>{reason}</blockquote></div>',

	'modthreads_delete' => '����������� {threadsubject} δͨ����ˣ����ѱ�ɾ����',

	'modthreads_delete_reason' => '����������� {threadsubject} δͨ����ˣ����ѱ�ɾ����<div class="quote"><blockquote>{reason}</blockquote></div>',
	'modthreads_validate' => '����������� <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{threadsubject}</a> �����ͨ���� &nbsp; <a href="forum.php?mod=viewthread&tid={tid}" target="_blank" class="lit">�鿴 &rsaquo;</a>',

	'modreplies_delete' => '������ظ�δͨ����ˣ����ѱ�ɾ���� <p class="summary">�ظ����ݣ�<span>{post}</span></p>',

	'modreplies_validate' => '������Ļظ������ͨ���� &nbsp; <a href="forum.php?mod=redirect&goto=findpost&pid={pid}&ptid={tid}" target="_blank" class="lit">�鿴 &rsaquo;</a> <p class="summary">�ظ����ݣ�<span>{post}</span></p>',

	'transfer' => '���յ�һ������ {actor} �Ļ���ת�� {credit} &nbsp; <a href="home.php?mod=spacecp&ac=credit&op=log&suboperation=creditslog" target="_blank" class="lit">�鿴 &rsaquo;</a>
<p class="summary">{actor} ˵��<span>{transfermessage}</span></p>',

	'addfunds' => '���ύ�Ļ��ֳ�ֵ��������ɣ���Ӧ����Ļ����Ѵ������Ļ����˻� &nbsp; <a href="home.php?mod=spacecp&ac=credit&op=base" target="_blank" class="lit">�鿴 &rsaquo;</a>
<p class="summary">�����ţ�<span>{orderid}</span></p><p class="summary">֧����<span>����� {price} Ԫ</span></p><p class="summary">���룺<span>{value}</span></p>',

	'rate_reason' => '�������� <a href="forum.php?mod=redirect&goto=findpost&pid={pid}&ptid={tid}" target="_blank">{subject}</a> �����ӱ� {actor} ���� {ratescore} <div class="quote"><blockquote>{reason}</blockquote></div>',

	'recommend_note_post' => '��ϲ���������� <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> ���༭����',

	'rate_removereason' => '�������� <a href="forum.php?mod=redirect&goto=findpost&pid={pid}&ptid={tid}" target="_blank">{subject}</a> �����ӵ����� {ratescore} <div class="quote"><blockquote>{reason}</blockquote></div> �� {actor} ����',

	'trade_seller_send' => '<a href="home.php?mod=space&uid={buyerid}" target="_blank">{buyer}</a> ����������Ʒ <a href="forum.php?mod=trade&orderid={orderid}" target="_blank">{subject}</a>���Է��Ѹ���ȴ������� &nbsp; <a href="forum.php?mod=trade&orderid={orderid}" target="_blank" class="lit">�鿴 &rsaquo;</a>',

	'trade_buyer_confirm' => '���������Ʒ <a href="forum.php?mod=trade&orderid={orderid}" target="_blank">{subject}</a>��<a href="home.php?mod=space&uid={sellerid}" target="_blank">{seller}</a> �ѷ������ȴ���ȷ�� &nbsp; <a href="forum.php?mod=trade&orderid={orderid}" target="_blank" class="lit">�鿴 &rsaquo;</a>',

	'trade_fefund_success' => '��Ʒ <a href="forum.php?mod=trade&orderid={orderid}" target="_blank">{subject}</a> ���˿�ɹ� &nbsp; <a href="forum.php?mod=trade&orderid={orderid}" target="_blank" class="lit">���� &rsaquo;</a>',

	'trade_success' => '��Ʒ <a href="forum.php?mod=trade&orderid={orderid}" target="_blank">{subject}</a> �ѽ��׳ɹ� &nbsp; <a href="forum.php?mod=trade&orderid={orderid}" target="_blank" class="lit">���� &rsaquo;</a>',

	'trade_order_update_sellerid' => '���� <a href="home.php?mod=space&uid={sellerid}" target="_blank">{seller}</a> �޸�����Ʒ <a href="forum.php?mod=trade&orderid={orderid}" target="_blank">{subject}</a> �Ľ��׵�����ȷ�� &nbsp; <a href="forum.php?mod=trade&orderid={orderid}" target="_blank" class="lit">�鿴 &rsaquo;</a>',

	'trade_order_update_buyerid' => '��� <a href="home.php?mod=space&uid={buyerid}" target="_blank">{buyer}</a> �޸�����Ʒ <a href="forum.php?mod=trade&orderid={orderid}" target="_blank">{subject}</a> �Ľ��׵�����ȷ�� &nbsp; <a href="forum.php?mod=trade&orderid={orderid}" target="_blank" class="lit">�鿴 &rsaquo;</a>',

	'eccredit' => '�������׵� {actor} �Ѷ����������� &nbsp; <a href="forum.php?mod=trade&orderid={orderid}" target="_blank" class="lit">���� &rsaquo;</a>',

	'activity_notice' => '{actor} ����������ٰ�Ļ <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a>������� &nbsp; <a href="forum.php?mod=viewthread&tid={tid}" target="_blank" class="lit">�鿴 &rsaquo;</a>',

	'activity_apply' => '� <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> �ķ����� {actor} ����׼���μӴ˻ &nbsp; <a href="forum.php?mod=viewthread&tid={tid}" target="_blank" class="lit">�鿴 &rsaquo;</a> <div class="quote"><blockquote>{reason}</blockquote></div>',

	'activity_replenish' => '� <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> �ķ����� {actor} ֪ͨ����Ҫ���ƻ������Ϣ &nbsp; <a href="forum.php?mod=viewthread&tid={tid}" target="_blank" class="lit">�鿴 &rsaquo;</a> <div class="quote"><blockquote>{reason}</blockquote></div>',

	'activity_delete' => '� <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> �ķ����� {actor} �ܾ����μӴ˻ &nbsp; <a href="forum.php?mod=viewthread&tid={tid}"  target="_blank" class="lit">�鿴 &rsaquo;</a> <div class="quote"><blockquote>{reason}</blockquote></div>',

	'activity_cancel' => '{actor} ȡ���˲μ� <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> � &nbsp; <a href="forum.php?mod=viewthread&tid={tid}"  target="_blank" class="lit">�鿴 &rsaquo;</a> <div class="quote"><blockquote>{reason}</blockquote></div>',

	'activity_notification' => '� <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> �ķ����� {actor} ����֪ͨ&nbsp; <a href="forum.php?mod=viewthread&tid={tid}" target="_blank" class="lit">�鿴� &rsaquo;</a> <div class="quote"><blockquote>{msg}</blockquote></div>',

	'reward_question' => '������������ <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> �� {actor} ��������Ѵ� &nbsp; <a href="forum.php?mod=viewthread&tid={tid}" target="_blank" class="lit">�鿴 &rsaquo;</a>',

	'reward_bestanswer' => '���Ļظ����������� <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> ������ {actor} ѡΪ��Ѵ� &nbsp; <a href="forum.php?mod=viewthread&tid={tid}" target="_blank" class="lit">�鿴 &rsaquo;</a>',

	'reward_bestanswer_moderator' => '������������ <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> �Ļظ���ѡΪ��Ѵ� &nbsp; <a href="forum.php?mod=viewthread&tid={tid}" target="_blank" class="lit">�鿴 &rsaquo;</a>',

	'comment_add' => '{actor} ������������������ <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> ��������� &nbsp; <a href="forum.php?mod=redirect&goto=findpost&pid={pid}&ptid={tid}" target="_blank" class="lit">�鿴 &rsaquo;</a>',

	'reppost_noticeauthor' => '{actor} �ظ����������� <a href="forum.php?mod=redirect&goto=findpost&ptid={tid}&pid={pid}" target="_blank">{subject}</a> &nbsp; <a href="forum.php?mod=redirect&goto=findpost&pid={pid}&ptid={tid}" target="_blank" class="lit">�鿴</a>',

	'task_reward_credit' => '��ϲ���������<a href="home.php?mod=task&do=view&id={taskid}" target="_blank">{name}</a>����û��� {creditbonus} &nbsp; <a href="home.php?mod=spacecp&ac=credit&op=base" target="_blank" class="lit">�鿴�ҵĻ��� &rsaquo;</a></p>',

	'task_reward_magic' => '��ϲ���������<a href="home.php?mod=task&do=view&id={taskid}" target="_blank">{name}</a>����õ��� <a href="home.php?mod=magic&action=mybox" target="_blank">{rewardtext}</a> {bonus} ��',

	'task_reward_medal' => '��ϲ���������<a href="home.php?mod=task&do=view&id={taskid}" target="_blank">{name}</a>�����ѫ�� <a href="home.php?mod=medal" target="_blank">{rewardtext}</a> ��Ч�� {bonus} ��',

	'task_reward_medal_forever' => '��ϲ���������<a href="home.php?mod=task&do=view&id={taskid}" target="_blank">{name}</a>�����ѫ�� <a href="home.php?mod=medal" target="_blank">{rewardtext}</a> ������Ч',

	'task_reward_invite' => '��ϲ���������<a href="home.php?mod=task&do=view&id={taskid}" target="_blank">{name}</a>�����<a href="home.php?mod=spacecp&ac=invite" target="_blank">������ {rewardtext}��</a> ��Ч�� {bonus} ��',

	'task_reward_group' => '��ϲ���������<a href="home.php?mod=task&do=view&id={taskid}" target="_blank">{name}</a>������û��� {rewardtext} ��Ч�� {bonus} �� &nbsp; <a href="home.php?mod=spacecp&ac=usergroup" target="_blank" class="lit">����������ʲô &rsaquo;</a>',

	'user_usergroup' => '�����û�������Ϊ {usergroup} &nbsp; <a href="home.php?mod=spacecp&ac=usergroup" target="_blank" class="lit">����������ʲô &rsaquo;</a>',

	'grouplevel_update' => '��ϲ��������Ⱥ�� {groupname} �������� {newlevel}��',

	'thread_invite' => '{actor} ������{invitename} <a href="forum.php?mod=viewthread&tid={tid}" target="_blank">{subject}</a> &nbsp; <a href="forum.php?mod=viewthread&tid={tid}" target="_blank" class="lit">�鿴 &rsaquo;</a>',
	'blog_invite' => '{actor} �������鿴��־ <a href="home.php?mod=space&uid={uid}&do=blog&id={blogid}" target="_blank">{subject}</a> &nbsp; <a href="home.php?mod=space&uid={uid}&do=blog&id={blogid}" target="_blank" class="lit">�鿴 &rsaquo;</a>',
	'article_invite' => '{actor} �������鿴���� <a href="{url}" target="_blank">{subject}</a> &nbsp; <a href="{url}" target="_blank" class="lit">�鿴 &rsaquo;</a>',
	'invite_friend' => '��ϲ���ɹ����뵽 {actor} ����Ϊ���ĺ���',

	'poke_request' => '<a href="{fromurl}" class="xi2">{fromusername}</a>: <span class="xw0">{pokemsg}&nbsp;</span><a href="home.php?mod=spacecp&ac=poke&op=reply&uid={fromuid}&from=notice" id="a_p_r_{fromuid}" class="xw1" onclick="showWindow(this.id, this.href, \'get\', 0);">�ش��к�</a><span class="pipe">|</span><a href="home.php?mod=spacecp&ac=poke&op=ignore&uid={fromuid}&from=notice" id="a_p_i_{fromuid}" onclick="showWindow(\'pokeignore\', this.href, \'get\', 0);">����</a>',

	'profile_verify_error' => '{verify}������˱��ܾ�,�����ֶ���Ҫ������д:<br/>{profile}<br/>�ܾ�����:{reason}',
	'profile_verify_pass' => '��ϲ��������д��{verify}���������ͨ��',
	'profile_verify_pass_refusal' => '���ź�������д��{verify}��������ѱ��ܾ�',
	'member_ban_speak' => '���ѱ� {user} ��ֹ���ԣ����ޣ�{day}��(0���������ý���)���������ɣ�{reason}',
	'member_ban_visit' => '���ѱ� {user} ��ֹ���ʣ����ޣ�{day}��(0���������ý�ֹ����)����ֹ�������ɣ�{reason}',
	'member_ban_status' => '���ѱ� {user} ��������ֹ�������ɣ�{reason}',
	'member_follow' => '����ע��������{count}���¶�̬��<a href="home.php?mod=follow">����鿴</a>',
	'member_follow_add' => '{actor} ����������<a href="home.php?mod=follow&do=follower">����鿴</a>',

	'member_moderate_invalidate' => '�����˺�δ��ͨ������Ա����ˣ���<a href="home.php?mod=spacecp&ac=profile">�����ύע����Ϣ</a>��<br />����Ա����: <b>{remark}</b>',
	'member_moderate_validate' => '�����˺���ͨ����ˡ�<br />����Ա����: <b>{remark}</b>',
	'member_moderate_invalidate_no_remark' => '�����˺�δ��ͨ������Ա����ˣ���<a href="home.php?mod=spacecp&ac=profile">�����ύע����Ϣ</a>��',
	'member_moderate_validate_no_remark' => '�����˺���ͨ����ˡ�',
	'manage_verifythread' => '���µĴ�������⡣<a href="admin.php?action=moderate&operation=threads&dateline=all">���ڽ������</a>',
	'manage_verifypost' => '���µĴ���˻�����<a href="admin.php?action=moderate&operation=replies&dateline=all">���ڽ������</a>',
	'manage_verifyuser' => '���µĴ���˻�Ա��<a href="admin.php?action=moderate&operation=members">���ڽ������</a>',
	'manage_verifyblog' => '���µĴ������־��<a href="admin.php?action=moderate&operation=blogs">���ڽ������</a>',
	'manage_verifydoing' => '���µĴ���˼�¼��<a href="admin.php?action=moderate&operation=doings">���ڽ������</a>',
	'manage_verifypic' => '���µĴ����ͼƬ��<a href="admin.php?action=moderate&operation=pictures">���ڽ������</a>',
	'manage_verifyshare' => '���µĴ���˷���<a href="admin.php?action=moderate&operation=shares">���ڽ������</a>',
	'manage_verifycommontes' => '���µĴ��������/���ۡ�<a href="admin.php?action=moderate&operation=comments">���ڽ������</a>',
	'manage_verifyrecycle' => '����վ���µĴ��������⡣<a href="admin.php?action=recyclebin">���ڴ���</a>',
	'manage_verifyrecyclepost' => '��������վ���µĴ����������<a href="admin.php?action=recyclebinpost">���ڴ���</a>',
	'manage_verifyarticle' => '���µĴ�������¡�<a href="admin.php?action=moderate&operation=articles">���ڽ������</a>',
	'manage_verifymedal' => '���µĴ����ѫ�����롣<a href="admin.php?action=medals&operation=mod">���ڽ������</a>',
	'manage_verifyacommont' => '���µĴ�����������ۡ�<a href="admin.php?action=moderate&operation=articlecomments">���ڽ������</a>',
	'manage_verifytopiccommont' => '���µĴ����ר�����ۡ�<a href="admin.php?action=moderate&operation=topiccomments">���ڽ������</a>',
	'manage_verify_field' => '���µĴ�����{verifyname}��<a href="admin.php?action=verify&operation=verify&do={doid}">���ڴ���</a>',
	'system_notice' => '{subject}<p class="summary">{message}</p>',
	'system_adv_expiration' => '��վ������¹�潫�� {day} ����ڣ��뼰ʱ����<br />{advs}',
	'report_change_credits' => '{actor} ���������ľٱ� {creditchange} {msg}',
	'at_message' => '<a href="home.php?mod=space&uid={buyerid}" target="_blank">{buyer}</a> ������ <a href="forum.php?mod=redirect&goto=findpost&ptid={tid}&pid={pid}" target="_blank">{subject}</a> ���ᵽ����<div class="quote"><blockquote>{message}</blockquote></div><a href="forum.php?mod=redirect&goto=findpost&ptid={tid}&pid={pid}" target="_blank">����ȥ����</a>��',
	'new_report' => '���µľٱ��ȴ�����<a href="admin.php?action=report" target="_blank">��˽����̨����</a>��',
	'new_post_report' => '���µľٱ��ȴ�����<a href="forum.php?mod=modcp&action=report&fid={fid}" target="_blank">��˽���������</a>��',
	'magics_receive' => '���յ� {actor} �͸����ĵ��� {magicname}
<p class="summary">{actor} ˵��<span>{msg}</span></p>
<p class="mbn"><a href="home.php?mod=magic" target="_blank">��������</a><span class="pipe">|</span><a href="home.php?mod=magic&action=mybox" target="_blank">�鿴�ҵĵ�����</a></p>',
	'invite_collection' => '{actor} ����������ά����ר��  <a href="forum.php?mod=collection&action=view&ctid={ctid}">{collectionname}</a>��<br /> <a href="forum.php?mod=collection&action=edit&op=acceptinvite&ctid={ctid}&dateline={dateline}">��������</a>',
	'collection_removed' => '������ά������ר��  <a href="forum.php?mod=collection&action=view&ctid={ctid}">{collectionname}</a> �ѱ� {actor} �رա�',
	'exit_collection' => '���Ѿ��˳�ά����ר��  <a href="forum.php?mod=collection&action=view&ctid={ctid}">{collectionname}</a>��',
	'collection_becommented' => '������ר��  <a href="forum.php?mod=collection&action=view&ctid={ctid}">{collectionname}</a> �յ��������ۡ�',
	'collection_befollowed' => '������ר��  <a href="forum.php?mod=collection&action=view&ctid={ctid}">{collectionname}</a> �����û������ˣ�',
	'collection_becollected' => '��ϲ�������� <a href="forum.php?mod=viewthread&tid={tid}">{threadname}</a> ����ר��  <a href="forum.php?mod=collection&action=view&ctid={ctid}">{collectionname}</a> ��¼�ˣ�',

	'pmreportcontent' => '{pmreportcontent}',

);

?>
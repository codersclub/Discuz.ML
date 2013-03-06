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

	'by' => 'ͨ��',
	'tab_space' => ' ',

	'share' => '����',
	'share_action' => '������',

	'pm_comment' => '�𸴵���',
	'pm_thread_about' => '�������ڡ�{subject}��������',

	'wall_pm_subject' => '���ã��Ҹ���������',
	'wall_pm_message' => '�����������԰���������ˣ�[url=\\1]�������ȥ���԰忴����[/url]',
	'reward' => '����',
	'reward_info' => '����ͶƱ�ɻ��  \\1 ����',
	'poll_separator' => '"��"',

	'pm_report_content' => '<a href="home.php?mod=space&uid={reporterid}" target="_blank">{reportername}</a>�ٱ�����Ϣ��<br>����<a href="home.php?mod=space&uid={uid}" target="_blank">{username}</a>�Ķ���Ϣ<br>���ݣ�{message}',
	'message_can_not_send_1' => '����ʧ�ܣ�����ǰ������24Сʱ�����˻Ự������',
	'message_can_not_send_2' => '���η��Ͷ���Ϣ̫�죬���Ժ��ٷ���',
	'message_can_not_send_3' => '��Ǹ�������ܸ��Ǻ����������Ͷ���Ϣ',
	'message_can_not_send_4' => '��Ǹ����Ŀǰ������ʹ�÷��Ͷ���Ϣ����',
	'message_can_not_send_5' => '��������24Сʱ��Ⱥ�ĻỰ������',
	'message_can_not_send_6' => '�Է����������Ķ���Ϣ',
	'message_can_not_send_7' => '������Ⱥ����������',
	'message_can_not_send_8' => '��Ǹ�������ܸ��Լ�������Ϣ',
	'message_can_not_send_9' => '�ռ���Ϊ�ջ�Է����������Ķ���Ϣ',
	'message_can_not_send_10' => '����Ⱥ����������С������',
	'message_can_not_send_11' => '�ûỰ������',
	'message_can_not_send_12' => '��Ǹ����û��Ȩ�޲���',
	'message_can_not_send_13' => '�ⲻ��Ⱥ����Ϣ',
	'message_can_not_send_14' => '�ⲻ��˽����Ϣ',
	'message_can_not_send_15' => '��������',
	'message_can_not_send_16' => '��������24Сʱ�ڷ�����Ϣ����������',
	'message_can_not_send_onlyfriend' => '���û�ֻ���պ��ѷ��͵Ķ���Ϣ',


	'friend_subject' => '<a href="{url}" target="_blank">{username} �������Ϊ����</a>',
	'friend_request_note' => '�����ԣ�{note}',
	'comment_friend' =>'<a href="\\2" target="_blank">\\1 ����������</a>',
	'photo_comment' => '<a href="\\2" target="_blank">\\1 ������������Ƭ</a>',
	'blog_comment' => '<a href="\\2" target="_blank">\\1 ������������־</a>',
	'poll_comment' => '<a href="\\2" target="_blank">\\1 ����������ͶƱ</a>',
	'share_comment' => '<a href="\\2" target="_blank">\\1 ���������ķ���</a>',
	'friend_pm' => '<a href="\\2" target="_blank">\\1 ������˽����</a>',
	'poke_subject' => '<a href="\\2" target="_blank">\\1 �������к�</a>',
	'mtag_reply' => '<a href="\\2" target="_blank">\\1 �ظ������Ļ���</a>',
	'event_comment' => '<a href="\\2" target="_blank">\\1 ���������Ļ</a>',

	'friend_pm_reply' => '\\1 �ظ�������˽��',
	'comment_friend_reply' => '\\1 �ظ�����������',
	'blog_comment_reply' => '\\1 �ظ���������־����',
	'photo_comment_reply' => '\\1 �ظ���������Ƭ����',
	'poll_comment_reply' => '\\1 �ظ�������ͶƱ����',
	'share_comment_reply' => '\\1 �ظ������ķ�������',
	'event_comment_reply' => '\\1 �ظ������Ļ����',

	'mail_my' => '�������ҵĻ�������',
  	'mail_system' => 'ϵͳ����',

	'invite_subject' => '{username}����������{sitename}������Ϊ����',
	'invite_massage' => '<table border="0">
		<tr>
		<td valign="top">{avatar}</td>
		<td valign="top">
		<h3>Hi������{username}��������Ҳ����{sitename}����Ϊ�ҵĺ���</h3><br>
		����뵽�ҵĺ����У����Ϳ����˽��ҵĽ���������һ��������ʱ���ұ�����ϵ��<br>
		<br>
		���븽�ԣ�<br>{saymsg}
		<br><br>
		<strong>��������������ӣ����ܺ������룺</strong><br>
		<a href="{inviteurl}">{inviteurl}</a><br>
		<br>
		<strong>�����ӵ��{sitename}������˺ţ������������Ӳ鿴�ҵĸ�����ҳ��</strong><br>
		<a href="{siteurl}home.php?mod=space&uid={uid}">{siteurl}home.php?mod=space&uid={uid}</a><br>
		</td></tr></table>',

	'app_invite_subject' => '{username}����������{sitename}��һ������{appname}',
	'app_invite_massage' => '<table border="0">
		<tr>
		<td valign="top">{avatar}</td>
		<td valign="top">
		<h3>Hi������{username}����{sitename}���� {appname}��������Ҳ����һ����</h3><br>
		<br>
		���븽�ԣ�<br>
		{saymsg}
		<br><br>
		<strong>��������������ӣ����ܺ�������һ����{appname}��</strong><br>
		<a href="{inviteurl}">{inviteurl}</a><br>
		<br>
		<strong>�����ӵ��{sitename}������˺ţ������������Ӳ鿴�ҵĸ�����ҳ��</strong><br>
		<a href="{siteurl}home.php?mod=space&uid={uid}">{siteurl}home.php?mod=space&uid={uid}</a><br>
		</td></tr></table>',

	'person' => '��',
	'delete' => 'ɾ��',

	'space_update' => '{actor} ��SHOW��һ��',

	'active_email_subject' => '�������伤���ʼ�',
	'active_email_msg' => '�븴������ļ������ӵ���������з��ʣ��Ա㼤���������䡣<br>���伤������:<br><a href="{url}" target="_blank">{url}</a>',
	'share_space' => '������һ���û�',
	'share_blog' => '������һƪ��־',
	'share_album' => '������һ�����',
	'default_albumname' => 'Ĭ�����',
	'share_image' => '������һ��ͼƬ',
	'share_article' => '������һƪ����',
	'album' => '���',
	'share_thread' => '������һ������',
	'mtag' => '{$_G[setting][navs][3][navname]}',
	'share_mtag' => '������һ��{$_G[setting][navs][3][navname]}',
	'share_mtag_membernum' => '���� {membernum} ����Ա',
	'share_tag' => '������һ����ǩ',
	'share_tag_blognum' => '���� {blognum} ƪ��־',
	'share_link' => '������һ����ַ',
	'share_video' => '������һ����Ƶ',
	'share_music' => '������һ������',
	'share_flash' => '������һ�� Flash',
	'share_event' => '������һ���',
	'share_poll' => '������һ��\\1ͶƱ',
	'event_time' => '�ʱ��',
	'event_location' => '��ص�',
	'event_creator' => '������',
	'the_default_style' => 'Ĭ�Ϸ��',
	'the_diy_style' => '�Զ�����',

	'thread_edit_trail' => '<ins class="modify">[�������� \\1 �� \\2 �༭]</ins>',
	'create_a_new_album' => '�����������',
	'not_allow_upload' => '������û��Ȩ���ϴ�ͼƬ',
	'not_allow_upload_extend' => '�������ϴ�{extend}���͵�ͼƬ',
	'files_can_not_exceed_size' => '{extend}���ļ����ܳ���{size}',
	'get_passwd_subject' => 'ȡ�������ʼ�',
	'get_passwd_message' => '��ֻ�����ύ����������֮�ڣ�ͨ�������������������������룺<br />\\1<br />(������治��������ʽ���뽫��ַ�ֹ�ճ�����������ַ���ٷ���)<br />�����ҳ��򿪺������µ�������ύ��֮��������ʹ���µ������¼�ˡ�',
	'file_is_too_big' => '�ļ�����',

	'take_part_in_the_voting' => '{actor} ������ {touser} ��{reward}ͶƱ <a href="{url}" target="_blank">{subject}</a>',
	'lack_of_access_to_upload_file_size' => '�޷���ȡ�ϴ��ļ���С',
	'only_allows_upload_file_types' => 'ֻ�����ϴ�jpg��jpeg��gif��png��׼��ʽ��ͼƬ',
	'unable_to_create_upload_directory_server' => '�������޷������ϴ�Ŀ¼',
	'inadequate_capacity_space' => '�ռ��������㣬�����ϴ��¸���',
	'mobile_picture_temporary_failure' => '�޷�ת����ʱ�ļ���������ָ��Ŀ¼',
	'ftp_upload_file_size' => 'Զ���ϴ�ͼƬʧ��',
	'comment' => '����',
	'upload_a_new_picture' => '�ϴ�����ͼƬ',
	'upload_album' => '���������',
	'the_total_picture' => '�� \\1 ��ͼƬ',

	'space_open_subject' => '��������һ�����ĸ�����ҳ��',
	'space_open_message' => 'hi���ҽ���ȥ�ݷ���һ�����ĸ�����ҳ���������Լ���û�д�����ء��Ͽ��������ɡ���ַ�ǣ�\\1space.php',



	'apply_mtag_manager' => '�������Ϊ <a href="\\1" target="_blank">\\2</a> ��Ⱥ������������:\\3��<a href="\\1" target="_blank">(�������������)</a>',


	'magicunit' => '��',
	'magic_note_wall' => '{actor}�����԰��ϸ���<a href="{url}" target="_blank">����</a>',
	'magic_call' => '����־�е�����������<a href="{url}" target="_blank">��ȥ������</a>',


	'present_user_magics' => '���յ��˹���Ա���͵ĵ��ߣ�\\1',
	'has_not_more_doodle' => '��û��Ϳѻ����',

	'do_stat_login' => '�����û�',
	'do_stat_mobilelogin' => '�ֻ�����',
	'do_stat_connectlogin' => 'QQ��¼����',
	'do_stat_register' => '��ע���û�',
	'do_stat_invite' => '��������',
	'do_stat_appinvite' => 'Ӧ������',
	'do_stat_add' => '��Ϣ����',
	'do_stat_comment' => '��Ϣ����',
	'do_stat_space' => '����',
	'do_stat_doing' => '��¼',
	'do_stat_blog' => '��־',
	'do_stat_activity' => '�',
	'do_stat_reward' => '����',
	'do_stat_debate' => '����',
	'do_stat_trade' => '��Ʒ',
	'do_stat_group' => "����{$_G[setting][navs][3][navname]}",
	'do_stat_tgroup' => "{$_G[setting][navs][3][navname]}",
	'do_stat_home' => "{$_G[setting][navs][4][navname]}",
	'do_stat_forum' => "{$_G[setting][navs][2][navname]}",
	'do_stat_groupthread' => 'Ⱥ������',
	'do_stat_post' => '����ظ�',
	'do_stat_grouppost' => 'Ⱥ��ظ�',
	'do_stat_pic' => 'ͼƬ',
	'do_stat_poll' => 'ͶƱ',
	'do_stat_event' => '�',
	'do_stat_share' => '����',
	'do_stat_thread' => '����',
	'do_stat_docomment' => '��¼�ظ�',
	'do_stat_blogcomment' => '��־����',
	'do_stat_piccomment' => 'ͼƬ����',
	'do_stat_pollcomment' => 'ͶƱ����',
	'do_stat_pollvote' => '����ͶƱ',
	'do_stat_eventcomment' => '�����',
	'do_stat_eventjoin' => '�μӻ',
	'do_stat_sharecomment' => '��������',
	'do_stat_post' => '�������',
	'do_stat_click' => '��̬',
	'do_stat_wall' => '����',
	'do_stat_poke' => '���к�',
	'do_stat_sendpm' => '������Ϣ',
	'do_stat_addfriend' => '��������',
	'do_stat_friend' => '��Ϊ����',
	'do_stat_post_number' => '������',
	'do_stat_statistic' => '�ϲ�ͳ��',
	'logs_credit_update_INDEX' => array('TRC','RTC','RAC','MRC','BMC','TFR','RCV','CEC','ECU','SAC','BAC','PRC','RSC','STC','BTC','AFD','UGP','RPC','ACC','RCT','RCA','RCB','CDC','RGC','BGC','AGC','RKC','BME','RPR','RPZ','FCP','BGC'),
	'logs_credit_update_TRC' => '������',
	'logs_credit_update_RTC' => '��������',
	'logs_credit_update_RAC' => '��Ѵ�',
	'logs_credit_update_MRC' => '���������ȡ',
	'logs_credit_update_BMC' => '�������',
	'logs_credit_update_TFR' => 'ת��ת��',
	'logs_credit_update_RCV' => 'ת�˽���',
	'logs_credit_update_CEC' => '���ֶһ�',
	'logs_credit_update_ECU' => 'UCenter���ֶһ�֧��',
	'logs_credit_update_SAC' => '���۸���',
	'logs_credit_update_BAC' => '���򸽼�',
	'logs_credit_update_PRC' => '���ӱ�����',
	'logs_credit_update_RSC' => '��������',
	'logs_credit_update_STC' => '��������',
	'logs_credit_update_BTC' => '��������',
	'logs_credit_update_AFD' => '�������',
	'logs_credit_update_UGP' => '������չ�û���',
	'logs_credit_update_RPC' => '�ٱ�����',
	'logs_credit_update_ACC' => '����',
	'logs_credit_update_RCT' => '��������',
	'logs_credit_update_RCA' => '�����н�',
	'logs_credit_update_RCB' => '����������������',
	'logs_credit_update_CDC' => '���ܳ�ֵ',
	'logs_credit_update_RGC' => '���պ��',
	'logs_credit_update_BGC' => '���º��',
	'logs_credit_update_AGC' => '��ú��',
	'logs_credit_update_RKC' => '��������',
	'logs_credit_update_BME' => '����ѫ��',
	'logs_credit_update_RPR' => '��̨���ֽ���',
	'logs_credit_update_RPZ' => '��̨���ֽ�������',
	'logs_credit_update_FCP' => '���Ѱ��',
	'logs_credit_update_BGR' => '����Ⱥ��',
	'buildgroup' => '�鿴�Ѵ�����Ⱥ��',
	'logs_credit_update_reward_clean' => '����',
	'logs_select_operation' => '��ѡ���������',
	'task_credit' => '����������',
	'special_3_credit' => '��������۳�����',
	'special_3_best_answer' => '��Ѵ𰸻�ȡ���ͻ���',
	'magic_credit' => '���������ȡ����',
	'magic_space_gift' => '�����ѿռ���ҳ���º��',
	'magic_space_re_gift' => '���ջ�û������ĺ��',
	'magic_space_get_gift' => '���ʿռ���ȡ�ĺ��',
	'credit_transfer' => '���л���ת��',
	'credit_transfer_tips' => '��ת������',
	'credit_exchange_tips_1' => 'ִ�л��ֶԶһ�����,�� ',
	'credit_exchange_to' => '�һ���',
	'credit_exchange_center' => 'ͨ��UCenter�һ�����',
	'attach_sell' => '����',
	'attach_sell_tips' => '�ĸ�����û���',
	'attach_buy' => '����',
	'attach_buy_tips' => '�ĸ���֧������',
	'grade_credit' => '�����ֻ�õĻ���',
	'grade_credit2' => '�������ֿ۳��Ļ���',
	'thread_credit' => '�����û���',
	'thread_credit2' => '����֧������',
	'buy_credit' => '�Ի��ֳ�ֵ',
	'buy_usergroup' => '������չ�û���֧������',
	'buy_medal' => '����ѫ��',
	'buy_forum' => '���򸶷Ѱ��ķ���Ȩ��',
	'report_credit' => '�ٱ������еĽ���',
	'join' => '����',
	'activity_credit' => '��۳�����',
	'thread_send' => '�۳�����',
	'replycredit' => 'ɢ���Ļ���',
	'add_credit' => '��������',
	'recovery' => '����',
	'replycredit_post' => '��������',
	'replycredit_thread' => 'ɢ��������',
	'card_credit' => '���ܳ�ֵ��õĻ���',
	'ranklist_top' => '�μӾ����������ѻ���',
	'admincp_op_credit' => '��̨���ֽ��Ͳ���',
	'credit_update_reward_clean' => '����',

	'profile_unchangeable' => '���������ύ�󲻿��޸�',
	'profile_is_verifying' => '�����������������',
	'profile_mypost' => '���ύ������',
	'profile_need_verifying' => '���������ύ����Ҫ���',
	'profile_edit' => '�޸�',
	'profile_censor' => '(�������дʻ�)',
	'profile_verify_modify_error' => '{verify}�Ѿ���֤ͨ���������޸�',
	'profile_verify_verifying' => '����{verify}��Ϣ���ύ�������ĵȴ��˲顣',

	'district_level_1' => '-ʡ��-',
	'district_level_2' => '-����-',
	'district_level_3' => '-����-',
	'district_level_4' => '-����-',
	'invite_you_to_visit' => '{user}����������{bbname}',

	'portal' => '�Ż�',
	'group' => 'Ⱥ��',
	'follow' => '�㲥',
	'collection' => '����',
	'guide' => '����',
	'feed' => '��̬',
	'blog' => '��־',
	'doing' => '��¼',
	'wall' => '���԰�',
	'homepage' => '������ҳ',
	'ranklist' => '���а�',
	'select_the_navigation_position' => 'ѡ��{type}����λ��',
	'close_module' => '�ر�{type}����',

	'follow_add_remark' => '��ӱ�ע',
	'follow_modify_remark' => '�޸ı�ע',
	'follow_specified_group' => '�㲥ר��',
	'follow_specified_forum' => '�㲥ר��',

	'filesize_lessthan' => '�ļ���СӦ��С��',

	'spacecp_message_prompt' => '(֧�� {msg} ����,��� 1000 ��)',
	'card_update_doing' => ' <a class="xi2" href="###">[���¼�¼]</a>',
	'email_acitve_message' => '<img src="{imgdir}/mail_inactive.png" alt="δ��֤" class="vm" /> <span class="xi1">������({newemail})�ȴ���֤��...</span><br />
								ϵͳ�Ѿ�������䷢����һ����֤�����ʼ���������ʼ���������֤���<br>
								���û���յ���֤�ʼ��������Ը���һ�����䣬����<a href="home.php?mod=spacecp&ac=profile&op=password&resend=1" class="xi2">���½�����֤�ʼ�</a>',
	'qq_set_status' => '�����ҵ�QQ����״̬',
	'qq_dialog' => '����QQ����',

);

?>
<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: member_lostpasswd.php 35030 2014-10-23 07:43:23Z laoguozhang $
 *
 *	Modified by Valery Votintsev, codersclub.org
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

define('NOROBOT', TRUE);

$discuz_action = 141;

if(submitcheck('lostpwsubmit')) {
	loaducenter();
	$_GET['email'] = strtolower(trim($_GET['email']));
/*vot*/	$_GET['username'] = trim($_GET['username']);

/*vot*/	$member = false;

	// Check for username exists
	if($_GET['username']) {
/*vot*/		list($tmp['uid'], , $tmp['email']) = uc_get_user($_GET['username']);
		$tmp['email'] = strtolower(trim($tmp['email']));
/*vot*/		if($_GET['email']) {
		if($_GET['email'] != $tmp['email']) {
			showmessage('getpasswd_account_notmatch');
		}
/*vot*/		}
		$member = getuserbyuid($tmp['uid'], 1);
/*vot*/	} else if($_GET['email']) {	// Check for Email exists
		$emailcount = C::t('common_member')->count_by_email($_GET['email'], 1);
		if(!$emailcount) {
			showmessage('lostpasswd_email_not_exist');
		}
		if($emailcount > 1) {
			showmessage('lostpasswd_many_users_use_email');
		}
		$member = C::t('common_member')->fetch_by_email($_GET['email'], 1);
		list($tmp['uid'], , $tmp['email']) = uc_get_user(addslashes($member['username']));
/*vot*/		$tmp['email'] = strtolower(trim($tmp['email']));
/*vot*/	} else {	// Check for NO username & NO email entered
/*vot*/		showmessage('getpasswd_account_notmatch');
	}
	if(!$member) {
		showmessage('getpasswd_account_notmatch');
	} elseif($member['adminid'] == 1 || $member['adminid'] == 2) {
		showmessage('getpasswd_account_invalid');
	}

	$table_ext = $member['_inarchive'] ? '_archive' : '';
//vot	if($member['email'] != $tmp['email']) {
//vot		C::t('common_member'.$table_ext)->update($tmp['uid'], array('email' => $tmp['email']));
//vot	}

	$idstring = random(6);
	C::t('common_member_field_forum'.$table_ext)->update($member['uid'], array('authstr' => "$_G[timestamp]\t1\t$idstring"));
	require_once libfile('function/mail');
	$get_passwd_subject = lang('email', 'get_passwd_subject');
	$get_passwd_message = lang(
		'email',
		'get_passwd_message',
		array(
			'username' => $member['username'],
			'bbname' => $_G['setting']['bbname'],
			'siteurl' => $_G['siteurl'],
			'uid' => $member['uid'],
			'idstring' => $idstring,
			'clientip' => $_G['clientip'],
			'sign' => make_getpws_sign($member['uid'], $idstring),
		)
	);
	if(!sendmail("$_GET[username] <$tmp[email]>", $get_passwd_subject, $get_passwd_message)) {
		runlog('sendmail', "$tmp[email] sendmail failed.");
	}
	showmessage('getpasswd_send_succeed', $_G['siteurl'], array(), array('showdialog' => 1, 'locationtime' => true));
}


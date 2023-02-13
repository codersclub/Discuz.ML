<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id$
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

if($_GET['action'] == 'send') {

	$refererhost = parse_url($_SERVER['HTTP_REFERER']);
	$refererhost['host'] .= !empty($refererhost['port']) ? (':'.$refererhost['port']) : '';

	if($refererhost['host'] != $_SERVER['HTTP_HOST']) {
		showmessage('submit_invalid');
	}

	$svctype = empty($_GET['svctype']) ? 0 : $_GET['svctype'];
	$secmobicc = empty($_GET['secmobicc']) ? $_G['member']['secmobicc'] : $_GET['secmobicc'];
	$secmobile = empty($_GET['secmobile']) ? $_G['member']['secmobile'] : $_GET['secmobile'];
	list($seccodecheck, $secqaacheck) = seccheck('card');

	if((!$seccodecheck && !$secqaacheck) || submitcheck('seccodesubmit', 0, $seccodecheck, $secqaacheck)) {
		$length = $_G['setting']['smsdefaultlength'] ? $_G['setting']['smsdefaultlength'] : 4;
		$secmobseccode = random($length, 1);

		// Check whether the security phone number is correct before sending the SMS to avoid sending the wrong security phone number to the SMS gateway
		if(empty($secmobicc) || !preg_match('#^(\d){1,3}$#', $secmobicc)) {
			showmessage('profile_secmobicc_illegal');
		} else if(empty($secmobile) || !preg_match('#^(\d){1,12}$#', $secmobile)) {
			showmessage('profile_secmobile_illegal');
		}

		// User UID: $_G['uid'], SMS type: verification SMS, service type: $svctype
		// International telephone area code: $secmobicc, mobile phone number: $secmobile, content: $secmobiseccode, mandatory sending: false
		$result = sms::send($_G['uid'], 0, $svctype, $secmobicc, $secmobile, $secmobseccode, 0);

		// If the sending time is shorter than the setting, return -1, if the number of sending times for a single number fails, return -2, if the risk control rule for thousands of numbers fails, return -3, if the global risk control rule fails, return -4, if no gateway is available, return -5, the gateway interface file does not exist return -6,
		// If the gateway interface class does not exist, return -7, if the SMS function has been disabled, return -8, if the SMS gateway private exception returns -9
		if($result >= 0) {
			showmessage('secmobseccode_send_success', '', array(), array('alert' => 'right'));
		} else {
			if($result <= -1 && $result >= -9) {
				showmessage('secmobseccode_send_err_'.abs($result));
			} else {
				showmessage('secmobseccode_send_failure');
			}
		}
	} else {
		$handlekey = 'sendsecmobseccode';
		include template('common/secmobseccode');
	}

}
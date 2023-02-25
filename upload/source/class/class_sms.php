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


class sms {

	// DISCUZ_CLASS_SMS_TYPE indicates a broad business type, in order to distinguish whether verification is required
	// Verification SMS is 0, notification SMS is 1
	const DISCUZ_CLASS_SMS_TYPE_SECCODE = 0;
	const DISCUZ_CLASS_SMS_TYPE_MESSAGE = 1;

	// DISCUZ_CLASS_SMS_SRVTYPE indicates a specific service type, so as to quickly query the corresponding service
	// The system-level mobile phone number verification service is 1, and the system-level short message notification service is 2
	// Third-party business can be set to 0 or an integer not less than 10000
	const DISCUZ_CLASS_SMS_SRVTYPE_OTHERSRV = 0;
	const DISCUZ_CLASS_SMS_SRVTYPE_SECCHECK = 1;
	const DISCUZ_CLASS_SMS_SRVTYPE_NEWSLETT = 2;

	// DISCUZ_CLASS_SMS_ERROR indicates error message in SMS sending
	// The current step returns 0 normally
	// If the sending time is shorter than the setting, return -1, if the number of sending times of a single number is not passed, the risk control rule will return -2, if the risk control rule of 10,000 numbers is not passed, it will return -3, if the global risk control rule is not passed, it will return -4, if there is no available gateway, it will return -5 , if the gateway interface file does not exist, return -6,
	// If the gateway interface class does not exist, return -7, if the SMS function has been disabled, return -8, if the SMS gateway private exception returns -9
	const DISCUZ_CLASS_SMS_ERROR_NOWNOERR = 0;
	const DISCUZ_CLASS_SMS_ERROR_TIMELESS = -1;
	const DISCUZ_CLASS_SMS_ERROR_NUMLIMIT = -2;
	const DISCUZ_CLASS_SMS_ERROR_MILLIMIT = -3;
	const DISCUZ_CLASS_SMS_ERROR_GLBLIMIT = -4;
	const DISCUZ_CLASS_SMS_ERROR_CTFSMSGW = -5;
	const DISCUZ_CLASS_SMS_ERROR_CTFGWNME = -6;
	const DISCUZ_CLASS_SMS_ERROR_CTFGWCLS = -7;
	const DISCUZ_CLASS_SMS_ERROR_SMSDISAB = -8;
	const DISCUZ_CLASS_SMS_ERROR_SMSGWERR = -9;

	// DISCUZ_CLASS_SMS_VERIFY represents SMS verification result
	// 0 for failed check, 1 for passed check
	const DISCUZ_CLASS_SMS_VERIFY_FAIL = 0;
	const DISCUZ_CLASS_SMS_VERIFY_PASS = 1;

	// DISCUZ_CLASS_SMSGW_GWTYPE represents the gateway type
	// Message SMS is 1, template SMS is 0
	const DISCUZ_CLASS_SMSGW_GWTYPE_MSG = 0;
	const DISCUZ_CLASS_SMSGW_GWTYPE_TPL = 1;

	// Verify that the verification code obtained by the user is correct
	public static function verify($uid, $svctype, $secmobicc, $secmobile, $seccode, $updateverify = 1) {
		// Limit time interval, default 86400 seconds
		$smstimelimit = getglobal('setting/smstimelimit');
		$smstimelimit = $smstimelimit > 0 ? $smstimelimit : 86400;
		$lastsend = C::t('common_smslog')->get_lastsms_by_uumm($uid, $svctype, $secmobicc, $secmobile);
		$result = self::DISCUZ_CLASS_SMS_VERIFY_FAIL;
		if($seccode == $lastsend['content'] && !$lastsend['verify'] && time() - $lastsend['dateline'] < $smstimelimit) {
			$result = self::DISCUZ_CLASS_SMS_VERIFY_PASS;
		}
		if($updateverify) {
			C::t('common_smslog')->update($lastsend['smslogid'], array('verify' => 1));
		}
		return $result;
	}

	public static function send($uid, $smstype, $svctype, $secmobicc, $secmobile, $content, $force) {
		// Get basic user information
		$time = time();
		$ip = getglobal('clientip');
		$port = getglobal('remoteport');

		// Determine whether the SMS function is enabled and whether the user is allowed to send SMS
		$check = self::check($uid, $secmobicc, $secmobile, $time, $ip, $port, $force);
		if($check < 0) {
			self::log($smstype, $svctype, 0, $check, $uid, $secmobicc, $secmobile, $time, $ip, $port, $content);
			return $check;
		}

		// Get the corresponding SMS gateway
		$smsgw = self::smsgw($smstype, $secmobicc);
		if($smsgw < 0) {
			self::log($smstype, $svctype, 0, $smsgw, $uid, $secmobicc, $secmobile, $time, $ip, $port, $content);
			return $smsgw;
		}

		// Load gateway file for sending
		$output = self::output($smsgw, $uid, $smstype, $svctype, $secmobicc, $secmobile, $content);
		self::log($smstype, $svctype, 0, $output, $uid, $secmobicc, $secmobile, $time, $ip, $port, $content);
		return $output;
	}

	protected static function check($uid, $secmobicc, $secmobile, $time, $ip, $port, $force) {
		// $ip and $port are reserved for subsequent risk control based on IP addresses that may be added later
		// Whether it is realized or not depends on the specific situation after the launch
		if(!getglobal('setting/smsstatus')) {
			return self::DISCUZ_CLASS_SMS_ERROR_SMSDISAB;
		}

		if(!$force) {
			// Limit time interval, default 86400 seconds
			$smstimelimit = getglobal('setting/smstimelimit');
			$smstimelimit = $smstimelimit > 0 ? $smstimelimit : 86400;
			// The total amount of single-user/single-number SMS within the limited time interval, the default is 5
			$smsnumlimit = getglobal('setting/smsnumlimit');
			$smsnumlimit = $smsnumlimit > 0 ? $smsnumlimit : 5;
			// Single user/single number SMS interval, default 300 seconds
			$smsinterval = getglobal('setting/smsinterval');
			$smsinterval = $smsinterval > 0 ? $smsinterval : 300;
			// The total number of text messages in the ten thousand number range is limited within the time interval, and the default is 20
			$smsmillimit = getglobal('setting/smsmillimit');
			$smsmillimit = $smsmillimit > 0 ? $smsmillimit : 20;
			// Global SMS limits the total amount in the time interval, the default is 1000
			$smsglblimit = getglobal('setting/smsglblimit');
			$smsglblimit = $smsglblimit > 0 ? $smsglblimit : 1000;

			// Single number/single user risk control rules
			$ut = C::t('common_smslog')->get_sms_by_ut($uid, $smstimelimit);
			$mmt = C::t('common_smslog')->get_sms_by_mmt($secmobicc, $secmobile, $smstimelimit);
			if($time - $ut[0]['dateline'] < $smsinterval || $time - $mmt[0]['dateline'] < $smsinterval) {
				return self::DISCUZ_CLASS_SMS_ERROR_TIMELESS;
			}
			if(count($ut) > $smsnumlimit || count($mmt) > $smsnumlimit) {
				return self::DISCUZ_CLASS_SMS_ERROR_NUMLIMIT;
			}

			// Ten-thousand segment risk control rules
			$lastmilion = C::t('common_smslog')->count_sms_by_milions_mmt($secmobicc, $secmobile, $smstimelimit);
			if($lastmilion > $smsmillimit) {
				return self::DISCUZ_CLASS_SMS_ERROR_MILLIMIT;
			}

			// Global Risk Control Rules
			$globalsend = C::t('common_smslog')->count_sms_by_time($smstimelimit);
			if($globalsend > $smsglblimit) {
				return self::DISCUZ_CLASS_SMS_ERROR_GLBLIMIT;
			}
		}

		return self::DISCUZ_CLASS_SMS_ERROR_NOWNOERR;
	}

	protected static function smsgw($smstype, $secmobicc) {
		$smsgwlist = C::t('common_smsgw')->fetch_all_gw_avaliable();
		foreach($smsgwlist as $key => $value) {
			if(array_search($secmobicc, explode(',', $value['sendrule'])) !== false) {
				if($smstype == self::DISCUZ_CLASS_SMS_TYPE_MESSAGE && $value['type'] == self::DISCUZ_CLASS_SMSGW_GWTYPE_TPL) {
					continue;
				}
				$smsgw = $value;
			}
		}

		if(isset($smsgw)) {
			return $smsgw;
		} else {
			return self::DISCUZ_CLASS_SMS_ERROR_CTFSMSGW;
		}

	}

	protected static function output($smsgw, $uid, $smstype, $svctype, $secmobicc, $secmobile, $content) {
		global $_G;
		$efile = explode(':', $smsgw['class']);
		if(is_array($efile) && count($efile) > 1) {
			$smsgwfile = in_array($efile[0], $_G['setting']['plugins']['available']) ? DISCUZ_ROOT.'./source/plugin/'.$efile[0].'/smsgw/smsgw_'. $efile[1] . '.php' : '';
		} else {
			$smsgwfile = DISCUZ_ROOT.'./source/class/smsgw/smsgw_' . $smsgw['class'] . '.php';
		}

		if($smsgwfile) {
			include($smsgwfile);
			$classname = 'smsgw_' . ((is_array($efile) && count($efile) > 1) ? $efile[1] : $smsgw['class']);
			if(class_exists($classname)) {
				$class = new $classname();
				$class->parameters = dunserialize($smsgw['parameters']);
				$result = $class->send($uid, $smstype, $svctype, $secmobicc, $secmobile, array('content' => $content));
			} else {
				$result = self::DISCUZ_CLASS_SMS_ERROR_CTFGWCLS;
			}
		} else {
			$result = self::DISCUZ_CLASS_SMS_ERROR_CTFGWNME;
		}

		if($result < 0 && ($result == self::DISCUZ_CLASS_SMS_ERROR_CTFGWCLS || $result == self::DISCUZ_CLASS_SMS_ERROR_CTFGWNME)) {
			$data = array('available' => '0');
			C::t('common_smsgw')->update($smsgw['smsgwid'], $data);
		}

		return $result;
	}

	protected static function log($smstype, $svctype, $smsgw, $status, $uid, $secmobicc, $secmobile, $time, $ip, $port, $content = '') {
		return C::t('common_smslog')->insert(array('smstype' => $smstype, 'svctype' => $svctype, 'smsgw' => $smsgw, 'status' => $status, 'uid' => $uid, 'secmobicc' => $secmobicc, 'secmobile' => $secmobile, 'dateline' => $time, 'ip' => $ip, 'port' => $port, 'content' => $content));
	}

}
<?php

/*
	[UCenter] (C)2001-2099 Comsenz Inc.
	This is NOT a freeware, use is subject to license terms

	$Id: setting.php 1174 2014-11-03 04:38:12Z hypowang $
        Modified by Valery Votintsev, codersclub.org
*/

!defined('IN_UC') && exit('Access Denied');

class control extends adminbase {

	var $_setting_items = array('doublee', 'accessemail', 'censoremail', 'censorusername',
		'dateformat', 'timeoffset', 'timeformat', 'extra', 'maildefault', 'mailsend', 'mailserver',
		'mailport', 'mailtimeout', 'mailauth', 'mailfrom', 'mailauth_username', 'mailauth_password', 'maildelimiter',
		'mailusername', 'mailsilent', 'pmcenter', 'privatepmthreadlimit', 'chatpmthreadlimit',
		'chatpmmemberlimit', 'pmfloodctrl', 'sendpmseccode', 'pmsendregdays', 'login_failedtime',
		'addappbyurl', 'insecureoperation', 'passwordalgo', 'passwordoptions');

	function __construct() {
		$this->control();
	}

	function control() {
		parent::__construct();
		$this->check_priv();
		if(!$this->user['isfounder'] && !$this->user['allowadminsetting']) {
			$this->message('no_permission_for_this_module');
		}
		$this->check_priv();
	}

	function onls() {
		$this->load('user');
		$updated = false;
/*vot*/		$timearray = array('-12', '-11', '-10', '-9', '-8', '-7', '-6', '-5', '-4', '-3.5', '-3', '-2', '-1', '0', '1', '2', '3', '3.5', '4', '4.5', '5', '5.5', '5.75', '6', '6.5', '7', '8', '9', '9.5', '10', '11', '12');
		if($this->submitcheck()) {
			$timeformat = getgpc('timeformat', 'P');
			$dateformat = getgpc('dateformat', 'P');
			$timeoffset = getgpc('timeoffset', 'P');
			$privatepmthreadlimit = getgpc('privatepmthreadlimit', 'P');
			$chatpmthreadlimit = getgpc('chatpmthreadlimit', 'P');
			$chatpmmemberlimit = getgpc('chatpmmemberlimit', 'P');
			$pmfloodctrl = getgpc('pmfloodctrl', 'P');
			$pmsendregdays = getgpc('pmsendregdays', 'P');
			$pmcenter = getgpc('pmcenter', 'P');
			$sendpmseccode = getgpc('sendpmseccode', 'P');
			$login_failedtime = getgpc('login_failedtime', 'P');
			$addappbyurl = getgpc('addappbyurl', 'P');
			$insecureoperation = getgpc('insecureoperation', 'P');
			$passwordalgo = getgpc('passwordalgo', 'P');
			$passwordoptions = htmlspecialchars_decode(stripslashes(getgpc('passwordoptions', 'P')));
			$dateformat = str_replace(array('yyyy', 'mm', 'dd'), array('y', 'n', 'j'), strtolower($dateformat));
			$timeformat = $timeformat == 1 ? 'H:i' : 'h:i A';
/*vot*/			$timeoffset = in_array($timeoffset, $timearray) ? $timeoffset : 8;

			if(empty($passwordalgo) && !empty($passwordoptions)) {
				// When the password option is configured, the password algorithm cannot be empty
				$passwordoptions = '';
			} else if(!empty($passwordalgo)) {
				// Do a test when it is possible to meet the required algorithm. If it returns false or the password cannot be verified, it means that the configuration is unreasonable and PHP cannot handle it. You need to clear it
				// The password hash algorithm will return NULL and report Warning in some error cases, and it is specially treated here
				$options = empty($passwordoptions) ? array() : json_decode($passwordoptions, true);
				$tresult = password_hash($passwordalgo, constant($passwordalgo), $options);
				if($tresult === false || $tresult === null || !password_verify($passwordalgo, $tresult)) {
					$passwordalgo = '';
					$passwordoptions = '';
				}
			}

			$this->set_setting('dateformat', $dateformat);
			$this->set_setting('timeformat', $timeformat);
			$timeoffset = $timeoffset * 3600;
			$this->set_setting('timeoffset', $timeoffset);
			$this->set_setting('privatepmthreadlimit', intval($privatepmthreadlimit));
			$this->set_setting('chatpmthreadlimit', intval($chatpmthreadlimit));
			$this->set_setting('chatpmmemberlimit', intval($chatpmmemberlimit));
			$this->set_setting('pmfloodctrl', intval($pmfloodctrl));
			$this->set_setting('pmsendregdays', intval($pmsendregdays));
			$this->set_setting('pmcenter', $pmcenter);
			$this->set_setting('sendpmseccode', $sendpmseccode ? 1 : 0);
			$this->set_setting('login_failedtime', intval($login_failedtime));
			$this->set_setting('addappbyurl', $addappbyurl);
			$this->set_setting('insecureoperation', $insecureoperation);
			$this->set_setting('passwordalgo', $passwordalgo);
			$this->set_setting('passwordoptions', $passwordoptions);
			$updated = true;

			$this->updatecache();
		}

		$settings = $this->get_setting($this->_setting_items);
		if($updated) {
			$this->_add_note_for_setting($settings);
		}
		$settings['dateformat'] = str_replace(array('y', 'n', 'j'), array('yyyy', 'mm', 'dd'), $settings['dateformat']);
		$settings['timeformat'] = $settings['timeformat'] == 'H:i' ? 1 : 0;
		$settings['pmcenter'] = $settings['pmcenter'] ? 1 : 0;
		$settings['insecureoperation'] = $settings['insecureoperation'] ? 1 : 0;
		$a = getgpc('a');
		$this->view->assign('a', $a);

		$this->view->assign('dateformat', $settings['dateformat']);
		$timeformatchecked = array('','');
		$timeformatchecked[$settings['timeformat']] = 'checked="checked"';
		$this->view->assign('timeformat', $timeformatchecked);
		$this->view->assign('privatepmthreadlimit', $settings['privatepmthreadlimit']);
		$this->view->assign('chatpmthreadlimit', $settings['chatpmthreadlimit']);
		$this->view->assign('chatpmmemberlimit', $settings['chatpmmemberlimit']);
		$this->view->assign('pmsendregdays', $settings['pmsendregdays']);
		$this->view->assign('pmfloodctrl', $settings['pmfloodctrl']);
		$pmcenterchecked = array('','');
		$pmcenterchecked[$settings['pmcenter']] = 'checked="checked"';
		$pmcenterchecked['display'] = $settings['pmcenter'] ? '' : 'style="display:none"';
		$addappbyurlchecked = array('','');
		$addappbyurlchecked[$settings['addappbyurl']] = 'checked="checked"';
		$insecureoperationchecked = array('','');
		$insecureoperationchecked[$settings['insecureoperation']] = 'checked="checked"';
		$this->view->assign('pmcenter', $pmcenterchecked);
		$sendpmseccodechecked = array('','');
		$sendpmseccodechecked[$settings['sendpmseccode']] = 'checked="checked"';
		$this->view->assign('sendpmseccode', $sendpmseccodechecked);
		$this->view->assign('addappbyurl', $addappbyurlchecked);
		$this->view->assign('insecureoperation', $insecureoperationchecked);
		$this->view->assign('passwordalgo', $settings['passwordalgo']);
		$this->view->assign('passwordoptions', htmlspecialchars($settings['passwordoptions']));
		$timeoffset = intval($settings['timeoffset'] / 3600);
/*vot*/		foreach($timearray as $v) {
/*vot*/			$checkarray[(intval($v) < 0 ? '0'.substr($v, 1) : $v)] = ($timeoffset == $v ? 'selected="selected"' : '');
/*vot*/		}
		$this->view->assign('checkarray', $checkarray);
		$this->view->assign('updated', $updated);
		$this->view->assign('login_failedtime', $settings['login_failedtime']);
		$this->view->display('admin_setting');
	}

	function updatecache() {
		$this->load('cache');
		$_ENV['cache']->updatedata('settings');
	}

	function onregister() {
		$updated = false;
		if($this->submitcheck()) {
			$this->set_setting('doublee', getgpc('doublee', 'P'));
			$this->set_setting('accessemail', getgpc('accessemail', 'P'));
			$this->set_setting('censoremail', getgpc('censoremail', 'P'));
			$this->set_setting('censorusername', getgpc('censorusername', 'P'));
			$updated = true;
			$this->writelog('setting_register_update');
			$this->updatecache();
		}

		$settings = $this->get_setting($this->_setting_items);
		if($updated) {
			$this->_add_note_for_setting($settings);
		}

		$this->view->assign('a', getgpc('a'));
		$doubleechecked = array('','');
		$doubleechecked[$settings['doublee']] = 'checked="checked"';
		$this->view->assign('doublee', $doubleechecked);
		$this->view->assign('accessemail', $settings['accessemail']);
		$this->view->assign('censoremail', $settings['censoremail']);
		$this->view->assign('censorusername', $settings['censorusername']);
		$this->view->assign('updated', $updated);
		$this->view->display('admin_setting');
	}

	function onmail() {
		$items = array('maildefault', 'mailsend', 'mailserver', 'mailport', 'mailtimeout', 'mailauth', 'mailfrom', 'mailauth_username', 'mailauth_password', 'maildelimiter', 'mailusername', 'mailsilent');
		$updated = false;
		if($this->submitcheck()) {
			foreach($items as $item) {
				$value = getgpc($item, 'P');
				if($item == 'mailtimeout') {
					$value = strlen(trim($value)) ? intval($value) : 30;
				}
				$this->set_setting($item, $value);
			}
			$updated = true;
			$this->writelog('setting_mail_update');
			$this->updatecache();
		}

		$settings = $this->get_setting($this->_setting_items);
		if($updated) {
			$this->_add_note_for_setting($settings);
		}
		foreach($items as $item) {
			if($item == 'mailtimeout') {
				$settings[$item] = strlen(trim($settings[$item])) ? intval($settings[$item]) : 30;
			}
			$this->view->assign($item, dhtmlspecialchars($settings[$item]));
		}

		$this->view->assign('a', getgpc('a'));
		$this->view->assign('updated', $updated);
		$this->view->display('admin_setting');
	}

	function _add_note_for_setting($settings) {
		$this->load('note');
		$_ENV['note']->add('updateclient', '', $this->serialize($settings, 1));
		$_ENV['note']->send();
	}
}
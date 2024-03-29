<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: modcp_member.php 33701 2013-08-06 05:04:36Z nemohou $
 *	Modified by Valery Votintsev, codersclub.org
 */

if(!defined('IN_DISCUZ') || !defined('IN_MODCP')) {
	exit('Access Denied');
}

if($op == 'edit') {

	$_GET['uid'] = isset($_GET['uid']) ? intval($_GET['uid']) : '';
	$_GET['username'] = isset($_GET['username']) ? trim($_GET['username']) : '';

	$member = loadmember($_GET['uid'], $_GET['username'], $error);
	$usernameenc = $member ? rawurlencode($member['username']) : '';

	if($member && submitcheck('editsubmit') && !$error) {

		if($_G['group']['allowedituser']) {

			if(!empty($_GET['clearavatar'])) {
				loaducenter();
				uc_user_deleteavatar($member['uid']);
			}

			require_once libfile('function/discuzcode');

			if($_GET['bionew']) {
				$biohtmlnew = nl2br(dhtmlspecialchars($_GET['bionew']));
			} else {
				$biohtmlnew = '';
			}

			if($_GET['signaturenew']) {
				$signaturenew = censor($_GET['signaturenew']);
				$sightmlnew = discuzcode($signaturenew, 1, 0, 0, 0, $member['allowsigbbcode'], $member['allowsigimgcode'], 0, 0, 1);
			} else {
				$sightmlnew = $signaturenew = '';
			}

			!empty($_GET['locationnew']) && $locationnew = dhtmlspecialchars($_GET['locationnew']);

			// User information change log
			if($_G['setting']['profilehistory']) {
				C::t('common_member_profile_history')->insert(array_merge(C::t('common_member_profile')->fetch(intval($member['uid'])), array('dateline' => time())));
			}
			C::t('common_member_profile')->update($member['uid'], array('bio' => $biohtmlnew));
			C::t('common_member_field_forum')->update($member['uid'], array('sightml' => $sightmlnew));
		}
		acpmsg('members_edit_succeed', "$cpscript?mod=modcp&action={$_GET['action']}&op=$op");

	} elseif($member) {

		require_once libfile('function/editor');
		$bio = explode("\t\t\t", $member['bio']);
		$member['bio'] = html2bbcode($bio[0]);
		$member['biotrade'] = !empty($bio[1]) ? html2bbcode($bio[1]) : '';
		$member['signature'] = html2bbcode($member['sightml']);
		$username = !empty($_GET['username']) ? $member['username'] : '';

	}

} elseif($op == 'ban' && ($_G['group']['allowbanuser'] || $_G['group']['allowbanvisituser'])) {

	$_GET['uid'] = isset($_GET['uid']) ? intval($_GET['uid']) : '';
	$_GET['username'] = isset($_GET['username']) ? trim($_GET['username']) : '';
	$member = loadmember($_GET['uid'], $_GET['username'], $error);
	$usernameenc = $member ? rawurlencode($member['username']) : '';

	include_once libfile('function/member');
	$clist = crime('getactionlist', $member['uid']);

	if(($member['type'] == 'system' && in_array($member['groupid'], array(1, 2, 3, 6, 7, 8))) || $member['type'] == 'special') {
		acpmsg('modcp_member_ban_illegal');
	}

	if($member && submitcheck('bansubmit') && !$error) {
		$setarr = array();
		$reason = dhtmlspecialchars(trim($_GET['reason']));
		if(!$reason && ($_G['group']['reasonpm'] == 1 || $_G['group']['reasonpm'] == 3)) {
			acpmsg('admin_reason_invalid');
		}

		if($_GET['bannew'] == 4 || $_GET['bannew'] == 5) {
			if($_GET['bannew'] == 4 && !$_G['group']['allowbanuser'] || $_GET['bannew'] == 5 && !$_G['group']['allowbanvisituser']) {
				acpmsg('admin_nopermission');
			}
			$groupidnew = $_GET['bannew'];
			$banexpirynew = !empty($_GET['banexpirynew']) ? TIMESTAMP + $_GET['banexpirynew'] * 86400 : 0;
			$banexpirynew = $banexpirynew > TIMESTAMP ? $banexpirynew : 0;
			if($banexpirynew) {
				$member['groupterms'] = $member['groupterms'] && is_array($member['groupterms']) ? $member['groupterms'] : array();
				if($member['groupid'] == 4 || $member['groupid'] == 5) {
					$member['groupterms']['main']['time'] = $banexpirynew;
					if (empty($member['groupterms']['main']['groupid'])) {
						$groupnew = C::t('common_usergroup')->fetch_by_credits($member['credits']);
						$member['groupterms']['main']['groupid'] = $groupnew['groupid'];
					}
					if (!isset($member['groupterms']['main']['adminid'])) {
						$member['groupterms']['main']['adminid'] = $member['adminid'];
					}
				}else{
					$member['groupterms']['main'] = array('time' => $banexpirynew, 'adminid' => $member['adminid'], 'groupid' => $member['groupid']);
				}
				$member['groupterms']['ext'][$groupidnew] = $banexpirynew;
				$setarr['groupexpiry'] = groupexpiry($member['groupterms']);
			} else {
				$setarr['groupexpiry'] = 0;
			}
			if(in_array($member['adminid'], array(0, -1))) {
				$member_status = C::t('common_member_status')->fetch($member['uid']);
			}
			$adminidnew = -1;
			C::t('forum_postcomment')->delete_by_authorid($member['uid'], false, true);
		} elseif($member['groupid'] == 4 || $member['groupid'] == 5) {
			if(!empty($member['groupterms']['main']['groupid'])) {
				$groupidnew = $member['groupterms']['main']['groupid'];
				$adminidnew = $member['groupterms']['main']['adminid'];
				unset($member['groupterms']['main']);
				unset($member['groupterms']['ext'][$member['groupid']]);
				$setarr['groupexpiry'] = groupexpiry($member['groupterms']);
			} else {
				$usergroup = C::t('common_usergroup')->fetch_by_credits($member['credits']);
				$groupidnew = $usergroup['groupid'];
				$adminidnew = 0;
			}
		} else {
			$groupidnew = $member['groupid'];
			$adminidnew = $member['adminid'];
		}

		$setarr['adminid'] = $adminidnew;
		$setarr['groupid'] = $groupidnew;
		C::t('common_member')->update($member['uid'], $setarr);

		if(DB::affected_rows()) {
			savebanlog($member['username'], $member['groupid'], $groupidnew, $banexpirynew, $reason);
		}

		C::t('common_member_field_forum')->update($member['uid'], array('groupterms' => serialize($member['groupterms'])));
		if($_GET['bannew'] == 4) {
			$notearr = array(
				'user' => "<a href=\"home.php?mod=space&uid={$_G['uid']}\">{$_G['username']}</a>",
				'day' => $_GET['banexpirynew'],
				'reason' => $reason,
				'from_id' => 0,
				'from_idtype' => 'banspeak'
			);
			notification_add($member['uid'], 'system', 'member_ban_speak', $notearr, 1);
		}
		if($_GET['bannew'] == 5) {
			$notearr = array(
				'user' => "<a href=\"home.php?mod=space&uid={$_G['uid']}\">{$_G['username']}</a>",
				'day' => $_GET['banexpirynew'],
				'reason' => $reason,
				'from_id' => 0,
				'from_idtype' => 'banvisit'
			);
			notification_add($member['uid'], 'system', 'member_ban_visit', $notearr, 1);
		}

		if($_GET['bannew'] == 4 || $_GET['bannew'] == 5) {
			crime('recordaction', $member['uid'], ($_GET['bannew'] == 4 ? 'crime_banspeak' : 'crime_banvisit'), $reason);
		}

		acpmsg('modcp_member_ban_succeed', "$cpscript?mod=modcp&action={$_GET['action']}&op=$op");

	}

} elseif($op == 'ipban' && $_G['group']['allowbanip']) {

	if (array_key_exists('security', $_G['config']) && array_key_exists('useipban', $_G['config']['security']) && $_G['config']['security']['useipban'] == 0) {
		acpmsg('admin_nopermission');
	}

	require_once libfile('function/misc');
	$iptoban = getgpc('ip') ? dhtmlspecialchars(getgpc('ip')) : '';
	$updatecheck = $addcheck = $deletecheck = $adderror = 0;

	if(submitcheck('ipbansubmit')) {
		$_GET['delete'] = isset($_GET['delete']) ? $_GET['delete'] : '';
		if($_GET['delete']) {
			$deletecheck = C::t('common_banned')->delete_by_id($_GET['delete'], $_G['adminid'], $_G['username']);
		}
		if($_GET['ipnew']) {
			$addcheck = ipbanadd($_GET['ipnew'], $_GET['validitynew'], $adderror);
			if(!$addcheck) {
				$iptoban = $_GET['ipnew'];
			}
		}

		if(!empty($_GET['expirationnew']) && is_array($_GET['expirationnew'])) {
			foreach($_GET['expirationnew'] as $id => $expiration) {
				if($expiration === intval($expiration)) {
					$expiration = $expiration > 1 ? (TIMESTAMP + $expiration * 86400) : TIMESTAMP + 86400;
					$updatecheck = C::t('common_banned')->update_expiration_by_id($id, $expiration, $_G['adminid'], $_G['username']);
				}
			}
		}
	}

	$iplist = array();
	foreach(C::t('common_banned')->fetch_all_order_dateline() as $banned) {
		for($i = 1; $i <= 4; $i++) {
			if($banned["ip$i"] == -1) {
				$banned["ip$i"] = '*';
			}
		}
		$banned['disabled'] = $_G['adminid'] != 1 && $banned['admin'] != $_G['member']['username'] ? 'disabled' : '';
		$banned['dateline'] = dgmdate($banned['dateline'], 'd');
		$banned['expiration'] = dgmdate($banned['expiration'], 'd');
		$banned['theip'] = $banned['ip'];
		$banned['location'] = convertip($banned['theip']);
		$iplist[$banned['id']] = $banned;
	}

} else {
	showmessage('undefined_action');
}

function loadmember(&$uid, &$username, &$error) {
	global $_G;

	$uid = !empty($_GET['uid']) && is_numeric($_GET['uid']) && $_GET['uid'] > 0 ? $_GET['uid'] : '';
	$username = isset($_GET['username']) && $_GET['username'] != '' ? dhtmlspecialchars(trim($_GET['username'])) : '';

	$member = array();

	if($uid || $username != '') {

		$member = $uid ? getuserbyuid($uid) : C::t('common_member')->fetch_by_username($username);
		if($member) {
			$uid = $member['uid'];
			$member = array_merge($member, C::t('common_member_field_forum')->fetch($uid), C::t('common_member_profile')->fetch($uid),
					C::t('common_usergroup')->fetch($member['groupid']), C::t('common_usergroup_field')->fetch($member['groupid']));
		}
		if(!$member) {
			$error = 2;
		} elseif(($member['grouptype'] == 'system' && in_array($member['groupid'], array(1, 2, 3, 6, 7, 8))) || in_array($member['adminid'], array(1,2,3))) {
			$error = 3;
		} else {
			$member['groupterms'] = dunserialize($member['groupterms']);
/*vot*/			$member['banexpiry'] = !empty($member['groupterms']['main']['time']) && ($member['groupid'] == 4 || $member['groupid'] == 5) ? dgmdate($member['groupterms']['main']['time'], 'Y-m-d') : '';
			$error = 0;
		}

	} else {
		$error = 1;
	}
	return $member;
}

function ipbanadd($ipnew, $validitynew, &$error) {
	global $_G;

	if($ipnew != '') {
		$ipnew = ip::to_ip($ipnew);
		$is_cidr = ip::validate_cidr($ipnew, $ipnew);
		if (!ip::validate_ip($ipnew) && !$is_cidr) {
			$error = 1;
			return FALSE;
		}

		if($_G['adminid'] != 1 && $is_cidr) {
			$error = 2;
			return FALSE;
		}

		if(ip::check_ip($_G['clientip'], $ipnew)) {
			$error = 3;
			return FALSE;
		}

		if($banned = C::t('common_banned')->fetch_by_ip($ipnew)) {
			$error = 3;
			return FALSE;
		}

		$expiration = $validitynew > 1 ? (TIMESTAMP + $validitynew * 86400) : TIMESTAMP + 86400;
		list($lower, $upper) = ip::calc_cidr_range($ipnew, true);
		$data = array(
			'ip' => $ipnew,
			'lowerip' => $lower,
			'upperip' => $upper,
			'admin' => $_G['username'],
			'dateline' => $_G['timestamp'],
			'expiration' => $expiration
		);
		C::t('common_banned')->insert($data);

		return TRUE;

	}

	return FALSE;

}

?>
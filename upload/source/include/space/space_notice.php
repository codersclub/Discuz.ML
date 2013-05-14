<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: space_notice.php 32790 2013-03-12 02:52:19Z liulanbo $
 *	Modified by Valery Votintsev, codersclub.org
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

$perpage = 30;
$perpage = mob_perpage($perpage);

$page = empty($_GET['page'])?0:intval($_GET['page']);
if($page<1) $page = 1;
$start = ($page-1)*$perpage;

ckstart($start, $perpage);

$list = array();
$mynotice = $count = 0;
$multi = '';

if(empty($_G['member']['category_num']['manage']) && !in_array($_G['adminid'], array(1,2,3))) {
	unset($_G['notice_structure']['manage']);
}
$view = (!empty($_GET['view']) && (isset($_G['notice_structure'][$_GET[view]]) || in_array($_GET['view'], array('userapp'))))?$_GET['view']:'mypost';
$actives = array($view=>' class="a"');
$opactives[$view] = 'class="a"';
$categorynum = $newprompt = array();
if($view == 'userapp') {

	space_merge($space, 'status');

	if($_GET['op'] == 'del') {
		$appid = intval($_GET['appid']);
		C::t('common_myinvite')->delete_by_appid_touid($appid, $_G['uid']);
		showmessage('do_success', "home.php?mod=space&do=notice&view=userapp&quickforward=1");
	}

	$filtrate = 0;
	$count = 0;
	$apparr = array();
	$type = intval($_GET['type']);
	foreach(C::t('common_myinvite')->fetch_all_by_touid($_G['uid']) as $value) {
		$count++;
		$key = md5($value['typename'].$value['type']);
		$apparr[$key][] = $value;
		if($filtrate) {
			$filtrate--;
		} else {
			if($count < $perpage) {
				if($type && $value['appid'] == $type) {
					$list[$key][] = $value;
				} elseif(!$type) {
					$list[$key][] = $value;
				}
			}
		}
	}
	$mynotice = $count;

} else {

	if(!empty($_GET['ignore'])) {
		C::t('home_notification')->ignore($_G['uid']);
	}

	foreach (array('wall', 'piccomment', 'blogcomment', 'clickblog', 'clickpic', 'sharecomment', 'doing', 'friend', 'credit', 'bbs', 'system', 'thread', 'task', 'group') as $key) {
		$noticetypes[$key] = lang('notification', "type_$key");
	}

	$isread = in_array($_GET['isread'], array(0, 1)) ? intval($_GET['isread']) : 0;
	$category = $type = '';
	if(isset($_G['notice_structure'][$view])) {
		if(!in_array($view, array('mypost', 'interactive'))) {
			$category = $view;
		} else {
			$deftype = $_G['notice_structure'][$view][0];
			if($_G['member']['newprompt_num']) {
				foreach($_G['notice_structure'][$view] as $subtype) {
					if($_G['member']['newprompt_num'][$subtype]) {
						$deftype = $subtype;
						break;
					}
				}
			}
			$type = in_array($_GET['type'], $_G['notice_structure'][$view]) ? trim($_GET['type']) : $deftype;
		}
	}
	$wherearr = array();
	$new = -1;
	if(!empty($type)) {
		$wherearr[] = "`type`='$type'";
	}

	$sql = ' AND '.implode(' AND ', $wherearr);


	$newnotify = false;
	$count = C::t('home_notification')->count_by_uid($_G['uid'], $new, $type, $category);
	if($count) {
		if($new == 1 && $perpage == 30) {
			$perpage = 200;
		}
		foreach(C::t('home_notification')->fetch_all_by_uid($_G['uid'], $new, $type, $start, $perpage, $category) as $value) {
			if($value['new']) {
				$newnotify = true;
				$value['style'] = 'color:#000;font-weight:bold;';
			} else {
				$value['style'] = '';
			}
			$value['rowid'] = '';
			if(in_array($value['type'], array('friend', 'poke'))) {
				$value['rowid'] = ' id="'.($value['type'] == 'friend' ? 'pendingFriend_' : 'pokeQuery_').$value['authorid'].'" ';
			}
			if($value['from_num'] > 0) $value['from_num'] = $value['from_num'] - 1;
/*vot*/	$value['note'] = stripslashes($value['note']);
/*vot*/	$notevars = @unserialize($value['note']);

//DEBUG
//echo "<pre>";
//echo "source/include/space/space_notice.php.\n";
//$value['note'] = htmlspecialchars($value['note']);
//echo "value=";
//print_r($value);
//echo "notevars (", gettype($notevars), ")=";
//print_r($notevars);
//echo "</pre>";

/*vot*/	if(gettype($notevars)=='array') {
/*vot*/	  $template = $notevars['template'];
/*vot*/	  unset($notevars['template']);
/*vot*/	  $value['note'] = lang('notification',$template,$notevars);
/*vot*/	}
			$list[$value['id']] = $value;
		}

		$multi = '';
		if($isread) {
			$multi = multi($count, $perpage, $page, "home.php?mod=space&do=$do&isread=1");
		}
	}

	if($newnotify) {
		C::t('home_notification')->ignore($_G['uid'], $type, $category, true, true);
		if($_G['setting']['cloud_status']) {
			$noticeService = Cloud::loadClass('Service_Client_Notification');
			$noticeService->setNoticeFlag($_G['uid'], TIMESTAMP);
		}
	}
	helper_notification::update_newprompt($_G['uid'], ($type ? $type : $category));
	if($_G['setting']['my_app_status']) {
		$mynotice = C::t('common_myinvite')->count_by_touid($_G['uid']);
	}

	$readtag = array($type => ' class="a"');


}
dsetcookie('promptstate_'.$_G['uid'], $newprompt, 31536000);
include_once template("diy:home/space_notice");


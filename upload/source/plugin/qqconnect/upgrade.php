<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: upgrade.php 33545 2013-07-04 07:06:27Z nemohou $
 *	Modified by Valery Votintsev, codersclub.org
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

$sql = '';

$sql .= <<<EOF

CREATE TABLE IF NOT EXISTS pre_connect_postfeedlog (
  flid int(11) unsigned NOT NULL AUTO_INCREMENT,
  pid int(11) unsigned NOT NULL DEFAULT '0',
  uid int(11) unsigned NOT NULL DEFAULT '0',
  publishtimes mediumint(11) unsigned NOT NULL DEFAULT '0',
  lastpublished int(11) unsigned NOT NULL DEFAULT '0',
  dateline int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (flid),
  UNIQUE KEY pid (pid)
) ENGINE=MyISAM;

CREATE TABLE IF NOT EXISTS pre_connect_tthreadlog (
  twid varchar(16) NOT NULL,
  tid int(11) unsigned NOT NULL DEFAULT '0',
  conopenid varchar(255) NOT NULL,
  pagetime int(11) unsigned DEFAULT '0',
  lasttwid varchar(16) DEFAULT NULL,
  nexttime int(11) unsigned DEFAULT '0',
  updatetime int(11) unsigned DEFAULT '0',
  dateline int(11) unsigned DEFAULT '0',
  PRIMARY KEY (twid),
  KEY nexttime (tid,nexttime),
  KEY updatetime (tid,updatetime)
) ENGINE=MyISAM;

CREATE TABLE IF NOT EXISTS pre_common_connect_guest (
  `conopenid` varchar(255) NOT NULL default '',
  `conuin` varchar(255) NOT NULL default '',
  `conuinsecret` varchar(255) NOT NULL default '',
  `conqqnick` varchar(255) NOT NULL default '',
  `conuintoken` char(32) NOT NULL DEFAULT '',
  PRIMARY KEY (conopenid)
) ENGINE=MyISAM;

CREATE TABLE IF NOT EXISTS `pre_connect_disktask` (
  `taskid` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Task ID',
  `aid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Attachment ID',
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'User ID',
  `openid` varchar(255) NOT NULL DEFAULT '' COMMENT 'openId',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT 'Attachment Name',
  `verifycode` varchar(255) NOT NULL DEFAULT '' COMMENT 'Download verification code',
  `status` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Download Status',
  `dateline` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Add the time of the task',
  `downloadtime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Download time',
  `extra` text COMMENT 'Reserved field',
  PRIMARY KEY (`taskid`),
  KEY `openid` (`openid`),
  KEY `status` (`status`)
) ENGINE=MyISAM COMMENT='Network Disk Download Task';

EOF;

runquery($sql);

$sql = '';

$columnexisted = false;

$query = DB::query("SHOW COLUMNS FROM ".DB::table('common_member_connect'));
while($temp = DB::fetch($query)) {
	if($temp['Field'] == 'conisqqshow') {
		$columnexisted = true;
		continue;
	}
	if($temp['Field'] == 'conuintoken') {
		$uintokenexisted = true;
		continue;
	}
}
$sql .= !$columnexisted ? "ALTER TABLE ".DB::table('common_member_connect')." ADD COLUMN conisqqshow tinyint(1) unsigned NOT NULL default '0';\n" : '';
$sql .= !$uintokenexisted ? "ALTER TABLE ".DB::table('common_member_connect')." ADD COLUMN conuintoken char(32) NOT NULL DEFAULT '';\n" : '';

$query = DB::query("SHOW COLUMNS FROM ".DB::table('common_connect_guest'));
while($row = DB::fetch($query)) {
	if($row['Field'] == 'conqqnick') {
		$qqnickexisted = true;
		continue;
	}
	if($row['Field'] == 'conuintoken') {
		$guintokenexisted = true;
		continue;
	}
}
$sql .= !$qqnickexisted ? "ALTER TABLE ".DB::table('common_connect_guest')." ADD COLUMN conqqnick char(100) NOT NULL default '';\n" : '';
$sql .= !$guintokenexisted ? "ALTER TABLE ".DB::table('common_connect_guest')." ADD COLUMN conuintoken char(32) NOT NULL DEFAULT '';\n" : '';

if($sql) {
	runquery($sql);
}

$connect = C::t('common_setting')->fetch('connect', true);

if (!array_key_exists('reply', $connect['t'])) {
	$connect['t']['reply'] = 1;
}
if (!array_key_exists('reply_showauthor', $connect['t'])) {
	$connect['t']['reply_showauthor'] = 1;
}

$needCreateGroup = false;
if ($connect['guest_groupid']) {
	$group = C::t('common_usergroup')->fetch($connect['guest_groupid']);
	if (!$group) {
		$needCreateGroup = true;
	}
} else {
	$needCreateGroup = true;
}

$newConnect = array();
/*vot*/	include DISCUZ_ROOT . 'source/language/'. DISCUZ_LANG. '/lang_admincp_cloud.php';
$name = $extend_lang['connect_guest_group_name'];
if ($needCreateGroup) {
	$userGroupData = array(
		'type' => 'special',
		'grouptitle' => $name,
		'allowvisit' => 1,
		'color' => '',
		'stars' => '',
	);
	$newGroupId = C::t('common_usergroup')->insert($userGroupData, true);

	$dataField = array(
		'groupid' => $newGroupId,
		'allowsearch' => 2,
		'readaccess' => 1,
		'allowgetattach' => 1,
		'allowgetimage' => 1,
	);
	C::t('common_usergroup_field')->insert($dataField);

	$newConnect['guest_groupid'] = $newGroupId;
}

$https = json_decode(dfsockopen('https://graph.qq.com/user/get_user_info'));
$newConnect['oauth2'] = $https->ret == -1 ? 1 : 0;

$updateData = array_merge($connect, $newConnect);
C::t('common_setting')->update('connect', serialize($updateData));
updatecache('setting');
$finish = true;
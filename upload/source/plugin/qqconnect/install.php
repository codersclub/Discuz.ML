<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: install.php 33885 2013-08-27 06:28:19Z nemohou $
 *	Modified by Valery Votintsev, codersclub.org
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

$connect = C::t('common_setting')->fetch_setting('connect', true);

$sql = <<<EOF

CREATE TABLE IF NOT EXISTS pre_common_member_connect (
  `uid` int(11) unsigned NOT NULL default '0',
  `conuin` varchar(255) NOT NULL default '',
  `conuinsecret` varchar(255) NOT NULL default '',
  `conopenid` varchar(255) NOT NULL default '',
  `conisfeed` tinyint(1) NOT NULL default '0',
  `conispublishfeed` tinyint(1) NOT NULL default '0',
  `conispublisht` tinyint(1) NOT NULL default '0',
  `conisregister` tinyint(1) NOT NULL default '0',
  `conisqzoneavatar` tinyint(1) NOT NULL default '0',
  `conisqqshow` tinyint(1) NOT NULL default '0',
  `conuintoken` char(32) NOT NULL DEFAULT '',
  PRIMARY KEY  (`uid`),
  KEY `conuin` (`conuin`),
  KEY `conopenid` (`conopenid`)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS pre_connect_feedlog (
  flid int(11) unsigned NOT NULL AUTO_INCREMENT,
  tid int(11) unsigned NOT NULL DEFAULT '0',
  uid int(11) unsigned NOT NULL DEFAULT '0',
  publishtimes int(11) unsigned NOT NULL DEFAULT '0',
  lastpublished int(11) unsigned NOT NULL DEFAULT '0',
  dateline int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (flid),
  UNIQUE KEY tid (tid)
) ENGINE=INNODB;

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
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS pre_connect_memberbindlog (
  mblid int(11) unsigned NOT NULL AUTO_INCREMENT,
  uid int(11) unsigned NOT NULL DEFAULT '0',
  uin varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  dateline int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (mblid),
  KEY uid (uid),
  KEY uin (uin),
  KEY dateline (dateline)
) ENGINE=INNODB;

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
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS pre_common_uin_black (
  uin varchar(255) NOT NULL,
  uid int(11) unsigned NOT NULL DEFAULT '0',
  dateline int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (uin),
  UNIQUE KEY uid (uid)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS pre_common_connect_guest (
  `conopenid` varchar(255) NOT NULL default '',
  `conuin` varchar(255) NOT NULL default '',
  `conuinsecret` varchar(255) NOT NULL default '',
  `conqqnick` varchar(255) NOT NULL default '',
  `conuintoken` char(32) NOT NULL DEFAULT '',
  PRIMARY KEY (conopenid)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `pre_connect_disktask` (
  `taskid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `aid` int(11) unsigned NOT NULL DEFAULT '0',
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `openid` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `verifycode` varchar(255) NOT NULL DEFAULT '',
  `status` int(11) unsigned NOT NULL DEFAULT '0',
  `dateline` int(11) unsigned NOT NULL DEFAULT '0',
  `downloadtime` int(11) unsigned NOT NULL DEFAULT '0',
  `extra` text,
  PRIMARY KEY (`taskid`),
  KEY `openid` (`openid`),
  KEY `status` (`status`)
) ENGINE=INNODB;

REPLACE INTO pre_common_setting VALUES ('regconnect', '1');

EOF;

runquery($sql);

$needCreateGroup = true;
if ($connect['feed']) {
	$group = C::t('common_usergroup')->fetch($connect['guest_groupid']);
	if ($group) {
		$needCreateGroup = false;
	}
} else {
	$connect = array (
		'allow' => '1',
		'feed' =>
		array (
			'allow' => '1',
			'group' => '0',
		),
		't' =>
		array (
			'allow' => '1',
			'group' => '0',
			'reply' => 1,
			'reply_showauthor' => 1,
		),
		'like_allow' => '1',
		'like_qq' => '',
		'turl_allow' => '1',
		'turl_qq' => '',
		'like_url' => '',
		'register_birthday' => '0',
		'register_gender' => '0',
		'register_uinlimit' => '',
		'register_rewardcredit' => '1',
		'register_addcredit' => '',
		'register_groupid' => '0',
		'register_regverify' => '1',
		'register_invite' => '0',
		'newbiespan' => '',
		'turl_code' => '',
		'mblog_app_key' => 'abc',
	);
}

if ($needCreateGroup) {
	$name = $installlang['connect_guest_group_name'];
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

	$connect['guest_groupid'] = $newGroupId;
	updatecache('usergroups');
}

$https = json_decode(dfsockopen('https://graph.qq.com/user/get_user_info'));
$connect['oauth2'] = $https->ret == -1 ? 1 : 0;

C::t('common_setting')->update_setting('connect', serialize($connect));
updatecache('setting');
$finish = true;
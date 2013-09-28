<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: install.php 33766 2013-08-12 02:38:48Z nemohou $
 *	Modified by Valery Votintsev, codersclub.org
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

$sql = <<<EOF

CREATE TABLE IF NOT EXISTS `pre_security_evilpost` (
  `pid` int(11) unsigned NOT NULL COMMENT 'Post ID',
  `tid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Topic ID',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Post type',
  `evilcount` int(11) NOT NULL DEFAULT '0' COMMENT 'Malicious Views',
  `eviltype` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Malicious type',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Create Time',
  `operateresult` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Operation Result: 1=passed, 2=Deleted, 3=ignored',
  `isreported` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Was reported flag',
  `censorword` varchar(255) NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `type` (`tid`,`type`),
  KEY `operateresult` (`operateresult`,`createtime`)
) ENGINE=MyISAM;

CREATE TABLE IF NOT EXISTS `pre_security_eviluser` (
  `uid` int(11) unsigned NOT NULL COMMENT 'User ID',
  `evilcount` int(11) NOT NULL DEFAULT '0' COMMENT 'Malicious Views',
  `eviltype` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Malicious type',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Create Time',
  `operateresult` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Operation Result: 1=passed, 2=Deleted, 3=ignored',
  `isreported` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Was reported flag',
  PRIMARY KEY (`uid`),
  KEY `operateresult` (`operateresult`,`createtime`)
) ENGINE=MyISAM;

CREATE TABLE IF NOT EXISTS `pre_security_failedlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `reporttype` varchar(32) NOT NULL COMMENT 'Report type',
  `tid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'TID',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'PID',
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'UID',
  `failcount` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Failure Counter',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Failure time',
  `posttime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Post time / Last post time',
  `delreason` varchar(255) NOT NULL COMMENT 'Delete Reason',
  `scheduletime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Planned retry time',
  `lastfailtime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Last time failure',
  `extra1` int(11) unsigned NOT NULL COMMENT 'Integer extension field',
  `extra2` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Character type extension field',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM;

EOF;

runquery($sql);
$cronId_security_daily = $cronId_security_lastpost = 0;
if(file_exists(DISCUZ_ROOT . './source/include/cron/cron_security_cleanup_lastpost.php') || file_exists(DISCUZ_ROOT . './source/include/cron/cron_security_daily.php')) {
	$count = C::t('common_cron')->count();
	$oldData = C::t('common_cron')->range(0, $count);
	foreach ($oldData as $value) {
		if ($value['filename'] == 'cron_security_daily.php') {
			$cronId_security_daily = $value['cronid'];
		}elseif ($value['filename'] == 'cron_security_cleanup_lastpost.php') {
			$cronId_security_lastpost = $value['cronid'];
		}
	}
}
/*vot*/ include DISCUZ_ROOT . 'source/language/'. DISCUZ_LANG. '/lang_admincp_cloud.php';
if(file_exists(DISCUZ_ROOT . './source/include/cron/cron_security_cleanup_lastpost.php') && empty($cronId_security_lastpost)) {
	$data = array(
		'available' => 1,
		'type' => 'system',
		'name' => $extend_lang['security_cron_lastpost'],
		'filename' => 'cron_security_cleanup_lastpost.php',
		'weekday' => -1,
		'day' => -1,
		'hour' => 7,
		'minute' => 0,
	);
	C::t('common_cron')->insert($data, true, false, false);
}
if (file_exists(DISCUZ_ROOT . './source/include/cron/cron_security_daily.php')) {
	if (empty($cronId_security_daily)) {
		$data = array(
			'available' => 1,
			'type' => 'system',
			'name' => $extend_lang['security_cron_daily'],
			'filename' => 'cron_security_daily.php',
			'weekday' => -1,
			'day' => -1,
			'hour' => 2,
			'minute' => 0,
		);
		$cronId_security_daily = C::t('common_cron')->insert($data, true, false, false);
	} else {
		C::t('common_cron')->update($cronId_security_daily, array(
			'available' => 1,
			'weekday' => -1,
			'day' => -1,
			'hour' => 2,
			'minute' => 0,
		));
	}
	updatecache('setting');
	discuz_cron::run($cronId_security_daily);
}
$updateData = array(
	'security_usergroups_white_list' => serialize(array(1, 2, 3)),
	'security_safelogin' => 1,
);

C::t('common_setting')->update_batch($updateData);
updatecache('setting');

$finish = true;
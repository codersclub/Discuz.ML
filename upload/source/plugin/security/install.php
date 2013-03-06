<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: install.php 32469 2013-01-23 05:52:37Z liulanbo $
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

$sql = <<<EOF

CREATE TABLE IF NOT EXISTS `pre_security_evilpost` (
  `pid` int(10) unsigned NOT NULL COMMENT '����ID',
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '����ID',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '��������',
  `evilcount` int(10) NOT NULL DEFAULT '0' COMMENT '�������',
  `eviltype` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '��������',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '����ʱ��',
  `operateresult` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '���������1 ͨ�� 2 ɾ�� 3 ����',
  `isreported` tinyint(1) NOT NULL DEFAULT '0' COMMENT '�Ƿ��Ѿ��ϱ�',
  `censorword` char(50) NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `type` (`tid`,`type`),
  KEY `operateresult` (`operateresult`,`createtime`)
) ENGINE=MyISAM;

CREATE TABLE IF NOT EXISTS `pre_security_eviluser` (
  `uid` int(10) unsigned NOT NULL COMMENT '�û�ID',
  `evilcount` int(10) NOT NULL DEFAULT '0' COMMENT '�������',
  `eviltype` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '��������',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '����ʱ��',
  `operateresult` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '���������1 �ָ� 2 ɾ�� 3 ����',
  `isreported` tinyint(1) NOT NULL DEFAULT '0' COMMENT '�Ƿ��Ѿ��ϱ�',
  PRIMARY KEY (`uid`),
  KEY `operateresult` (`operateresult`,`createtime`)
) ENGINE=MyISAM;

CREATE TABLE IF NOT EXISTS `pre_security_failedlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����',
  `reporttype` char(20) NOT NULL COMMENT '�ϱ�����',
  `tid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'TID',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'PID',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'UID',
  `failcount` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '����',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ʧ��ʱ��',
  `posttime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '����ʱ��/�ϴη���ʱ��',
  `delreason` char(255) NOT NULL COMMENT '����ԭ��',
  `scheduletime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '�ƻ�����ʱ��',
  `lastfailtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '�ϴ�ʧ��ʱ��',
  `extra1` int(10) unsigned NOT NULL COMMENT '���͵���չ�ֶ�',
  `extra2` char(255) NOT NULL DEFAULT '0' COMMENT '�ַ����͵���չ�ֶ�',
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
include DISCUZ_ROOT . 'source/language/lang_admincp_cloud.php';
if(file_exists(DISCUZ_ROOT . './source/include/cron/cron_security_cleanup_lastpost.php') && empty($cronId_security_lastpost)) {
	$data = array(
		'available' => 0,
		'type' => 'user',
		'name' => $extend_lang['security_cron_lastpost'],
		'filename' => 'cron_security_cleanup_lastpost.php',
		'weekday' => -1,
		'day' => -1,
		'hour' => -1,
		'minute' => 0,
	);
	C::t('common_cron')->insert($data, true, false, false);
}
if (file_exists(DISCUZ_ROOT . './source/include/cron/cron_security_daily.php')) {
	if (empty($cronId_security_daily)) {
		$data = array(
			'available' => 1,
			'type' => 'user',
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
);

C::t('common_setting')->update_batch($updateData);
updatecache('setting');

$finish = true;
-- DISCUZ!ML
-- =========

-- vot: pre_common_member_archive
CREATE TABLE IF NOT EXISTS pre_common_member_archive (
  uid int(11) unsigned NOT NULL AUTO_INCREMENT,
  email varchar(255) NOT NULL DEFAULT '',
  username varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  emailstatus tinyint(1) NOT NULL DEFAULT '0',
  avatarstatus tinyint(1) NOT NULL DEFAULT '0',
  videophotostatus tinyint(1) NOT NULL DEFAULT '0',
  adminid tinyint(1) NOT NULL DEFAULT '0',
  groupid int(11) unsigned NOT NULL DEFAULT '0',
  groupexpiry int(11) unsigned NOT NULL DEFAULT '0',
  extgroupids varchar(255) NOT NULL DEFAULT '',
  regdate int(11) unsigned NOT NULL DEFAULT '0',
  credits int(11) NOT NULL DEFAULT '0',
  notifysound tinyint(1) NOT NULL DEFAULT '0',
  timeoffset varchar(255) NOT NULL DEFAULT '',
  newpm int(11) unsigned NOT NULL DEFAULT '0',
  newprompt int(11) unsigned NOT NULL DEFAULT '0',
  accessmasks tinyint(1) NOT NULL DEFAULT '0',
  allowadmincp tinyint(1) NOT NULL DEFAULT '0',
  onlyacceptfriendpm tinyint(1) NOT NULL DEFAULT '0',
  conisbind tinyint(1) unsigned NOT NULL DEFAULT '0',
  freeze tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (uid),
  UNIQUE KEY username (username),
  KEY email (email),
  KEY groupid (groupid),
  KEY conisbind (conisbind),
  KEY regdate (regdate)
) ENGINE=MyISAM;

-- UC_SERVER
-- =========

REPLACE INTO uc_settings(k, v) VALUES ('addappbyurl','0');


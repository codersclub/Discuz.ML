<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: install_var.php 28275 2012-02-27 04:14:58Z monkey $
 */

if(!defined('IN_COMSENZ')) {
	exit('Access Denied');
}

define('SOFT_NAME', 'Discuz!');

define('INSTALL_LANG', 'SC_GBK');

define('CONFIG', './config/config_global.php');
define('CONFIG_UC', './config/config_ucenter.php');

$sqlfile = ROOT_PATH.((file_exists(ROOT_PATH.'./install/data/install_dev.sql')) ? './install/data/install_dev.sql' : './install/data/install.sql');
$lockfile = ROOT_PATH.'./data/install.lock';

@include ROOT_PATH.CONFIG;

define('CHARSET', 'gbk');
define('DBCHARSET', 'gbk');

define('ORIG_TABLEPRE', 'pre_');

define('METHOD_UNDEFINED', 255);
define('ENV_CHECK_RIGHT', 0);
define('ERROR_CONFIG_VARS', 1);
define('SHORT_OPEN_TAG_INVALID', 2);
define('INSTALL_LOCKED', 3);
define('DATABASE_NONEXISTENCE', 4);
define('PHP_VERSION_TOO_LOW', 5);
define('MYSQL_VERSION_TOO_LOW', 6);
define('UC_URL_INVALID', 7);
define('UC_DNS_ERROR', 8);
define('UC_URL_UNREACHABLE', 9);
define('UC_VERSION_INCORRECT', 10);
define('UC_DBCHARSET_INCORRECT', 11);
define('UC_API_ADD_APP_ERROR', 12);
define('UC_ADMIN_INVALID', 13);
define('UC_DATA_INVALID', 14);
define('DBNAME_INVALID', 15);
define('DATABASE_ERRNO_2003', 16);
define('DATABASE_ERRNO_1044', 17);
define('DATABASE_ERRNO_1045', 18);
define('DATABASE_CONNECT_ERROR', 19);
define('TABLEPRE_INVALID', 20);
define('CONFIG_UNWRITEABLE', 21);
define('ADMIN_USERNAME_INVALID', 22);
define('ADMIN_EMAIL_INVALID', 25);
define('ADMIN_EXIST_PASSWORD_ERROR', 26);
define('ADMININFO_INVALID', 27);
define('LOCKFILE_NO_EXISTS', 28);
define('TABLEPRE_EXISTS', 29);
define('ERROR_UNKNOW_TYPE', 30);
define('ENV_CHECK_ERROR', 31);
define('UNDEFINE_FUNC', 32);
define('MISSING_PARAMETER', 33);
define('LOCK_FILE_NOT_TOUCH', 34);

$func_items = array('mysql_connect', 'gethostbyname', 'file_get_contents', 'xml_parser_create');

$filesock_items = array('fsockopen', 'pfsockopen', 'stream_socket_client', 'curl_init');

$env_items = array
(
	'os' => array('c' => 'PHP_OS', 'r' => 'notset', 'b' => 'unix'),
	'php' => array('c' => 'PHP_VERSION', 'r' => '5.1', 'b' => '5.3'),
	'attachmentupload' => array('r' => 'notset', 'b' => '2M'),
	'gdversion' => array('r' => '1.0', 'b' => '2.0'),
	'diskspace' => array('r' => '10M', 'b' => 'notset'),
);

$dirfile_items = array
(

	'config' => array('type' => 'file', 'path' => CONFIG),
	'ucenter config' => array('type' => 'file', 'path' => CONFIG_UC),
	'config_dir' => array('type' => 'dir', 'path' => './config'),
	'data' => array('type' => 'dir', 'path' => './data'),
	'cache' => array('type' => 'dir', 'path' => './data/cache'),
	'avatar' => array('type' => 'dir', 'path' => './data/avatar'),
	'plugindata' => array('type' => 'dir', 'path' => './data/plugindata'),
	'plugindownload' => array('type' => 'dir', 'path' => './data/download'),
	'addonmd5' => array('type' => 'dir', 'path' => './data/addonmd5'),
	'ftemplates' => array('type' => 'dir', 'path' => './data/template'),
	'threadcache' => array('type' => 'dir', 'path' => './data/threadcache'),
	'attach' => array('type' => 'dir', 'path' => './data/attachment'),
	'attach_album' => array('type' => 'dir', 'path' => './data/attachment/album'),
	'attach_forum' => array('type' => 'dir', 'path' => './data/attachment/forum'),
	'attach_group' => array('type' => 'dir', 'path' => './data/attachment/group'),

	'logs' => array('type' => 'dir', 'path' => './data/log'),
	'uccache' => array('type' => 'dir', 'path' => './uc_client/data/cache'),

	'uc_server_data' => array('type' => 'dir', 'path' => './uc_server/data/'),
	'uc_server_data_cache' => array('type' => 'dir', 'path' => './uc_server/data/cache'),
	'uc_server_data_avatar' => array('type' => 'dir', 'path' => './uc_server/data/avatar'),
	'uc_server_data_backup' => array('type' => 'dir', 'path' => './uc_server/data/backup'),
	'uc_server_data_logs' => array('type' => 'dir', 'path' => './uc_server/data/logs'),
	'uc_server_data_tmp' => array('type' => 'dir', 'path' => './uc_server/data/tmp'),
	'uc_server_data_view' => array('type' => 'dir', 'path' => './uc_server/data/view'),
);


$form_app_reg_items = array
(
	'ucenter' => array
	(
		'ucurl' => array('type' => 'text', 'required' => 1, 'reg' => '/^https?:\/\//', 'value' => array('type' => 'var', 'var' => 'ucapi')),
		'ucip' => array('type' => 'text', 'required' => 0, 'reg' => '/^\d+\.\d+\.\d+\.\d+$/'),
		'ucpw' => array('type' => 'password', 'required' => 1, 'reg' => '/^.*$/')
	),
	'siteinfo' => array
	(
		'sitename' => array('type' => 'text', 'required' => 1, 'reg' => '/^.*$/', 'value' => array('type' => 'constant', 'var' => 'SOFT_NAME')),
		'siteurl' => array('type' => 'text', 'required' => 1, 'reg' => '/^https?:\/\//', 'value' => array('type' => 'var', 'var' => 'default_appurl'))
	)
);

$form_db_init_items = array
(
	'dbinfo' => array
	(
		'dbhost' => array('type' => 'text', 'required' => 1, 'reg' => '/^.+$/', 'value' => array('type' => 'var', 'var' => 'dbhost')),
		'dbname' => array('type' => 'text', 'required' => 1, 'reg' => '/^.+$/', 'value' => array('type' => 'var', 'var' => 'dbname')),
		'dbuser' => array('type' => 'text', 'required' => 0, 'reg' => '/^.*$/', 'value' => array('type' => 'var', 'var' => 'dbuser')),
		'dbpw' => array('type' => 'text', 'required' => 0, 'reg' => '/^.*$/', 'value' => array('type' => 'var', 'var' => 'dbpw')),
		'tablepre' => array('type' => 'text', 'required' => 0, 'reg' => '/^.*+/', 'value' => array('type' => 'var', 'var' => 'tablepre')),
		'adminemail' => array('type' => 'text', 'required' => 1, 'reg' => '/@/', 'value' => array('type' => 'var', 'var' => 'adminemail')),
	),
	'admininfo' => array
	(
		'username' => array('type' => 'text', 'required' => 1, 'reg' => '/^.*$/', 'value' => array('type' => 'constant', 'var' => 'admin')),
		'password' => array('type' => 'password', 'required' => 1, 'reg' => '/^.*$/'),
		'password2' => array('type' => 'password', 'required' => 1, 'reg' => '/^.*$/'),
		'email' => array('type' => 'text', 'required' => 1, 'reg' => '/@/', 'value' => array('type' => 'var', 'var' => 'adminemail')),
	)
);

$serialize_sql_setting = array (
  'extcredits' =>
  array (
    1 =>
    array (
      'img' => '',
      'title' => '����',
      'unit' => '',
      'ratio' => 0,
      'available' => '1',
      'showinthread' => NULL,
      'allowexchangein' => NULL,
      'allowexchangeout' => NULL,
    ),
    2 =>
    array (
      'img' => '',
      'title' => '��Ǯ',
      'unit' => '',
      'ratio' => 0,
      'available' => '1',
      'showinthread' => NULL,
      'allowexchangein' => NULL,
      'allowexchangeout' => NULL,
    ),
    3 =>
    array (
      'img' => '',
      'title' => '����',
      'unit' => '',
      'ratio' => 0,
      'available' => '1',
      'showinthread' => NULL,
      'allowexchangein' => NULL,
      'allowexchangeout' => NULL,
    ),
    4 =>
    array (
      'img' => '',
      'title' => '',
      'unit' => '',
      'ratio' => 0,
      'available' => NULL,
      'showinthread' => NULL,
      'allowexchangein' => NULL,
      'allowexchangeout' => NULL,
    ),
    5 =>
    array (
      'img' => '',
      'title' => '',
      'unit' => '',
      'ratio' => 0,
      'available' => NULL,
      'showinthread' => NULL,
      'allowexchangein' => NULL,
      'allowexchangeout' => NULL,
    ),
    6 =>
    array (
      'img' => '',
      'title' => '',
      'unit' => '',
      'ratio' => 0,
      'available' => NULL,
      'showinthread' => NULL,
      'allowexchangein' => NULL,
      'allowexchangeout' => NULL,
    ),
    7 =>
    array (
      'img' => '',
      'title' => '',
      'unit' => '',
      'ratio' => 0,
      'available' => NULL,
      'showinthread' => NULL,
      'allowexchangein' => NULL,
      'allowexchangeout' => NULL,
    ),
    8 =>
    array (
      'img' => '',
      'title' => '',
      'unit' => '',
      'ratio' => 0,
      'available' => NULL,
      'showinthread' => NULL,
      'allowexchangein' => NULL,
      'allowexchangeout' => NULL,
    ),
  ),
  'postnocustom' =>
  array (
    0 => '¥��',
    1 => 'ɳ��',
    2 => '���',
    3 => '�ذ�',
  ),
  'recommendthread' =>
  array (
    'status' => '0',
    'addtext' => '֧��',
    'subtracttext' => '����',
    'defaultshow' => '1',
    'daycount' => '0',
    'ownthread' => '0',
    'iconlevels' => '50,100,200',
  ),
  'seotitle' =>
  array (
    'portal' => '�Ż�',
    'forum' => '��̳',
    'group' => 'Ⱥ��',
    'home' => '��԰',
    'userapp' => 'Ӧ��',
  ),
  'activityfield' =>
  array (
    'realname' => '��ʵ����',
    'mobile' => '�ֻ�',
    'qq' => 'QQ��',
  ),
  'article_tags' =>
  array (
    1 => 'ԭ��',
    2 => '�ȵ�',
    3 => '��ͼ',
    4 => '����',
    5 => 'ͷ��',
    6 => '�õ�',
    7 => '����',
    8 => '�Ƽ�',
  ),
  'verify' =>
  array (
    6 =>
    array (
      'title' => 'ʵ����֤',
      'available' => '0',
      'showicon' => '0',
      'viewrealname' => '0',
      'field' =>
      array (
        'realname' => 'realname',
      ),
      'icon' => false,
    ),
    'enabled' => false,
    1 =>
    array (
      'icon' => '',
    ),
    2 =>
    array (
      'icon' => '',
    ),
    3 =>
    array (
      'icon' => '',
    ),
    4 =>
    array (
      'icon' => '',
    ),
    5 =>
    array (
      'icon' => '',
    ),
    7 =>
    array (
      'title' => '��Ƶ��֤',
      'available' => '0',
      'showicon' => '0',
      'viewvideophoto' => '0',
      'icon' => '',
    ),
  ),
  'focus' =>
  array (
    'title' => 'վ���Ƽ�',
    'data' =>
    array (
    ),
    'cookie' => '1',
  ),
  'profilegroup' =>
  array (
    'base' =>
    array (
      'available' => 1,
      'displayorder' => 0,
      'title' => '��������',
      'field' =>
      array (
        'realname' => 'realname',
        'gender' => 'gender',
        'birthday' => 'birthday',
        'birthcity' => 'birthcity',
        'residecity' => 'residecity',
        'residedist' => 'residedist',
        'affectivestatus' => 'affectivestatus',
        'lookingfor' => 'lookingfor',
        'bloodtype' => 'bloodtype',
        'field1' => 'field1',
        'field2' => 'field2',
        'field3' => 'field3',
        'field4' => 'field4',
        'field5' => 'field5',
        'field6' => 'field6',
        'field7' => 'field7',
        'field8' => 'field8',
      ),
    ),
    'contact' =>
    array (
      'title' => '��ϵ��ʽ',
      'available' => '1',
      'displayorder' => '1',
      'field' =>
      array (
        'telephone' => 'telephone',
        'mobile' => 'mobile',
        'icq' => 'icq',
        'qq' => 'qq',
        'yahoo' => 'yahoo',
        'msn' => 'msn',
        'taobao' => 'taobao',
      ),
    ),
    'edu' =>
    array (
      'available' => 1,
      'displayorder' => 2,
      'title' => '�������',
      'field' =>
      array (
        'graduateschool' => 'graduateschool',
        'education' => 'education',
      ),
    ),
    'work' =>
    array (
      'available' => 1,
      'displayorder' => 3,
      'title' => '�������',
      'field' =>
      array (
        'occupation' => 'occupation',
        'company' => 'company',
        'position' => 'position',
        'revenue' => 'revenue',
      ),
    ),
    'info' =>
    array (
      'title' => '������Ϣ',
      'available' => '1',
      'displayorder' => '4',
      'field' =>
      array (
        'idcardtype' => 'idcardtype',
        'idcard' => 'idcard',
        'address' => 'address',
        'zipcode' => 'zipcode',
        'site' => 'site',
        'bio' => 'bio',
        'interest' => 'interest',
        'sightml' => 'sightml',
        'customstatus' => 'customstatus',
        'timeoffset' => 'timeoffset',
      ),
    ),
  ),
);

?>
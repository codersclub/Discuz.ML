<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: config_ucenter_default.php 11023 2010-05-20 02:23:09Z monkey $
 */

// ============================================================================
define('UC_CONNECT', 'mysql');				// ���� UCenter �ķ�ʽ: mysql/NULL, Ĭ��Ϊ��ʱΪ fscoketopen(), mysql ��ֱ�����ӵ����ݿ�, Ϊ��Ч��, ������� mysql
// ���ݿ���� (mysql ����ʱ)
define('UC_DBHOST', 'localhost');			// UCenter ���ݿ�����
define('UC_DBUSER', 'root');				// UCenter ���ݿ��û���
define('UC_DBPW', 'root');				// UCenter ���ݿ�����
define('UC_DBNAME', 'ucenter');				// UCenter ���ݿ�����
define('UC_DBCHARSET', 'gbk');				// UCenter ���ݿ��ַ���
define('UC_DBTABLEPRE', '`ucenter`.uc_');		// UCenter ���ݿ��ǰ׺
define('UC_DBCONNECT', '0');				// UCenter ���ݿ�־����� 0=�ر�, 1=��

// ͨ�����
define('UC_KEY', 'yeN3g9EbNfiaYfodV63dI1j8Fbk5HaL7W4yaW4y7u2j4Mf45mfg2v899g451k576');	// �� UCenter ��ͨ����Կ, Ҫ�� UCenter ����һ��
define('UC_API', 'http://localhost/ucenter/branches/1.5.0/server'); // UCenter �� URL ��ַ, �ڵ���ͷ��ʱ�����˳���
define('UC_CHARSET', 'gbk');				// UCenter ���ַ���
define('UC_IP', '127.0.0.1');				// UCenter �� IP, �� UC_CONNECT Ϊ�� mysql ��ʽʱ, ���ҵ�ǰӦ�÷�������������������ʱ, �����ô�ֵ
define('UC_APPID', '1');				// ��ǰӦ�õ� ID

// ============================================================================

define('UC_PPP', '20');

?>
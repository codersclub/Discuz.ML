<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: config_ucenter_default.php 11023 2010-05-20 02:23:09Z monkey $
 *      Modified by Valery Votintsev at sources.ru
 */

// ============================================================================
define('UC_CONNECT', 'mysql');			// UCenter connection method:
define('UC_STANDALONE', 1);			// Independent mode switch, 0=off, 1=on, it will no longer depend on UCenter Server after it is turned on. Note: UC_CONNECT must be changed to mysql when it is turned on!
// Database Related (mysql connection)
define('UC_DBHOST', 'localhost');		// UCenter Database Host
define('UC_DBUSER', 'root');			// UCenter Database user name
define('UC_DBPW', 'root');			// UCenter Database Password
define('UC_DBNAME', 'ucenter');			// UCenter Database Name
define('UC_DBCHARSET', 'utf8');			// UCenter Database character set, 'utf8mb4' for MySQL >= 5.5.3
define('UC_DBTABLEPRE', '`ucenter`.uc_');	// UCenter Database table prefix
define('UC_DBCONNECT', '0');			// UCenter Database persistent connection 0 = off, 1 = On
// Avatar related
define('UC_AVTURL', '');		// The basic path of the avatar service. If it is empty, it is the default value. It can be set to an independent domain name/path (no / at the end), and it is better to use with CDN. If avatar.php is involved, it needs to be configured again.
define('UC_AVTPATH', '');		// Avatar storage path, if it is empty, it is the default value, it can only be used in standalone mode, it is recommended to keep the default value.

// Communication related
define('UC_KEY', 'yeN3g9EbNfiaYfodV63dI1j8Fbk5HaL7W4yaW4y7u2j4Mf45mfg2v899g451k576');	// UCenter communication key, consistent with the UCenter
define('UC_API', 'http://localhost/ucenter/branches/1.5.0/server'); // UCenter URL address for connect to
define('UC_CHARSET', 'utf-8');			// UCenter Character set
define('UC_IP', '127.0.0.1');			// UCenter IP address.
define('UC_APPID', '1');			// The current application ID

// ============================================================================

define('UC_PPP', '20');				// Items per page

?>
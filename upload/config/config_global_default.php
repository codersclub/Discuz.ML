<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: config_global_default.php 36362 2017-02-04 02:02:03Z nemohou $
 *      Modified by Valery Votintsev at codersclub.org
 */

$_config = array();

// Tip: Since the current version, this file does not support calling any variables or functions in the system, please rely on the site correction implementation of this behavior //

// ----------------------------  CONFIG DB  ----------------------------- //
// Database server settings

/**
 * Set the primary database server to support multiple sets of server settings, when set to multiple servers, distributed strategy is to use a server based on
 * @example
 * $_config['db']['1']['dbhost'] = 'localhost'; // Server Address
 * $_config['db']['1']['dbuser'] = 'root'; // User name
 * $_config['db']['1']['dbpw'] = 'root';// Password
 * $_config['db']['1']['dbcharset'] = 'utf8';// Character Set
 * $_config['db']['1']['pconnect'] = '0';// Persistent connection
 * $_config['db']['1']['dbname'] = 'x1';// Database name
 * $_config['db']['1']['tablepre'] = 'pre_';// Table prefix
 *
 * $_config['db']['2']['dbhost'] = 'localhost';
 * ...
 *
 */
$_config['db'][1]['dbhost']  	= '127.0.0.1';	// DB Server address
$_config['db'][1]['dbuser']  	= 'root';	// DB User Name
$_config['db'][1]['dbpw'] 		= '';	// DB User Password
$_config['db'][1]['dbcharset'] 	= 'utf8';	// DB Charset
$_config['db'][1]['pconnect'] 	= 0;		// Enable DB persistent connection
$_config['db'][1]['dbname']  	= 'ultrax';	// DB Name
$_config['db'][1]['tablepre'] 	= 'pre_';	// DB Table Prefix

/**
 * Database from the server settings (slave, read-only), support for multiple sets of server settings, when set to multiple servers, the system using each random
 * @example
 * $_config['db']['1']['slave']['1']['dbhost'] = 'localhost';
 * $_config['db']['1']['slave']['1']['dbuser'] = 'root';
 * $_config['db']['1']['slave']['1']['dbpw'] = 'root';
 * $_config['db']['1']['slave']['1']['dbcharset'] = 'utf8';//vot
 * $_config['db']['1']['slave']['1']['pconnect'] = '0';
 * $_config['db']['1']['slave']['1']['dbname'] = 'x1';
 * $_config['db']['1']['slave']['1']['tablepre'] = 'pre_';
 * $_config['db']['1']['slave']['1']['weight'] = '0'; //Weight: If the data greater then the weight is higher
 *
 * $_config['db']['1']['slave']['2']['dbhost'] = 'localhost';
 * ...
 *
 */
$_config['db']['1']['slave'] = array();

//Enable to switch the servers
$_config['db']['slave'] = false;
/**
 * Distributed database deployment policy setting
 *
 * @example Store the common_member table at the second server, but common_session table at the third server:
 * $_config['db']['map']['common_member'] = 2;
 * $_config['db']['map']['common_session'] = 3;
 *
 * Server for the table is not explicitly stated, it will be deployed in the first server, the default
 *
 */
$_config['db']['map'] = array();

/**
 * Database public settings, such settings are usually set for each server
 */
$_config['db']['common'] = array();

/**
 *  Disable the data from the database tables, table names separated by commas between
 *
 * @example common_session, common_member These two tables to read and write only from the master server, do not use from the server
 * $_config['db']['common']['slave_except_table'] = 'common_session, common_member';
 *
 */
$_config['db']['common']['slave_except_table'] = '';

/**
 * Memory server optimization settings
 * The following settings need to be PHP extension support component, which memcache priority over other settings,
 * can not be enabled when the memcache automatically when you open the other two optimization models)
 */

//Set the cache lifetime value, default = 30 seconds
//$_config['cache']['empty_ttl'] = 30;

//Memory variable prefix, change, to avoid reference to the same server process disorder
$_config['memory']['prefix'] = 'discuz_';

/* Redis settings, Requires for this PHP extension is supported, timeout No verification of the role of the parameter */
$_config['memory']['redis']['server'] = '';
$_config['memory']['redis']['port'] = 6379;
$_config['memory']['redis']['pconnect'] = 1;
$_config['memory']['redis']['timeout'] = 0;
$_config['memory']['redis']['requirepass'] = '';
/**
 * Whether to use Redis::SERIALIZER_IGBINARY option, Need igbinary Support. If windows testing is closed otherwise they will be out > Is now error Reading from client: Connection reset by peer
 * Supports the following options, the default using PHP serializer
 * [Important] This option has been to replace the original $_config['memory']['redis']['igbinary'] option
 * Redis::SERIALIZER_IGBINARY =2
 * Redis::SERIALIZER_PHP =1
 * Redis::SERIALIZER_NONE =0 //If not use serialize, It can not be saved as array
 */
$_config['memory']['redis']['serializer'] = 1;

$_config['memory']['memcache']['server'] = '';	// memcache server address
$_config['memory']['memcache']['port'] = 11211;	// memcache server port
$_config['memory']['memcache']['pconnect'] = 1;	// memcache persistent connection
$_config['memory']['memcache']['timeout'] = 1;	// memcache server connection timeout

$_config['memory']['apc'] = 0;			// Start support for apc
$_config['memory']['apcu'] = 0;			// Start APCu support
$_config['memory']['xcache'] = 0;		// Start the support for xcache
$_config['memory']['eaccelerator'] = 0;		// Start the support for eaccelerator
$_config['memory']['wincache'] = 0;		// Start the support for wincache
$_config['memory']['yac'] = 0;			// Start YAC support
$_config['memory']['file']['server'] = '';	// Start File Cache support
// Server-related settings
$_config['server']['id']		= 1;	// Server ID, when  more webservers used this ID to identify the current server

// Download attachments
//
// Local file reading mode; Mode 2 is the most memory-saving way, but it does not support multi-thread download
// If you need the attachment URL address and media attachment playback, you need to select the read mode 1 or 4 that supports the Range parameter. Other modes will cause abnormal video playback in some browsers
// 1=fread, 2=readfile, 3=fpassthru, 4=fpassthru+multiple
$_config['download']['readmod'] = 2;

// Enable X-Sendfile feature(required server support) 0=disable, 1=nginx, 2=lighttpd, 3=apache
$_config['download']['xsendfile']['type'] = 0;

// Enable nginx X-sendfile, the forum attachment directory path to the virtual map, use the "/" at the end
$_config['download']['xsendfile']['dir'] = '/down/';

// Page output settings
$_config['output']['charset'] 		= 'utf-8';	// Page character set
$_config['output']['forceheader']	= 1;		// Force the output in defined character set, used to avoid page content garbled
$_config['output']['gzip'] 		= 0;		// Use Gzip compression for output
$_config['output']['tplrefresh'] 	= 1;		// Automatically refresh templates: 0 = off, 1 = On
$_config['output']['language'] 		= 'zh_cn';		// Page language sc/tc/en/fr/etc...
$_config['output']['staticurl'] 	= 'static/';	// Path to the site static files, use "/" at the end
$_config['output']['ajaxvalidate']	= 0;		// Strictly verify the authenticity for Ajax pages: 0 = off, 1 = On
$_config['output']['iecompatible']	= 0;		// IE compatibility mode
$_config['output']['upgradeinsecure']	= 0;		// Require the browser to upgrade from HTTP link to HTTPS. 0 = off, 1 = on (default)

// COOKIE settings
$_config['cookie']['cookiepre'] 	= 'discuz_'; 	// COOKIE prefix
$_config['cookie']['cookiedomain'] 	= ''; 		// COOKIE domain
$_config['cookie']['cookiepath'] 	= '/'; 		// COOKIE path

// Site Security Settings
$_config['security']['authkey']		= 'asdfasfas';	// Site encryption key
$_config['security']['urlxssdefend']	= true;		// Use own URL XSS defense
$_config['security']['attackevasive']	= 0;		// CC Attack Defense 1 | 2 | 4
$_config['security']['onlyremoteaddr']	= 0;		// Get User IP address method: 0 = Trust HTTP_CLIENT_IP and HTTP_X_FORWARDED_FOR; 1 = Tust only REMOTE_ADDR

$_config['security']['querysafe']['status']	= 1;	// Enable the SQL security detection, prevent the SQL injection attacks automatically
$_config['security']['querysafe']['dfunction']	= array('load_file','hex','substring','if','ord','char');
$_config['security']['querysafe']['daction']	= array('@','intooutfile','intodumpfile','unionselect','(select', 'unionall', 'uniondistinct');
$_config['security']['querysafe']['dnote']	= array('/*','*/','#','--','"');
$_config['security']['querysafe']['dlikehex']	= 1;
$_config['security']['querysafe']['afullnote']	= 0;
$_config['security']['onlyremoteaddr']	= 0;		// Show only Remote IP address

$_config['security']['creditsafe']['second'] 	= 0;	// Open the user credit info security, can prevent the concurrent point flood. If it is greater than times(freequency)/second then the operation could not be committed
$_config['security']['creditsafe']['times'] 	= 10;

$_config['security']['fsockopensafe']['port']	= array(80,443); // Enabled ports for REMOTE downloads by fsockopen

$_config['admincp']['founder']		= '1';	// Site Founder: site management background with the highest authority, each site can be set to one or more founders
						// You can use the user uid or user name. Separate multiple users with a comma;
$_config['admincp']['forcesecques']	= 0;	// Force managers to set the security question for access to the system settings: 0 = no, 1 = yes [secure]
$_config['admincp']['checkip']		= 1;	// Back office operations are verified administrator IP, 1 = yes [secure], 0 = no. Only the administrator can not log in from time to set 0.
$_config['admincp']['runquery']		= 0;	// Allow to run SQL statements in the background: 1 = yes, 0 = no [secure]
$_config['admincp']['dbimport']		= 1;	// Allow the data recovery in the background: 1 = yes, 0 = no [secure]
$_config['admincp']['mustlogin']	= 1;	// Whether to allow background login only after foreground login: 1=Yes [Secure], 0=No

/**
 * Remote call function module system
 */

// Remote call: master switch 0 = off, 1 = On
$_config['remote']['on'] = 0;

// Remote call: the program directory name. For security reasons, you can change the directory name, change is completed, the actual directory manually modify the program
$_config['remote']['dir'] = 'remote';

// Remote call: Communication key. for the client and the server communication encryption. length of not less than 32
//          default value of $_config ['security']['authkey'] is md5, you can also manually specify the$_config['remote']['appkey'] = md5($_config['security']['authkey']);
$_config['remote']['appkey'] = md5($_config['security']['authkey']);

// Remote call: Open external cron task. within the system no longer running cron, cron task activated by an external program
$_config['remote']['cron'] = 0;

// $_GET|$_POST compatibility processing. 0 is off, 1 is on, Turned to $_G['gp_xx'](xx is a Variable name, $_GET and $_POST Collection of all variable names), Value has been addslashes() treated
$_config['input']['compatible'] = 1;

// Addon Setting
//$_config['addonsource'] = 'xx1';
//$_config['addon'] = array(
//    'xx1' => array(
//	'website_url' => 'http://127.0.0.1/AppCenter',
//	'download_url' => 'http://127.0.0.1/AppCenter/index.php',
//	'download_ip' => '',
//	'check_url' => 'http://127.0.0.1/AppCenter/?ac=check&file=',
//	'check_ip' => ''
//    )
//);

//-----------------------------------------------------------------------
// Multi-Lingual support by Valery Votintsev
//-----------------------------------------------------------------------
// "icon" - flag image file name;
// "name" - language name in NATIONAL language;
// "title" - language name in ENGLISH language;
// "dir" - text direction:
//	'ltr' (Left To Right) 
//	'rtl' (Right To Left), i.e for Arabic, Hebrew, Urdu, etc.
//-----------------------------------------------------------------------
// Uncomment a language line for enable the language!
// Comment a language line that is not required!!!
//
// Enabled Language List:

$_config['languages']['ar'] = array('icon'=>'ar.gif', 'name'=>'??????????????', 'title'=>'Arabic', 'dir'=>'rtl', 'code'=>'ar-AE');
$_config['languages']['de'] = array('icon'=>'de.gif', 'name'=>'Deutsch', 'title'=>'German', 'dir'=>'ltr', 'code'=>'de-DE');
$_config['languages']['en'] = array('icon'=>'en.gif', 'name'=>'English', 'title'=>'English', 'dir'=>'ltr', 'code'=>'en-GB');
$_config['languages']['es'] = array('icon'=>'es.gif', 'name'=>'Espa??ol', 'title'=>'Spanish', 'dir'=>'ltr', 'code'=>'es-ES');
$_config['languages']['fa'] = array('icon'=>'fa.gif', 'name'=>'??????????', 'title'=>'Persian', 'dir'=>'rtl', 'code'=>'fa-IR');
$_config['languages']['fr'] = array('icon'=>'fr.gif', 'name'=>'Fran??ais', 'title'=>'French', 'dir'=>'ltr', 'code'=>'fr-FR');
$_config['languages']['kr'] = array('icon'=>'kr.gif', 'name'=>'?????????', 'title'=>'Korean', 'dir'=>'ltr', 'code'=>'ko-KO');
$_config['languages']['la'] = array('icon'=>'la.gif', 'name'=>'?????????????????????', 'title'=>'Lao', 'dir'=>'ltr', 'code'=>'lo-LA');
$_config['languages']['pl'] = array('icon'=>'pl.gif', 'name'=>'Polski', 'title'=>'Polish', 'dir'=>'ltr', 'code'=>'pl-PL');
$_config['languages']['ru'] = array('icon'=>'ru.gif', 'name'=>'??????????????', 'title'=>'Russian', 'dir'=>'ltr', 'code'=>'ru-RU');
$_config['languages']['sc'] = array('icon'=>'zh.gif', 'name'=>'????????????', 'title'=>'Simplified Chinese', 'dir'=>'ltr', 'code'=>'zh-CN');
$_config['languages']['tc'] = array('icon'=>'tw.gif', 'name'=>'????????????', 'title'=>'Traditional Chinese', 'dir'=>'ltr', 'code'=>'zh-TW');
$_config['languages']['th'] = array('icon'=>'th.gif', 'name'=>'?????????????????????', 'title'=>'Thai', 'dir'=>'ltr', 'code'=>'th-TH');
$_config['languages']['tr'] = array('icon'=>'tr.gif', 'name'=>'T??rk??e', 'title'=>'Turkish', 'dir'=>'ltr', 'code'=>'tr-TR');
$_config['languages']['vn'] = array('icon'=>'vn.gif', 'name'=>'Ti???ng Vi???t', 'title'=>'Vietnamese', 'dir'=>'ltr', 'code'=>'vi-VN');
$_config['languages']['ui'] = array('icon'=>'ui.gif', 'name'=>'????????????', 'title'=>'Uighur', 'dir'=>'rtl', 'code'=>'ui-UY');

$_config['detect_language'] = true;	// Auto-detect user language: true|false
$_config['enable_multilingual'] = true;	// Enable/Disable multi-lingual feature
$_config['language_horizontal'] = false; // Arrange Language List Horizontally
$_config['login_strike'] = 5; // Maximum number of login tries inside 15 minutes

//  CONFIG CACHE
$_config['cache']['type'] 		= 'file';	// Cache type: file = file cache, sql = database cache

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
 * $_config['db']['1']['dbcharset'] = 'utf8';// Character Set, 'utf8mb4' for MySQL >= 5.5.3
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
$_config['db'][1]['dbpw'] 	= '';		// DB User Password
$_config['db'][1]['dbcharset'] 	= 'utf8mb4';	// DB Charset, 'utf8mb4' for MySQL >= 5.5.3
$_config['db'][1]['pconnect'] 	= 0;		// Enable DB persistent connection
$_config['db'][1]['dbname']  	= 'ultrax';	// DB Name
$_config['db'][1]['tablepre'] 	= 'pre_';	// DB Table Prefix

/**
 * Database from the server settings (slave, read-only), support for multiple sets of server settings, when set to multiple servers, the system using each random
 * @example
 * $_config['db']['1']['slave']['1']['dbhost'] = 'localhost';
 * $_config['db']['1']['slave']['1']['dbuser'] = 'root';
 * $_config['db']['1']['slave']['1']['dbpw'] = 'root';
 * $_config['db']['1']['slave']['1']['dbcharset'] = 'utf8';//'utf8mb4' for MySQL >= 5.5.3
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

/*
 * Database engine, set according to your own database engine, the default is innodb after 3.5, and it was myisam before
 * For users who upgrade from 3.4 to 3.5 and have not converted the database engine, set it to myisam
 */
$_config['db']['common']['engine'] = 'innodb';

/**
 * Memory server optimization settings
 * The following settings need to be PHP extension support component, which memcache priority over other settings,
 * can not be enabled when the memcache automatically when you open the other two optimization models)
 */

//Memory variable prefix, change, to avoid reference to the same server process disorder
$_config['memory']['prefix'] = 'discuz_';

/* Redis settings, Requires for this PHP extension is supported, timeout No verification of the role of the parameter */
$_config['memory']['redis']['server'] = '';
$_config['memory']['redis']['port'] = 6379;
$_config['memory']['redis']['pconnect'] = 1;
$_config['memory']['redis']['timeout'] = 0;
$_config['memory']['redis']['requirepass'] = '';
$_config['memory']['redis']['db'] = 0;				//Here you can fill in numbers from 0 to 15, each site uses a different db
/**
 * This configuration has been cancelled. By default, the array is encoded and saved using php serializer, and other data is saved directly as it is.
 */
// $_config['memory']['redis']['serializer'] = 1;

$_config['memory']['memcache']['server'] = '';	// memcache server address
$_config['memory']['memcache']['port'] = 11211;	// memcache server port
$_config['memory']['memcache']['pconnect'] = 1;	// memcache persistent connection
$_config['memory']['memcache']['timeout'] = 1;	// memcache server connection timeout

$_config['memory']['memcached']['server'] = '';			// memcached server address
$_config['memory']['memcached']['port'] = 11211;		// memcached server port


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
// Local file reading mode; mode 2 is the most memory-saving method, but does not support multi-threaded downloading
// If you want to play the attachment URL address and media attachment, you need to select the reading mode 1 or 4 that supports the Range parameter. Other modes will cause abnormal video playback in some browsers.
// 1=fread 2=readfile 3=fpassthru 4=fpassthru+multiple
$_config['download']['readmod'] = 2;

// Enable X-Sendfile (required server support) 0=close 1=nginx 2=lighttpd 3=apache
$_config['download']['xsendfile']['type'] = 0;

// Enable nginx X-sendfile, the forum attachment directory path to the virtual map, use the "/" at the end
$_config['download']['xsendfile']['dir'] = '/down/';

// Page output settings
$_config['output']['charset'] 		= 'utf-8';	// Page character set
$_config['output']['forceheader']	= 1;		// Force the output in defined character set, used to avoid page content garbled
$_config['output']['gzip'] 		= 0;		// Use Gzip compression for output
$_config['output']['tplrefresh'] 	= 1;		// Automatically refresh templates: 0 = off, 1 = On
$_config['output']['language'] 		= 'zh_cn';	// Page language zh_cn/zh_tw/en/fr/etc...
$_config['output']['staticurl'] 	= 'static/';	// Path to the site static files, use "/" at the end
$_config['output']['ajaxvalidate']	= 0;		// Strictly verify the authenticity for Ajax pages: 0 = off, 1 = On
$_config['output']['upgradeinsecure']	= 0;		// Request the browser to upgrade the HTTP internal link to HTTPS in the HTTPS environment. This option affects external domain resource links and conflicts with custom CSP. 0=off (default), 1=on
$_config['output']['css4legacyie']	= 1;		// Whether to load css files compatible with lower versions of IE 0 = off, 1 = on (default), off can prevent modern browsers from loading unnecessary data, but the display effect of IE6-8 will be greatly affected, and IE9 will be less affected .

// COOKIE settings
$_config['cookie']['cookiepre'] 	= 'discuz_'; 	// COOKIE prefix
$_config['cookie']['cookiedomain'] 	= ''; 		// COOKIE domain
$_config['cookie']['cookiepath'] 	= '/'; 		// COOKIE path

// Site Security Settings
$_config['security']['authkey']		= 'asdfasfas';	// Site encryption key
$_config['security']['urlxssdefend']	= true;		// Use own URL XSS defense
$_config['security']['attackevasive']	= 0;		// CC Attack Defense 1 | 2 | 4
$_config['security']['onlyremoteaddr']	= 1;		// User IP address acquisition method 0=trust HTTP_CLIENT_IP, HTTP_X_FORWARDED_FOR (default) 1=only trust REMOTE_ADDR (recommended)
							// Considering the risk of preventing IP credential stuffing attacks and IP restriction policy failure, it is recommended that you set it to 1. Users using CDN can configure ipgetter options
							// Security reminder: due to the independence of UCenter and UC_Client, you need to define constants in the two applications separately to enable the function

$_config['security']['useipban']		= 1;	// Whether to enable the function of banning IP, high-load sites can release this function to HTTP Server/CDN/SLB/WAF to reduce server loading
$_config['security']['querysafe']['status']	= 1;	// Enable the SQL security detection, prevent the SQL injection attacks automatically
$_config['security']['querysafe']['dfunction']	= array('load_file','hex','substring','if','ord','char');
$_config['security']['querysafe']['daction']	= array('@','intooutfile','intodumpfile','unionselect','(select', 'unionall', 'uniondistinct');
$_config['security']['querysafe']['dnote']	= array('/*','*/','#','--','"');
$_config['security']['querysafe']['dlikehex']	= 1;
$_config['security']['querysafe']['afullnote']	= 0;

$_config['security']['creditsafe']['second'] 	= 0;	// Open the user credit info security, can prevent the concurrent point flood. If it is greater than times(freequency)/second then the operation could not be committed
$_config['security']['creditsafe']['times'] 	= 10;

$_config['security']['fsockopensafe']['port']	= array(80, 443); // Enabled ports for REMOTE downloads by fsockopen
$_config['security']['fsockopensafe']['ipversion']	= array('ipv6', 'ipv4');	//fsockopen valid IP protocol
$_config['security']['fsockopensafe']['verifypeer']	= false;	// Whether fsockopen verifies the validity of the certificate, enabling it can improve security, but you need to solve the certificate configuration problem by yourself

$_config['security']['error']['showerror'] = '1';	//Whether to display error details when the database or system is seriously abnormal, 0=do not display (safer), 1=display detailed information (default), 2=only display the error itself
$_config['security']['error']['guessplugin'] = '1';	//Whether to guess the plug-in that may report an error when the database or system is seriously abnormal, 0=no guess, 1=guess (default)

$_config['admincp']['founder']		= '1';	// Site Founder: site management background with the highest authority, each site can be set to one or more founders
						// You can use the user uid or user name. Separate multiple users with a comma;
$_config['admincp']['forcesecques']	= 0;	// Force managers to set the security question for access to the system settings: 0 = no, 1 = yes [secure]
$_config['admincp']['checkip']		= 1;	// Back office operations are verified administrator IP, 1 = yes [secure], 0 = no. Only the administrator can not log in from time to set 0.
$_config['admincp']['runquery']		= 0;	// Allow to run SQL statements in the background: 1 = yes, 0 = no [secure]
$_config['admincp']['dbimport']		= 1;	// Allow the data recovery in the background: 1 = yes, 0 = no [secure]
$_config['admincp']['mustlogin']	= 1;	// Whether to allow background login after foreground login 1=Yes[Security] 0=No

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
// Considering security risks, this switch has been restored to the default value of 0 since version X3.5, and this function may be canceled in subsequent versions, please pay attention to developers
$_config['input']['compatible'] = 0;

/**
 * IP database detection extension
 * $_config['ipdb'] - IP detection setting. It can be used to set a custom IP detection database. You are also welcome to pull request your own IP library.
 * For the setting of the extended IP library, please use the format:
 * 		$_config['ipdb']['Extended ip library name']['Setting item name'] = 'value';
 * for example:
 * 		$_config['ipdb']['redis_ip']['server'] = '172.16.1.8';
 */
$_config['ipdb']['setting']['fullstack'] = '';	// The full-stack IP library used by the system has the highest priority
$_config['ipdb']['setting']['default'] = '';	// Default IP library (Chinese)
$_config['ipdb']['setting']['ipv4'] = 'tiny';	// IPv4 library used by the system. Leave blank to use the default library.
$_config['ipdb']['setting']['ipv6'] = 'v6wry';	// IPv6 library used by the system. Leave blank to use the default library.

/**
 * Get IP extension
 * Considering that different CDN service providers provide different strategies for judging CDN source IP, you can define your own service provider's IP acquisition extension.
 * If it is empty, the default system will be used. If it is not empty, the get method in source/class/ip/getter_value.php will be called automatically to obtain the IP address.
 * The system provides dnslist (IP anti-analysis domain name whitelist), serverlist (IP address whitelist, supports CIDR), header extension, please refer to the extension file for details.
 * Performance tip: The two built-in tools rely on RDNS, CIDR judgment and other operations, which have a great impact on system efficiency. It is recommended to use HTTP Server for large traffic sites
 * Or logic such as IP black and white list on CDN/SLB/WAF to implement CDN IP address white list, and then use header extension to specify the IP header provided by the service provider.
 * Security tip: Due to the independence and scalability of UCenter and UC_Client, you need to modify the relevant business logic of related files separately to realize this function.
 * $_config['ipgetter'] can be used as a custom IP acquisition model setting option except setting, and you are welcome to PR your own extended IP acquisition model.
 * Extended IP acquisition model settings, please use the format:
 * 		$_config['ipgetter']['Get IP extension name']['setting item name'] = 'value';
 * For example:
 * 		$_config['ipgetter']['onlinechk']['server'] = '100.64.10.24';
 */
$_config['ipgetter']['setting'] = 'header';
$_config['ipgetter']['header']['header'] = 'HTTP_X_FORWARDED_FOR';
$_config['ipgetter']['iplist']['header'] = 'HTTP_X_FORWARDED_FOR';
$_config['ipgetter']['iplist']['list']['0'] = '127.0.0.1';
$_config['ipgetter']['dnslist']['header'] = 'HTTP_X_FORWARDED_FOR';
$_config['ipgetter']['dnslist']['list']['0'] = 'comsenz.com';

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

$_config['languages']['ar'] = array('icon'=>'ar.gif', 'name'=>'العربية', 'title'=>'Arabic', 'dir'=>'rtl', 'code'=>'ar-AE');
$_config['languages']['de'] = array('icon'=>'de.gif', 'name'=>'Deutsch', 'title'=>'German', 'dir'=>'ltr', 'code'=>'de-DE');
$_config['languages']['en'] = array('icon'=>'en.gif', 'name'=>'English', 'title'=>'English', 'dir'=>'ltr', 'code'=>'en-GB');
$_config['languages']['es'] = array('icon'=>'es.gif', 'name'=>'Español', 'title'=>'Spanish', 'dir'=>'ltr', 'code'=>'es-ES');
$_config['languages']['fa'] = array('icon'=>'fa.gif', 'name'=>'Farsi', 'title'=>'Persian', 'dir'=>'rtl', 'code'=>'fa-IR');
$_config['languages']['fr'] = array('icon'=>'fr.gif', 'name'=>'Français', 'title'=>'French', 'dir'=>'ltr', 'code'=>'fr-FR');
$_config['languages']['kr'] = array('icon'=>'kr.gif', 'name'=>'한국어', 'title'=>'Korean', 'dir'=>'ltr', 'code'=>'ko-KO');
$_config['languages']['la'] = array('icon'=>'la.gif', 'name'=>'ພາສາລາວ', 'title'=>'Lao', 'dir'=>'ltr', 'code'=>'lo-LA');
$_config['languages']['pl'] = array('icon'=>'pl.gif', 'name'=>'Polski', 'title'=>'Polish', 'dir'=>'ltr', 'code'=>'pl-PL');
$_config['languages']['ru'] = array('icon'=>'ru.gif', 'name'=>'Русский', 'title'=>'Russian', 'dir'=>'ltr', 'code'=>'ru-RU');
$_config['languages']['sc'] = array('icon'=>'zh.gif', 'name'=>'简体中文', 'title'=>'Simplified Chinese', 'dir'=>'ltr', 'code'=>'zh-CN');
$_config['languages']['tc'] = array('icon'=>'tw.gif', 'name'=>'繁體中文', 'title'=>'Traditional Chinese', 'dir'=>'ltr', 'code'=>'zh-TW');
$_config['languages']['th'] = array('icon'=>'th.gif', 'name'=>'ภาษาไทย', 'title'=>'Thai', 'dir'=>'ltr', 'code'=>'th-TH');
$_config['languages']['tr'] = array('icon'=>'tr.gif', 'name'=>'Türkçe', 'title'=>'Turkish', 'dir'=>'ltr', 'code'=>'tr-TR');
$_config['languages']['vn'] = array('icon'=>'vn.gif', 'name'=>'Tiếng Việt', 'title'=>'Vietnamese', 'dir'=>'ltr', 'code'=>'vi-VN');
$_config['languages']['ui'] = array('icon'=>'ui.gif', 'name'=>'Uyghur', 'title'=>'Uighur', 'dir'=>'rtl', 'code'=>'ui-UY');

$_config['detect_language'] = true;	// Auto-detect user language: true|false
$_config['enable_multilingual'] = true;	// Enable/Disable multi-lingual feature
$_config['language_horizontal'] = false; // Arrange Language List Horizontally


//  CONFIG CACHE
$_config['cache']['type'] 		= 'file';	// Cache type: file = file cache, sql = database cache

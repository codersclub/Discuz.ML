||======================================||
|| International Discuz! X upgrade info ||
||======================================||
|| by Valery Votintsev at sources.ru    ||
||======================================||

This document is designed to help you to upgrade your
current version of any Comsenz product (not Discuz!X Serie)
to the latest Discuz! X version.

This upgrade program can also be used for upgrading any previous
Discuz!X versions to the latest version.

The latest original Discuz!X version can be found at:
http://download.comsenz.com/DiscuzX/3.0/

Before you start the upgrade process,
be sure to read step by step the following instructions:

ATTENTION!!!
If you want to use this ENGLISH package,
you MUST replace all the original /utility/ folder
with this one!


1. Before the upgrade, in order to ensure the correct processing,
   it is strongly recommended to backup all the original data,
   and current database!
   We can not provide any technical support for customers who
   did not make a backup before the upgrade!
   
2. Typically, our upgrade program is update.php,
   it is placed in the ./utility/ directory of the product release.

3. In most cases, after you have upgraded to Discuz! X products,
   most of features at your site may not work properly.
   You have to log in into your admin-center and update all the Cache!

4. After a successful upgrade, please delete the update program
   to avoid possible security problems.



 --------------------------------------
 Upgrade procedure steps
 --------------------------------------

1. Shutdown your curent system.
   Close an access to your site from Admin-Center.
   Backup all the files and the database.

2. Upload the latest version of Discuz!X to your site,
   overwriting old files.

3. Upload all the files and subdirectories from the /utility/
   directory into your site /install/ directory.
   Ensure that the /install/ directory contains the latest installer!

4. Edit your /config/config_global.php file.
   Copy the next variables from config_global_default.php
   to the end of config_global.php
   (only if this variables not presents in your config!):

//-----------------------------------------------------------------------
// Multi-Lingual support by Valery Votintsev
//-----------------------------------------------------------------------
// "dir" - text direction:
//	'ltr' (Left To Right) 
//	'rtl' (Right To Left), i.e for Arabic, Hebrew, Urdu, etc.
//-----------------------------------------------------------------------
// Uncomment a language line for enable the language!
// Comment a language line that is not required!!!
//
// Enabled Language List:

$_config['languages'] = array(
//	'ar' => array('icon'=>'ar.gif', 'name'=>'Arabic', 'title'=>'Arabic', 'dir'=>'rtl'),
//	'zh' => array('icon'=>'zh.gif', 'name'=>'Chinese', 'title'=>'Arabic', 'dir'=>'ltr'),
//	'de' => array('icon'=>'de.gif', 'name'=>'Deutsch', 'title'=>'Arabic', 'dir'=>'ltr'),
	'en' => array('icon'=>'en.gif', 'name'=>'English', 'title'=>'Arabic', 'dir'=>'ltr'),
//	'ru' => array('icon'=>'ru.gif', 'name'=>'Russian', 'title'=>'Arabic', 'dir'=>'ltr'),
//	'th' => array('icon'=>'th.gif', 'name'=>'Thai', 'title'=>'Arabic', 'dir'=>'ltr'),
//	'vn' => array('icon'=>'vn.gif', 'name'=>'Vietnamese', 'title'=>'Arabic', 'dir'=>'ltr'),
);
$_config['detect_language'] = true;	// Auto-detect user language: true|false

   Check the default system language value:

$_config['output']['language'] 		= 'en';		// Page language en/zh_cn/zh_tw


5. Visit http://your_domain/install/update.php

6. Follow to the program prompts until completion of
   all the upgrade processes.



 --------------------------------------
 Upgrade Troubleshooting
 --------------------------------------

 If you encounter any problems during the upgrade process,
 this can be resolved using the following channels:

1. Our official help and support forum
   http://www.discuz.net

2. View detailed update guidance documents
   http://faq.comsenz.com/category-202

3. International (Multi-lingual) version discussion forum
   http://codersclub.org/discuzx/

4. International support and help forum
   http://msg2me.com

5. Commercial users can purchase a service by phone calls,
   MSN, QQ, forums for technical support and other ways.

||=======================================||
|| Discuz! ML upgrade info               ||
||=======================================||
|| by Valery Votintsev at codersclub.org ||
||=======================================||

This document is designed to help you to upgrade your
current version of Comsenz Discuz!X to the latest Discuz! ML version.

The latest original Discuz!X version can be found at:
http://download.comsenz.com/DiscuzX/

The latest Discuz!ML version can be found at:
http://discuz.ml/

Before you start the upgrade process,
be sure to read carefully the following instruction step by step:

1. Before the upgrade, in order to ensure the correct processing,
   it is STRONGLY RECOMMENDED to backup all the original data,
   and your current database!
   We can not provide any technical support for customers who
   did not make a backup before the upgrade!
   
2. Our upgrade program is named "update.php",
   and it is placed in the /utility/ directory of the product release.

3. In most cases, after you have upgraded to Discuz! ML products,
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
   Backup your database.

2. Upload the latest version of Discuz!ML to your site,
   overwriting old files.

3. Upload the "update.php" file from the /utility/
   directory to /install/ directory at your site.
   Ensure that the /install/ directory contains the
   latest Discuz!ML installer!

4. Edit your /config/config_global.php file.
   Copy the next variables from config_global_default.php
   to the end of config_global.php
   (only if this variables not presents in your config!):

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

$_config['languages'] = array(
	'ar' => array('icon'=>'ar.gif', 'name'=>'العربية', 'title'=>'Arabic', 'dir'=>'rtl', 'code'=>'ar-AE'),
	'de' => array('icon'=>'de.gif', 'name'=>'Deutsch', 'title'=>'German', 'dir'=>'ltr', 'code'=>'de-DE'),
	'en' => array('icon'=>'en.gif', 'name'=>'English', 'title'=>'English', 'dir'=>'ltr', 'code'=>'en-GB'),
	'es' => array('icon'=>'es.gif', 'name'=>'Español', 'title'=>'Spanish', 'dir'=>'ltr', 'code'=>'es-ES'),
	'fr' => array('icon'=>'fr.gif', 'name'=>'Français', 'title'=>'French', 'dir'=>'ltr', 'code'=>'fr-FR'),
	'kr' => array('icon'=>'kr.gif', 'name'=>'한국어', 'title'=>'Korean', 'dir'=>'ltr', 'code'=>'ko-KO'),
	'pl' => array('icon'=>'pl.gif', 'name'=>'Polski', 'title'=>'Polish', 'dir'=>'ltr', 'code'=>'pl-PL'),
	'ru' => array('icon'=>'ru.gif', 'name'=>'Русский', 'title'=>'Russian', 'dir'=>'ltr', 'code'=>'ru-RU'),
	'sc' => array('icon'=>'zh.gif', 'name'=>'简体中文', 'title'=>'Simplified Chinese', 'dir'=>'ltr', 'code'=>'zh-CN'),
	'tc' => array('icon'=>'tw.gif', 'name'=>'繁體中文', 'title'=>'Traditional Chinese', 'dir'=>'ltr', 'code'=>'zh-TW'),
	'th' => array('icon'=>'th.gif', 'name'=>'ภาษาไทย', 'title'=>'Thai', 'dir'=>'ltr', 'code'=>'th-TH'),
	'tr' => array('icon'=>'tr.gif', 'name'=>'Türkçe', 'title'=>'Turkish', 'dir'=>'ltr', 'code'=>'tr-TR'),
	'vn' => array('icon'=>'vn.gif', 'name'=>'Tiếng Việt', 'title'=>'Vietnamese', 'dir'=>'ltr', 'code'=>'vi-VN'),
	'ui' => array('icon'=>'ui.gif', 'name'=>'Uyghur', 'title'=>'Uighur', 'dir'=>'rtl', 'code'=>'ui-UY'),
);

$_config['detect_language'] = true;	// Auto-detect user language: true|false
$_config['enable_multilingual'] = true;	// Enable/Disable multi-lingual feature
$_config['language_horizontal'] = false; // Arrange Language List Horizontally

//  CONFIG CACHE
$_config['cache']['type'] 		= 'file';	// Cache type: file = file cache, sql = database cache



5. Visit your site: http://your_domain/install/update.php

6. Follow the program prompts until the upgrade process is finished.

7. Go to your AdminCP and update all the cache, including the CSS cache.

8. Remove the "/install/index.php" and "/install/update.php" from your site!

9. Enjoy!


 --------------------------------------
 Upgrade Troubleshooting
 --------------------------------------

 If you encounter any problems during the upgrade process,
 you can use the next channels to resolved problems:

1. Discuz!ML (Multi-lingual) version discussion forum
   http://codersclub.org/discuzx/

2. Official Chinese help and support forum
   http://www.discuz.net

3. View detailed update guidance documents
   http://faq.comsenz.com/category-202

4. Commercial users can purchase a technical support service
   by phone calls, MSN, QQ, Forum message and any other ways.

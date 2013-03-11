<?php
//	English by Valery Votintsev at sources.ru
define('UC_VERNAME', 'English Version');

$lang = array(

	'SC_GBK'		=> 'Simplified Chinese GBK',
	'TC_BIG5'		=> 'Traditional Chinese BIG5',
	'SC_UTF8'		=> 'Simplified Chinese  UTF8',
	'TC_UTF8'		=> 'Traditional Chinese UTF8',
	'EN_ISO'		=> 'ENGLISH ISO8859',
	'EN_UTF8'		=> 'ENGLISH UTF-8',

	'title_install'		=> SOFT_NAME.' Installation Wizard',
	'agreement_yes'		=> 'Accept',
	'agreement_no'		=> 'Not Accept',
	'notset'		=> 'Unlimited',

	'message_title'		=> 'Tips',
	'error_message'		=> 'Error',
	'message_return'	=> 'Return',
	'return'		=> 'Return',
	'install_wizard'	=> 'Install Wizard',
	'config_nonexistence'	=> 'Configuration File is not exists',
	'nodir'			=> 'Folder is not exists',
	'short_open_tag_invalid'	=> 'Sorry, please set "short_open_tag" to On in php.ini.',
	'redirect'		=> 'The Installation will run automatically.<br>If you browser do not jump automatically, please click here',

	'database_errno_2003'	=> 'Unable to connect to database, please ensure your database is running and check your database configuration',
	'database_errno_1044'	=> 'Unable to create new database, please check your database name',
	'database_errno_1045'	=> 'Unable to connect to database, please check your username and password',
	'database_errno_1064'	=> 'SQL ERROR',

	'dbpriv_createtable'	=> 'No "CREATE TABLE" Permission',
	'dbpriv_insert'		=> 'No "INSERT" Permission',
	'dbpriv_select'		=> 'No "SELECT" Permission',
	'dbpriv_update'		=> 'No "UPDATE" Permission',
	'dbpriv_delete'		=> 'No "DELETE" Permission',
	'dbpriv_droptable'	=> 'No "DROP TABLE" Permission',

	'db_not_null'		=> 'You have already installed UCenter, continue will clean all old data.',
	'db_drop_table_confirm'	=> 'Confirm to install and clean all old data?',

	'writeable'		=> 'Writeable',
	'unwriteable'		=> 'Unwriteable',
	'old_step'		=> 'Prev Step',
	'new_step'		=> 'Next Step',

	'database_errno_2003'	=> 'Unable to connect to database, please ensure your database is running and check your database configuration',
	'database_errno_1044'	=> 'Unable to create new database, please check your database name',
	'database_errno_1045'	=> 'Unable to connect to database, please check your username and password',

	'step_env_check_title'	=> 'Start the Installation',
	'step_env_check_desc'	=> 'Check Environment and File Permission',
	'step_db_init_title'	=> 'Installing Database',
	'step_db_init_desc'	=> 'Installing Data...',
	
	'step1_file'		=> 'Filename',
	'step1_need_status'	=> 'Required',
	'step1_status'		=> 'Current',
	'not_continue'		=> 'Please solve the problems marked in red, and then try again',

	'tips_dbinfo'		=> 'Input Database Information',
	'tips_dbinfo_comment'	=> '',
	'tips_admininfo'	=> 'Input Administartor Information',
	'tips_admininfo_comment'	=> 'Please remember UCenter Founder\'s Password, it will be needed to login UCenter.',
	'step_ext_info_title'	=> 'Installed Successfully',
	'step_ext_info_desc'	=> 'Click here to Login',

	'ext_info_succ'		=> 'Installed Successfully',
	'install_locked'	=> 'Installation is Locked due to previous installation, if you want to install again, please delete <br /> '.str_replace(ROOT_PATH, '', $lockfile),
	'error_quit_msg'	=> 'You must solve the problem above',

	'step_app_reg_title'	=> 'Setup Environment',
	'step_app_reg_desc'	=> 'Check Server and Set UCenter',
	'tips_ucenter'		=> 'Please fill in related info of UCenter',
	'tips_ucenter_comment'	=> 'UCenter is a core software of Comsenz. Discuz! Board is required this program. If you have installed UCenter, please fill the Information of UCenter, Or please goto <a href="http://www.discuz.com/" target="blank">Comsenz Products Center</a> to download UCenter and install it, then continue',

	'advice_mysql_connect'		=> 'Please make sure to load mysql module correctly',
	'advice_fsockopen'		=> 'You need to set "allow_url_fopen" as on in "php.ini". Please contact space provider to make sure it is enabled',
	'advice_gethostbyname'		=> '"gethostbyname" function is needed. Please contact space provider to make sure it is enabled',
	'advice_file_get_contents'	=> 'You need to set "allow_url_fopen" as on in "php.ini". Please contact space provider to make sure it is enabled',
	'advice_xml_parser_create'	=> 'This function need XML support in PHP. Please contact space provider to make sure it is enabled',

	'ucurl'			=> 'UCenter\'s URL',
	'ucpw'			=> 'UCenter Founder Password',

	'tips_siteinfo'		=> 'Fill in Site Information',
	'sitename'		=> 'Site Name',
	'siteurl'		=> 'Site URL',

	'forceinstall'			=> 'Force Install',
	'dbinfo_forceinstall_invalid'	=> 'You may modify table prefix to prevent data loss if current database contains data with the same table prefix; force install will erase all the previous data!',

	'click_to_back'			=> 'Click here to return back',
	'adminemail'			=> 'System Email',
	'adminemail_comment'		=> 'Use to send script error reports',
	'dbhost_comment'		=> 'Database Host, usually: localhost',
	'tablepre_comment'		=> 'Please modify prefix if you want to share this database with multiple installations',
	'forceinstall_check_label'	=> 'Force install, i want to erase previous data!!!',

	'uc_url_empty'			=> 'UCenter URL empty, please return to fill',
	'uc_url_invalid'		=> 'Invalid URL Format',
	'uc_url_unreachable'		=> 'UCenter URL wrong, please check',
	'uc_ip_invalid'			=> 'Cannot resolve domain, please fill in website IP</font>',
	'uc_admin_invalid'		=> 'Wrong UC founder password, please try again',
	'uc_data_invalid'		=> 'Connect Failed, please check UC URL',
	'ucenter_ucurl_invalid'		=> 'UC URL empty or wrong format, please check',
	'ucenter_ucpw_invalid'		=> 'UC founder password empty or wrong format, please check',
	'siteinfo_siteurl_invalid'	=> 'Site URL empty or wrong format, please check',
	'siteinfo_sitename_invalid'	=> 'Site name empty or wrong format, please check',
	'dbinfo_dbhost_invalid'		=> 'DB Host empty or wrong format, please check',
	'dbinfo_dbname_invalid'		=> 'DB Name empty or wrong format, please check',
	'dbinfo_dbuser_invalid'		=> 'DB username empty or wrong format, please check',
	'dbinfo_dbpw_invalid'		=> 'DB password empty or wrong format, please check',
	'dbinfo_adminemail_invalid'	=> 'System Email empty or wrong format, please check',
	'dbinfo_tablepre_invalid'	=> 'Invalid prefix, can not begin with nubmber, and can\'t contain "."',
	'admininfo_username_invalid'	=> 'Admin username empty or wrong format, please check',
	'admininfo_email_invalid'	=> 'Admin Email empty or wrong format, please check',
	'admininfo_ucfounderpw_invalid'	=> 'Admin password empty, please fill',
	'admininfo_ucfounderpw2_invalid'	=> 'Password not match, please check',

	'username'			=> 'Admin Username',
	'email'				=> 'Admin Email',
	'password'			=> 'Admin Password',
	'password_comment'		=> 'Admin Password cannot be empty',
	'password2'			=> 'Repeat the Password',

	'admininfo_invalid'		=> 'Admin info incomplete, please check admin username, pwd, and email',
	'dbname_invalid'		=> 'DB name empty, please fill in correct database name',
	'admin_username_invalid'	=> 'Invalid username, length cant exceed 15 characters, usually Chinese, or Alphanumeric, cant contain special characters',
	'admin_password_invalid'	=> 'Password not match, please input again',
	'admin_email_invalid'		=> 'Invalid Email, someone used it or invalid type, please change another',
	'admin_invalid'			=> 'Administrator info incomplete, need to fill all',
	'admin_exist_password_error'	=> 'Username exists, if you want to set it as forum admin, please fill in correct password, or change another username',

	'tagtemplates_subject'	=> 'Subject',
	'tagtemplates_uid'	=> 'UID',
	'tagtemplates_username'	=> 'Author',
	'tagtemplates_dateline'	=> 'Date',
	'tagtemplates_url'	=> 'URL',

	'uc_version_incorrect'	=> 'Your UCenter Version is too old, please upgrade it to the latest version. Download English Version: http://www.distown.net/forum-12-1.html, Download UCenter Official Version: http://www.comsenz.com/ .',
	'config_unwriteable'	=> 'Unable to write config file, please set the "config.inc.php" to writeable(777)',

	'install_in_processed'	=> 'Installing...',
	'install_succeed'	=> 'Installed Succesufully, click here to next step',
	'license'		=> '<div class="license"><h1>License</h1>

<p> Copyright (c) 2001-2010, Hong Sing Imagination (Beijing) Co., Ltd. All rights reserved.</p>

<p> Thank you for choosing UCenter product. We hope that our efforts to provide you with a fast and powerful and efficient site solution.</p>

<p> Sing Imagination (Beijing) Technology Co., Ltd. for the UCenter product developers, and they shall have UCenter products copyright. Sing Imagination (Beijing) Technology Co., Ltd. website http://www.comsenz.com, UCenter official website address is http://www.discuz.com, UCenter official forum site at http://www.discuz . net.</p>

<p> UCenter copyright has registered in The Peoples Republic of China National Copyright Administration, copyright law and by international treaties. User: whether individuals or organizations, profit or not, how to use (including study and research purposes), are required to carefully read this agreement, understand, agree to and comply with all the terms of this agreement only after the start using UCenter software.</p>

<p> this License applies and only applies to UCenter 1.x version, Hong Sing Imagination (Beijing) Technology Co., Ltd. has the power of final interpretation of the licensing agreement.</p>

<h3> I. license agreement right </h3>
<ol>
<li> you can fully comply with the end user license agreement, based on the software used in this non-commercial use, without having to pay for software copyright licensing fees.</li>
<li> agreement you can within the constraints and limitations UCenter modify the source code (if provided) or interface styles to suit your site requirements.</li>
<li> you have to use this software to build the site all the members of the information, articles and related information of ownership, and is independent of commitment and legal obligations related to the article content.</li>
<li> a commercial license, you can use this software for commercial applications, while according to the type of license purchased to determine the period of technical support, technical support, technical support form and content, from the moment of purchase, within the period of technical support have a way to get through the specified designated areas of technical support services. Business authorized users have the power to reflect and comment, relevant comments will be a primary consideration, but not necessarily be accepted promise or guarantee.</li>
</ol>

<h3> II. agreement constraints and limitations </h3>
<ol>
<li> business license has not been before, may not use this software for commercial purposes (including but not limited to business sites, business operations, for commercial purpose or profit web site). Purchase of commercial license, please visit http://www.discuz.com reference instructions, call 8610-51657885 for more details.</li>
<li> may not associated with the software or business license for rental, sale, mortgage or grant sub-licenses.</li>
<li> In any case, that no matter how used, whether modified or landscaping, changes to what extent, just use UCenter whole or any part, without the written permission of the page footer Department UCenter name and Sing Imagination (Beijing) Technology Co., Ltd. affiliated website (http://www.comsenz.com, http://www.discuz.com or http://www.discuz.net) the link must be retained, not removed or modified.</li>
<li> prohibited UCenter whole or any part of the basis for the development of any derivative version, modified version or third-party version for redistribution.</li>
<li> If you failed to comply with the terms of this Agreement, your authorization will be terminated by the license rights will be recovered, and bear the corresponding legal responsibility.</li>
</ol>

<h3> III. Limited Warranty and Disclaimer </h3>
<ol>
<li> the software and the accompanying documents as not to provide any express or implied, or guarantee in the form of compensation provided.</li>
<li> user voluntary use of this software, you must understand the risks of using this software, technical services in the not to buy products, we do not promise to provide any form of technical support, use the warrant or assume any use of this software issues related to liability arising.</li>
<li> Sing Imagination (Beijing) Technology Co., Ltd. does not use the software to build the site responsible for articles or information.</li>
</ol>

<p> the UCenter end user license agreement, business license and technical services to the details provided by UCenter exclusive official website. Sing Imagination (Beijing) Technology Co., Ltd. has, without prior notice, modify the license agreement and the power of service price list, the revised agreement or change list from the date of the new authorized user effect.</p>

<p> electronic text form of license agreement as the two sides signed an agreement in writing as a complete and equivalent legal effect. Once you start the installation UCenter, shall be deemed to fully understand and accept the terms of this Agreement, in the enjoyment of the powers conferred by these provisions, while subject to restrictions and limitations related. Acts outside the scope of protocol licensing will be a direct violation of the licensing agreement and constitutes infringement, we have the right to terminate the authorization, shall be ordered to stop the damage, and reserves the power to investigate ?? responsibility.</p></div>',

	'uc_installed'		=> 'You have already installed UCenter. If you want to re-install it, please delete "data/install.lock"',
	'i_agree'		=> 'I Agree',
	'supportted'		=> 'Supported',
	'unsupportted'		=> 'Unsupported',
	'max_size'		=> 'Suported/Max Size',
	'project'		=> 'Project',
	'ucenter_required'	=> 'UCenter Required',
	'ucenter_best'		=> 'UCenter Best',
	'curr_server'		=> 'Current',
	'env_check'		=> 'Check Environment',
	'os'			=> 'Operating System',
	'php'			=> 'PHP Version',
	'attachmentupload'	=> 'Upload Attachment',
	'unlimit'		=> 'Unlimited',
	'version'		=> 'Version',
	'gdversion'		=> 'GD version',
	'allow'			=> 'Allow',
	'unix'			=> 'Unix',
	'diskspace'		=> 'Disk Space',
	'priv_check'		=> 'Check Directory & File Permissions',
	'func_depend'		=> 'Check Depended Functions',
	'func_name'		=> 'Function',
	'check_result'		=> 'Result',
	'suggestion'		=> 'Suggestion',
	'advice_mysql'		=> 'Please check if mysql module is loaded',
	'advice_fopen'		=> 'You have to set "allow_url_fopen" to On in the "php.ini". Please contact space provider to make sure it is enabled',
	'advice_file_get_contents'	=> 'You have to set "allow_url_fopen" to On in the "php.ini". Please contact space provider to make sure it is enabled',
	'advice_xml'		=> 'This function require XML support in PHP. Please contact space provider to make sure it is enabled',
	'none'			=> 'None',

	'dbhost'	=> 'DB Host',
	'dbuser'	=> 'DB User',
	'dbpw'		=> 'DB Password',
	'dbname'	=> 'DB Name',
	'tablepre'	=> 'Table Prefix',

	'ucfounderpw'	=> 'Founder Password',
	'ucfounderpw2'	=> 'Repeat Password',

	'create_table'	=> 'Create Table',
	'succeed'	=> 'Succeed',
);
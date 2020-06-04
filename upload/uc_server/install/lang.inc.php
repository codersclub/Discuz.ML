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
	'copyright'		=> 'Copyright &copy; 2001-'.date('Y').' Tencent Cloud.',
	'license'		=> '<div class="license"><h1>Chinese version license agreement for Chinese users</h1>

<p>Copyright (c) 2001-'.date('Y').', Tencent Cloud Computing (Beijing) Co., Ltd. (formerly Beijing Kangsheng Xinchuang Technology Co., Ltd.) All rights reserved. </p>

<p>Thank you for choosing a UCenter product. We hope that our efforts can provide you with an efficient, fast and powerful site solution. </p>

<p>Beijing Kangsheng Xinchuang Technology Co., Ltd. is the developer of UCenter products and independently owns the copyright of UCenter products according to law. The website of Beijing Comsenz Technology Co., Ltd. is http://www.comsenz.com, the website of UCenter’s official website is http://www.discuz.com, and the website of UCenter’s official discussion area is http://www.discuz.net. </p>

<p>The copyright of UCenter has been registered with the National Copyright Administration of the People's Republic of China, and the copyright is protected by laws and international conventions. Users: Regardless of individual or organization, profit or not, and use (including for learning and research purposes), you must read this agreement carefully, and you can start using UCenter only after understanding, agreeing, and complying with all the terms of this agreement software. </p>

<p>This license agreement is applicable and only applicable to UCenter 1.x version. Beijing Kangsheng Xinchuang Technology Co., Ltd. has the final interpretation right of this license agreement. </p>

<h3>I. Rights Licensed by Agreement</h3>
<ol>
<li>You can use this software for non-commercial purposes on the basis of fully complying with this end user license agreement, without paying software copyright licensing fees. </li>
<li>You may modify the UCenter source code (if provided) or the interface style to suit your website requirements within the constraints and limitations of the agreement. </li>
<li>You have the ownership of all member materials, articles and related information in the website built by using this software, and independently assume the relevant legal obligations related to the content of the articles. </li>
<li>After obtaining the commercial authorization, you can use this software for commercial purposes. At the same time, according to the technical support period, technical support method and technical support content determined in the purchased authorization type, from the moment of purchase, within the technical support period Obtain technical support services within the specified scope through specified methods. Commercial authorized users have the right to reflect and put forward opinions, and relevant opinions will be considered as the first priority, but there is no promise or guarantee that they will be adopted. </li>
</ol>

<h3>II. Restrictions and Limitations of the Agreement</h3>
<ol>
<li>The software may not be used for commercial purposes (including but not limited to corporate websites, commercial websites, profit-making or profit-making websites) without commercial authorization. To purchase a commercial license, please visit http://www.discuz.com for reference, or call 8610-51657885 for details. </li>
<li>The software or commercial licenses associated with it may not be rented, sold, mortgaged or sublicensed. </li>
<li>In any case, regardless of the purpose, whether it has been modified or beautified, and the degree of modification, as long as the whole or any part of UCenter is used without written permission, the name of UCenter at the footer of the page and Beijing Kangsheng Xinchuang Technology Co., Ltd. Links to affiliated websites (http://www.comsenz.com, http://www.discuz.com or http://www.discuz.net) must remain and cannot be removed or modified. </li>
<li>The development of any derivative, modified or third-party versions of UCenter, in whole or in part, for redistribution is prohibited. </li>
<li>If you fail to comply with the terms of this agreement, your authorization will be terminated, the licensed rights will be withdrawn, and you will bear corresponding legal liabilities. </li>
</ol>

<h3>III. Limited Warranty and Disclaimer</h3>
<ol>
<li>This software and accompanying documentation are provided without warranty or warranty of any kind, express or implied. </li>
<li>Users use this software voluntarily. You must understand the risks of using this software. Before purchasing product technical services, we do not promise to provide any form of technical support, use guarantee, nor assume any responsibility for using this software. Responsibility for problems arising. </li>
<li>Beijing Kangsheng Xinchuang Technology Co., Ltd. is not responsible for the articles or information in the website built using this software. </li>
</ol>

<p>Details about the UCenter End User License Agreement, commercial authorization and technical services are exclusively provided by the UCenter official website. Beijing Kangsheng Xinchuang Technology Co., Ltd. has the right to modify the authorization agreement and service price list without prior notice, and the revised agreement or price list will take effect for new authorized users from the date of change. </p>

<p>The authorization agreement in the form of electronic text has the same legal effect as the written agreement signed by both parties. Once you start installing UCenter, you are deemed to have fully understood and accepted the terms of this agreement, and while enjoying the rights granted by the above terms, you are subject to relevant constraints and restrictions. Behavior outside the scope of the agreement will directly violate this authorization agreement and constitute infringement. We have the right to terminate the authorization at any time, order to stop the damage, and reserve the right to pursue relevant responsibilities. </p></div>',

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
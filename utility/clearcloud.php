<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: update.php 36348 2017-01-13 06:36:44Z nemohou $
 *      Modified by Valery Votintsev, discuz.ml
 */

//Define APPTYPEID, CURSCRIPT
/*vot*/ define('APPTYPEID', 2);
/*vot*/ define('CURSCRIPT', 'clearcloud');

include_once('../source/class/class_core.php');
include_once('../source/function/function_core.php');

@set_time_limit(0);

$cachelist = array();
$discuz = C::app();

$discuz->cachelist = $cachelist;
$discuz->init_cron = false;
$discuz->init_setting = true;
$discuz->init_user = false;
$discuz->init_session = false;
$discuz->init_misc = false;

$discuz->init();

$_G['siteurl'] = preg_replace('/\/install\/$/i', '/', $_G['siteurl']);

$plugins = array('cloudstat', 'soso_smilies', 'security', 'pcmgr_url_safeguard', 'manyou', 'cloudcaptcha');
foreach($plugins as $pluginid) {			
	$plugin = C::t('common_plugin')->fetch_by_identifier($pluginid);
	if($plugin) {
		$modules = unserialize($plugin['modules']);
		$modules['system'] = 0;
		$modules = serialize($modules);
		C::t('common_plugin')->update($plugin['pluginid'], array('modules' => $modules));
	}			
}

/*vot*/ echo '<b>Clean the Cloud Service Utility</b>.<br>All the Cloud platform plug-ins have been downgraded to non-system-level plug-ins.<br>Please remove the clearcloud.php tool!'; //"云平台插件已降为非系统级插件，请删除本工具";

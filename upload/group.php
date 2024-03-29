<?php
/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: group.php 31307 2012-08-10 02:10:56Z zhengqingpeng $
 *	Modified by Valery Votintsev, codersclub.org
 */

define('APPTYPEID', 3);
define('CURSCRIPT', 'group');


require './source/class/class_core.php';

$discuz = C::app();

$cachelist = array('grouptype', 'groupindex', 'diytemplatenamegroup');
$discuz->cachelist = $cachelist;
$discuz->init();

/*vot*/	settings_localize(); // Localize Navigation & Settings

$_G['disabledwidthauto'] = 0;

$modarray = array('index', 'my', 'attentiongroup');
$mod = !in_array($_G['mod'], $modarray) ? 'index' : $_G['mod'];

define('CURMODULE', $mod);

runhooks();

if(!$_G['setting']['groupstatus']) {
	showmessage('group_module_status_off');
}

$navtitle = str_replace('{bbname}', $_G['setting']['bbname'], $_G['setting']['seotitle']['group']);

require DISCUZ_ROOT.'./source/module/group/group_'.$mod.'.php';

<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: misc_seccode.php 30388 2012-05-25 06:45:40Z monkey $
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

require_once libfile('function/seccode');

if($_GET['action'] == 'update') {

	$message = '';
	if($_G['setting']['seccodestatus']) {
		$rand = random(5, 1);
		$flashcode = '';
		$idhash = isset($_GET['idhash']) && preg_match('/^\w+$/', $_GET['idhash']) ? $_GET['idhash'] : '';
		$ani = $_G['setting']['seccodedata']['animator'] ? '_ani' : '';
		if($_G['setting']['seccodedata']['type'] == 2) {
			$message = '<span id="seccodeswf_'.$idhash.'"></span>'.(extension_loaded('ming') ? "<script type=\"text/javascript\" reload=\"1\">\n$('seccodeswf_$idhash').innerHTML='".lang('core', 'seccode_image'.$ani.'_tips')."' + AC_FL_RunContent(
				'width', '".$_G['setting']['seccodedata']['width']."', 'height', '".$_G['setting']['seccodedata']['height']."', 'src', 'misc.php?mod=seccode&update=$rand&idhash=$idhash',
				'quality', 'high', 'wmode', 'transparent', 'bgcolor', '#ffffff',
				'align', 'middle', 'menu', 'false', 'allowScriptAccess', 'sameDomain');\n</script>" :
				"<script type=\"text/javascript\" reload=\"1\">\n$('seccodeswf_$idhash').innerHTML='".lang('core', 'seccode_image'.$ani.'_tips')."' + AC_FL_RunContent(
				'width', '".$_G['setting']['seccodedata']['width']."', 'height', '".$_G['setting']['seccodedata']['height']."', 'src', '$_G[siteurl]static/image/seccode/flash/flash2.swf',
				'FlashVars', 'sFile=".rawurlencode("$_G[siteurl]misc.php?mod=seccode&update=$rand&idhash=$idhash")."', 'menu', 'false', 'allowScriptAccess', 'sameDomain', 'swLiveConnect', 'true', 'wmode', 'transparent');\n</script>");
		} elseif($_G['setting']['seccodedata']['type'] == 3) {
			$flashcode = "<span id=\"seccodeswf_$idhash\"></span><script type=\"text/javascript\" reload=\"1\">\n$('seccodeswf_$idhash').innerHTML='".lang('core', 'seccode_sound_tips')."' + AC_FL_RunContent(
				'id', 'seccodeplayer_$idhash', 'name', 'seccodeplayer_$idhash', 'width', '0', 'height', '0', 'src', '$_G[siteurl]static/image/seccode/flash/flash1.swf',
				'FlashVars', 'sFile=".rawurlencode("$_G[siteurl]misc.php?mod=seccode&update=$rand&idhash=$idhash")."', 'menu', 'false', 'allowScriptAccess', 'sameDomain', 'swLiveConnect', 'true', 'wmode', 'transparent');\n</script>";
			$message = 'seccode_player';
		} else {
			if(!is_numeric($_G['setting']['seccodedata']['type'])) {
				$etype = explode(':', $_G['setting']['seccodedata']['type']);
				if(count($etype) > 1) {
					$codefile = DISCUZ_ROOT.'./source/plugin/'.$etype[0].'/seccode/seccode_'.$etype[1].'.php';
					$class = $etype[1];
				} else {
					$codefile = libfile('seccode/'.$_G['setting']['seccodedata']['type'], 'class');
					$class = $_G['setting']['seccodedata']['type'];
				}
				if(file_exists($codefile)) {
					@include_once $codefile;
					$class = 'seccode_'.$class;
					if(class_exists($class)) {
						$code = new $class();
						if(method_exists($code, 'make')) {
							include template('common/header_ajax');
							$code->make($_GET['idhash']);
							include template('common/footer_ajax');
							exit;
						}
					}
				}
				exit;
			} else {
				$message = lang('core', 'seccode_image'.$ani.'_tips').'<img onclick="updateseccode(\''.$idhash.'\')" width="'.$_G['setting']['seccodedata']['width'].'" height="'.$_G['setting']['seccodedata']['height'].'" src="misc.php?mod=seccode&update='.$rand.'&idhash='.$idhash.'" class="vm" alt="" />';
			}
		}
	}
	include template('common/header_ajax');
	echo lang('message', $message, array('flashcode' => $flashcode, 'idhash' => $idhash));
	include template('common/footer_ajax');

} elseif($_GET['action'] == 'check') {

	include template('common/header_ajax');
	echo check_seccode($_GET['secverify'], $_GET['idhash']) ? 'succeed' : 'invalid';
	include template('common/footer_ajax');

} else {

	$refererhost = parse_url($_SERVER['HTTP_REFERER']);
	$refererhost['host'] .= !empty($refererhost['port']) ? (':'.$refererhost['port']) : '';

	if($_G['setting']['seccodedata']['type'] < 2 && ($refererhost['host'] != $_SERVER['HTTP_HOST'] || !$_G['setting']['seccodestatus']) || $_G['setting']['seccodedata']['type'] == 2 && !extension_loaded('ming') && $_POST['fromFlash'] != 1 || $_G['setting']['seccodedata']['type'] == 3 && $_GET['fromFlash'] != 1) {
		exit('Access Denied');
	}

	$seccode = make_seccode($_GET['idhash']);

	if(!$_G['setting']['nocacheheaders']) {
		@header("Expires: -1");
		@header("Cache-Control: no-store, private, post-check=0, pre-check=0, max-age=0", FALSE);
		@header("Pragma: no-cache");
	}

	require_once libfile('class/seccode');

	$code = new seccode();
	$code->code = $seccode;
	$code->type = $_G['setting']['seccodedata']['type'];
	$code->width = $_G['setting']['seccodedata']['width'];
	$code->height = $_G['setting']['seccodedata']['height'];
	$code->background = $_G['setting']['seccodedata']['background'];
	$code->adulterate = $_G['setting']['seccodedata']['adulterate'];
	$code->ttf = $_G['setting']['seccodedata']['ttf'];
	$code->angle = $_G['setting']['seccodedata']['angle'];
	$code->warping = $_G['setting']['seccodedata']['warping'];
	$code->scatter = $_G['setting']['seccodedata']['scatter'];
	$code->color = $_G['setting']['seccodedata']['color'];
	$code->size = $_G['setting']['seccodedata']['size'];
	$code->shadow = $_G['setting']['seccodedata']['shadow'];
	$code->animator = $_G['setting']['seccodedata']['animator'];
	$code->fontpath = DISCUZ_ROOT.'./static/image/seccode/font/';
	$code->datapath = DISCUZ_ROOT.'./static/image/seccode/';
	$code->includepath = DISCUZ_ROOT.'./source/class/';

	$code->display();

}

?>
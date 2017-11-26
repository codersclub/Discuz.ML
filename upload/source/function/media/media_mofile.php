<?php
// Added by vot: mofile.com support

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

$checkurl = array('tv.mofile.com/', 'v.mofile.com/show/');

function media_mofile($url, $width, $height) {
	if(preg_match("/^http:\/\/tv.mofile.com\/([^\/]+)/i", $url, $matches)
     ||preg_match("/^http:\/\/v.mofile.com\/show\/([^\/]+).shtml/i", $url, $matches)) {
		$vid = $matches[1];
		$imgurl = '';
		$iframe = 'http://tv.mofile.com/'.$vid;
		$flv = 'http://tv.mofile.com/cn/xplayer.swf?v='.$vid;
		if(!$width && !$height) {
			$str = file_get_contents($url, false, $ctx);
			if(!empty($str) && preg_match("/thumbpath=\"(.+?)\";/i", $str, $image)) {
				$imgurl = trim($image[1]);
			}
		}
	}
	return array($flv, $iframe, $url, $imgurl);
}

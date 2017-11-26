<?php
//------------------------------------------------------------------
// added by vot: XUITE.NET support

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

$checkurl = array('vlog.xuite.net/play');

function media_xuite($url, $width, $height) {
	if(preg_match("/^http:\/\/vlog.xuite.net\/play\/(.*?)/i", $url, $matches)) {
		$vid = $matches[1];
		$str = file_get_contents($url, false, $ctx);
		preg_match("/\"og:video\" content=\"(.+?)\"/i", $str, $video);
		$flv = trim($video[1]);
		if(!$width && !$height) {
			if(!empty($str) && preg_match("/\"og:image\" content=\"(.+?)\"/i", $str, $image)) {
				$imgurl = trim($image[1]);
			}
		}
	    $iframe = 'http://vlog.xuite.net/play/'.$vid;
	}
	return array($flv, $iframe, $url, $imgurl);
}

<?php
//------------------------------------------------------------------
// added by vot: RUTUBE.RU support

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

$checkurl = array('rutube.ru/tracks/', 'video.rutube.ru/');

function media_rutube($url, $width, $height) {
	$imgurl = '';
	if(preg_match("/^http:\/\/rutube\.ru\/tracks\/\d+\.html\?v\=(.*?)/i", $url, $matches)) {
		$vid = $matches[1];
		$flv = 'http://video.rutube.ru/'.$vid;
	} elseif(preg_match("/^http:\/\/rutube\.ru\/tracks\/\d+\.html/i", $url, $matches)) {
		$str = file_get_contents($url, false, $ctx);
		preg_match("/\"og:video\" content=\"(.+?)\"/i", $str, $video);
		$vid = $video[1];
		$flv = trim($vid);
		if(!$width && !$height) {
			if(!empty($str) && preg_match("/\"og:image\" content=\"(.+?)\"/i", $str, $image)) {
				$imgurl = trim($image[1]);
			}
		}
	} elseif(preg_match("/^http:\/\/video\.rutube\.ru\/(.*?)/i", $url, $matches)) {
		$vid = $matches[1];
		$flv = 'http://video.rutube.ru/'.$vid;
	}

	$iframe = 'http://video.rutube.ru/'.$vid;

	return array($flv, $iframe, $url, $imgurl);
}

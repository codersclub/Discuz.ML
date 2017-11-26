<?php
//------------------------------------------------------------------
// Discuz YOUTO.BE video support
// Written by Valery Votintsev, discuz.ml
//------------------------------------------------------------------

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

$checkurl = array('youtu.be/');

function media_youtu_be($url, $width, $height) {
	if(preg_match("/^https?:\/\/(www\.)*youtu.be\/([^\/]+)/i", $url, $matches)) {
		$flv = 'http://www.youtube.com/v/'.$matches[2].'?version=3&amp;rel=0';
		$iframe = 'https://www.youtube.com/embed/'.$matches[2];
		if(!$width && !$height) {
			$str = file_get_contents("http://www.youtube.com/embed/".$matches[2], false, $ctx);
			if(!empty($str) && preg_match("/\"iurl\": \"(.+?)\",/i", $str, $image)) {
				$imgurl = trim(str_replace('\\', '', $image[1]));
			}
		}
	}
	return array($flv, $iframe, $url, $imgurl);
}

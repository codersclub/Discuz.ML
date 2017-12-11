<?php
//------------------------------------------------------------------
// added by vot: VIDEO.GOOGLE.COM support

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

$checkurl = array('video.google.com/videoplay');

function media_google($url, $width, $height) {
	if(preg_match("/^https?:\/\/video\.google\.com\/videoplay\?docid\=(.*?)[&$]/i", $url, $matches)) {
		$vid = $matches[1];
		$flv = 'http://video.google.com/googleplayer.swf?docId='.$vid.'&amp;fs=true';
		$iframe = 'https://video.google.com/videoplay?docid='.$vid;
	}
	return array($flv, $iframe, $url, $imgurl);
}

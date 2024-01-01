<?php

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

$checkurl = array('video.sina.com.cn/v/b/', 'you.video.sina.com.cn/b/');

function media_sina($url, $width, $height) {
	if(preg_match("/^https?:\/\/video.sina.com.cn\/v\/b\/(\d+)-(\d+).html/i", $url, $matches)) {
		$flv = 'https://vhead.blog.sina.com.cn/player/outer_player.swf?vid='.$matches[1];
		if(!$width && !$height) {
			$api = 'https://interface.video.sina.com.cn/interface/common/getVideoImage.php?vid='.$matches[1];
			$str = dfsockopen($api);
			if(!empty($str)) {
				$imgurl = str_replace('imgurl=', '', trim($str));
			}
		}
	} elseif(preg_match("/^https?:\/\/you.video.sina.com.cn\/b\/(\d+)-(\d+).html/i", $url, $matches)) {
		$flv = 'https://vhead.blog.sina.com.cn/player/outer_player.swf?vid='.$matches[1];
		if(!$width && !$height) {
			$api = 'https://interface.video.sina.com.cn/interface/common/getVideoImage.php?vid='.$matches[1];
			$str = dfsockopen($api);
			if(!empty($str)) {
				$imgurl = str_replace('imgurl=', '', trim($str));
			}
		}
	}
	return array($flv, $iframe, $url, $imgurl);
}
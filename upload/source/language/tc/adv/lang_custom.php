<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: lang_custom.php 27449 2012-02-01 05:32:35Z zhangguosheng $
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

$lang = array
(
	'custom_name' => '自定義廣告',
	'custom_desc' => '通過在模版、HTML 文件中添加廣告代碼，可以在站點的任意頁面添加廣告。適用於懂得簡單 HTML 知識的站長。<br /><br />
		<a href="javascript:;" onclick="prompt(\'請複製(CTRL+C)以下內容並添加到模板中，添加此廣告位\', \'<!--{ad/custom_'.$_GET['customid'].'}-->\')" />內部調用</a>&nbsp;
		<a href="javascript:;" onclick="prompt(\'請複製(CTRL+C)以下內容並添加到 HTML 文件中，添加此廣告位\', \'&lt;script type=\\\'text/javascript\\\' src=\\\''.$_G['siteurl'].'api.php?mod=ad&adid=custom_'.$_GET['customid'].'\\\'&gt;&lt;/script&gt;\')" />外部調用</a>',
	'custom_id_notfound' => '自定義廣告不存在',
	'custom_codelink' => '內部調用',
	'custom_text' => '自定義廣告',
);

?>
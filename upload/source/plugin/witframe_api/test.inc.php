<?php

if (!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

/*
// Call example

// Reference library
require_once DISCUZ_ROOT.'./source/plugin/witframe_api/core.php';

$siteuniqueid = $_G['setting']['siteuniqueid'];

// Automatically register site information and obtain site configuration information
$conf = Lib\Site::Discuz_GetConf($siteuniqueid);
print_r($conf);

// Add the authorization of the application, automatically add the authorization of the Sample application
Lib\Site::AddAuthInfo(10005, 1003, 'abcdE');

// Call apis
$r = Lib\Apis::Sample_v1_apis(['now' => time()]);
print_r($r);

// Link to log in back into Wit
$r = Lib\Site::Discuz_LoginWit($siteuniqueid);
echo $r['url'];

*/
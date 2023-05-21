<?php

/*
	[UCenter] (C)2001-2099 Comsenz Inc.
	This is NOT a freeware, use is subject to license terms

	$Id: functions.inc.php 2020-03-31 Valery Votintsev, discuz.ml $
*/

/*vot*/ function magic_quotes() {
/*vot*/ 	if(function_exists('get_magic_quotes_gpc')) {
/*vot*/ 		return @get_magic_quotes_gpc();
/*vot*/ 	}
/*vot*/ 	return false;
/*vot*/ }

/**
 * Show debug info
 * @param $data
 * @param string $name
 */
function dump($data, $name = '')
{
    $buf = var_export($data, true);

    $buf = str_replace('\\r', '', $buf);
    $buf = preg_replace('/\=\>\s*\n\s*array/s', '=> array', $buf);

    echo '<pre>';

    if ($name) {
        echo $name, '=';
    }

    echo $buf;
    echo "</pre>\n";
}

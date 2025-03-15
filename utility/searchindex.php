<?php
/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: searchindex.php
 *      Background search index generation tool
 *      Must be executed in the forum root directory
 *      Modified by Valery Votintsev, discuz.ml
 *      Updated by jaideejung007, discuzthai.com (Compatible with PHP 7.4+ and Discuz! X3.5)
 */

error_reporting(E_ALL);

$sourcedir = './';

chdir($sourcedir);

define('IN_ADMINCP', TRUE);
define('NOROBOT', TRUE);
define('ADMINSCRIPT', basename(__FILE__));
define('CURSCRIPT', 'admin');
define('APPTYPEID', 0);

include './source/class/class_core.php';
include './source/class/class_admincp.php';
include './source/function/function_misc.php';
include './source/function/function_forum.php';
include './source/function/function_admincp.php';
include './source/function/function_cache.php';

$discuz = discuz_core::instance();
$discuz->init();

$admincp = new discuz_admincp();
$admincp->core = $discuz;
$admincp->init();

$admincpdir = 'source/admincp/';
$langfile = 'source/language/lang_admincp.php';
$menulangfile = 'source/language/lang_admincp_menu.php';
$searchindex = 'source/language/lang_admincp_searchindex.php';

define('IN_DISCUZ', 1);
define('IN_ADMINCP', 1);

include $menulangfile;
$menulang = $lang;
include $langfile;
$lang = $lang + $menulang;
$indexdata = array();

include $sourcedir.'function/function_admincp.php';
include $admincpdir.'admincp_menu.php';
foreach($menu as $topmenu => $leftmenu) {
	foreach($leftmenu as $item) {
		list($action, $operation, $do) = explode('_', $item[1]);
		$index_item = array(
			$menulang[$item[0]] => 'action='.$action.($operation ? '&operation='.$operation.($do ? '&do='.$do : '') : '')
		);
		if (!array_key_exists('', $index_item) && !in_array('action=', array_values($index_item))) {
			$indexdata[] = array('index' => $index_item, 'text' => array($menulang[$item[0]]));
		}
	}
}

$langi = '|'.implode('|', array_keys($lang)).'|';

$dir = opendir($admincpdir);
while($entry = readdir($dir)) {
	if($entry != '.' && $entry != '..' && preg_match('/^admincp\_/', $entry)) {
		$adminfile = $admincpdir.$entry;
		$data = file_get_contents($adminfile);
		$data = preg_replace('/\/\/.+?\r/', '', $data);
		$data = preg_replace_callback(
			'/\/\*(.+?)\*\//s',
			function($matches) {
				return clearnote($matches[1]);
			},
			$data
		);

		preg_match_all('#/\*search=\s*(\{.+?\})\s*\*/(.+?)/\*search\*/#is', $data, $search);
		if($search) {
			foreach($search[0] as $k => $item) {
				$search[1][$k] = stripslashes($search[1][$k]);
				$search[1][$k] = unicode_encode($search[1][$k]);
				$titles = json_decode($search[1][$k], 1);
				$titlesnew = $titletext = array();
				foreach($titles as $title => $url) {
					$titlekey = strip_tags(isset($lang[$title]) ? $lang[$title] : iconv('UTF-8', 'GBK', $title));
					$titlesnew[$titlekey] = $url;
					if($titlekey[0] != '_') {
						$titletext[] = $titlekey;
					}
				}
				$data = $search[2][$k];
				preg_match_all("/(showsetting|showtitle|showtableheader|showtips)\('(\w+)'/", $data, $r);
				if($r[2]) {
					$l = array();
					if($titletext) {
						$l[] = implode(' &raquo; ', $titletext);
					}
					foreach($r[2] as $i) {
						$l[] = strip_tags($i);
						$l[] = strip_tags($lang[$i]);
						$preg = '/\|('.preg_quote($i).'_comment)\|/';
						preg_match_all($preg, $langi, $lr);
						if($lr[1]) {
							foreach($lr[1] as $li) {
								$l[] = strip_tags($lang[$li]);
							}
						}
					}
					$is_empty_index = array_key_exists('', $titlesnew) && $titlesnew[''] === 'action=';
					$is_null_text = (count($l) === 1 && $l[0] === null);
					if (!($is_empty_index && $is_null_text)) {
						$indexdata[] = array('index' => $titlesnew, 'text' => $l);
					}
				}
			}
		}
	}
}

// Custom function to generate array output with tabs as specified
function array_to_string($array) {
	$result = '';
	foreach ($array as $key => $value) {
		$result .= "\t" . var_export($key, true) . " =>\n"; // Level 1: 1 tab
		$result .= "\t" . "array (\n"; // Level 2: 1 tab
		foreach ($value as $sub_key => $sub_value) {
			$result .= "\t\t" . var_export($sub_key, true) . " =>\n"; // Level 3: 2 tab
			$result .= "\t\t" . "array (\n"; // Level 4: 2 tab
			foreach ($sub_value as $inner_key => $inner_value) {
				$result .= "\t\t\t" . var_export($inner_key, true) . ' => ' . var_export($inner_value, true) . ",\n"; // Level 4: 3 tab
			}
			$result .= "\t\t" . "),\n";
		}
		$result .= "\t" . "),\n";
	}
	return $result;
}

$array_string = array_to_string($indexdata);

$return = '<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: adminsearchindex2.php 26203 2011-12-05 10:07:49Z monkey $
 *
 *	This file is automatically generate
 */

$lang = array (
' . $array_string . ');

?>';

file_put_contents($searchindex, $return);

echo 'Done!';

function clearnote($s) {
	if(!preg_match('/^search/i', $s)) {
		return '';
	} else {
		return '/*'.$s.'*/';
	}
}

function unicode_encode($name) {
	$name = iconv('GBK', 'UCS-2', $name);
	$len = strlen($name);
	$str = '';
	for ($i = 0; $i < $len - 1; $i = $i + 2) {
		$c = $name[$i];
		$c2 = $name[$i + 1];
		if (ord($c) > 0) {
			$str .= '\u'.base_convert(ord($c), 10, 16).base_convert(ord($c2), 10, 16);
		} else {
			$str .= $c2;
		}
	}
	return $str;
}
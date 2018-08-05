<?php
/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: searchindex.php
 *      Background search index generation tool
 *      Must be executed in the forum root directory
 *      Modified by Valery Votintsev, discuz.ml
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

$discuz = & discuz_core::instance();
$discuz->init();

$admincp = new discuz_admincp();
$admincp->core  = & $discuz;
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
		$indexdata[] = array('index' => array(
			$menulang[$item[0]] => 'action='.$action.($operation ? '&operation='.$operation.($do ? '&do='.$do : '') : '')
		), 'text' => array($menulang[$item[0]]));
	}
}

$langi = '|'.implode('|', array_keys($lang)).'|';

$dir = opendir($admincpdir);
while($entry = readdir($dir)) {
	if($entry != '.' && $entry != '..' && preg_match('/^admincp\_/', $entry)) {

		$adminfile = $admincpdir.$entry;		
		$data = file_get_contents($adminfile);
		$data = preg_replace('/\/\/.+?\r/', '', $data);
		$data = preg_replace('/\/\*(.+?)\*\//se', "clearnote('\\1')", $data);

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
					if($titlekey{0} != '_') {
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
					$indexdata[] = array('index' => $titlesnew, 'text' => $l);
				}
			}
		}

	}
}

$return = '<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: adminsearchindex2.php 26203 2011-12-05 10:07:49Z monkey $
 *
 *	This file is automatically generate
 */

$lang = '.var_export($indexdata, 1).';

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

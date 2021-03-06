<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: restore.php 36278 2016-12-09 07:52:35Z nemohou $
 *	Modified by Valery Votintsev, codersclub.org
 */

error_reporting(E_ERROR | E_WARNING | E_PARSE);
@set_time_limit(1000);

if(function_exists('set_magic_quotes_runtime')) {
	@set_magic_quotes_runtime(0);
}

define('IN_DISCUZ', TRUE);
define('ROOT_PATH', dirname(__FILE__).'/../');

@include_once ROOT_PATH.'./config/config_global.php';
define('CHARSET', $_config['output']['charset']);
define('DBCHARSET', $_config['db']['1']['dbcharset']);
/*vot*/ define('DISCUZ_LANG', $_config['output']['language']);
/*vot*/	require_once(ROOT_PATH . 'source/function/function.inc.php');

$lock_file = ROOT_PATH.'./data/restore.lock';
if(file_exists($lock_file)) {
	show_msg('restored_error');
}

require_once ROOT_PATH.'./source/discuz_version.php';

$operation = trim(getgpc('operation', 'G'));
$operation = $operation ? $operation : 'import';
$phpself = htmlspecialchars($_SERVER['SCRIPT_NAME'] ? $_SERVER['SCRIPT_NAME'] : $_SERVER['PHP_SELF']);
$siteurl = htmlspecialchars((is_https() ? 'https' : 'http').'://'.$_SERVER['HTTP_HOST'].preg_replace("/\/+(api)?\/*$/i", '', substr($phpself, 0, strrpos($phpself, '/'))).'/');

$db = function_exists("mysql_connect") ? new dbstuff : new dbstuffi;
if(!@$db->connect($_config['db']['1']['dbhost'], $_config['db']['1']['dbuser'], $_config['db']['1']['dbpw'], $_config['db']['1']['dbname'], $_config['db']['1']['dbcharset'])) {
	show_msg('connect_error');
}

if($operation == 'import') {

	if(!submitcheck('importsubmit', 1)) {
		$exportlog = $exportsize = $exportziplog = $exportzipsize = array();
		check_exportfile($exportlog, $exportziplog, $exportsize, $exportzipsize);
		if(empty($exportlog) && empty($exportziplog)) {
			show_msg('backup_file_unexist');
		}

		show_importfile_list($exportlog, $exportziplog, $exportsize, $exportzipsize);

	} else {

		$readerror = 0;
		$datafile_vol1 = trim(getgpc('datafile_vol1'));
		if($datafile_vol1) {
			$datafile = $datafile_vol1;
		} else {
			$datafile = getgpc('datafile_server', 'G');
		}
		if(!preg_match("#^\.\./data/backup_\w+/[\w\-]+\.sql$#i", $datafile)) {
			touch($lock_file);
			show_msg('database_import_format_illegal');
		}
		if(file_exists($datafile) && @$fp = fopen($datafile, 'rb')) {
			$confirm = trim(getgpc('confirm', 'G'));
			$delunzip = getgpc('delunzip', 'G');
			$start = trim(getgpc('start', 'G'));
			$start = $start ? 1 : 0;
			if(!$start) {
				show_msg(lang('database_import_multivol_start', TRUE, array()),
					$siteurl."restore.php?operation=import&datafile_server=$datafile&autoimport=yes&importsubmit=yes&start=yes".(!empty($confirm) ? '&confirm=yes' : '').(!empty($delunzip) ? '&delunzip=yes' : ''),
					'redirect');
			}
			$confirm = $confirm ? 1 : 0;
			$sqldump = fgets($fp, 256);
			$identify = explode(',', base64_decode(preg_replace("/^# Identify:\s*(\w+).*/s", "\\1", $sqldump)));
			$dumpinfo = array('method' => $identify[3], 'volume' => intval($identify[4]), 'tablepre' => $identify[5], 'dbcharset' => strtolower($identify[6]));
			if(!$confirm) {
				$showmsg = '';
				if($dumpinfo['tablepre'] != $_config['db']['1']['tablepre'] && !getgpc('ignore_tablepre', 'G')) {
					$showmsg .= lang('tableprediff');
				}
				if($dumpinfo['dbcharset'] != strtolower($_config['db']['1']['dbcharset'])) {
					$showmsg .= lang('dbcharsetdiff');
				}
				if($showmsg) {
					show_msg(lang('different_dbcharset_tablepre', TRUE, array('diff' => $showmsg)), $siteurl.'restore.php?operation=import&datafile_server='.$datafile.'&autoimport=yes&importsubmit=yes&start=yes&confirm=yes', 'confirm');
				}
			}

			if($dumpinfo['method'] == 'multivol') {
				$sqldump .= fread($fp, filesize($datafile));
			}
			fclose($fp);
		} else {
			if(getgpc('autoimport', 'G')) {
				touch($lock_file);
				show_msg('database_import_multivol_succeed', '', 'message', 1);
			} else {
				show_msg('database_import_file_illegal');
			}
		}

		if($dumpinfo['method'] == 'multivol') {
			$sqlquery = splitsql($sqldump);
			unset($sqldump);

			foreach($sqlquery as $sql) {

				$sql = syntablestruct(trim($sql), $db->version() > '4.1', DBCHARSET);

				if($sql != '') {
					$db->query($sql, 'SILENT');
					if(($sqlerror = $db->error()) && $db->errno() != 1062) {
						$db->halt('MySQL Query Error', $sql);
					}
				}
			}

			if($delunzip) {
				@unlink($datafile);
			}

			$datafile_next = preg_replace("/-($dumpinfo[volume])(\..+)$/", "-".($dumpinfo['volume'] + 1)."\\2", $datafile);
			$datafile_next = urlencode($datafile_next);
			if($dumpinfo['volume'] == 1) {
				show_msg(lang('database_import_multivol_redirect', TRUE, array('volume' => $dumpinfo['volume'])),
					$siteurl."restore.php?operation=import&datafile_server=$datafile_next&autoimport=yes&importsubmit=yes&start=yes&confirm=yes".(!empty($delunzip) ? '&delunzip=yes' : ''),
					'redirect');
			} elseif(getgpc('autoimport', 'G')) {
				show_msg(lang('database_import_multivol_redirect', TRUE, array('volume' => $dumpinfo['volume'])), $siteurl."restore.php?operation=import&datafile_server=$datafile_next&autoimport=yes&importsubmit=yes&start=yes&confirm=yes".(!empty($delunzip) ? '&delunzip=yes' : ''), 'redirect');
			} else {
				show_msg('database_import_succeed', '', 'message', 1);
			}
		} elseif($dumpinfo['method'] == 'shell') {
			touch($lock_file);
 			$dbhost = $_config['db'][1]['dbhost'];
			$dbname = $_config['db'][1]['dbname'];
			$dbpw = $_config['db'][1]['dbpw'];
			$dbuser = $_config['db'][1]['dbuser'];
			list($dbhost, $dbport) = explode(':', $dbhost);
			$query = $db->query("SHOW VARIABLES LIKE 'basedir'");
			list(, $mysql_base) = $db->fetch_array($query, $db->drivertype == 'mysqli' ? MYSQLI_NUM : MYSQL_NUM);
			$datafile = addslashes(dirname(dirname(__FILE__))).str_replace('..', '', $datafile) ;
			$mysqlbin = $mysql_base == '/' ? '' : addslashes(rtrim($mysql_base, '/\\')).'/bin/';
			@shell_exec($mysqlbin.'mysql -h"'.$dbhost.'"'.($dbport ? (is_numeric($dbport) ? ' -P'.$dbport : ' -S"'.$dbport.'"') : '').' -u"'.$dbuser.'" -p"'.$dbpw.'" "'.$dbname.'" < '.$datafile);
			if($delunzip) {
				@unlink($datafile);
			}
			show_msg('database_import_succeed', '', 'message', 1);
		} else {
			show_msg('database_import_format_illegal');
		}
	}

} elseif($operation == 'importzip') {

	if(!getgpc('datafile_server')) {
		show_msg('database_import_file_illegal');
	} else {
		$datafile_server = getgpc('datafile_server');
		if(!@file_exists($datafile_server)) {
			show_msg('database_import_file_illegal');
		}
	}
	$datafile_vol1 = trim(getgpc('datafile_vol1', 'G'));
	$multivol = intval(getgpc('multivol', 'G'));

	$confirm = trim(getgpc('confirm', 'G'));
	$delunzip = getgpc('delunzip', 'G');
	$start = trim(getgpc('start', 'G'));
	$start = $start ? 1 : 0;
	if(!$start) {
		show_msg(lang('database_import_multivol_unzip_start', TRUE, array()), $siteurl.'restore.php?operation=importzip&multivol='.$multivol.'&datafile_vol1='.$datafile_vol1.'&datafile_server='.$datafile_server.'&importsubmit=yes&start=yes'.(!empty($confirm) ? '&confirm=yes' : ''), 'redirect');
	}

	require_once ROOT_PATH.'./source/class/class_zip.php';
	$unzip = new SimpleUnzip();
	$backupdir = substr($datafile_server, 8, 13);
	$unzip->ReadFile($datafile_server);

	if($unzip->Count() == 0 || $unzip->GetError(0) != 0 || !preg_match("/\.sql$/i", $importfile = $unzip->GetName(0))) {
		show_msg('database_import_file_illegal');
	}

	$identify = explode(',', base64_decode(preg_replace("/^# Identify:\s*(\w+).*/s", "\\1", substr($unzip->GetData(0), 0, 256))));
	$confirm = getgpc('confirm', 'G');
	$confirm = !empty($confirm) ? 1 : 0;
	if(!$confirm && $identify[1] != DISCUZ_VERSION) {
		show_msg('database_import_confirm', $siteurl.'restore.php?operation=importzip&datafile_server='.$datafile_server.'&importsubmit=yes&start=yes&confirm=yes', 'confirm');
	}

	$sqlfilecount = 0;
	foreach($unzip->Entries as $entry) {
		if(preg_match("/\.sql$/i", $entry->Name)) {
			$fp = fopen('../data/'.$backupdir.'/'.$entry->Name, 'w');
			fwrite($fp, $entry->Data);
			fclose($fp);
			$sqlfilecount++;
		}
	}

	if(!$sqlfilecount) {
		show_msg('database_import_file_illegal');
	}

	$info = '<b>'.basename($datafile_server).'</b><br />'.lang('version').': '.$identify[1].'<br />'.lang('type').': '.lang('db_export_'.$identify[2]).'<br />'.lang('db_method').': '.($identify[3] == 'multivol' ? lang('db_multivol') : lang('db_shell')).'<br />';

	if($multivol) {
		$multivol++;
		$datafile_server = preg_replace("/-(\d+)(\..+)$/", "-$multivol\\2", $datafile_server);
		if(file_exists($datafile_server)) {
			show_msg(lang('database_import_multivol_unzip_redirect', TRUE, array('multivol' => $multivol)), $siteurl.'restore.php?operation=importzip&multivol='.$multivol.'&datafile_vol1='.$datafile_vol1.'&datafile_server='.$datafile_server.'&importsubmit=yes&start=yes&confirm=yes', 'redirect');
		} else {
			show_msg('database_import_multivol_confirm', $siteurl.'restore.php?operation=import&datafile_server='.$datafile_vol1.'&importsubmit=yes&delunzip=yes', 'confirm');
		}
	}

	if($identify[3] == 'multivol' && $identify[4] == 1 && preg_match("/-1(\..+)$/", $datafile_server)) {
		$datafile_vol1 = $datafile_server;
		$datafile_server = preg_replace("/-1(\..+)$/", "-2\\1", $datafile_server);

		if(file_exists($datafile_server)) {
			show_msg(lang('database_import_multivol_unzip_redirect', TRUE, array('multivol' => 1)), $siteurl.'restore.php?operation=importzip&multivol=1&datafile_vol1=../data/'.$backupdir.'/'.$importfile.'&datafile_server='.$datafile_server.'&importsubmit=yes&start=yes&confirm=yes', 'redirect');
		}
	}

	show_msg(lang('database_import_unzip', TRUE, array('info' => $info)), $siteurl.'restore.php?operation=import'.($datafile_vol1 ? '&datafile_vol1='.$datafile_vol1 : '').'&datafile_server=../data/'.$backupdir.'/'.$importfile.'&importsubmit=yes&delunzip=yes', 'confirm');
}

function get_backup_dir() {

	$backupdirs = array();
	$dir = dir(ROOT_PATH.'./data');
	while(($file = $dir->read()) !== FALSE) {
		if(filetype(ROOT_PATH.'./data/'.$file) == 'dir' && preg_match('/^backup_\w+/', $file)) {
			$backupdirs[] = $file;
		}
	}
	$dir->close();
	return $backupdirs;
}

function check_exportfile(&$exportlog, &$exportziplog, &$exportsize, &$exportzipsize) {

	$backupdirs = get_backup_dir();
	if(empty($backupdirs)) {
		return;
	}
	$exportfiletime = $exportzipfiletime = array();
	foreach($backupdirs as $backupdir) {
		$dir = dir(ROOT_PATH.'./data/'.$backupdir);
		while($entry = $dir->read()) {
			$entry = '../data/'.$backupdir.'/'.$entry;
			if(is_file($entry)) {
				if(preg_match("/\.sql$/i", $entry)) {
					$filesize = filesize($entry);
					$filemtime = filemtime($entry);
					$fp = fopen($entry, 'rb');
					$identify = explode(',', base64_decode(preg_replace("/^# Identify:\s*(\w+).*/s", "\\1", fgets($fp, 256))));
					fclose($fp);
					$key = preg_replace('/^(.+?)(\-\d+)\.sql$/i', '\\1', basename($entry));
					$exportlog[$key][$identify[4]] = array(
						'version' => $identify[1],
						'type' => $identify[2],
						'method' => $identify[3],
						'volume' => $identify[4],
						'tablepre' => $identify[5],
						'dbcharset' => $identify[6],
						'filename' => $entry,
						'dateline' => $filemtime,
						'size' => $filesize
					);
					$exportsize[$key] += $filesize;
					$exportfiletime[$key] = $filemtime;
				} elseif(preg_match("/\.zip$/i", $entry)) {
					$key = preg_replace('/^(.+?)(\-\d+)\.zip$/i', '\\1', basename($entry));
					$filesize = filesize($entry);
					$filemtime = filemtime($entry);
					$exportziplog[$key][] = array(
						'type' => 'zip',
						'filename' => $entry,
						'size' => $filesize,
						'dateline' => $filemtime
					);
					$exportzipsize[$key] += $filesize;
					$exportzipfiletime[$key] = $filemtime;
				}
			}
		}
		$dir->close();
		if (!empty($exportlog)) {
			array_multisort($exportfiletime, SORT_DESC, SORT_STRING, $exportlog);
		}
		if (!empty($exportziplog)) {
			array_multisort($exportzipfiletime, SORT_DESC, SORT_STRING, $exportziplog);
		}
	}
}

function show_importfile_list($exportlog = array(), $exportziplog = array(), $exportsize = array(), $exportzipsize = array()) {

	show_header();
	show_tips('db_import_tips');

	$title = array('filename', 'director', 'version', 'time', 'type', 'size', 'db_method', 'db_volume', '');
	echo "\n<table width='100%'>\n<tr>";
	foreach($title as $col) {
		echo "<th>".lang($col)."</th>";
	}
	echo "</tr>\n";

	foreach($exportlog as $key => $val) {
		$info = $val[1];
		$info['dateline'] = is_int($info['dateline']) ? gmdate('Y-m-d H:i:s', $info['dateline'] + 3600 * 8) : lang('unknown');
		$info['size'] = sizecount($exportsize[$key]);
		$info['volume'] = count($val);
		$info['method'] = $info['type'] != 'zip' ? ($info['method'] == 'multivol' ? lang('db_multivol') : lang('db_shell')) : '';
		echo "<tr>";
		echo
			"<td><a href=\"javascript:;\" onclick=\"display('exportlog_$key')\">".basename($info['filename'])."</a></td>",
			'<td width="150">'.dirname($info['filename']).'</td>',
			'<td width="60">'.$info['version'].'</td>',
			'<td width="140">'.$info['dateline'].'</td>',
			'<td width="170">'.lang('db_export_'.$info['type']).'</td>',
			'<td width="80">'.$info['size'].'</td>',
			'<td width="30">'.$info['method'].'</td>',
			'<td width="30">'.$info['volume'].'</td>',
			'<td width="40">'.($info['type'] == 'zip' ? "<a href=\"{$siteurl}restore.php?operation=importzip&datafile_server=$info[filename]&importsubmit=yes\" onclick=\"return confirm('".lang('database_import_confirm_zip')."');\">".lang('db_import_unzip')."</a>" : "<a href=\"{$siteurl}restore.php?operation=import&datafile_server=$info[filename]&importsubmit=yes\" ".(($info['version'] != DISCUZ_VERSION) ? "onclick=\"return confirm('".lang('database_import_confirm')."');\"" : "onclick=\"return confirm('".lang('database_import_confirm_sql')."');\"").">".lang('import')."</a>")."</td>"
		;
		echo "</tr>\n";
		echo '<tbody id="exportlog_'.$key.'" style="display:none">';
		foreach($val as $info) {
			$info['dateline'] = is_int($info['dateline']) ? gmdate('Y-m-d H:i:s', $info['dateline'] + 3600 * 8) : lang('unknown');
			$info['size'] = sizecount($info['size']);
			echo "<tr>";
			echo
				"<td colspan='2' class='subtb'><a href=\"$info[filename]\">".$info['filename']."</a></td>",
				"<td>".$info['version']."</td>",
				"<td>".$info['dateline']."</td>",
				'<td></td>',
				"<td>".$info['size']."</td>",
				'<td></td>',
				"<td></td>",
				'<td></td>'
			;
			echo "</tr>\n";
		}
		echo '</tbody>';
	}

	foreach($exportziplog as $key => $val) {
/*vot*/		sort($val);//Make sure that -1.zip is in the front, it will be automatically decompressed to -2.zip
		$info = $val[0];
		$info['dateline'] = is_int($info['dateline']) ? gmdate('Y-m-d H:i:s', $info['dateline'] + 3600 * 8) : lang('unknown');
		$info['size'] = sizecount($exportzipsize[$key]);
		$info['volume'] = count($val);
		$info['method'] = $info['method'] == 'multivol' ? lang('db_multivol') : lang('db_zip');
		echo "<tr>";
		echo
			"<td><a href=\"javascript:;\" onclick=\"display('exportlog_zip_$key')\">".basename($info['filename'])."</a></td>",
			"<td colspan='2'>".dirname($info['filename'])."</td>",
			"<td width='140'>".$info['dateline']."</td>",
			"<td width='170'>".($info['volume'] > 1 ? lang('db_multivol') : '').lang('db_export_'.$info['type'])."</td>",
			"<td width='80'>".$info['size']."</td>",
			"<td colspan='2'>".$info['method']."</td>",
			"<td width='40'><a href=\"{$siteurl}restore.php?operation=importzip&datafile_server=$info[filename]&importsubmit=yes\" onclick=\"return confirm('".lang('database_import_confirm_zip')."');\">".lang('db_import_unzip')."</a></td>"
		;
		echo "</tr>\n";
		echo '<tbody id="exportlog_zip_'.$key.'" style="display:none">';
		foreach($val as $info) {
			$info['dateline'] = is_int($info['dateline']) ? gmdate('Y-m-d H:i:s', $info['dateline'] + 3600 * 8) : lang('unknown');
			$info['size'] = sizecount($info['size']);
			$info['method'] = $info['method'] == 'multivol' ? lang('db_multivol') : lang('db_zip');
			echo "<tr>";
			echo
				"<td colspan='3' class='subtb'><a href=\"$info[filename]\">".$info['filename']."</a></td>",
				"<td>".$info['dateline']."</td>",
				"<td>".lang('db_export_'.$info['type'])."</td>",
				"<td>".$info['size']."</td>",
				"<td colspan='3'></td>"
			;
			echo "</tr>\n";
		}
		echo '</tbody>';
	}

	echo "</table>\n";
	show_footer();

}

function submitcheck($var, $allowget = 0, $seccodecheck = 0, $secqaacheck = 0) {
	if(!getgpc($var)) {
		return FALSE;
	} else {
		if($allowget || ($_SERVER['REQUEST_METHOD'] == 'POST' && empty($_SERVER['HTTP_X_FLASH_VERSION']) && (empty($_SERVER['HTTP_REFERER']) ||
		preg_replace("/https?:\/\/([^\:\/]+).*/i", "\\1", $_SERVER['HTTP_REFERER']) == preg_replace("/([^\:]+).*/", "\\1", $_SERVER['HTTP_HOST'])))) {
			return TRUE;
		} else {
			echo 'submit_invalid';exit;
		}
	}
}

function getgpc($k, $type='GP') {
	$type = strtoupper($type);
	switch($type) {
		case 'G': $var = &$_GET; break;
		case 'P': $var = &$_POST; break;
		case 'C': $var = &$_COOKIE; break;
		default:
			if(isset($_GET[$k])) {
				$var = &$_GET;
			} else {
				$var = &$_POST;
			}
			break;
	}

	return isset($var[$k]) ? $var[$k] : NULL;

}

function sizecount($size) {
	if($size >= 1073741824) {
		$size = round($size / 1073741824 * 100) / 100 . ' GB';
	} elseif($size >= 1048576) {
		$size = round($size / 1048576 * 100) / 100 . ' MB';
	} elseif($size >= 1024) {
		$size = round($size / 1024 * 100) / 100 . ' KB';
	} else {
		$size = $size . ' Bytes';
	}
	return $size;
}

function show_header() {
	ob_start();
	$charset = CHARSET;
/*vot*/	$title = lang('restore_title');//vot
/*vot*/	$intro = lang('restore_questions');//vot
/*vot*/	print <<< EOT
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=$charset" />
<title>$title</title>
<style type="text/css">
* { word-break: break-all; }
body { text-align:center; margin:0; padding:0; background: #F5FBFF; font-size:12px; font-family:Verdana, Arial, Helvetica, 'SimSun', sans-serif; line-height: 1.8; }
.bodydiv { margin:40px auto 0; width:960px; text-align:left; border:solid #86B9D6; border-width:5px 1px 1px; background:#FFF; }
h1 { font-size:18px; margin:1px 0 0; line-height:50px; height:50px; background:#E8F7FC; color:#5086A5; padding-left:10px; }
	h1 span { font-weight:400; font-size:12px; }
.main { margin:0 auto; padding:20px; min-height:100px; }
#footer { font-size:10px; line-height:40px; background:#E8F7FC; text-align:center; height:38px; overflow:hidden; color:#5086A5; }
table { border-collapse:collapse; margin-bottom:20px; }
	th { text-align:left; color:#5086A5; }
	th, td { padding:5px 2px; border-bottom:1px dashed #DDD; }
	.subtb { padding-left:20px; }
.desc { margin-bottom:20px; }
.red{ color:red; }
</style>
</head>

<body>
<script type="text/javascript">
	function $(id) {
		return document.getElementById(id);
	}

	function showmessage(message) {
		document.getElementById('notice').innerHTML += message + '<br />';
	}

	function display(id) {
		var obj = $(id);
		if(obj.style.visibility) {
			obj.style.visibility = obj.style.visibility == 'visible' ? 'hidden' : 'visible';
		} else {
			obj.style.display = obj.style.display == '' ? 'none' : '';
		}
	}
	function redirect(url) {
		window.location = url;
		if($('confirmbtn')) {
			$('confirmbtn').disabled = !($('confirmbtn').disabled   &&   true);
		}
		if($('cancelbtn')) {
			$('cancelbtn').disabled = !($('cancelbtn').disabled   &&   true);
		}
	}
</script>

<div class="bodydiv">
	<h1>
<!--vot-->	$title
<!--vot-->	<span> &nbsp; $intro <a href="http://www.discuz.net" target="_blank">http://www.discuz.net</a></span>
	</h1>
	<div class="main">
EOT;
}

function show_footer($quit = true) {
/*vot*/	$y = date('Y');
	echo <<< EOT
	</div>
	<div id="footer">&copy; 2001 - {$y}, Tencent Cloud.</div>
</div>
</body>
</html>
EOT;
	ob_flush();
	exit();
}

function show_msg($message, $url_forward = '', $type = 'message', $success = 0) {
	global $siteurl;

	show_header();

	$message = lang($message);

	if($type == 'message') {
		echo '<span'.($success ? '' : ' class="red"').'>'.$message.'</span>';
	} elseif($type == 'redirect') {
		echo "$message ...";
/*vot*/		echo "<br /><br /><br /><a href=\"$url_forward\">".lang('browser_jump')."</a>";
		echo "<script>setTimeout(\"redirect('$url_forward');\", 1250);</script>";
	} elseif($type == 'confirm') {
		echo "$message";
/*vot*/		echo "<br /><br /><br /><button id=\"confirmbtn\" onclick=\"redirect('$url_forward')\">"+lang('ok')+"</button><button id=\"cancelbtn\" onclick=\"redirect('{$siteurl}restore.php')\">".lang('cancel')."</button>";
	}

	show_footer();
}

function show_error($type, $errors = '', $quit = false) {

	$title = lang($type);
	$comment = lang($type.'_comment', false);
	$errormsg = '';
	if($errors) {
		if(!empty($errors)) {
			foreach ((array)$errors as $k => $v) {
				if(is_numeric($k)) {
					$comment .= "<li><em class=\"red\">".lang($v)."</em></li>";
				}
			}
		}
	}

	if($step > 0) {
		echo "<div class=\"desc\"><b>$title</b><ul>$comment</ul>";
	} else {
		echo "</div><div class=\"main\" style=\"margin-top: -123px;\"><b>$title</b><ul style=\"line-height: 200%; margin-left: 30px;\">$comment</ul>";
	}

	if($quit) {
		echo '<br /><span class="red">'.lang('error_quit_msg').'</span><br /><br /><br /><br /><br /><br />';
	}

	echo '</div>';

	$quit && show_footer();
}


function show_tips($tip, $title = '', $comment = '', $style = 1) {
	$title = empty($title) ? lang($tip) : $title;
	$comment = empty($comment) ? lang($tip.'_comment', FALSE) : $comment;
	if($style) {
		echo "<div class=\"desc\">$title";
	} else {
		echo "</div><div class=\"main\" style=\"margin-top: -123px;\">$title<div class=\"desc1 marginbot\"><ul>";
	}
	$comment && print('<br>'.$comment);
	echo "</div>";
}

function lang($lang_key, $force = true, $replace = array()) {
/*vot*/	static $lang;
/*vot*/	require_once ROOT_PATH.'source/language/'.DISCUZ_LANG.'/lang_restore.php';
//vot MOVED TO lang_restore.php:
//vot	$lang = array('filename' => '文件名称',
//vot			);
	$return = isset($lang[$lang_key]) ? $lang[$lang_key] : ($force ? $lang_key : '');
	if($replace && is_array($replace)) {
		$searchs = $replaces = array();
		foreach($replace as $k => $v) {
			$searchs[] = '{'.$k.'}';
			$replaces[] = $v;
		}
		$return = str_replace($searchs, $replaces, $return);
	}
	return $return;
}

function splitsql($sql) {
	$sql = str_replace("\r", "\n", $sql);
	$ret = array();
	$num = 0;
	$queriesarray = explode(";\n", trim($sql));
	unset($sql);
	foreach($queriesarray as $query) {
		$queries = explode("\n", trim($query));
		foreach($queries as $query) {
			$ret[$num] .= $query[0] == "#" ? NULL : $query;
		}
		$num++;
	}
	return($ret);
}

function syntablestruct($sql, $version, $dbcharset) {

	if(strpos(trim(substr($sql, 0, 18)), 'CREATE TABLE') === FALSE) {
		return $sql;
	}

	$sqlversion = strpos($sql, 'ENGINE=') === FALSE ? FALSE : TRUE;

	if($sqlversion === $version) {

		return $sqlversion && $dbcharset ? preg_replace(array('/ character set \w+/i', '/ collate \w+/i', "/DEFAULT CHARSET=\w+/is"), array('', '', "DEFAULT CHARSET=$dbcharset"), $sql) : $sql;
	}

	if($version) {
		return preg_replace(array('/TYPE=HEAP/i', '/TYPE=(\w+)/is'), array("ENGINE=MEMORY DEFAULT CHARSET=$dbcharset", "ENGINE=\\1 DEFAULT CHARSET=$dbcharset"), $sql);

	} else {
		return preg_replace(array('/character set \w+/i', '/collate \w+/i', '/ENGINE=MEMORY/i', '/\s*DEFAULT CHARSET=\w+/is', '/\s*COLLATE=\w+/is', '/ENGINE=(\w+)(.*)/is'), array('', '', 'ENGINE=HEAP', '', '', 'TYPE=\\1\\2'), $sql);
	}
}

/*
function is_https() MOVED to source/function/function.inc.php
*/

class dbstuff {
	var $querynum = 0;
	var $drivertype = 'mysql';
	var $link;
	var $histories;
	var $time;
	var $tablepre;

	function connect($dbhost, $dbuser, $dbpw, $dbname = '', $dbcharset, $pconnect = 0, $tablepre='', $time = 0) {
		$this->time = $time;
		$this->tablepre = $tablepre;
		if($pconnect) {
			if(!$this->link = mysql_pconnect($dbhost, $dbuser, $dbpw)) {
				return FALSE;
			}
		} else {
			if(!$this->link = mysql_connect($dbhost, $dbuser, $dbpw, 1)) {
				return FALSE;
			}
		}

		if($this->version() > '4.1') {
			if($dbcharset) {
				mysql_query("SET character_set_connection=".$dbcharset.", character_set_results=".$dbcharset.", character_set_client=binary", $this->link);
			}

			if($this->version() > '5.0.1') {
				mysql_query("SET sql_mode=''", $this->link);
			}
		}

		if($dbname) {
			mysql_select_db($dbname, $this->link);
		}
		return TRUE;
	}

	function fetch_array($query, $result_type = MYSQL_ASSOC) {
		return mysql_fetch_array($query, $result_type);
	}

	function result_first($sql, &$data) {
		$query = $this->query($sql);
		$data = $this->result($query, 0);
	}

	function fetch_first($sql, &$arr) {
		$query = $this->query($sql);
		$arr = $this->fetch_array($query);
	}

	function fetch_all($sql, &$arr) {
		$query = $this->query($sql);
		while($data = $this->fetch_array($query)) {
			$arr[] = $data;
		}
	}

	function cache_gc() {
		$this->query("DELETE FROM {$this->tablepre}sqlcaches WHERE expiry<$this->time");
	}

	function query($sql, $type = '', $cachetime = FALSE) {
		$func = $type == 'UNBUFFERED' && @function_exists('mysql_unbuffered_query') ? 'mysql_unbuffered_query' : 'mysql_query';
		if(!($query = $func($sql, $this->link)) && $type != 'SILENT') {
			$this->halt('SQL:', $sql);
		}
		$this->querynum++;
		$this->histories[] = $sql;
		return $query;
	}

	function affected_rows() {
		return mysql_affected_rows($this->link);
	}

	function error() {
		return (($this->link) ? mysql_error($this->link) : mysql_error());
	}

	function errno() {
		return intval(($this->link) ? mysql_errno($this->link) : mysql_errno());
	}

	function result($query, $row) {
		$query = @mysql_result($query, $row);
		return $query;
	}

	function num_rows($query) {
		$query = mysql_num_rows($query);
		return $query;
	}

	function num_fields($query) {
		return mysql_num_fields($query);
	}

	function free_result($query) {
		return mysql_free_result($query);
	}

	function insert_id() {
		return ($id = mysql_insert_id($this->link)) >= 0 ? $id : $this->result($this->query("SELECT last_insert_id()"), 0);
	}

	function fetch_row($query) {
		$query = mysql_fetch_row($query);
		return $query;
	}

	function fetch_fields($query) {
		return mysql_fetch_field($query);
	}

	function version() {
		return mysql_get_server_info($this->link);
	}

	function close() {
		return mysql_close($this->link);
	}

	function halt($message = '', $sql = '') {
		show_error('run_sql_error', $message.$sql.'<br /> Error:'.$this->error().'<br />Errno:'.$this->errno(), 0);
	}
}

class dbstuffi {
	var $querynum = 0;
	var $drivertype = 'mysqli';
	var $link;
	var $histories;
	var $time;
	var $tablepre;

	function connect($dbhost, $dbuser, $dbpw, $dbname = '', $dbcharset, $pconnect = 0, $tablepre='', $time = 0) {
		$this->time = $time;
		$this->tablepre = $tablepre;
		$this->link = new mysqli();
		if(!$this->link->real_connect($dbhost, $dbuser, $dbpw, $dbname)) {
			return FALSE;
		}

		if($this->version() > '4.1') {
			if($dbcharset) {
				$this->link->set_charset($dbcharset);
			}

			if($this->version() > '5.0.1') {
				$this->query("SET sql_mode=''");
			}
		}

		return TRUE;
	}

	function fetch_array($query, $result_type = MYSQLI_ASSOC) {
		return $query ? $query->fetch_array($result_type) : null;
	}

	function result_first($sql, &$data) {
		$query = $this->query($sql);
		$data = $this->result($query, 0);
	}

	function fetch_first($sql, &$arr) {
		$query = $this->query($sql);
		$arr = $this->fetch_array($query);
	}

	function fetch_all($sql, &$arr) {
		$query = $this->query($sql);
		while($data = $this->fetch_array($query)) {
			$arr[] = $data;
		}
	}

	function cache_gc() {
		$this->query("DELETE FROM {$this->tablepre}sqlcaches WHERE expiry<$this->time");
	}

	function query($sql, $type = '', $cachetime = FALSE) {
		$resultmode = $type == 'UNBUFFERED' ? MYSQLI_USE_RESULT : MYSQLI_STORE_RESULT;
		if(!($query = $this->link->query($sql, $resultmode)) && $type != 'SILENT') {
			$this->halt('SQL:', $sql);
		}
		$this->querynum++;
		$this->histories[] = $sql;
		return $query;
	}

	function affected_rows() {
		return $this->link->affected_rows;
	}

	function error() {
		return (($this->link) ? $this->link->error : mysqli_error());
	}

	function errno() {
		return intval(($this->link) ? $this->link->errno : mysqli_errno());
	}

	function result($query, $row) {
		if(!$query || $query->num_rows == 0) {
			return null;
		}
		$query->data_seek($row);
		$assocs = $query->fetch_row();
		return $assocs[0];
	}

	function num_rows($query) {
		$query = $query ? $query->num_rows : 0;
		return $query;
	}

	function num_fields($query) {
		return $query ? $query->field_count : 0;
	}

	function free_result($query) {
		return $query ? $query->free() : false;
	}

	function insert_id() {
		return ($id = $this->link->insert_id) >= 0 ? $id : $this->result($this->query("SELECT last_insert_id()"), 0);
	}

	function fetch_row($query) {
		$query = $query ? $query->fetch_row() : null;
		return $query;
	}

	function fetch_fields($query) {
		return $query ? $query->fetch_field() : null;
	}

	function version() {
		return $this->link->server_info;
	}

	function close() {
		return $this->link->close();
	}

	function halt($message = '', $sql = '') {
		show_error('run_sql_error', $message.$sql.'<br /> Error:'.$this->error().'<br />Errno:'.$this->errno(), 0);
	}
}

?>
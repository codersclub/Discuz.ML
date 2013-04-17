<?php

/**
 * DiscuzX Convert
 *
 * $Id: do_select.inc.php 20664 2011-03-01 08:30:19Z shanzongjun $
 * Modified by Valery Votintsev, codersclub.org
 */

$config = loadconfig();
$db_source = new db_mysql($config['source']);
$db_source->connect();

$db_target = new db_mysql($config['target']);
$db_target->connect();

$db_uc = new db_mysql($config['ucenter']);
if($setting['config']['ucenter']) {
	$db_uc->connect();
}

$prgdir = DISCUZ_ROOT.'./source/'.$source.'/table/';

$process = array(
'timestart' => time(),
'start' => array(),
'tables' => array(),
'steps' => array(),
);

if(submitcheck('submit')) {
	$prgs = getgpc('prgs');
	if(is_array($prgs)) {
		foreach ($prgs as $prg) {
			if(substr($prg, 0, 6) == 's_prg_') {
				$prg = substr($prg, 6);
				$process['steps'][$prg] = 0;
			}elseif(substr($prg, 0, 6) == 'c_prg_') {
				$prg = substr($prg, 6);
				$process['start'][$prg] = 0;
			} else {
				$process['tables'][$prg] = 0;
			}
		}
		save_process('main', $process);
/*vot*/		showmessage(lang('you_selected')." (".count($prgs).") ".lang('process_number'), "index.php?a=convert&s=$source");
	}
}

/*vot*/ showtips("<li>".lang('process_intro')."</li>");
show_form_header();
show_table_header();
/*vot*/ show_table_row(array('<span style="float: left">'.lang('process_configure').'</span><label style="float: right"><input type="checkbox" class="checkbox" onclick="checkAll(\'prefix\', this.form, \'prgs\')" id="chkall" name="chkall" checked> '.lang('select_all').'</label>'), 'title');

if($setting['start']) {
/*vot*/	show_table_row(array(lang('run_before_convert')), 'bg1');
	echo "<tr class=bg2><td colspan=2>\n<ul id=\"ulist\">";
	foreach ($setting['start'] as $key => $value) {
		echo "<li><label><input type=\"checkbox\" class=\"checkbox\" name=\"prgs[]\" value=\"c_prg_$key.php\" checked>&nbsp;$key($value)</label></li>";
	}
	echo "</ul>\n</td></tr>";
}


$tablelist = array();
$cdir = dir($prgdir);
while(($entry = $cdir->read()) !== false) {
	if(($entry != '.' && $entry != '..') && is_file($prgdir.$entry)) {
		if(preg_match("/uc_/", $entry)) {
			$table_source = str_replace('.php', '', $db_source->tablepre.$entry);
			$source_exist = $db_source->result_first("SHOW TABLES LIKE '".substr($table_source, strpos($table_source, '.') + 1)."'");
			if(empty($source_exist)) {
				continue;
			}
		}
		$tablelist[] = $entry;
	}
}
$cdir->close();

if($tablelist) {
	sort($tablelist);
/*vot*/	show_table_row(array('<span style="float: left">'.lang('table_convert').'</span>'), 'bg1');
	echo "<tr class=bg2><td colspan=2>\n<ul id=\"ulist\">";
	foreach ($tablelist as $entry) {
		echo "<li><label><input type=\"checkbox\" class=\"checkbox\" name=\"prgs[]\" value=\"$entry\" checked>&nbsp;".basename($entry, '.php')."</label></li>";
	}
	echo "</ul>\n</td></tr>";
}

if($setting['steps']) {
/*vot*/	show_table_row(array(lang('other_convert')), 'bg1');
	echo "<tr class=bg2><td colspan=2>\n<ul id=\"ulist\">";
	foreach ($setting['steps'] as $key => $value) {
		echo "<li><label><input type=\"checkbox\" class=\"checkbox\" name=\"prgs[]\" value=\"s_prg_$key.php\" checked>&nbsp;$key($value)</label></li>";
	}
	echo "</ul>\n</td></tr>";
}
show_table_footer();
/*vot*/ show_form_footer('submit', lang('start_conversion'));
showfooter();

exit();
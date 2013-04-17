<?php

/**
 * DiscuzX Convert
 *
 * $Id: threadsmod.php 10469 2010-05-11 09:12:14Z monkey $
 * Modified by Valery Votintsev, codersclub.org
 */

$curprg = basename(__FILE__);

$table_source = $db_source->tablepre.'threadsmod';
$table_target = $db_target->tablepre.'forum_threadmod';

$limit = 100;
$next = FALSE;

$start = $_GET['start'] ? getgpc('start') : 0;
if($start == 0) {
	$db_target->query("TRUNCATE $table_target");
}

$query = $db_source->query("SELECT * FROM $table_source ORDER BY tid LIMIT $start, $limit");
while ($data = $db_source->fetch_array($query)) {

	$next = TRUE;

	$data  = daddslashes($data, 1);

	$datalist = implode_field_value($data, ',', db_table_fields($db_target, $table_target));

	$db_target->query("INSERT INTO $table_target SET $datalist");
}

if($next) {
	showmessage(lang('continue_convert_table').$table_source.lang('from'). $start .lang('to'). ($start+$limit). lang('lines'), "index.php?a=$action&source=$source&prg=$curprg&start=".($start + $limit));
}

?>
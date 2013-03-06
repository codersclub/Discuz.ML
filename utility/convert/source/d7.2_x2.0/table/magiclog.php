<?php

/**
 * DiscuzX Convert
 *
 * $Id: magiclog.php 15719 2010-08-25 23:51:36Z monkey $
 */

$curprg = basename(__FILE__);

$table_source = $db_source->tablepre.'magiclog';
$table_target = $db_target->tablepre.'common_magiclog';

$limit = 2000;
$nextid = 0;

$start = intval(getgpc('start'));
if($start == 0) {
	$db_target->query("TRUNCATE $table_target");
}

$query = $db_source->query("SELECT * FROM $table_source LIMIT $start, $limit");
while ($row = $db_source->fetch_array($query)) {

	$nextid = 1;

	$row['targetid'] = $row['targettid'] ? $row['targettid'] : 0;
	$row['idtype'] = $row['targettid'] ? 'tid' : '';
	unset($row['targettid'], $row['targetpid']);

	$row  = daddslashes($row, 1);

	$data = implode_field_value($row, ',', db_table_fields($db_target, $table_target));

	$db_target->query("INSERT INTO $table_target SET $data");
}

if($nextid) {
	showmessage("����ת�����ݱ� ".$table_source." $start �� ".($start+$limit)." ��", "index.php?a=$action&source=$source&prg=$curprg&start=".($start+$limit));
}

?>
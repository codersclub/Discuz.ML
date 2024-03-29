<?php

/**
 * DiscuzX Convert
 *
 * $Id: favorites.php 15719 2010-08-25 23:51:36Z monkey $
 * Modified by Valery Votintsev, codersclub.org
 */

$curprg = basename(__FILE__);

$table_source = $db_source->tablepre.'favorites';
$table_target = $db_target->tablepre.'home_favorite';

$limit = 100;
$nextid = 0;

$start = getgpc('start');
$nextstep = intval(getgpc('nextstep'));
if(empty($start)) {
	$start = 0;
	$db_target->query("TRUNCATE $table_target");
}

$query = $db_source->query("SELECT * FROM $table_source LIMIT $start, $limit");
while ($row = $db_source->fetch_array($query)) {

	$nextid = 1;

	$row['id'] = 0;
	$row['idtype'] = '';

	if($row['tid']) {
		$row['title'] = $db_source->result_first("SELECT subject FROM ".$db_source->tablepre."threads WHERE tid='".$row['tid']."'");
		$row['id'] = $row['tid'];
		$row['idtype'] = 'tid';
	} elseif($row['fid']) {
		$row['title'] = $db_source->result_first("SELECT name FROM ".$db_source->tablepre."forums WHERE fid='".$row['fid']."'");
		$row['id'] = $row['fid'];
		$row['idtype'] = 'fid';
	}
	$row  = daddslashes($row, 1);

	if($row['id']) {
		unset($row['tid'], $row['fid']);
		$row['dateline'] = time();
		$data = implode_field_value($row, ',', db_table_fields($db_target, $table_target));
		$db_target->query("INSERT INTO $table_target SET $data");
	}

}

if($nextid) {
/*vot*/	showmessage(lang('continue_convert_table').$table_source." $start ".lang('to')." ".($start+$limit)." ".lang('records')." ", "index.php?a=$action&source=$source&prg=$curprg&start=".($start+$limit));
}

?>
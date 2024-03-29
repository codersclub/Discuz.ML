<?php

/**
 * DiscuzX Convert
 *
 * $Id: membermagics.php 15719 2010-08-25 23:51:36Z monkey $
 * Modified by Valery Votintsev, codersclub.org
 */

$curprg = basename(__FILE__);

$table_source = $db_source->tablepre.'membermagics';
$table_sourcemarket = $db_source->tablepre.'magicmarket';
$table_target = $db_target->tablepre.'common_member_magic';

$limit = 1000;
$nextid = 0;

$start = getgpc('start');
if(empty($start)) {
	$start = 0;
	$db_target->query("TRUNCATE $table_target");
}

$query = $db_source->query("SELECT * FROM $table_source LIMIT $start, $limit");
while ($row = $db_source->fetch_array($query)) {

	$nextid = 1;

	$row  = daddslashes($row, 1);

	$data = implode_field_value($row, ',', db_table_fields($db_target, $table_target));

	$db_target->query("INSERT INTO $table_target SET $data");
}

if($nextid) {
	$query = $db_source->query("SELECT * FROM $table_sourcemarket");
	while ($row = $db_source->fetch_array($query)) {
		$row = daddslashes($row, 1);
		$mm = $db_target->fetch_first("SELECT * FROM $table_target WHERE uid='$row[uid]' AND magicid='$row[magicid]'");
		if($mm) {
			$db_target->query("UPDATE $table_target SET num=num+'$row[num]' WHERE uid='$row[uid]' AND magicid='$row[magicid]'");
		} else {
			$db_target->query("INSERT INTO $table_target SET uid='$row[uid]', magicid='$row[magicid]', num='$row[num]'");
		}
	}
/*vot*/	showmessage(lang('continue_convert_table').$table_source." $start ".lang('to')." ".($start+$limit)." ".lang('records')." ", "index.php?a=$action&source=$source&prg=$curprg&start=".($start+$limit));
}

?>
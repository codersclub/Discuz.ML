<?php

/**
 * DiscuzX Convert
 *
 * $Id: forumrecommend.php 15815 2010-08-27 02:56:14Z monkey $
 * Modified by Valery Votintsev, codersclub.org
 */

$curprg = basename(__FILE__);

$table_source = $db_source->tablepre.'forumrecommend';
$table_target = $db_target->tablepre.'forum_forumrecommend';

$limit = 2500;
$nextid = 0;

$start = getgpc('start');
if(empty($start)) {
	$start = 0;
	$db_target->query("TRUNCATE $table_target");
}

$query = $db_source->query("SELECT * FROM $table_source WHERE tid>'$start' ORDER BY tid LIMIT $limit");
while ($row = $db_source->fetch_array($query)) {

	$nextid = $row['tid'];

	$row  = daddslashes($row, 1);

	$data = implode_field_value($row, ',', db_table_fields($db_target, $table_target));

	$db_target->query("INSERT INTO $table_target SET $data");
}

if($nextid) {
/*vot*/	showmessage(lang('continue_convert_table').$table_source." tid > $nextid", "index.php?a=$action&source=$source&prg=$curprg&start=$nextid");
}

?>
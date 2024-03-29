<?php

/**
 * DiscuzX Convert
 *
 * $Id: home_poke.php 15720 2010-08-25 23:56:08Z monkey $
 * Modified by Valery Votintsev, codersclub.org
 */

$curprg = basename(__FILE__);

$table_source = $db_source->tablepre.'poke';
$table_target = $db_target->tablepre.'home_poke';

$start = getgpc('start');
$start = empty($start) ? 0 : intval($start);
$limit = $setting['limit']['poke'] ? $setting['limit']['poke'] : 10000;
$nextid = $limit + $start;
$done = true;

if($start == 0) {
	$db_target->query("TRUNCATE $table_target");
}

$query = $db_source->query("SELECT * FROM $table_source ORDER BY uid LIMIT $start, $limit");
while ($value = $db_source->fetch_array($query)) {

	$done = false;

	$value  = daddslashes($value, 1);

	$data = implode_field_value($value, ',', db_table_fields($db_target, $table_target));

	$db_target->query("REPLACE INTO $table_target SET $data");
}

if($done == false) {
/*vot*/	showmessage(lang('continue_convert_table').$table_source." uid> $nextid", "index.php?a=$action&source=$source&prg=$curprg&start=$nextid");
}

?>
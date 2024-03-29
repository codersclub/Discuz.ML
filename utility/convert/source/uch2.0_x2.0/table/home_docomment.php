<?php

/**
 * DiscuzX Convert
 *
 * $Id: home_docomment.php 15720 2010-08-25 23:56:08Z monkey $
 * Modified by Valery Votintsev, codersclub.org
 */

$curprg = basename(__FILE__);

$table_source = $db_source->tablepre.'docomment';
$table_target = $db_target->tablepre.'home_docomment';

$limit = $setting['limit']['docomment'] ? $setting['limit']['docomment'] : 1000;
$nextid = 0;

$start = getgpc('start');
if($start == 0) {
	$db_target->query("TRUNCATE $table_target");
}

$query = $db_source->query("SELECT  * FROM $table_source WHERE id>'$start' ORDER BY id LIMIT $limit");
while ($docomment = $db_source->fetch_array($query)) {

	$nextid = $docomment['id'];

	$docomment  = daddslashes($docomment, 1);

	$data = implode_field_value($docomment, ',', db_table_fields($db_target, $table_target));

	$db_target->query("INSERT INTO $table_target SET $data");
}

if($nextid) {
/*vot*/	showmessage(lang('continue_convert_table').$table_source." id> $nextid", "index.php?a=$action&source=$source&prg=$curprg&start=$nextid");
}

?>
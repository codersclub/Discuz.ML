<?php

/**
 * DiscuzX Convert
 *
 * $Id: smilies.php 15475 2010-08-24 07:34:47Z monkey $
 * Modified by Valery Votintsev, codersclub.org
 */

$curprg = basename(__FILE__);

$table_source = $db_source->tablepre.'smilies';
$table_target = $db_target->tablepre.'common_smiley';

$limit = 100;
$nextid = 0;

$start = intval(getgpc('start'));
if($start == 0) {
	$db_target->query("TRUNCATE $table_target");
}

$query = $db_source->query("SELECT  * FROM $table_source WHERE id>$start ORDER BY id LIMIT $limit");
while ($row = $db_source->fetch_array($query)) {

	$nextid = $row['id'];

	$row  = daddslashes($row, 1);

	$data = implode_field_value($row, ',', db_table_fields($db_target, $table_target));

	$db_target->query("INSERT INTO $table_target SET $data");
}

if($nextid) {
	showmessage(lang('continue_convert_table').$table_source." id > $nextid ", "index.php?a=$action&source=$source&prg=$curprg&start=$nextid");
} else {
	$db_target->query("REPLACE INTO $table_target (id, typeid, displayorder, type, code, url) VALUES ('83','4','9','stamp','Editor Choice','010.gif')");
	$db_target->query("REPLACE INTO $table_target (id, typeid, displayorder, type, code, url) VALUES ('84','0','18','stamplist','Editor Choice','010.small.gif')");

}

?>
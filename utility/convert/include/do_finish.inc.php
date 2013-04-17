<?php
// Modified by Valery Votintsev, codersclub.org

$config = loadconfig();
$db_target = new db_mysql($config['target']);
$db_target->connect();

$readme = DISCUZ_ROOT.'./source/'.$source.'/readme.txt';
if(file_exists($readme)) {
	$txt = file_get_contents($readme);
} else {
	$txt = lang('finish');
}

$txt = nl2br(htmlspecialchars($txt));
$txt = str_replace('  ', '&nbsp;&nbsp;', $txt);
$txt = str_replace("\t", '&nbsp;&nbsp;&nbsp;&nbsp;', $txt);

$process = load_process('main');
list($rday, $rhour, $rmin, $rsec) = remaintime(time() - $process['timestart']);
$stime = gmdate('Y-m-d H:i:s', $process['timestart'] + 3600* 8);
$etime = gmdate('Y-m-d H:i:s',time() + 3600* 8);
/*vot*/ $timetodo = lang('conversion_completed');
/*vot*/ $timetodo .= "<br><br>".lang('start_time').": <strong>$stime</strong><br>".lang('end_time').": <strong>$etime</strong>";
/*vot*/ $timetodo .= "<br>".lang('execution_time').": <strong>$rday</strong> ".lang('days').", <strong>$rhour</strong> ".lang('hours').", <strong>$rmin</strong> ".lang('minutes').", <strong>$rsec</strong> ".lang('seconds');
/*vot*/ $timetodo .= "<br><br>".lang('update_more');

showtips($timetodo);

show_table_header();
/*vot*/ show_table_row(array(lang('read_me')), 'title');
show_table_row(array($txt));
show_table_footer();


<?php

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
$timetodo = "���Ѿ�˳�������������ת��!";
$timetodo .= "<br><br>����������ʼʱ��: <strong>$stime</strong><br>������������ʱ��: <strong>$etime</strong>";
$timetodo .= "<br>�����ۼ�ִ��ʱ��: <strong>$rday</strong>�� <strong>$rhour</strong>Сʱ <strong>$rmin</strong>�� <strong>$rsec</strong>��";
$timetodo .= "<br><br>ͨ������£������ܻ���Ҫ����������ʾ���������������Ӷ�ʹ�����³�����������";

showtips($timetodo);

show_table_header();
show_table_row(array('����˵��(readme)'), 'title');
show_table_row(array($txt));
show_table_footer();

?>
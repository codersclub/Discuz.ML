<?php

$config = loadconfig();
$db_source = new db_mysql($config['source']);
$db_source->connect();

$db_target = new db_mysql($config['target']);
$db_target->connect();

$db_uc = new db_mysql($config['ucenter']);
if($setting['config']['ucenter']) {
	$db_uc->connect();
}

$process = load_process('main');
if(empty($process)) {
	showmessage("������ѡ��ת������", "index.php?action=select&source=$source");
}

$prg = getgpc('prg');

$prg_dir['tables'] = DISCUZ_ROOT.'./source/'.$source.'/table/';
$prg_dir['start'] = DISCUZ_ROOT.'./source/'.$source.'/';
$prg_dir['steps'] = DISCUZ_ROOT.'./source/'.$source.'/';

$prg_done = 0;
$prg_next = '';
$prg_total = $prg_total = count($process['tables']) + count($process['start']) + count($process['steps']);

foreach (array('start', 'tables', 'steps') as $program) {
	if(!empty($process[$program]) && !$process[$program.'_is_end']) {
		foreach ($process[$program] as $k => $v) {
			if($v) {
				$prg_done ++;
			} elseif ($prg_next == '') {
				$prg_next = $k;
			}
		}
		if($prg_next) {
			if(empty($prg) || !file_exists($prg_dir[$program].$prg)) {
				$prg = $prg_next;
			}
			$prg_done ++;

			list($rday, $rhour, $rmin, $rsec) = remaintime(time() - $process['timestart']);
			$stime = gmdate('Y-m-d H:i:s', $process['timestart'] + 3600* 8);
			$timetodo = "������ʼʱ�䣺<strong>$stime</strong>, ���������Ѿ�ִ���� <strong>$rday</strong>�� <strong>$rhour</strong>Сʱ <strong>$rmin</strong>�� <strong>$rsec</strong>��";
			$timetodo .= "<br><br>Ŀǰ����ִ��ת������( $prg_done / $prg_total ) <strong>$prg</strong>��ת����������Ҫ�����ת������ر��������";
			$timetodo .= "<br><br>��������жϻ�����Ҫ���¿�ʼ��ǰ�������� (<a href=\"index.php?a=convert&source=$source&prg=$prg\">���¿�ʼ</a>)";

			showtips($timetodo);
			if(file_exists($prg_dir[$program].$prg)) {
				define('PROGRAM_TYPE', $program);
				require $prg_dir[$program].$prg;
				save_process_main($prg);
				showmessage("ת������ $prg ִ����ϣ� ������ת����һ������", "index.php?a=convert&source=$source", null, 500);
			} else {
				showmessage('����ת���ж�! �޷��ҵ�ת������ '.$prg);
			}
		} else {
			$process[$program.'_is_end'] = 1;
			save_process('main', $process);
		}
	} else {
		$prg_done = $prg_done + count($process[$program]);
	}
}

showmessage('ת������ȫ���������', "index.php?action=finish&source=$source");

function save_process_main($prg = '') {
	global $process;
	if(defined('PROGRAM_TYPE')) {
		$prg = empty($prg) ? $GLOBALS['prg'] : $prg;
		$process[PROGRAM_TYPE][$prg] = 1;
	}
	save_process('main', $process);
}
?>
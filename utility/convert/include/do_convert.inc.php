<?php
// Modified by Valery Votintsev, codersclub.org

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
/*vot*/	showmessage(lang('select_convert_process'), "index.php?action=select&source=$source");
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
/*vot*/			$timetodo = lang('update_start_time')." <strong>$stime</strong>, ".lang('elapsed_time')." <strong>$rday</strong> ".lang('days').", <strong>$rhour</strong> ".lang('hours').", <strong>$rmin</strong> ".lang('minutes').", <strong>$rsec</strong> ".lang('seconds');
/*vot*/			$timetodo .= "<br><br>".lang('progress')." ( $prg_done / $prg_total ) <strong>$prg</strong>, ".lang('progress_intro1');
/*vot*/			$timetodo .= "<br><br>".lang('progress_intro2')." (<a href=\"index.php?a=convert&source=$source&prg=$prg\">".lang('restart')."</a>)";

			showtips($timetodo);
			if(file_exists($prg_dir[$program].$prg)) {
				define('PROGRAM_TYPE', $program);
				require $prg_dir[$program].$prg;
				save_process_main($prg);
/*vot*/				showmessage($prg." ".lang('process_finished'), "index.php?a=convert&source=$source", null, 500);
			} else {
/*vot*/				showmessage(lang('process_not_found').$prg);
			}
		} else {
			$process[$program.'_is_end'] = 1;
			save_process('main', $process);
		}
	} else {
		$prg_done = $prg_done + count($process[$program]);
	}
}

/*vot*/ showmessage(lang('process_all_finished'), "index.php?action=finish&source=$source");

function save_process_main($prg = '') {
	global $process;
	if(defined('PROGRAM_TYPE')) {
		$prg = empty($prg) ? $GLOBALS['prg'] : $prg;
		$process[PROGRAM_TYPE][$prg] = 1;
	}
	save_process('main', $process);
}

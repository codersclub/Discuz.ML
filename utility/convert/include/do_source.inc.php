<?php
// Modified by Valery Votintsev, codersclub.org
$datadir = DISCUZ_ROOT.'./source/';

/*vot*/ showtips('<li><strong>'.lang('update_permissions').'</strong></li><li><strong>'.lang('update_forum_too').'</strong></li><li>'.lang('update_choose_process').'</li><li>'.lang('update_more_space').'</li>');

if(is_dir($datadir)) {

	$cdir = dir($datadir);
	show_table_header();
	show_table_row(array(
/*vot*/			lang('source_version'),
/*vot*/			lang('target_version'),
/*vot*/			array('width="50%"', lang('introduction')),
/*vot*/			array('width="5%"', lang('description')),
/*vot*/			array('width="5%"', lang('settings')),
			array('width="5%"', ''),
		), 'header title');
	while(($entry = $cdir->read()) !== false) {
		if(($entry != '.' && $entry != '..') && is_dir($datadir.$entry)) {
			$settingfile = $datadir.$entry.'/setting.ini';
			$readmefile = $datadir.$entry.'/readme.txt';

/*vot*/			$readme = file_exists($readmefile) ? '<a target="_blank" href="source/'.$entry.'/readme.txt">'.lang('view_readme').'</a>' : '';

			if(file_exists($settingfile) && $setting = loadsetting($entry)) {
				$trclass = $trclass == 'bg1' ? 'bg2' : 'bg1';
				show_table_row(
					array(
						$setting['program']['source'],
						$setting['program']['target'],
						$setting['program']['introduction'],
						array('align="center"', $readme),
/*vot*/						array('align="center"', '<a href="index.php?a=setting&source='.rawurlencode($entry).'">'.lang('change').'</a>'),
/*vot*/						array('align="center"', '<a href="index.php?a=config&source='.rawurlencode($entry).'">'.lang('start').'</a>'),
					), $trclass
				);
			}
		}
	}
	$cdir->close();
	show_table_footer();
} else {
	showmessage('config_child_error');
}
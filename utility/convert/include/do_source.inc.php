<?php

$datadir = DISCUZ_ROOT.'./source/';

showtips('<li><strong>�ڿ�ʼת��֮ǰ����ȷ��������Ŀ¼�µ� data Ŀ¼Ϊ��дȨ�ޣ������޷��洢ת������</strong></li><li><strong>�����Discuz!��UChomeͬʱ��Ҫ�����������������Discuz!��̳</strong></li><li>����ȷѡ��ת�����򣬷����������޷�ת���ɹ�</li><li>��ת�����򲻻��ƻ�ԭʼ���ݣ�����ת����Ҫ2����ԭʼ���ݿռ�</li>');

if(is_dir($datadir)) {

	$cdir = dir($datadir);
	show_table_header();
	show_table_row(array(
			'ԭʼ�汾',
			'Ŀ��汾',
			array('width="50%"', '���'),
			array('width="5%"', '˵��'),
			array('width="5%"', '����'),
			array('width="5%"', ''),
		), 'header title');
	while(($entry = $cdir->read()) !== false) {
		if(($entry != '.' && $entry != '..') && is_dir($datadir.$entry)) {
			$settingfile = $datadir.$entry.'/setting.ini';
			$readmefile = $datadir.$entry.'/readme.txt';

			$readme = file_exists($readmefile) ? '<a target="_blank" href="source/'.$entry.'/readme.txt">�鿴</a>' : '';

			if(file_exists($settingfile) && $setting = loadsetting($entry)) {
				$trclass = $trclass == 'bg1' ? 'bg2' : 'bg1';
				show_table_row(
					array(
						$setting['program']['source'],
						$setting['program']['target'],
						$setting['program']['introduction'],
						array('align="center"', $readme),
						array('align="center"', '<a href="index.php?a=setting&source='.rawurlencode($entry).'">�޸�</a>'),
						array('align="center"', '<a href="index.php?a=config&source='.rawurlencode($entry).'">��ʼ</a>'),
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
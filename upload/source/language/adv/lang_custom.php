<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: lang_custom.php 27449 2012-02-01 05:32:35Z zhangguosheng $
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

$lang = array
(
	'custom_name' => '�Զ�����',
	'custom_desc' => 'ͨ����ģ�桢HTML �ļ�����ӹ����룬������վ�������ҳ����ӹ�档�����ڶ��ü� HTML ֪ʶ��վ����<br /><br />
		<a href="javascript:;" onclick="prompt(\'�븴��(CTRL+C)�������ݲ���ӵ�ģ���У���Ӵ˹��λ\', \'<!--{ad/custom_'.$_GET['customid'].'}-->\')" />�ڲ�����</a>&nbsp;
		<a href="javascript:;" onclick="prompt(\'�븴��(CTRL+C)�������ݲ���ӵ� HTML �ļ��У���Ӵ˹��λ\', \'&lt;script type=\\\'text/javascript\\\' src=\\\''.$_G['siteurl'].'api.php?mod=ad&adid=custom_'.$_GET['customid'].'\\\'&gt;&lt;/script&gt;\')" />�ⲿ����</a>',
	'custom_id_notfound' => '�Զ����治����',
	'custom_codelink' => '�ڲ�����',
	'custom_text' => '�Զ�����',
);

?>
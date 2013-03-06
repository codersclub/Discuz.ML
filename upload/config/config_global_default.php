<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: config_global_default.php 31879 2012-10-18 09:27:24Z zhangguosheng $
 */

$_config = array();

// ----------------------------  CONFIG DB  ----------------------------- //
// ----------------------------  ���ݿ��������---------------------------- //

/**
 * ���ݿ�������������, ֧�ֶ������������, �����ö��������ʱ, �����ݷֲ�ʽ����ʹ��ĳ��������
 * @example
 * $_config['db']['1']['dbhost'] = 'localhost'; // ��������ַ
 * $_config['db']['1']['dbuser'] = 'root'; // �û�
 * $_config['db']['1']['dbpw'] = 'root';// ����
 * $_config['db']['1']['dbcharset'] = 'gbk';// �ַ���
 * $_config['db']['1']['pconnect'] = '0';// �Ƿ��������
 * $_config['db']['1']['dbname'] = 'x1';// ���ݿ�
 * $_config['db']['1']['tablepre'] = 'pre_';// ����ǰ׺
 *
 * $_config['db']['2']['dbhost'] = 'localhost';
 * ...
 *
 */
$_config['db'][1]['dbhost']  		= 'localhost';
$_config['db'][1]['dbuser']  		= 'root';
$_config['db'][1]['dbpw'] 	 	= 'root';
$_config['db'][1]['dbcharset'] 		= 'gbk';
$_config['db'][1]['pconnect'] 		= 0;
$_config['db'][1]['dbname']  		= 'ultrax';
$_config['db'][1]['tablepre'] 		= 'pre_';

/**
 * ���ݿ�ӷ���������( slave, ֻ�� ), ֧�ֶ������������, �����ö��������ʱ, ϵͳ����ÿ�����ʹ��
 * @example
 * $_config['db']['1']['slave']['1']['dbhost'] = 'localhost';
 * $_config['db']['1']['slave']['1']['dbuser'] = 'root';
 * $_config['db']['1']['slave']['1']['dbpw'] = 'root';
 * $_config['db']['1']['slave']['1']['dbcharset'] = 'gbk';
 * $_config['db']['1']['slave']['1']['pconnect'] = '0';
 * $_config['db']['1']['slave']['1']['dbname'] = 'x1';
 * $_config['db']['1']['slave']['1']['tablepre'] = 'pre_';
 * $_config['db']['1']['slave']['1']['weight'] = '0'; //Ȩ�أ�����Խ��Ȩ��Խ��
 *
 * $_config['db']['1']['slave']['2']['dbhost'] = 'localhost';
 * ...
 *
 */
$_config['db']['1']['slave'] = array();

//���ôӷ������Ŀ���
$_config['db']['slave'] = false;
/**
 * ���ݿ� �ֲ������������
 *
 * @example �� common_member ���𵽵ڶ�������, common_session �����ڵ���������, ������Ϊ
 * $_config['db']['map']['common_member'] = 2;
 * $_config['db']['map']['common_session'] = 3;
 *
 * ����û����ȷ�����������ı�, ��һ��Ĭ�ϲ����ڵ�һ��������
 *
 */
$_config['db']['map'] = array();

/**
 * ���ݿ� ��������, ��������ͨ�������ÿ������ķ�����
 */
$_config['db']['common'] = array();

/**
 *  ���ô����ݿ�����ݱ�, ������֮��ʹ�ö��ŷָ�
 *
 * @example common_session, common_member ���������������������д, ��ʹ�ôӷ�����
 * $_config['db']['common']['slave_except_table'] = 'common_session, common_member';
 *
 */
$_config['db']['common']['slave_except_table'] = '';

/**
 * �ڴ�������Ż�����
 * ����������ҪPHP��չ���֧�֣����� memcache �������������ã�
 * �� memcache �޷�����ʱ�����Զ���������������Ż�ģʽ
 */

//�ڴ����ǰ׺, �ɸ���,����ͬ�������еĳ������ô���
$_config['memory']['prefix'] = 'discuz_';

/* reids����, ��ҪPHP��չ���֧��, timeout����������û�в�֤ */
$_config['memory']['redis']['server'] = '';
$_config['memory']['redis']['port'] = 6379;
$_config['memory']['redis']['pconnect'] = 1;
$_config['memory']['redis']['timeout'] = 0;
/**
 * �Ƿ�ʹ�� Redis::SERIALIZER_IGBINARYѡ��,��Ҫigbinary֧��,windows�²���ʱ��رգ�������>�ִ���Reading from client: Connection reset by peer
 * ֧������ѡ�Ĭ��ʹ��PHP��serializer
 * [��Ҫ] ��ѡ���Ѿ�ȡ��ԭ���� $_config['memory']['redis']['igbinary'] ѡ��
 * Redis::SERIALIZER_IGBINARY =2
 * Redis::SERIALIZER_PHP =1
 * Redis::SERIALIZER_NONE =0 //��ʹ��serialize,���޷�����array
 */
$_config['memory']['redis']['serializer'] = 1;

$_config['memory']['memcache']['server'] = '';			// memcache ��������ַ
$_config['memory']['memcache']['port'] = 11211;			// memcache �������˿�
$_config['memory']['memcache']['pconnect'] = 1;			// memcache �Ƿ񳤾�����
$_config['memory']['memcache']['timeout'] = 1;			// memcache ���������ӳ�ʱ

$_config['memory']['apc'] = 1;							// ������ apc ��֧��
$_config['memory']['xcache'] = 1;						// ������ xcache ��֧��
$_config['memory']['eaccelerator'] = 1;					// ������ eaccelerator ��֧��
$_config['memory']['wincache'] = 1;						// ������ wincache ��֧��
// �������������
$_config['server']['id']		= 1;			// ��������ţ���webserver��ʱ�����ڱ�ʶ��ǰ��������ID

// �����������
//
// �����ļ���ȡģʽ; ģʽ2Ϊ���ʡ�ڴ淽ʽ������֧�ֶ��߳�����
// 1=fread 2=readfile 3=fpassthru 4=fpassthru+multiple
$_config['download']['readmod'] = 2;

// �Ƿ����� X-Sendfile ���ܣ���Ҫ������֧�֣�0=close 1=nginx 2=lighttpd 3=apache
$_config['download']['xsendfile']['type'] = 0;

// ���� nginx X-sendfile ʱ����̳����Ŀ¼������ӳ��·������ʹ�� / ��β
$_config['download']['xsendfile']['dir'] = '/down/';

//  CONFIG CACHE
$_config['cache']['type'] 			= 'sql';	// �������� file=�ļ�����, sql=���ݿ⻺��

// ҳ���������
$_config['output']['charset'] 			= 'gbk';	// ҳ���ַ���
$_config['output']['forceheader']		= 1;		// ǿ�����ҳ���ַ��������ڱ���ĳЩ��������
$_config['output']['gzip'] 			= 0;		// �Ƿ���� Gzip ѹ�����
$_config['output']['tplrefresh'] 		= 1;		// ģ���Զ�ˢ�¿��� 0=�ر�, 1=��
$_config['output']['language'] 			= 'zh_cn';	// ҳ������ zh_cn/zh_tw
$_config['output']['staticurl'] 		= 'static/';	// վ�㾲̬�ļ�·������/����β
$_config['output']['ajaxvalidate']		= 0;		// �Ƿ��ϸ���֤ Ajax ҳ�����ʵ�� 0=�رգ�1=��
$_config['output']['iecompatible']		= 0;		// ҳ�� IE ����ģʽ

// COOKIE ����
$_config['cookie']['cookiepre'] 		= 'discuz_'; 	// COOKIEǰ׺
$_config['cookie']['cookiedomain'] 		= ''; 		// COOKIE������
$_config['cookie']['cookiepath'] 		= '/'; 		// COOKIE����·��

// վ�㰲ȫ����
$_config['security']['authkey']			= 'asdfasfas';	// վ�������Կ
$_config['security']['urlxssdefend']		= true;		// ���� URL XSS ����
$_config['security']['attackevasive']		= 0;		// CC �������� 1|2|4|8

$_config['security']['querysafe']['status']	= 1;		// �Ƿ���SQL��ȫ��⣬���Զ�Ԥ��SQLע�빥��
$_config['security']['querysafe']['dfunction']	= array('load_file','hex','substring','if','ord','char');
$_config['security']['querysafe']['daction']	= array('intooutfile','intodumpfile','unionselect','(select', 'unionall', 'uniondistinct');
$_config['security']['querysafe']['dnote']	= array('/*','*/','#','--','"');
$_config['security']['querysafe']['dlikehex']	= 1;
$_config['security']['querysafe']['afullnote']	= 0;

$_config['admincp']['founder']			= '1';		// վ�㴴ʼ�ˣ�ӵ��վ������̨�����Ȩ�ޣ�ÿ��վ��������� 1���������ʼ��
								// ����ʹ��uid��Ҳ����ʹ���û����������ʼ��֮����ʹ�ö��š�,���ֿ�;
$_config['admincp']['forcesecques']		= 0;		// ������Ա�������ð�ȫ���ʲ��ܽ���ϵͳ���� 0=��, 1=��[��ȫ]
$_config['admincp']['checkip']			= 1;		// ��̨��������Ƿ���֤����Ա�� IP, 1=��[��ȫ], 0=�񡣽��ڹ���Ա�޷���½��̨ʱ���� 0��
$_config['admincp']['runquery']			= 0;		// �Ƿ������̨���� SQL ��� 1=�� 0=��[��ȫ]
$_config['admincp']['dbimport']			= 1;		// �Ƿ������̨�ָ���̳����  1=�� 0=��[��ȫ]

/**
 * ϵͳԶ�̵��ù���ģ��
 */

// Զ�̵���: �ܿ��� 0=��  1=��
$_config['remote']['on'] = 0;

// Զ�̵���: ����Ŀ¼��. ���ڰ�ȫ����,�����Ը������Ŀ¼��, �޸����, ���ֹ��޸ĳ����ʵ��Ŀ¼
$_config['remote']['dir'] = 'remote';

// Զ�̵���: ͨ����Կ. ���ڿͻ��˺ͱ�����˵�ͨ�ż���. ���Ȳ����� 32 λ
//          Ĭ��ֵ�� $_config['security']['authkey']	�� md5, ��Ҳ�����ֹ�ָ��
$_config['remote']['appkey'] = md5($_config['security']['authkey']);

// Զ�̵���: �����ⲿ cron ����. ϵͳ�ڲ�����ִ��cron, cron�������ⲿ���򼤻�
$_config['remote']['cron'] = 0;

// $_GET|$_POST�ļ��ݴ���0Ϊ�رգ�1Ϊ�����������󼴿�ʹ��$_G['gp_xx'](xxΪ��������$_GET��$_POST���ϵ����б�����)��ֵΪ�Ѿ�addslashes()�����
$_config['input']['compatible'] = 1;

?>
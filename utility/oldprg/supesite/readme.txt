===============================
SS7 ת���� Discuz�� X1 ע������
===============================

���⣺ת�����ͼƬ��������ַ���ԣ�
������ �������£�
1. ��ԭ SS7 Դ�����ҵ�ͼ�� images/base/attachment.gif������ Disucuz�� X1 ��Ŀ¼ static/image/filetype/ �£�
2. �ҵ� source/module/portal/portal_view.php �ļ����ڴ��롰$content['content'] = blog_bbcode($content['content']);������������´��룺

$ss_url = 'http://your_ss_site_url/'; // �뽫�����ӵ�ַ��Ϊ���� SS վ���ַ������
$findarr = array(
	$ss_url.'batch.download.php?aid=', // �������ص�ַ
	$ss_url.'attachments/',  // ����ͼƬĿ¼
	$ss_url.'images/base/attachment.gif'  // ��������ͼ��
);
$replacearr = array(
	'porta.php?mod=attachment&id=',
	$_G['setting']['attachurl'].'/portal/',
	STATICURL.'image/filetype/attachment.gif'
);
$content['content'] = str_replace($findarr, $replacearr, $content['content']);



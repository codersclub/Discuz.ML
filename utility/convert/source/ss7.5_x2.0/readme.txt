====================================
SupeSite 7.5 ������ Discuz! X2.0 ˵��
====================================

�ر�ʾ!!!
Discuz! X2.0�в�δ�߱�SupeSite 7.5�е�ȫ�����ܣ�
��ת�����򣬽�ת��SupeSite 7.5�е���Ѷ���ࡢ��Ѷ�������ݵ� Discuz! X2.0��Ʒ������ϵͳ�С�
�������ݽ�������ת����
��ˣ�����ת����Discuz! X2.0��Ʒ����ԭ��SupeSite���ܶ�ʧ�����ݶ�ʧ���⣬������Ȩ������Ƿ�ת��������


I ����ǰ��׼��
---------------
1. �������򱸷�Ŀ¼������ old
2. ��ԭSupeSite���г����ƶ��� old Ŀ¼��
3. �ϴ� Discuz! X2.0 ��Ʒ��uploadĿ¼�еĳ���SupeSiteĿ¼
4. ִ�а�װ���� /install
   ��װ��ʱ����ָ��ԭSupeSite�ҽӵ�UCenter Server��ַ����� UCenter�汾����1.6.0���������� UCenter ��

II ����SupeSite����
---------------
1. ��װ��ϣ�����Discuz! X2.0�������������Ժ��ϴ�convert ����Discuz! X2.0��Ŀ¼
2. ִ�� /convert
3. ѡ����Ӧ�ĳ���汾����ʼת��
4. ת�������в��������жϣ�ֱ�������Զ�ִ����ϡ�
5. ת�����̿�����Ҫ�ϳ�ʱ�䣬�����Ľ϶��������Դ����Ӧ��ѡ����������е�ʱ��ִ��

III �������, ��Ҫ���ļ�����
--------------------------
1. �༭��Discuz! X2.0�� config/config_global.php �ļ����趨�ô�ʼ��
2. ֱ�ӷ�����Discuz! X2.0�� admin.php
3. ʹ�ô�ʼ���ʺŵ�¼�������̨���»���
4. ��ϵͳ�����˺ܶ�������Ŀ�������û�Ȩ�ޡ���Ȩ�ޡ���̳���ȵȣ�����Ҫ��ϸ����������һ�Ρ�
5. ת�ƾɸ���Ŀ¼���²�Ʒ��Ŀ¼����ת��֮ǰ��������Ѷ�����е�ͼƬ�޷�������ʾ��
   a)�� old/attachments Ŀ¼��Ŀ¼�µ��ļ� ȫ���ƶ��� ��Discuz! X2.0��Ʒ��/data/attachment/portal/Ŀ¼��
   b) ��ԭ SS7 Դ�����ҵ�ͼ�� images/base/attachment.gif������ Disucuz�� X2.0 ��Ŀ¼ static/image/filetype/ �£�
   c) �ҵ� source/module/portal/portal_view.php �ļ����ڴ��롰$content['content'] = blog_bbcode($content['content']);������������´��룺

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

6. ת�ƾ�ͼƬĿ¼���²�Ʒ��Ŀ¼����ת��֮ǰ��������Ѷ�����еı����޷�������ʾ��
   a)�� old/images Ŀ¼��Ŀ¼�µ��ļ� �ƶ��� ��Discuz! X2.0��Ʒ�ĸ�Ŀ¼��
7. ɾ�� convert �������������Discuz! X2.0��װ����������
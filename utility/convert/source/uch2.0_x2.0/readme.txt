====================================
UCenter Home 2.0 ������ Discuz! X2.0 ˵��
====================================

�ر�ʾ!!!
����UCHome��Discuz!���ֹ��ܽ������������ںϣ����UCHome�Ĳ��ֹ��ܣ������ϵ�Discuz! X�󽫻Ჿ�ֶ�ʧ��
���а�����
��������ר�⹦�ܣ�ԭUCH���ֹ��ܽ�����֧�֣�
UCHͶƱ��UCH�������̳ͶƱ�����������ʽ�ں�Ϊһ�壬���ᡢ�Ⱥ�鹦�ܽ�����֧�֣�
UCHȺ�齫���µ�Ⱥ�鹦�ܴ��ڣ�ԭȺ����ᡢȺ�����ܽ�����֧�֣�
�������Ͻ������µĵ�����UCHԭ���������е�ѧУ��������Ϣ����Ҫ������д��
UCH��ȫվʵ�����ܲ���֧�֣�

������Լ���վ����Ȩ������Ƿ�UCHomeת��������Discuz! X��

I ����ǰ��׼��
---------------
1. �������򱸷�Ŀ¼������ old
2. ��ԭUCHome���г����ƶ��� old Ŀ¼��
3. �ϴ� Discuz! X ��Ʒ��uploadĿ¼�еĳ���UCHomeĿ¼
4. ִ�а�װ���� /install
   ��װ��ʱ����ָ��ԭUCHome�ҽӵ�UCenter Server��ַ����� UCenter�汾����1.6.0���������� UCenter ��

II ����UCHome����
---------------
1. ��װ��ϣ�����Discuz! X�������������Ժ��ϴ�convert ����Discuz! X��Ŀ¼
2. ִ�� /convert
3. ѡ����Ӧ�ĳ���汾����ʼת��
4. ת�������в��������жϣ�ֱ�������Զ�ִ����ϡ�
5. ת�����̿�����Ҫ�ϳ�ʱ�䣬�����Ľ϶��������Դ����Ӧ��ѡ����������е�ʱ��ִ��

III �������, ��Ҫ���ļ�����
--------------------------
1. �༭��Discuz! X�� config/config_global.php �ļ����趨�ô�ʼ��
2. ֱ�ӷ�����Discuz! X�� admin.php
3. ʹ�ô�ʼ���ʺŵ�¼�������̨���»���
4. ��ϵͳ�����˺ܶ�������Ŀ�������û�Ȩ�ޡ���Ȩ�ޡ���̳���ȵȣ�����Ҫ��ϸ����������һ�Ρ�
5. ת�ƾɸ���Ŀ¼���²�Ʒ��Ŀ¼����ת��֮ǰ�����Ķ�̬����־�����ۡ����Ե������е�ͼƬ�޷�������ʾ��
   a)���� old/attachment Ŀ¼
   b)�������ļ��ƶ��� ��Discuz! X��Ʒ /data/attachment/album/ Ŀ¼��
   c)ͬʱ���޸�һ�� Discuz! X�Ĵ���
	 ����־�����е��Ѿ������ͼƬ��ַ��ͨ���ַ����滻����Ϊ���µ�ͼƬ��ַ�������־����ͼƬ�޷���ʾ�����⡣
	 �������£�
	 ��Discuz! X�� ./source/include/space/space_blog.php ����
	 �ҵ���
	 $blog['message'] = blog_bbcode($blog['message']);
	 �������������´��룺
	 $home_url = 'http://your_home_site_url/'; // �뽫�����ӵ�ַ��Ϊ���� UCHome վ���ַ������
	 $bbs_url = 'http://your_bbs_site_url/'; // �뽫�����ӵ�ַ��Ϊ���� BBS վ���ַ������
	 $findarr = array(
		'<img src="attachment/',  //ԭuchmoe����ͼƬĿ¼
		'<IMG src="'.$home_url.'attachment/',  // ԭUCHome����ͼƬĿ¼
		$bbs_url.'attachments/month',  // ԭ��̳����ͼƬĿ¼
	 );
	 $replacearr = array(
		'<img src="'.$_G['setting']['attachurl'].'album/',
		'<IMG src="'.$_G['setting']['attachurl'].'album/',
		$bbs_url.$_G['setting']['attachurl'].'forum/month',
	 );
	 $blog['message'] = str_replace($findarr, $replacearr, $blog['message']);

	 ������UCHome�ĸ������Ǵ����Ĭ�ϵ� ./attachment Ŀ¼����ô
	 ������������ <img src="attachment/ �е� attachment Ϊ���Լ��ĸ���Ŀ¼����
6. ת�ƾ�ͼƬĿ¼���²�Ʒ��Ŀ¼����ת��֮ǰ�����Ķ�̬����־�����ۡ����Ե������еı����޷�������ʾ��
   a)�� old/image Ŀ¼��Ŀ¼�µ��ļ� �ƶ��� ��Discuz! X��Ʒ�ĸ�Ŀ¼��
7. �ָ� space.php URL��ַ�ķ��ʣ��ڻָ�֮ǰ�����Ķ�̬�е�վ����Ϣ���ӽ�ָ���޷����ʵĵ�ַ��
   1)�� utility/oldprg/uchome/space.php �ļ��ƶ��� ��Discuz! X��Ʒ�ĸ�Ŀ¼��
8. ɾ�� convert �������������Discuz! X��װ��������
9. ��������Discuz! X��Ʒ�����й��ܾ������󣬿���ɾ�� �ɵĳ��򱸷ݺ����ݱ���
===============================
SS7 convert to Discuz! X1 Note
===============================

Question: converted pictures and attachments address right?
Program: the following steps:
1. Find the original SS7 icon images/base/attachment.gif,
   copy it under the Disucuz! X1 directory static/image/filetype/;
2. Find in the source/module/portal/portal_view.php file
   the next code:
      "$content['content'] = blog_bbcode($content['content']);" 
   and add the following code after this line:
$ss_url = 'http://your_ss_site_url/'; // if this link address to your SS site address!!!
$findarr = array(
	$ss_url.'batch.download.php?aid=', // Attachment Download
	$ss_url.'attachments/',  // Attached images directory
	$ss_url.'images/base/attachment.gif'  // Download attachment icon
);
$replacearr = array(
	'porta.php?mod=attachment&id=',
	$_G['setting']['attachurl'].'/portal/',
	STATICURL.'image/filetype/attachment.gif'
);
$content['content'] = str_replace($findarr, $replacearr, $content['content']);



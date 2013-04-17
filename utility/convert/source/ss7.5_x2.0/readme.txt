================================================
upgrade SupeSite 7.5 to Discuz! X2.0 description
================================================

Special Alert!!!
Discuz! X2.0 does not have all of the features of SupeSite 7.5,
This conversion process, only the information in the conversion SupeSite 7.5 classification of news articles data to Discuz! X2.0 products, the article system.
Other data will not be converted.
Therefore, data conversion, Discuz! X2.0 products that are lost and the original data loss SupeSite feature, please weigh the decision whether to convert to upgrade themselves.


I Preparing for upgrade
-----------------------
1. Establish procedures for the backup directory, such as old
2. move all of the original SupeSite files to the old/ directory
3. upload the files from Discuz! X2.0 upload directory to SupeSite directory
4. Run the installer /install/
   Please specify the original installation where SupeSite mounted the UCenter Server. (if your version of UCenter is less than 1.6.0, you must upgrade UCenter first!)

II upgrade SupeSite Data
------------------------
1. Install and test the Discuz! X2.0 works normal. After this upload the Discuz! X2.0 convert/ directory to root directory
2. Execute /convert
3. Select the appropriate version of the program, and start the conversion
4. The conversion process must not be interrupted, until the program automatically completed.
5. Conversion process may take long time, and consume a lot of server resources, so you should select a time when the server is free

III After the upgrade is completed, we need to do a few things
--------------------------------------------------------------
1. Edit the new Discuz! X2.0 config/config_global.php file, and set the founder ID
2. Direct access to the new Discuz! X2.0 admin.php
3. Use the founder account for login, and update all the cache in the background
4. The new system adds a lot of project settings, including user permissions, group permissions, forum sections, etc., so you need to carefully check and re-set this.
5. Move the old attachments directory (without moving, your posts will not be able to find any attachments)
   a) Move the old/attachments directory files the new Discuz! X2.0 /data/attachment/portal/ directory
   b) find the original SS7 icon images/base/attachment.gif, and move it to Disucuz! X2.0 static/image/filetype/ directory;
   c) In the source/module/portal/portal_view.php file find the code 
   "$content['content'] = blog_bbcode($content['content']);" 
   and add the following code after this line:

	$ss_url = 'http://your_ss_site_url/'; // if this link address to your SS site address!!!
	$findarr = array(
		$ss_url.'batch.download.php?aid=', // attachment Download
		$ss_url.'attachments/',  // attached images directory
		$ss_url.'images/base/attachment.gif'  // download the attachment icon
	);
	$replacearr = array(
		'porta.php?mod=attachment&id=',
		$_G['setting']['attachurl'].'/portal/',
		STATICURL.'image/filetype/attachment.gif'
	);
	$content['content'] = str_replace($findarr, $replacearr, $content['content']);

6. Move old image directory to the root directory of new product (before the transfer, the information content in your face does not display)
   a) Move the old/images directory to a new Discuz! X2.0 root directory
7. Remove the convert program because of security reasons.

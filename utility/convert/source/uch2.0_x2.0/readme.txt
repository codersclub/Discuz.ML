=============================================
Upgrade UCenter Home 2.0 to Discuz! X2.0 Help
=============================================

Special Alert!!!
As UCHome and Discuz! Part of the integrated functions of integration,
so UCHome some of the features in the integrated Discuz! X post will be part of the lost

These include:
- Add special features as the original function will no longer support UCH lively;
- UCH vote, UCH activities will be posted with the Forum to vote,
  activities for the integrated form of stickers, activities, photo album,
  the group function will no longer support activities;
- UCH group there will be a new group features,
  the original group album features the group will no longer support activities;
- Personal data of the new adjustments, UCH of the original profile of the school,
  work, information will need to fill out;
- Function of UCH's real name no longer support the station;

Establishment of the station according to their needs,
weighing the decision whether to convert to upgrade to UCHome Discuz! X.

I Preparing for upgrade
-----------------------
1. Establish procedures for the backup directory, such as old
2. Original UCHome all programs to move to the old directory
3. By Discuz! X product upload directory directory program to UCHome
4. Run the installer /install
   When installed, specify the original UCHome mounted UCenter Server Address
	(if your version of UCenter is less than 1.6.0, you must upgrade UCenter first!)

II upgrade UCHome Data
----------------------
1. Installation, testing, Discuz! X to normal operation after the upload process
   to convert Discuz! X root directory
2. Executive /convert
3. Select the appropriate version of the program, start the conversion
4. The conversion process is not without interruption,
   until the program automatically executed.
5. Conversion process may take longer, and consume more server resources,
   you should select the server implementation of free time

III When upgrade is completed, we need to do a few things
---------------------------------------------------------
1. Edit the new Discuz! X config/config_global.php file, setting the founder of
2. Direct access to the new Discuz! X's admin.php
3. Use the founder account login, update the cache into the background
4. The new system adds a lot of set up the project, including user permissions,
   group permissions, forum sections, etc., you need to carefully re-set once.
5. Transfer the old attachments directory to the root directory of new products
   (before the transfer, your dynamic, posts, comments, messages, etc. will not display images)
   a) go to the old/attachment directory
   b) Move all the files to the new Discuz! X product /data/attachment/album/ directory
   c) the same time, change it Discuz! X code
      A blog content containing the images address,
      must be replaced with a new image address,
      otherwise images can not be displayed in blog content.
      To solve this problem do the following:
      Open the Discuz! X ./source/include/space/space_blog.php file
      Find:
         $blog['message'] = blog_bbcode($blog['message']);

      Add the following code after this line:
	 $home_url = 'http://your_home_site_url/'; // if this link address to your UCHome site address!!!
	 $bbs_url = 'http://your_bbs_site_url/'; // if this link address to your BBS site address!!!
	 $findarr = array(
		'<img src="attachment/',  //original uchome attached images directory
		'<IMG src="'.$home_url.'attachment/',  // original UCHome attached images directory
		$bbs_url.'attachments/month',  // the original forum attached images directory
	 );
	 $replacearr = array(
		'<img src="'.$_G['setting']['attachurl'].'album/',
		'<IMG src="'.$_G['setting']['attachurl'].'album/',
		$bbs_url.$_G['setting']['attachurl'].'forum/month',
	 );
	 $blog['message'] = str_replace($findarr, $replacearr, $blog['message']);

      If your attachment is not stored in UCHome default ./attachment directory, 
      then fix the above code <img src = "attachment/ replace "attachment" with your real attachment directory name

6. Transfer old image directory to the root directory of new product
   (before this transfer, your dynamics, posts, comments, messages, etc.
   will not show icons ans emoticonsy)
   a) the old/image directory and the directory file to a new Discuz! X products, root
7. Recover the space.php with URL address to visit space
   (before such recovering all the dynamics of the station
   can not access the link pointing to this address)
   1) move the utility/oldprg/uchome/space.php file to a new Discuz! X root
8. Remove the convert program because of security reasons
9. After testing that all new Discuz! X features works normal,
   you can delete the old backup of data and programs

---=============================================
upgrade Discuz! 7.2  to Discuz! X2.0 Description
================================================

I Preparing for upgrade
-----------------------
1. Establish procedures for the backup directory, such as old/
2. Move all the original forum program to the old/ directory
3. Upload the Discuz! X upload/ directory to the forum directory
4. The installation program install/
   Please specify where the original installation of Discuz! 7.2 attached the UCenter Server is placed. (if your version of UCenter is less than 1.6.0, you must upgrade UCenter first!)

II Upgrade the Forum Data
-------------------------
1. Upload the Discuz! X Convert  program to the forum directory
2. Execute the /convert/
3. Select the appropriate version of your program to be converted
4. The conversion process must not be interrupted, until the program automatically executed.
5. Conversion process may take a long time and consume alot of server resources, so you should choose a time when the server is not laded greately

III When the upgrade is completed, we need to do a few things
-------------------------------------------------------------
1. Set the founder in config/config_global.php file
   In the file config/config_global.php set the founder ID: $_config['admincp']['founder'] = '1';
2. For direct access to the new forum background, visit the address: http://your_domain/admin.php
3. Using the founder account login, update the cache in the background
4. The new system adds a lot of projects settings, including user permissions, group permissions, the forum section and so on, so you need to carefully check and re-set this
5. Move the old attachments directory (without moving, your posts will not be able to find any attachments)
   a) Go to old/attachments/ directory
   b) Move all files to the new forum directory /data/attachment/forum/
6. Move user avatars (at this step users does not need separate installation UCenter)
   a) Go to old/uc_server/data/avatar/ directory
   b) Move all files to the new forum catalog uc_server/data/avatar/
7. Delete the convert program because of security reason
8. After new forum tested for all the functions works normal, you can delete the old backup data and program files
9. If you have used classified information, you need to refresh it once (Background -> Update Statistics -> Classified information collation).

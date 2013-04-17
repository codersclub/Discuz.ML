====================================
upgrade Discuz! 7.2 to Discuz! X1 description
====================================

I Preparing for upgrade
---------------
1. Establish procedures for the backup directory, such as old /
2. The original forum for all programs to move to the old / directory
3. By Discuz! X product upload / directory of the program to the forum directory
4. Run the installer / install
   If your group version is the full version (including uc_server / directory), then select the new installation when installed
   If your version is a standalone version of the forum (self-installed uc_server / directory), the time of installation, specify the address UCenter

II Data upgrade Forum
---------------
1. Installation is complete, the test can be normal operation after the forum, upload Discuz! X Convert program to the forum more directory
2. Executive / convert
3. Select the appropriate version of the program, start the conversion
4. The conversion process is not without interruption, until the program automatically executed.
5. Conversion process may take longer, and consume more server resources, you should select the server implementation of free time

III upgrade is completed, we need to do a few things
--------------------------
1. Edit the new forum config / config_global.php file, setting the founder of
2. Direct access to the new forum admin.php
3. Use the founder account login, update the cache into the background
4. The new system adds a lot of set up the project, including user permissions, group permissions, forum sections, etc., you need to carefully re-set once
5. Transfer the old attachments directory (before the transfer, your post will not be able to find any accessories)
   a) into the old / attachments / directory
   b) Move all the files to the new forum directory / data / attachment / forum / directory
6. Metastasis User avatar (the user does not require separate installation UCenter this step)
   a) into the old / uc_server / data / avatar / directory
   b) Move all the files to the new forum directory uc_server / data / avatar /
7. Remove convert program, so as not to bring your group to install hidden
8. To be tested all the features of the new forums are normal, you can delete the old backup and data backup procedures
9. If you use the classified information, need to refresh a classified information (background -> Update Statistics -> classified information order.)

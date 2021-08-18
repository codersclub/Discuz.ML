DELETE FROM pre_common_cron WHERE cronid=14;

-- DROP TABLE IF EXISTS pre_home_userapp;
-- DROP TABLE IF EXISTS pre_home_userappfield;

DELETE FROM pre_common_nav WHERE url='userapp.php';

DELETE FROM pre_common_friendlink WHERE id=3;
DELETE FROM pre_common_friendlink WHERE id=4;
 
DELETE FROM pre_common_nav WHERE `name`='{userpanelarea1}';
DELETE FROM pre_common_nav WHERE `name`='{userpanelarea2}';

DELETE FROM `pre_common_setting` WHERE `skey` = 'membersplit';
DELETE FROM `pre_common_cron` WHERE `filename` = 'cron_member_optimize_daily.php';

DELETE FROM pre_common_setting WHERE `skey` = 'google';

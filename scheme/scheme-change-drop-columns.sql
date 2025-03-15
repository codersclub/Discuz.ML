ALTER TABLE pre_common_admingroup 
    DROP COLUMN managevideophoto;

ALTER TABLE pre_common_banned 
    DROP COLUMN ip1,
    DROP COLUMN ip2,
    DROP COLUMN ip3,
    DROP COLUMN ip4;

ALTER TABLE pre_common_invite 
    DROP COLUMN appid;

ALTER pre_common_member 
    DROP COLUMN videophotostatus;

ALTER pre_common_member_field_home 
    DROP COLUMN videophoto;

DROP TABLE pre_common_member_log;

ALTER pre_common_member_verify 
    DROP COLUMN verify7;

DROP TABLE pre_common_myapp;

DROP TABLE pre_common_myinvite;

DROP TABLE pre_common_remote_port;

ALTER TABLE pre_common_session 
    DROP COLUMN ip1,
    DROP COLUMN ip2,
    DROP COLUMN ip3,
    DROP COLUMN ip4;

ALTER pre_common_stat 
    DROP COLUMN appinvite;

ALTER pre_common_usergroup_field 
    DROP COLUMN videophotoignore,
    DROP COLUMN allowviewvideophoto,
    DROP COLUMN allowmyop;

DROP TABLE pre_forum_threadlog;

DROP TABLE pre_forum_postlog;

DROP TABLE pre_home_appcreditlog;

ALTER TABLE pre_home_feed 
    DROP COLUMN appid;

DROP TABLE pre_home_feed_app;

DROP TABLE pre_home_userapp;

DROP TABLE pre_home_userappfield;

-- If the site has user table partitioning enabled,
-- the following SQL statement needs to be executed

ALTER TABLE pre_common_member_status_archive
    MODIFY COLUMN regip VARCHAR(45) NOT NULL DEFAULT '',
    MODIFY COLUMN lastip VARCHAR(45) NOT NULL DEFAULT '',
    ADD COLUMN regport SMALLINT(6) unsigned NOT NULL DEFAULT '0' AFTER lastip;

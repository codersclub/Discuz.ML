ALTER TABLE pre_common_admincp_perm
    DROP KEY `cpgroupperm`,
    ADD KEY `cpgroupperm` (`cpgroupid`, `perm`(40));
ALTER TABLE pre_common_advertisement_custom
    DROP KEY `name`,
    ADD KEY `name` (`name`(100));
ALTER TABLE pre_common_block_style
    DROP KEY `hash`,
    ADD KEY `hash` (`hash`(10)),
    DROP KEY `blockclass`,
    ADD KEY `blockclass` (`blockclass`(50));
ALTER TABLE pre_common_cache
    DROP PRIMARY KEY,
    ADD PRIMARY KEY (`cachekey`(50));
ALTER TABLE pre_common_card
    DROP PRIMARY KEY,
    ADD PRIMARY KEY (`id`(50));
ALTER TABLE pre_common_member
    DROP KEY `email`,
    ADD KEY `email` (`email`(40));
ALTER TABLE pre_common_member_profile_setting
    DROP PRIMARY KEY,
    ADD PRIMARY KEY (`fieldid`(30));
ALTER TABLE pre_common_member_security
    DROP KEY `uid`,
    ADD KEY `uid` (`uid`, `fieldid`(40));
ALTER TABLE pre_common_member_stat_field
    DROP KEY `fieldid`,
    ADD KEY `fieldid` (`fieldid`(40));
ALTER TABLE pre_common_setting
    DROP PRIMARY KEY,
    ADD PRIMARY KEY (`skey`(40));
ALTER TABLE pre_forum_groupfield
    DROP KEY `types`,
    ADD KEY `types` (`fid`, `type`(40));
ALTER TABLE pre_forum_groupfield
    DROP KEY `type`,
    ADD KEY `type` (`type`(40));
ALTER TABLE pre_home_favorite
    DROP KEY `idtype`,
    ADD KEY `idtype` (`id`, `idtype`(40));
ALTER TABLE pre_home_favorite
    DROP KEY `uid`,
    ADD KEY `uid` (`uid`, `idtype`(40), `dateline`);
ALTER TABLE pre_mobile_setting
    DROP PRIMARY KEY,
    ADD PRIMARY KEY (`skey`(40));
ALTER TABLE pre_portal_topic
    DROP KEY `name`,
    ADD KEY `name` (`name`(40));
ALTER TABLE pre_ucenter_members
    DROP KEY `email`,
    ADD KEY `email` (`email`(40));
ALTER TABLE pre_ucenter_badwords
    DROP KEY `find`,
    ADD KEY `find` (`find`(100));

ALTER TABLE pre_common_connect_guest
    ADD COLUMN conuintoken char(32) NOT NULL DEFAULT '';

ALTER TABLE pre_common_member_connect
    ADD COLUMN conuintoken char(32) NOT NULL DEFAULT '';

 

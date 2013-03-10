<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: lang_grouplist.php 27449 2012-02-01 05:32:35Z zhangguosheng $
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

$lang = array
(
	'grouplist_gtids' => '群組類別',
	'grouplist_gtids_comment' => '選擇群組類別',
	'grouplist_fids' => '指定群組',
	'grouplist_fids_comment' => '輸入指定群組的ID，多個ID之間用逗號分隔',
	'grouplist_startrow' => '起始數據行數',
	'grouplist_startrow_comment' => '如需設定起始的數據行數，請輸入具體數值，0 為從第一行開始，以此類推',
	'grouplist_titlelength' => '名稱長度',
/*vot*/	'grouplist_titlelength_comment' => '設置群組名稱最大長度',
	'grouplist_summarylength' => '介紹長度',
	'grouplist_summarylength_comment' => '設置群組介紹最大長度',
	'grouplist_orderby' => '群組排序方式',
	'grouplist_orderby_comment' => '設置以哪一字段或方式對群組進行排序',
	'grouplist_orderby_dateline' => '按創建時間倒序',
	'grouplist_orderby_posts' => '按總發帖數倒序',
	'grouplist_orderby_todayposts' => '按今日發帖數倒序',
	'grouplist_orderby_threads' => '按話題數倒序',
	'grouplist_orderby_level' => '按等級倒序',
	'grouplist_orderby_membernum' => '按成員數倒序',
	'grouplist_orderby_activity' => '按活躍度倒序',
	'grouplist_orderby_commoncredits' => '按共同積分倒序',
	'grouplist_orderby_displayorder' => '按默認順序'
);

?>
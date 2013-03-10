<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: lang_articlelist.php 27449 2012-02-01 05:32:35Z zhangguosheng $
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

$lang = array
(
	'articlelist_aids' => '指定文章',
	'articlelist_aids_comment' => '填入指定文章的ID(aid)，多篇文章之間用逗號(,)分隔',
	'articlelist_uids' => '作者UID',
	'articlelist_uids_comment' => '填入指定用戶的ID(uid)，多個用戶之間用逗號(,)分隔',
	'articlelist_startrow' => '起始數據行數',
	'articlelist_startrow_comment' => '如需設定起始的數據行數，請輸入具體數值，0 為從第一行開始，以此類推',
	'articlelist_tag' => '聚合標籤',
	'articlelist_tag_comment' => '指定要聚合的標籤',
	'articlelist_titlelength' => '標題長度',
	'articlelist_titlelength_comment' => '設置標題最大長度',
	'articlelist_summarylength' => '簡介長度',
	'articlelist_summarylength_comment' => '設置簡介最大長度',
	'articlelist_starttime' => '發佈時間-起始',
	'articlelist_starttime_comment' => '文章的發佈時間在指定時間之後',
	'articlelist_endtime' => '發佈時間-結束',
	'articlelist_endtime_comment' => '文章的發佈時間在指定時間之前',
	'articlelist_catid' => '文章欄目',
	'articlelist_catid_comment' => '選擇文章所屬欄目',
	'articlelist_picrequired' => '過濾無封面文章',
	'articlelist_picrequired_comment' => '是否過濾未設置封面圖片的文章',
	'articlelist_orderby' => '文章排序方式',
	'articlelist_orderby_comment' => '設置以哪一字段或方式對文章進行排序',
	'articlelist_orderby_dateline' => '按發佈時間倒序',
	'articlelist_orderby_viewnum' => '按查看數倒序',
	'articlelist_orderby_commentnum' => '按評論數倒序',
	'articlelist_orderby_click' => '按表態 {clickname} 數倒序',
	'articlelist_publishdateline' => '文章發佈時間',
	'articlelist_publishdateline_nolimit' => '不限制',
	'articlelist_publishdateline_hour' => '1小時內',
	'articlelist_publishdateline_day' => '24小時內',
	'articlelist_publishdateline_week' => '7天內',
	'articlelist_publishdateline_month' => '1個月內',
	'articlelist_keyword' => '標題關鍵字',
	'articlelist_keyword_comment' => '設置標題包含的關鍵字。注意: 留空為不進行任何過濾； 關鍵字中可使用通配符 *； 匹配多個關鍵字全部，可用空格或 AND 連接。如 win32 AND unix； 匹配多個關鍵字其中部分，可用 | 或 OR 連接。如 win32 OR unix',
);

?>
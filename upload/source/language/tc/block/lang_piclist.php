<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: lang_piclist.php 27449 2012-02-01 05:32:35Z zhangguosheng $
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

$lang = array
(
	'piclist_picids' => '指定圖片',
	'piclist_picids_comment' => '填入指定圖片的ID(picid)，多個圖片之間用逗號(,)分隔',
	'piclist_aids' => '相冊ID',
	'piclist_aids_comment' => '填入指定相冊的ID(aid)，多個相冊之間用逗號(,)分隔',
	'piclist_uids' => '用戶UID',
	'piclist_uids_comment' => '填入指定用戶的ID(uid)，多個用戶之間用逗號(,)分隔',
	'piclist_startrow' => '起始數據行數',
	'piclist_startrow_comment' => '如需設定起始的數據行數，請輸入具體數值，0 為從第一行開始，以此類推',
	'piclist_hours' => '時間範圍',
	'piclist_hours_nolimit' => '不限制',
	'piclist_hours_hour' => '1小時內',
	'piclist_hours_day' => '24小時內',
	'piclist_hours_week' => '7天內',
	'piclist_hours_month' => '1月內',
	'piclist_hours_year' => '1年內',
	'piclist_titlelength' => '標題長度',
/*vot*/	'piclist_titlelength_comment' => '指定圖片標題最大長度',
	'piclist_orderby' => '圖片排序方式',
	'piclist_orderby_comment' => '設置以哪一字段或方式對圖片進行排序',
	'piclist_orderby_dateline' => '按發佈時間倒序',
	'piclist_orderby_hot' => '按熱度倒序'
);

?>
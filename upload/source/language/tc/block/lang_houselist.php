<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: lang_houselist.php 27449 2012-02-01 05:32:35Z zhangguosheng $
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

$lang = array
(
	'categorylist_fids' => '所在版塊',
	'categorylist_fids_comment' => '設置允許參與新帖調用的版塊，可以按住 CTRL 多選，全選或全不選均為不做限制',
	'categorylist_startrow' => '起始數據行數',
	'categorylist_startrow_comment' => '如需設定起始的數據行數，請輸入具體數值，0 為從第一行開始，以此類推',
	'categorylist_showitems' => '顯示數據條數',
	'categorylist_showitems_comment' => '設置一次顯示的主題條目數，請設置為大於 0 的整數',
	'categorylist_titlelength' => '標題最大字節數',
	'categorylist_titlelength_comment' => '設置當標題長度超過本設定時，是否將標題自動縮減到本設定中的字節數，0 為不自動縮減',
	'categorylist_fnamelength' => '標題最大字節數包含版塊名稱',
	'categorylist_fnamelength_comment' => '設置標題長度是否將所在版塊名稱的長度一同計算在內',
	'categorylist_summarylength' => '主題簡短內容文字數',
	'categorylist_summarylength_comment' => '設置主題簡短內容的文字數，0 為使用默認值 255',
	'categorylist_tids' => '指定主題',
	'categorylist_tids_comment' => '設置要指定顯示的主題 tid ，多個 tid 請用半角逗號「,」隔開。注意: 留空為不進行任何過濾',
	'categorylist_keyword' => '標題關鍵字',
	'categorylist_keyword_comment' => '設置標題包含的關鍵字。注意: 留空為不進行任何過濾； 關鍵字中可使用通配符 *； 匹配多個關鍵字全部，可用空格或 AND 連接。如 win32 AND unix； 匹配多個關鍵字其中部分，可用 | 或 OR 連接。如 win32 OR unix',
	'categorylist_sortids' => '分類信息',
	'categorylist_sortids_comment' => '設置特定分類的主題。注意: 全選或全不選均為不進行任何過濾',
	'categorylist_styleids' => '分類模板',
	'categorylist_styleids_comment' => '在後台對應的分類信息裡面設置模板',
	'categorylist_styleids_style1' => '樣式1',
	'categorylist_styleids_style2' => '樣式2',
	'categorylist_styleids_style3' => '樣式3',
	'categorylist_styleids_style4' => '樣式4',
	'categorylist_styleids_style5' => '樣式5',
	'categorylist_typeids_all' => '全部的主題分類',
	'categorylist_categoryids' => '分類信息',
	'categorylist_categoryids_comment' => '設置特定分類信息的主題。注意: 全選或全不選均為不進行任何過濾',
	'categorylist_categoryids_all' => '全部的分類信息',
	'categorylist_digest' => '精華主題過濾',
	'categorylist_digest_comment' => '設置特定的主題範圍。注意: 全選或全不選均為不進行任何過濾',
	'categorylist_digest_0' => '普通主題',
	'categorylist_digest_1' => '精華 I',
	'categorylist_digest_2' => '精華 II',
	'categorylist_digest_3' => '精華 III',
	'categorylist_stick' => '置頂主題過濾',
	'categorylist_stick_comment' => '設置特定的主題範圍。注意: 全選或全不選均為不進行任何過濾',
	'categorylist_stick_0' => '普通主題',
	'categorylist_stick_1' => '置頂 I',
	'categorylist_stick_2' => '置頂 II',
	'categorylist_stick_3' => '置頂 III',
	'categorylist_special' => '特殊主題過濾',
	'categorylist_special_comment' => '設置特定的主題範圍。注意: 全選或全不選均為不進行任何過濾',
	'categorylist_special_1' => '投票主題',
	'categorylist_special_2' => '商品主題',
	'categorylist_special_3' => '懸賞主題',
	'categorylist_special_4' => '活動主題',
	'categorylist_special_5' => '辯論主題',
	'categorylist_special_0' => '普通主題',
	'categorylist_special_reward' => '懸賞主題過濾',
	'categorylist_special_reward_comment' => '設置特定類型的懸賞主題',
	'categorylist_special_reward_0' => '全部',
	'categorylist_special_reward_1' => '已解決',
	'categorylist_special_reward_2' => '未解決',
	'categorylist_recommend' => '推薦主題過濾',
	'categorylist_recommend_comment' => '設置是否只顯示推薦的主題',
	'categorylist_orderby' => '主題排序方式',
	'categorylist_orderby_comment' => '設置以哪一字段或方式對主題進行排序',
	'categorylist_orderby_lastpost' => '按最後回復時間倒序排序',
	'categorylist_orderby_dateline' => '按發佈時間倒序排序',
	'categorylist_orderby_replies' => '按回複數倒序排序',
	'categorylist_orderby_views' => '按瀏覽次數倒序排序',
	'categorylist_orderby_heats' => '按熱度倒序排序',
	'categorylist_orderby_recommends' => '按主題評價倒序排序',
	'categorylist_orderby_hourviews' => '按指定時間內瀏覽次數倒序排序',
	'categorylist_orderby_todayviews' => '按當天瀏覽次數倒序排序',
	'categorylist_orderby_weekviews' => '按本周瀏覽次數倒序排序',
	'categorylist_orderby_monthviews' => '按當月瀏覽次數倒序排序',
	'categorylist_orderby_hours' => '指定時間(小時)',
	'categorylist_orderby_hours_comment' => '指定時間內瀏覽次數倒序排序的時間值',
);

?>
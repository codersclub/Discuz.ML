<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: lang_groupattachment.php 27449 2012-02-01 05:32:35Z zhangguosheng $
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

$lang = array
(
	'groupattachment_name' => '論壇附件列表',
	'groupattachment_desc' => '論壇附件列表調用',
	'groupattachment_fids' => '指定群組',
	'groupattachment_fids_comment' => '指定群組，多個ID之間請用半角逗號「,」隔開。',
	'groupattachment_tids' => '指定主題',
	'groupattachment_tids_comment' => '指定主題ID，多個ID之間用逗號分隔',
	'groupattachment_gtids' => '群組分類',
	'groupattachment_gtids_comment' => '設置群組所在分類，可以按住 CTRL 多選，全選或全不選均為不做限制',
	'groupattachment_startrow' => '起始數據行數',
	'groupattachment_startrow_comment' => '如需設定起始的數據行數，請輸入具體數值，0 為從第一行開始，以此類推',
	'groupattachment_items' => '顯示數據條數',
	'groupattachment_items_comment' => '設置一次顯示的圖片主題條目數，請設置為大於 0 的整數',
	'groupattachment_titlelength' => '標題長度',
	'groupattachment_titlelength_comment' => '設置當附件名稱/帖子標題顯示的最大長度',
	'groupattachment_summarylength' => '內容長度',
	'groupattachment_summarylength_comment' => '設置附件介紹/帖子內容顯示的最大長度',
	'groupattachment_maxwidth' => '圖片最大寬度(像素)',
	'groupattachment_maxwidth_comment' => '設置是否自動縮小或放大圖片的尺寸到本設定的寬度，0 為不自動縮放',
	'groupattachment_maxheight' => '圖片最大高度(像素)',
	'groupattachment_maxheight_comment' => '設置是否自動縮小或放大圖片的尺寸到本設定的高度，0 為不自動縮放',
	'groupattachment_threadmethod' => '主題方式調用',
	'groupattachment_threadmethod_comment' => '選擇「是」將按照主題方式調用附件，一個主題顯示一個附件；選擇「否」將按照附件方式調用',
	'groupattachment_digest' => '精華帖過濾',
	'groupattachment_digest_comment' => '設置特定的主題範圍。注意: 全選或全不選均為不進行任何過濾',
	'groupattachment_digest_0' => '普通主題',
	'groupattachment_digest_1' => '精華 I',
	'groupattachment_digest_2' => '精華 II',
	'groupattachment_digest_3' => '精華 III',
	'groupattachment_special' => '特殊主題過濾',
	'groupattachment_special_comment' => '設置特定的主題範圍。注意: 全選或全不選均為不進行任何過濾',
	'groupattachment_special_1' => '投票主題',
	'groupattachment_special_2' => '商品主題',
	'groupattachment_special_3' => '懸賞主題',
	'groupattachment_special_4' => '活動主題',
	'groupattachment_special_5' => '辯論主題',
	'groupattachment_special_0' => '普通主題',
	'groupattachment_special_reward' => '懸賞主題過濾',
	'groupattachment_special_reward_comment' => '設置特定類型的懸賞主題',
	'groupattachment_special_reward_0' => '全部',
	'groupattachment_special_reward_1' => '已解決',
	'groupattachment_special_reward_2' => '未解決',
	'groupattachment_dateline' => '附件上傳時間',
	'groupattachment_dateline_nolimit' => '不限制',
	'groupattachment_dateline_hour' => '最近1小時',
	'groupattachment_dateline_day' => '最近24小時',
	'groupattachment_dateline_week' => '最近1周',
	'groupattachment_dateline_month' => '最近1月',
	'groupattachment_gviewperm' => '群組瀏覽權限',
	'groupattachment_gviewperm_nolimit' => '不限制',
	'groupattachment_gviewperm_only_member' => '僅成員',
	'groupattachment_gviewperm_all_member' => '所有人',
	'groupattachment_highlight' => '獲得高亮值',
);

?>
<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: lang_interthread.php 27449 2012-02-01 05:32:35Z zhangguosheng $
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

$lang = array
(
	'interthread_name' => '論壇/群組 帖間通欄廣告',
	'interthread_desc' => '展現方式: 帖間通欄廣告顯示於主題帖和第一個回帖之間，可使用 468x60 或其他尺寸圖片和 Flash 的形式。<br />當前頁面有多個帖間通欄廣告時，系統會隨機選取其中之一顯示。價值分析: 由於能夠將主題與回帖分開，廣告尺寸大而且不影響帖子內容，因此不會招致帖子作者及訪問者反感，適合在帖內進行商業宣傳或品牌推廣。',
	'interthread_fids' => '投放版塊',
	'interthread_fids_comment' => '設置廣告投放的論壇版塊，當廣告投放範圍中包含「論壇」時有效',
	'interthread_groups' => '投放群組分類',
	'interthread_groups_comment' => '設置廣告投放的群組分類，當廣告投放範圍中包含「群組」時有效',
	'interthread_pnumber' => '廣告顯示樓層',
	'interthread_pnumber_comment' => '選項 #1 #2 #3 ... 表示帖子樓層，可以按住 CTRL 多選，默認只投放 1 樓',
);

?>
<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: lang_couplebanner.php 27449 2012-02-01 05:32:35Z zhangguosheng $
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

$lang = array
(
	'couplebanner_name' => '全局 對聯廣告',
	'couplebanner_desc' => '展現方式: 對聯廣告以長方形圖片的形式顯示於頁面頂部兩側，形似一幅對聯，通常使用寬小高大的長方形圖片或 Flash 的形式。對聯廣告一般只在使用像素約定主表格寬度的情況下使用，如使用超過 90% 以上的百分比約定主表格寬度時，可能會影響訪問者的正常瀏覽。當訪問者瀏覽器寬度小於 800 像素時，自動不顯示此類廣告。當前頁面有多個對聯廣告時，系統會隨機選取其中之一顯示。<br />價值分析: 對聯廣告由於只展現於高分辨率(1024x768 或更高)屏幕的兩側，只佔用頁面的空白區域，因此不會招致訪問者反感，能夠良好的突出推廣內容。但由於對分辨率和主表格寬度的特殊要求，使得廣告的受眾比例無法達到 100%。',
	'couplebanner_index' => '首頁',
	'couplebanner_fids' => '投放版塊',
	'couplebanner_fids_comment' => '設置廣告投放的論壇版塊',
	'couplebanner_groups' => '投放群組分類',
	'couplebanner_groups_comment' => '設置廣告投放的群組分類，當廣告投放範圍中包含「群組」時有效',
	'couplebanner_position' => '對聯位置',
	'couplebanner_position_comment' => '設置廣告對聯的位置',
	'couplebanner_position_left' => '左側',
	'couplebanner_position_right' => '右側',
	'couplebanner_coupleadid' => '上/下聯廣告',
	'couplebanner_coupleadid_comment' => '設置和當前廣告配對的上/下聯廣告',
	'couplebanner_category' => '投放門戶頻道',
	'couplebanner_category_comment' => '設置廣告投放的頻道分類，當廣告投放範圍中包含「門戶」時有效',
	'couplebanner_disableclose' => '關閉廣告的鏈接',
	'couplebanner_disableclose_comment' => '如果廣告代碼中已內置關閉操作，可以關閉系統預置的關閉鏈接',
	'couplebanner_show' => '顯示',
	'couplebanner_hidden' => '隱藏',
);

?>
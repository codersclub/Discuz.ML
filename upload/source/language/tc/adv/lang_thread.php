<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: lang_thread.php 27449 2012-02-01 05:32:35Z zhangguosheng $
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

$lang = array
(
	'thread_name' => '論壇/群組 帖內廣告',
	'thread_desc' => '展現方式: 帖內廣告顯示於帖子內容的上方、下方或右方，帖子內容的上方和下方通常使用文字的形式，帖子內容右方通常使用圖片的形式。當前頁面有多個帖內廣告時，系統會從中抽取與每頁帖數相等的條目進行隨機顯示。您可以在 全局設置中的其他設置中修改每帖顯示的廣告數量。<br />價值分析: 由於帖子是論壇最核心的組成部分，嵌入帖子內容內部的帖內廣告，便可在用戶瀏覽帖子內容時自然的被接受，加上隨機播放的特性，適合於特定內容的有效推廣，也可用於論壇自身的宣傳和公告之用。建議設置多條帖內廣告以實現廣告內容的差異化，從而吸引更多訪問者的注意力。',
	'thread_fids' => '投放版塊',
	'thread_fids_comment' => '設置廣告投放的論壇版塊，當廣告投放範圍中包含「論壇」時有效',
	'thread_groups' => '投放群組分類',
	'thread_groups_comment' => '設置廣告投放的群組分類，當廣告投放範圍中包含「群組」時有效',
	'thread_position' => '投放位置',
	'thread_position_comment' => '帖子內容上方和下方的廣告適合使用文字形式，而帖子右側廣告適合使用圖片或 Flash 形式，也可以同時顯示多條文字廣告',
	'thread_position_bottom' => '帖子下方',
	'thread_position_top' => '帖子上方',
	'thread_position_right' => '帖子右側',
	'thread_pnumber' => '廣告顯示樓層',
	'thread_pnumber_comment' => '選項 #1 #2 #3 ... 表示帖子樓層，可以按住 CTRL 多選',
	'thread_pnumber_all' => '全部',
);

?>
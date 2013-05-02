<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: lang_optimizer.php 32960 2013-03-28 04:36:15Z chenmengshu $
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

$lang = array
(
	'optimizer_dbbackup_advice' => '三個月沒有進行數據備份了,建議立即備份數據',
	'optimizer_dbbackup_lastback' => '上次數據備份於',
	'optimizer_dbbackup_clean_safe' => '沒有檢測到數據庫備份文件，無安全問題',
	'optimizer_dbbackup_clean_delete' => '檢測到 {filecount} 個數據備份文件(目錄: ./data/backup_xxx)，<br>請盡快手工複製到安全位置備份，然後刪除這些文件',
	'optimizer_filecheck_advice' => '三個月沒有進行文件校驗了,建議立即進行校驗',
	'optimizer_filecheck_lastcheck' => '上次文件校驗於',
	'optimizer_log_clean' => '有 {count} 個日誌表可以清理優化',
	'optimizer_log_not_found' => '未發現可清理的日誌表',
	'optimizer_patch_have' => '您有 {patchnum} 個，請盡快更新',
	'optimizer_patch_check_safe' => '檢測安全',
	'optimizer_plugin_new_plugin' => '您有 {newversion} 款應用有可用更新',
	'optimizer_plugin_no_upgrade' => '不需要應用更新',
	'optimizer_post_need_split' => '帖子表及分表有 {count} 個需要優化',
	'optimizer_post_not_need' => '不需要優化',
	'optimizer_seo_advice' => '建議您完善SEO設置',
	'optimizer_seo_no_need' => '發現已經完善了seo設置',
	'optimizer_setting_cache_index' => '緩存論壇首頁',
	'optimizer_setting_cache_index_desc' => '開啟此功能可減輕服務器負載',
	'optimizer_setting_cache_optimize_desc' => '設置緩存時間為900秒',
	'optimizer_setting_cache_post' => '緩存帖子',
	'optimizer_setting_cache_post_desc' => '開啟此功能可減輕服務器負載',
	'optimizer_setting_cache_post_optimize_desc' => '設置緩存時間為900秒',
	'optimizer_setting_optimizeviews' => '優化更新主題瀏覽量',
	'optimizer_setting_optimizeviews_desc' => '開啟此功能可減輕更新主題瀏覽量時對服務器產生的負載',
	'optimizer_setting_optimizeviews_optimize_desc' => '開啟此功能',
	'optimizer_setting_delayviewcount' => '附件下載量延遲更新',
	'optimizer_setting_delayviewcount_desc' => '延遲更新附件的瀏覽量，可明顯降低訪問量很大的站點的服務器負擔',
	'optimizer_setting_delayviewcount_optimize_desc' => '開啟此功能',
	'optimizer_setting_preventrefresh' => '查看數開啟防刷新',
	'optimizer_setting_preventrefresh_desc' => '開啟防刷新，可明顯降低服務器壓力',
	'optimizer_setting_preventrefresh_optimize_desc' => '開啟此功能',
	'optimizer_setting_nocacheheaders' => '禁止瀏覽器緩衝',
	'optimizer_setting_nocacheheaders_desc' => '可用於解決極個別瀏覽器內容刷新不正常的問題，本功能會加重服務器負擔',
	'optimizer_setting_nocacheheaders_optimize_desc' => '關閉此功能',
	'optimizer_setting_jspath' => 'JS 文件緩存',
	'optimizer_setting_jspath_desc' => '當腳本為緩存目錄時，系統會將默認目錄中的 *.js 文件進行壓縮然後保存到緩存目錄以提高讀取速度',
	'optimizer_setting_jspath_optimize_desc' => '修改js路徑到緩存目錄',
	'optimizer_setting_lazyload' => '圖片延時加載',
	'optimizer_setting_lazyload_desc' => '頁面中的圖片在瀏覽器的當前窗口時再加載，可明顯降低訪問量很大的站點的服務器負擔',
	'optimizer_setting_lazyload_optimize_desc' => '開啟此功能',
	'optimizer_setting_sessionclose' => '關閉session機制',
	'optimizer_setting_sessionclose_desc' => '關閉session機制以後，可明顯降低站點的服務器負擔，建議在線用戶數超過2萬時開啟本功能<br>注意：遊客數和用戶的在線時長將不再進行統計，論壇首頁和版塊列表頁面的在線用戶列表功能將不可用',
	'optimizer_setting_sessionclose_optimize_desc' => '開啟此功能',
	'optimizer_setting_need_optimizer' => '有 {count} 個設置項可以優化',
	'optimizer_setting_no_need' => '設置項無需優化',
	'optimizer_thread_need_optimizer' => '需要優化您的主題表了',
	'optimizer_thread_no_need' => '不需要優化',
	'optimizer_upgrade_need_optimizer' => '有新版本，及時更新到最新版本',
	'optimizer_upgrade_no_need' => '已經是最新版',
	'optimizer_setting_rewriteguest' => 'Rewrite僅針對遊客',
	'optimizer_setting_rewriteguest_desc' => '開啟此項，則 Rewrite功能只對遊客和搜索引擎有效，可減輕服務器負擔',
	'optimizer_setting_rewriteguest_optimize_desc' => '開啟此功能',
);
?>
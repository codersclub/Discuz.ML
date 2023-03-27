<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: install_lang.php 36287 2016-12-12 03:59:05Z nemohou $
 *      Modified by Valery Votintsev, codersclub.org
 */

if(!defined('IN_COMSENZ')) {
	exit('Access Denied');
}

define('UC_VERNAME', 'International Version');
$lang = array(
	'SC_UTF8' => '簡體中文 UTF8 版',
	'TC_UTF8' => '繁體中文 UTF8 版',
	'EN_UTF8' => 'ENGLIST UTF-8',

	'title_install' => SOFT_NAME.' 安裝嚮導',
	'agreement_yes' => '同意',
	'agreement_no' => '取消',
	'notset' => '不限制',
	'enable' => '開啟',
	'disable' => '關閉',

	'message_title' => '提示信息',
	'error_message' => '錯誤信息',
	'message_return' => '返回',
	'return' => '返回',
	'install_wizard' => '安裝嚮導',
	'config_nonexistence' => '配置文件不存在',
	'nodir' => '目錄不存在',
	'redirect' => '瀏覽器會自動跳轉頁面，無需人工干預。<br>除非當您的瀏覽器沒有自動跳轉時，請點擊這裡',
	'auto_redirect' => '瀏覽器會自動跳轉頁面，無需人工干預',
	'database_errno_1064' => 'SQL 語法錯誤',

	'dbpriv_createtable' => '沒有CREATE TABLE權限，無法繼續安裝',
	'dbpriv_insert' => '沒有INSERT權限，無法繼續安裝',
	'dbpriv_select' => '沒有SELECT權限，無法繼續安裝',
	'dbpriv_update' => '沒有UPDATE權限，無法繼續安裝',
	'dbpriv_delete' => '沒有DELETE權限，無法繼續安裝',
	'dbpriv_droptable' => '沒有DROP TABLE權限，無法安裝',

	'db_not_null' => '數據庫中已經安裝過 UCenter, 繼續安裝會清空原有數據。',
	'db_drop_table_confirm' => '繼續安裝會清空全部原有數據，您確定要繼續嗎?',

	'writeable' => '可寫',
	'unwriteable' => '不可寫',
	'old_step' => '上一步',
	'new_step' => '下一步',

	'database_errno_2003' => '無法連接數據庫，請檢查數據庫是否啟動，數據庫服務器地址是否正確',
	'database_errno_1044' => '無法創建新的數據庫，請檢查數據庫名稱填寫是否正確',
	'database_errno_1045' => '無法連接數據庫，請檢查數據庫用戶名或者密碼是否正確',
	'database_connect_error' => '數據庫連接錯誤',

	'step_title_1' => '檢查安裝環境',
	'step_title_2' => '設置運行環境',
	'step_title_3' => '創建數據庫',
	'step_title_4' => '安裝',
	'step_env_check_title' => '開始安裝',
	'step_env_check_desc' => '環境以及文件目錄權限檢查',
	'step_db_init_title' => '安裝數據庫',
	'step_db_init_desc' => '正在執行數據庫安裝',

	'step1_file' => '目錄文件',
	'step1_need_status' => '所需狀態',
	'step1_status' => '當前狀態',
	'not_continue' => '請將以上紅叉部分修正再試',

	'tips_dbinfo' => '填寫數據庫信息',
	'tips_dbinfo_comment' => '',
	'tips_admininfo' => '填寫管理員信息',
	'step_ext_info_title' => '安裝成功。',
	'step_ext_info_comment' => '點擊進入登錄',

	'ext_info_succ' => '安裝成功。',
	'install_submit' => '提交',
	'install_locked' => '安裝鎖定，已經安裝過了，如果您確定要重新安裝，請到服務器上刪除<br /> '.str_replace(ROOT_PATH, '', $lockfile),
	'error_stuck_msg' => '安裝進程已經很久沒有進展了，可能相關請求已經因網絡超時或服務器嚴重錯誤而異常退出',
	'error_quit_msg' => '您必須解決以上問題，安裝才可以繼續',

	'step_app_reg_title' => '設置運行環境',
	'step_app_reg_desc' => '檢測服務器環境以及設置 UCenter',
	'tips_ucenter' => '請填寫 UCenter 相關信息',
	'tips_ucenter_comment' => 'UCenter 是 Comsenz 公司產品的核心服務程序，Discuz! Board 的安裝和運行依賴此程序。如果您已經安裝了 UCenter，請填寫以下信息。否則，請到 <a href="https://www.discuz.vip/" target="blank">Comsenz 產品中心</a> 下載並且安裝，然後再繼續。',

	'advice_mysqli_connect' => '請檢查 mysqli 模塊是否正確加載',
	'advice_xml_parser_create' => '該函數需要 PHP 支持 XML 。請聯繫服務商，確定開啟了此項功能',
	'advice_json_encode' => '該函數需要 PHP 支持 JSON 。請聯繫服務商，確定開啟了此項功能',
	'advice_fsockopen' => '該函數需要 php.ini 中 allow_url_fopen 選項開啟。請聯繫服務商，確定開啟了此項功能',
	'advice_pfsockopen' => '該函數需要 php.ini 中 allow_url_fopen 選項開啟。請聯繫服務商，確定開啟了此項功能',
	'advice_stream_socket_client' => '該函數需要 php.ini 中 stream_socket_client 函數開啟。請聯繫服務商，確定開啟了此項功能',
	'advice_curl_init' => '該函數需要 php.ini 中 curl_init 函數開啟。請聯繫服務商，確定開啟了此項功能',

	'ucurl' => 'UCenter 的 URL',
	'ucpw' => 'UCenter 創始人密碼',
	'ucip' => 'UCenter 的 IP 地址',
	'ucenter_ucip_invalid' => '格式錯誤，請填寫正確的 IP 地址',
	'ucip_comment' => '絕大多數情況下您可以不填',

	'tips_siteinfo' => '請填寫站點信息',
	'sitename' => '站點名稱',
	'siteurl' => '站點 URL',

	'forceinstall' => '強制安裝',
	'dbinfo_forceinstall_invalid' => '當前數據庫當中已經含有同樣表前綴的數據表，您可以修改「表名前綴」來避免刪除舊的數據，或者選擇強制安裝。強制安裝會刪除舊數據，且無法恢復',

	'click_to_back' => '點擊返回上一步',
	'adminemail' => '系統信箱 Email',
	'adminemail_comment' => '用於發送程序錯誤報告',
	'dbhost_comment' => '一般為 127.0.0.1 或 localhost',
	'dbname_comment' => '用於安裝 Discuz! 的數據庫',
	'dbuser_comment' => '您的數據庫用戶名',
	'dbpw_comment' => '您的數據庫密碼',
	'tablepre_comment' => '同一數據庫運行多個論壇時，請修改前綴',
	'forceinstall_check_label' => '我要刪除數據，強制安裝 !!!',
	'initdbresult_succ' => '數據庫表創建完成',
	'initdbdataresult_succ' => '數據庫數據初始化完成',
	'initsys' => '正在系統初始化',

	'uc_url_empty' => '您沒有填寫 UCenter 的 URL，請返回填寫',
	'uc_url_invalid' => 'URL 格式錯誤',
	'uc_url_unreachable' => 'UCenter 的 URL 地址可能填寫錯誤，可能原因有:<br />1. UCenter 路徑不正確或狀態異常<br />2. 應用查詢 UCenter 狀態請求無法發起或被攔截<br />2. UCenter 後台 「 通過 URL 添加應用功能 」 未開啟',
	'uc_ip_invalid' => '無法解析該域名，請填寫站點的 IP',
	'uc_admin_invalid' => 'UCenter 創始人密碼校驗未通過, 可能原因有:<br />1. UCenter 創始人密碼不正確<br />2. 多次錯誤輸入密碼導致創始人用戶和 IP 地址被鎖定<br />3. UCenter 後台 「 通過 URL 添加應用功能 」 未開啟',
	'uc_data_invalid' => '通信失敗，請檢查 UCenter 的URL 地址是否正確 ',
	'uc_dbcharset_incorrect' => 'UCenter 數據庫字符集與當前應用字符集不一致',
	'uc_api_add_app_error' => '向 UCenter 添加應用錯誤',
	'uc_dns_error' => 'UCenter DNS解析錯誤，請返回填寫一下 UCenter 的 IP地址',

	'ucenter_ucurl_invalid' => 'UCenter 的URL為空，或者格式錯誤，請檢查',
	'ucenter_ucpw_invalid' => 'UCenter 的創始人密碼為空，或者格式錯誤，請檢查',
	'siteinfo_siteurl_invalid' => '站點URL為空，或者格式錯誤，請檢查',
	'siteinfo_sitename_invalid' => '站點名稱為空，或者格式錯誤，請檢查',
	'dbinfo_dbhost_invalid' => '數據庫服務器為空，或者格式錯誤，請檢查',
	'dbinfo_dbname_invalid' => '數據庫名為空，或者格式錯誤，請檢查',
	'dbinfo_dbuser_invalid' => '數據庫用戶名為空，或者格式錯誤，請檢查',
	'dbinfo_dbpw_invalid' => '數據庫密碼為空，或者格式錯誤，請檢查',
	'dbinfo_adminemail_invalid' => '系統郵箱為空，或者格式錯誤，請檢查',
	'dbinfo_tablepre_invalid' => '數據表前綴為空，或者格式錯誤，請檢查',
	'admininfo_username_invalid' => '管理員用戶名為空，或者格式錯誤，請檢查',
	'admininfo_email_invalid' => '管理員Email為空，或者格式錯誤，請檢查',
	'admininfo_password_invalid' => '管理員密碼為空，請填寫',
	'admininfo_password2_invalid' => '兩次密碼不一致，請檢查',

	'install_dzstandalone' => '<div class="selradio"><input type="radio" id="install_ucenter_standalone" name="install_ucenter" value="standalone" onclick="if(this.checked)$(\'form_items_2\').style.display=\'none\';" /><label for="install_ucenter_standalone">全新安裝 Discuz! X (獨立模式安裝)</label></div>',
	'install_dzfull' => '<div class="selradio"><input type="radio" id="install_ucenter_yes"'.(getgpc('install_ucenter') != 'no' ? ' checked="checked"' : '').' name="install_ucenter" value="yes" onclick="if(this.checked)$(\'form_items_2\').style.display=\'none\';" /><label for="install_ucenter_yes">全新安裝 Discuz! X 與 UCenter Server</label></div>',
	'install_dzonly' => '<div class="selradio"><input type="radio" id="install_ucenter_no"'.(getgpc('install_ucenter') == 'no' ? ' checked="checked"' : '').' name="install_ucenter" value="no" onclick="if(this.checked)$(\'form_items_2\').style.display=\'\';" /><label for="install_ucenter_no">僅安裝 Discuz! X (連接到已經安裝的 UCenter Server)</label></div>',

	'username' => '管理員賬號',
	'email' => '管理員 Email',
	'password' => '管理員密碼',
	'password_comment' => '管理員密碼不能為空',
	'password2' => '重複密碼',

	'admininfo_invalid' => '管理員信息不完整，請檢查管理員賬號，密碼，郵箱',
	'dbname_invalid' => '數據庫名為空，請填寫數據庫名稱',
	'tablepre_invalid' => '數據表前綴為空，或者格式錯誤，請檢查',
	'admin_username_invalid' => '非法用戶名，用戶名長度不應當超過 15 個英文字符，且不能包含特殊字符，一般是中文，字母或者數字',
	'admin_password_invalid' => '密碼和上面不一致，請重新輸入',
	'admin_email_invalid' => 'Email 地址錯誤，此郵件地址已經被使用或者格式無效，請更換為其他地址',
	'admin_invalid' => '您的信息管理員信息沒有填寫完整，請仔細填寫每個項目',
	'admin_exist_password_error' => '該用戶已經存在，如果您要設置此用戶為論壇的管理員，請正確輸入該用戶的密碼，或者請更換論壇管理員的名字',

	'tagtemplates_subject' => '標題',
	'tagtemplates_uid' => '用戶 ID',
	'tagtemplates_username' => '發帖者',
	'tagtemplates_dateline' => '日期',
	'tagtemplates_url' => '主題地址',

	'uc_version_incorrect' => '您的 UCenter 服務端版本過低，請升級 UCenter 服務端到最新版本，並且升級，下載地址：https://www.discuz.vip/ 。',
	'config_unwriteable' => '安裝嚮導無法寫入配置文件, 請設置 config.inc.php 程序屬性為可寫狀態(777)',

	'install_in_processed' => '正在安裝...',
	'install_succeed' => '安裝成功，點擊進入',

	'init_credits_karma' => '威望',
	'init_credits_money' => '金錢',

	'init_postno0' => '樓主',
	'init_postno1' => '沙發',
	'init_postno2' => '板凳',
	'init_postno3' => '地板',

	'init_support' => '支持',
	'init_opposition' => '反對',

	'init_group_0' => '會員',
	'init_group_1' => '管理員',
	'init_group_2' => '超級版主',
	'init_group_3' => '版主',
	'init_group_4' => '禁止發言',
	'init_group_5' => '禁止訪問',
	'init_group_6' => '禁止 IP',
	'init_group_7' => '遊客',
	'init_group_8' => '等待驗證會員',
	'init_group_9' => '乞丐',
	'init_group_10' => '新手上路',
	'init_group_11' => '註冊會員',
	'init_group_12' => '中級會員',
	'init_group_13' => '高級會員',
	'init_group_14' => '金牌會員',
	'init_group_15' => '論壇元老',

	'init_rank_1' => '新生入學',
	'init_rank_2' => '小試牛刀',
	'init_rank_3' => '實習記者',
	'init_rank_4' => '自由撰稿人',
	'init_rank_5' => '特聘作家',

	'init_cron_1' => '清空今日發帖數',
	'init_cron_2' => '清空本月在線時間',
	'init_cron_3' => '每日數據清理',
	'init_cron_4' => '生日統計與郵件祝福',
	'init_cron_5' => '主題回復通知',
	'init_cron_6' => '每日公告清理',
	'init_cron_7' => '限時操作清理',
	'init_cron_8' => '論壇推廣清理',
	'init_cron_9' => '每月主題清理',
	'init_cron_10' => '每日 X-Space更新用戶',
	'init_cron_11' => '每週主題更新',

	'init_bbcode_1' => '使內容橫向滾動，這個效果類似 HTML 的 marquee 標籤，注意：這個效果只在 Internet Explorer 瀏覽器下有效。',
	'init_bbcode_2' => '嵌入 Flash 動畫',
	'init_bbcode_3' => '顯示 QQ 在線狀態，點這個圖標可以和他（她）聊天',
	'init_bbcode_4' => '上標',
	'init_bbcode_5' => '下標',
	'init_bbcode_6' => '嵌入 Windows media 音頻',
	'init_bbcode_7' => '嵌入 Windows media 音頻或視頻',

	'init_qihoo_searchboxtxt' =>'輸入關鍵詞,快速搜索本論壇',
	'init_threadsticky' =>'全局置頂,分類置頂,本版置頂',

	'init_default_style' => '默認風格',
	'init_default_forum' => '默認版塊',
	'init_default_template' => '默認模板套系',
	'init_default_template_copyright' => 'Discuz!',

	'init_dataformat' => 'Y-n-j',
	'init_modreasons' => '廣告/SPAM\r\n惡意灌水\r\n違規內容\r\n文不對題\r\n重複發帖\r\n\r\n我很贊同\r\n精品文章\r\n原創內容',
	'init_userreasons' => '很給力!\r\n神馬都是浮雲\r\n贊一個!\r\n山寨\r\n淡定',
	'init_link' => 'Discuz! 官方論壇',
	'init_link_note' => '提供最新 Discuz! 產品新聞、軟件下載與技術交流',

	'init_promotion_task' => '網站推廣任務',
	'init_gift_task' => '紅包類任務',
	'init_avatar_task' => '頭像類任務',

	'copyright' => '&copy; 2001-'.date('Y').' <a href="https://code.dismall.com/" target="_blank">Discuz! Team</a>.',

	'license' => '
<div class="license"><h1>中文版授權協議 適用於中文用戶</h1>
<p>版權所有 (c) 2001-'.date('Y').'，騰訊雲計算（北京）有限責任公司 保留所有權利。</p>

<p>感謝您選擇騰訊雲產品。希望我們的努力能為您提供一個高效快速、強大的站點解決方案，和強大的社區論壇解決方案。產品官方討論社區網址為 https://www.dismall.com。產品官方應用中心網址為：https://addon.dismall.com。開源代碼網址為 https://code.dismall.com。</p>

<p>騰訊雲產品的 Discuz! X 項目內所包含的官方應用中心由合肥貳道網絡科技有限公司承接運營。Discuz! X 開源項目由合肥貳道網絡科技有限公司承接維護，Discuz! X 開源代碼由項目開源管理委員會及社區開發者共同維護。除以上服務外，均由騰訊雲提供服務。</p>

<p>用戶須知：本協議是您與騰訊雲公司之間關於您使用騰訊雲公司提供的各種軟件產品及服務的法律協議。無論您是個人或組織、盈利與否、用途如何（包括以學習和研究為目的），均需仔細閱讀本協議，包括免除或者限制騰訊雲責任的免責條款及對您的權利限制。請您審閱並接受或不接受本服務條款。如您不同意本服務條款及/或騰訊雲隨時對其的修改，您應不使用或主動取消騰訊雲公司提供的騰訊雲產品。否則，您的任何對騰訊雲產品中的相關服務的註冊、登陸、下載、查看等使用行為將被視為您對本服務條款全部的完全接受，包括接受騰訊雲對服務條款隨時所做的任何修改。</p>
<p>本服務條款一旦發生變更， 騰訊雲將在網頁上公佈修改內容。修改後的服務條款一旦在網站管理後台上公佈即有效代替原來的服務條款。您可隨時登錄開源代碼網址查閱最新版服務條款。如果您選擇接受本條款，即表示您同意接受協議各項條件的約束。如果您不同意本服務條款，則不能獲得使用本服務的權利。您若有違反本條款規定，騰訊雲公司有權隨時中止或終止您對騰訊雲產品的使用資格並保留追究相關法律責任的權利。</p>
<p>在理解、同意、並遵守本協議的全部條款後，方可開始使用騰訊雲產品。您可能與騰訊雲公司直接簽訂另一書面協議，以補充或者取代本協議的全部或者任何部分。</p>

<p>騰訊雲擁有本軟件的全部知識產權。本軟件只供許可協議，並非出售。騰訊雲只允許您在遵守本協議各項條款的情況下複製、下載、安裝、使用或者以其他方式受益於本軟件的功能或者知識產權。</p>

<h3>I. 協議許可的權利</h3>
<ol>
   <li>您可以在完全遵守本許可協議的基礎上，將本軟件應用於非商業用途或商業用途使用（局限於本協議所適配許可的情況下），而不必支付軟件版權許可費用。</li>
   <li>您可以在協議規定的約束和限制範圍內修改騰訊雲產品源代碼（如果被提供的話）或界面風格以適應您的網站要求。</li>
   <li>您擁有使用本軟件構建的網站中全部會員資料、文章及相關信息的所有權，並獨立承擔與使用本軟件構建的網站內容的審核、注意義務，確保其不侵犯任何人的合法權益，獨立承擔因使用騰訊雲軟件和服務帶來的全部責任，若造成騰訊雲公司或用戶損失的，您應予以全部賠償。</li>
   <li>若您需將騰訊雲軟件或服務用戶商業用途，必須遵守中國人民共和國相關法律。若需提供技術支持方式或技術支持內容，請向官方（https://www.discuz.vip/）獲取技術支持服務。</li>
   <li>您可以從騰訊雲提供的應用中心服務中下載適合您網站的應用程序，但應向應用程序開發者/所有者支付相應的費用。</li>
</ol>

<h3>II. 協議規定的約束和限制</h3>
<ol>
   <li>不得對本軟件或與之關聯的商業授權進行出租、出售、抵押或發放子許可證。</li>
   <li>無論如何，即無論用途如何、是否經過修改或美化、修改程度如何，只要使用騰訊雲產品的整體或任何部分，未經書面許可，頁面頁腳處的 Powered by Discuz! 及鏈接（https://www.discuz.vip/）和程序後台官方應用中心的鏈接（https://addon.dismall.com）都必須保留，而不能清除或修改、替換。</li>
   <li>禁止在騰訊雲產品的整體或任何部分基礎上以發展任何派生版本、修改版本或第三方版本用於重新分發。</li>
   <li>您從應用中心下載的應用程序，未經應用程序開發者/所有者的書面許可，不得對其進行反向工程、反向彙編、反向編譯等，不得擅自複製、修改、鏈接、轉載、彙編、發表、出版、發展與之有關的衍生產品、作品等。</li>
   <li>如果您未能遵守本協議的條款，您的授權將被終止，所許可的權利將被收回，同時您應承擔相應法律責任。</li>
</ol>

<h3>III. 有限擔保和免責聲明</h3>
<ol>
   <li>本軟件及所附帶的文件是作為不提供任何明確的或隱含的賠償或擔保的形式提供的。</li>
   <li>用戶出於自願而使用本軟件，您必須瞭解使用本軟件的風險，我們不承諾提供任何形式的技術支持、使用擔保，也不承擔任何因使用本軟件而產生問題的相關責任。</li>
   <li>騰訊雲公司不對使用本軟件構建的網站中或者論壇中的文章或信息承擔責任，全部責任由您自行承擔。</li>
   <li>官方應用中心無法全面監控由第三方上傳至應用中心的應用程序，因此不保證應用程序的合法性、安全性、完整性、真實性或品質等；您從應用中心下載應用程序時，同意自行判斷並承擔所有風險，而不依賴於騰訊雲公司及官方應用中心。但在任何情況下，官方應用中心有權依法停止應用中心服務並採取相應行動，包括但不限於對於相關應用程序進行卸載，暫停服務的全部或部分，保存有關記錄，並向有關機關報告。由此對您及第三人可能造成的損失，騰訊雲公司及官方應用中心不承擔任何直接、間接或者連帶的責任。</li>
   <li>騰訊雲公司對騰訊雲提供的軟件和服務之及時性、安全性、準確性不作擔保，由於不可抗力因素、騰訊雲公司無法控制的因素（包括黑客攻擊、停斷電等）等造成軟件使用和服務中止或終止，而給您造成損失的，您同意放棄追究騰訊雲公司責任的全部權利。   </li>
   <li>騰訊雲公司特別提請您注意，騰訊雲公司為了保障公司業務發展和調整的自主權，騰訊雲公司擁有隨時經或未經事先通知而修改服務內容、中止或終止部分或全部軟件使用和服務的權利，修改會公佈於騰訊雲公司網站相關頁面上，一經公佈視為通知。 騰訊雲公司行使修改或中止、終止部分或全部軟件使用和服務的權利而造成損失的，騰訊雲公司不需對您或任何第三方負責。</li>
</ol>

<p>有關騰訊雲產品最終用戶授權協議、商業授權與技術服務的詳細內容，均由騰訊雲公司獨家提供。騰訊雲公司擁有在不事先通知的情況下，修改授權協議和服務價目表的權利，修改後的協議或價目表對自改變之日起的新授權用戶生效。</p>

<p>一旦您開始安裝騰訊雲產品，即被視為完全理解並接受本協議的各項條款，在享有上述條款授予的權利的同時，受到相關的約束和限制。協議許可範圍以外的行為，將直接違反本授權協議並構成侵權，我們有權隨時終止授權，責令停止損害，並保留追究相關責任的權力。</p>

<p>本許可協議條款的解釋，效力及糾紛的解決，適用於中華人民共和國大陸法律。</p>

<p>若您和騰訊雲之間發生任何糾紛或爭議，首先應友好協商解決，協商不成的，您在此完全同意將糾紛或爭議提交騰訊雲所在地北京市海澱區人民法院管轄。騰訊雲公司擁有對以上各項條款內容的解釋權及修改權。</p>

<p>（正文完）</p>

<p align="right">Discuz!</p>

</div>',

	'php8_tips' => '您好，當前產品暫不支持 PHP 9 安裝，請降級到至少 PHP 8.0 後再試！',
	'no_utf8_tips' => '您好，您使用的版本為 GBK / BIG-5 等本地化編碼版本，此版本已經不作為主推版本，如果您計劃建設新站點【強烈】建議您使用最新正式 UTF-8 版本安裝。',
	'no_latest_tips' => '您好，您使用的版本較老，可能存在 Bug 以及安全隱患，如無特殊情況建議您改用最新正式 UTF-8 版本安裝。',
	'unstable_tips' => '您好，您使用的版本為非正式版本，可能存在未知的 Bug 或缺陷，如果您計劃正式建站或購買插件建議您使用最新正式 UTF-8 版本安裝。',
	'next_tips' => '\r\n點擊【確定】跳轉到最新正式 UTF-8 版本下載頁面，點擊【取消】繼續安裝（不推薦）',

	'uc_installed' => '您已經安裝過 UCenter，如果需要重新安裝，請刪除 data/install.lock 文件',
	'i_agree' => '我已仔細閱讀，並同意上述條款中的所有內容',
	'supportted' => '支持',
	'unsupportted' => '不支持',
	'max_size' => '支持/最大尺寸',
	'project' => '項目',
	'ucenter_required' => 'Discuz! 所需配置',
	'ucenter_best' => 'Discuz! 最佳',
	'curr_server' => '當前服務器',
	'env_check' => '環境檢查',
	'os' => '操作系統',
	'php' => 'PHP 版本',
	'attachmentupload' => '附件上傳',
	'unlimit' => '不限制',
	'version' => '版本',
	'gdversion' => 'GD 庫',
	'allow' => '允許 ',
	'unix' => '類Unix',
	'diskspace' => '磁盤空間',
	'opcache' => 'OPcache',
	'curl' => 'cURL 庫',
	'priv_check' => '目錄、文件權限檢查',
	'func_depend' => '函數依賴性檢查',
	'func_name' => '函數名稱',
	'check_result' => '檢查結果',
	'suggestion' => '建議',
	'advice_mysqli' => '請檢查 mysqli 模塊是否正確加載',
	'advice_fopen' => '該函數需要 php.ini 中 allow_url_fopen 選項開啟。請聯繫服務商，確定開啟了此項功能',
	'advice_xml' => '該函數需要 PHP 支持 XML。請聯繫服務商，確定開啟了此項功能',
	'none' => '無',
	'undefine_func' => '不存在的函數',
	'mysqli_unsupport' => '請檢查 mysqli 模塊是否正確加載',

	'dbhost' => '數據庫服務器地址',
	'dbuser' => '數據庫用戶名',
	'dbpw' => '數據庫密碼',
	'dbname' => '數據庫名',
	'tablepre' => '數據表前綴',

	'ucfounderpw' => '創始人密碼',
	'ucfounderpw2' => '重複創始人密碼',

	'clear_dir' => '清空目錄',
	'select_db' => '選擇數據庫',
	'create_table' => '建立數據表',
	'succeed' => '成功',
	'failed' => '失敗',

	'init_table_data' => '正在初始化數據表中的數據',
	'install_data' => '正在安裝數據',
	'install_test_data' => '正在安裝附加數據',

	'method_undefined' => '未定義方法',
	'database_nonexistence' => '數據庫操作對像不存在',
	'skip_current' => '跳過本步',
	'topic' => '專題',
	'install_finish' => '站點安裝完成，感謝您的支持！',
	'install_finish_next' => '接下來您可以：',
	'finish_btn_admin' => '進入管理後台',
	'finish_btn_cloudaddon' => '安裝插件模板',
	'finish_btn_direct' => '直接訪問站點',

//---------------------------------------------------------------
// Added by Valery Votintsev
// 2 vars for language select:
	'welcome'			=> '歡迎到Discuz！ X安裝！',//'Welcome to Discuz! X Installation!',
	'select_language'		=> '<b>選擇安裝語言</b>',//'<b>Select the installation language</b>:',
//vot !!!Translate to Chinese!!!
//vot	'regiondata'			=> 'Add regions data',//'Add location data',
//vot	'regiondata_check_label'	=> 'Install additional regional data (countries/regions/cities)',//'Install additional regional data (countries/regions/cities)',
//vot	'install_region_data'		=> 'Install regional data',//'Install regional data',

	'php_version_too_low'		=> 'PHP version is too low',
	'php_version_too_low_comment'	=> 'For normal functioning Discuz! requires for more new version of PHP',
	'mbstring'			=> 'MBstring 库',//'MBstring Library',
	'ext_info'			=> '另外，你可以從雲計算應用中心的許多有趣的和有用的插件和模板安裝：',//'另外，你可以从云计算应用中心的许多有趣的和有用的插件和模板安装：',//'Additionally you can install many interesting and usefull plugins and templates from the Cloud Application Center:',
//---------------------------------------------------------------

);

$msglang = array(
	'config_nonexistence' => '您的 config.inc.php 不存在, 無法繼續安裝, 請用 FTP 將該文件上傳後再試。',
);

?>
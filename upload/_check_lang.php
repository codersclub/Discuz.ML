<?

echo "<h2>X2ML LANGUAGE PACK VERIFIER</h2>";
echo "(c) by Valery Votintsev (vot), http://codersclub.org/discuzx/<br>";
echo "-------------------------------------------------------------<br>";

//=======================================

function getgpc($k, $t='GP') {
	return '';
}

define('IN_DISCUZ', true);

$language = isset($_GET['lang']) ? $_GET['lang'] : '';

if(!$language) {
  $uri = $_SERVER['REQUEST_URI'];
  $uri = preg_replace("/\.php.*$/i",'.php',$uri);

  echo "Set the language for check!<br><br>\n";
  echo "Example:<br>\n";
  echo $uri."?lang=en<br>\n";
  exit;
}

echo "CHECK LANGUAGE started.<br>";

$dir = 'source/language/'.$language.'/';

$files = array(
	"lang_action.php",
	"lang_admincp.php",
	"lang_admincp_cloud.php",
	"lang_admincp_login.php",
	"lang_admincp_menu.php",
	"lang_admincp_msg.php",
	"lang_admincp_searchindex.php",
	"lang_blockclass.php",
//	"lang_connect.php",
	"lang_core.php",
	"lang_country.php",
	"lang_email.php",
	"lang_error.php",
	"lang_exif.php",
	"lang_feed.php",
	"lang_friend.php",
	"lang_message.php",
	"lang_notification.php",
	"lang_portalcp.php",
	"lang_seccode.php",
	"lang_space.php",
	"lang_spacecp.php",
	"lang_template.php",
	"lang_title.php",
	"lang_install.php",
	"lang_restore.php",
	"lang_update.php",
	"lang_convert.php",
	"adv/lang_article.php",
	"adv/lang_articlelist.php",
	"adv/lang_blog.php",
	"adv/lang_cornerbanner.php",
	"adv/lang_couplebanner.php",
	"adv/lang_custom.php",
	"adv/lang_feed.php",
	"adv/lang_float.php",
	"adv/lang_footerbanner.php",
	"adv/lang_headerbanner.php",
	"adv/lang_intercat.php",
	"adv/lang_interthread.php",
	"adv/lang_search.php",
	"adv/lang_subnavbanner.php",
	"adv/lang_text.php",
	"adv/lang_thread.php",
	"adv/lang_threadlist.php",
	"block/lang_activitylist.php",
	"block/lang_adv.php",
	"block/lang_albumlist.php",
	"block/lang_announcement.php",
	"block/lang_articlelist.php",
	"block/lang_attachmentlist.php",
	"block/lang_banner.php",
	"block/lang_blank.php",
	"block/lang_bloglist.php",
	"block/lang_doinglist.php",
	"block/lang_forumlist.php",
	"block/lang_forumstat.php",
	"block/lang_forumtree.php",
	"block/lang_friendlink.php",
	"block/lang_google.php",
	"block/lang_groupactivity.php",
	"block/lang_groupattachment.php",
	"block/lang_grouplist.php",
	"block/lang_groupthread.php",
	"block/lang_grouptrade.php",
	"block/lang_houselist.php",
	"block/lang_line.php",
	"block/lang_memberlist.php",
	"block/lang_myapp.php",
	"block/lang_piclist.php",
	"block/lang_polllist.php",
	"block/lang_portalcategory.php",
	"block/lang_sortlist.php",
	"block/lang_stat.php",
	"block/lang_threadlist.php",
	"block/lang_topiclist.php",
	"block/lang_tradelist.php",
	"block/lang_vedio.php",
	"forum/lang_archiver.php",
	"forum/lang_dz_feed.php",
	"forum/lang_misc.php",
	"forum/lang_modaction.php",
	"forum/lang_swfupload.php",
	"forum/lang_template.php",
	"group/lang_misc.php",
	"group/lang_template.php",
	"home/lang_editor.php",
	"home/lang_magic.php",
	"home/lang_template.php",
	"magic/lang_anonymouspost.php",
	"magic/lang_attachsize.php",
	"magic/lang_bump.php",
	"magic/lang_call.php",
	"magic/lang_checkonline.php",
	"magic/lang_close.php",
	"magic/lang_detector.php",
	"magic/lang_doodle.php",
	"magic/lang_downdateline.php",
	"magic/lang_flicker.php",
	"magic/lang_friendnum.php",
	"magic/lang_gift.php",
	"magic/lang_highlight.php",
	"magic/lang_hot.php",
	"magic/lang_jack.php",
	"magic/lang_money.php",
	"magic/lang_namepost.php",
	"magic/lang_open.php",
	"magic/lang_repent.php",
	"magic/lang_showip.php",
//	"magic/lang_sofa.php",
	"magic/lang_stick.php",
	"magic/lang_thunder.php",
	"magic/lang_updateline.php",
	"magic/lang_visit.php",
	"member/lang_template.php",
	"mobile/lang_template.php",
	"portal/lang_template.php",
	"ranklist/lang_navtitle.php",
	"ranklist/lang_template.php",
	"search/lang_template.php",
	"secqaa/lang_calc.php",
	"tag/lang_template.php",
	"task/lang_avatar.php",
	"task/lang_blog.php",
	"task/lang_connect_bind.php",
	"task/lang_email.php",
	"task/lang_friend.php",
	"task/lang_gift.php",
	"task/lang_invite.php",
	"task/lang_member.php",
	"task/lang_post.php",
	"task/lang_profile.php",
	"task/lang_promotion.php",
	"userapp/lang_template.php",
);

echo "Directory: ".$dir."<br><br>";

foreach($files AS $file) {
  echo "&nbsp;&nbsp;&nbsp;Checking file: ".$file."<br>";
  include $dir.$file;
}

echo "<br>------------------------<br>";


$language = isset($_GET['lang']) ? $_GET['lang'] : '';

$dir = 'uc_server/language/'.$language.'/';

$files2 = array(
	"lang.inc.php",
	"admin.lang.php",
	"main.lang.php",
	"messages.lang.php",
	"templates.lang.php",
);

echo "Directory: ".$dir."<br><br>";

foreach($files2 AS $file) {
  echo "&nbsp;&nbsp;&nbsp;Checking file: ".$file."<br>";
  include $dir.$file;
}



echo "<br>------------------------<br>";
echo "CHECK LANGUAGE finished.<br>";


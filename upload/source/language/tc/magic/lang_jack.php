<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: lang_jack.php 27449 2012-02-01 05:32:35Z zhangguosheng $
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

$lang = array
(
	'jack_name' => '千斤頂',
	'jack_desc' => '可以將主題頂起一段時間，重複使用可延長帖子被頂起的時間',
	'jack_expiration' => '時長',
	'jack_expiration_comment' => '設置主題可以被頂起多長時間，默認 1 小時',
	'jack_forum' => '允許使用本道具的版塊',
	'jack_info' => '<p class="mtn xw0 mbn">頂起指定的主題<span class="xi1 xw1 xs2"> {expiration} </span> 小時。</p> <p class="mtn xw0 mbn">您現在有<span class="xi1 xw1 xs2"> {magicnum} </span>個千斤頂可以使用。</p>',
	'jack_num' => '本次使用數量:',
	'jack_num_not_enough' => '道具數量不足或沒有填寫使用數量。',
	'jack_info_nonexistence' => '請指定要頂起的主題',
	'jack_succeed' => '千斤頂成功將主題頂起',
	'jack_info_noperm' => '對不起，主題所在版塊不允許使用本道具',

	'jack_notification' => '您的主題 {subject} 被 {actor} 使用了{magicname}，<a href="forum.php?mod=viewthread&tid={tid}">快去看看吧！</a>',
);

?>
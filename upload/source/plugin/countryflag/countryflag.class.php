<?php
/*  Country Flag
 *  Plugin for Discuz! X2.0 ML
 *  Copyright (c) by Valery Votintsev, codersclub.org
 *    http://codersclub.org/discuzx/home.php?mod=space&uid=1
 *  Original idea by KEN
 *    http://codersclub.org/discuzx/home.php?mod=space&uid=1563
 *  V1.1 UPDATE 20120328 by Ken
 *  V1.2 UPDATE 20120607 by vot
 *  V1.3 UPDATE 20121107 by vot
 *  V1.4 UPDATE 20130214 by vot
 *  V1.5 UPDATE 20130509 by vot
 *  V1.6 UPDATE 20130620 by vot
 *  V1.7 UPDATE 20130712 by vot
 *  V1.8 UPDATE 20130724 by vot
 */

if(!defined('IN_DISCUZ')) {
  exit('Access Denied');
}

require_once libfile('function/misc');

class plugin_countryflag {

  function plugin_countryflag() {
    global $_G;

    $this->hideuid  = $_G['cache']['plugin']['countryflag']['hideuid'];
    $this->template = $_G['cache']['plugin']['countryflag']['template'];

  }
}

class plugin_countryflag_forum extends plugin_countryflag {

  function countryflag_go() {
    global $_G, $postlist;

    $return = array();

    if(empty($postlist) || !is_array($postlist)) return $return;

    if(!empty($this->hideuid)){
      $hideidarr = explode(',', $this->hideuid);
    }

    foreach ($postlist as $pid => $post) {
      if(!in_array($post['authorid'], $hideidarr)) {
        $useip = $post['useip'];

        $code    = geoip_country($useip);
        $cfile   = strtolower($code).'.gif';
        $country = convertip($useip);

        if(!is_file('static/image/flag/'.$cfile)){
          $cfile = 'unknown.gif';
        }

        $flag_country = lang('country',$country);
        $flag_image   = '<img src="static/image/flag/'.$cfile.'" title="'.$flag_country.'" />';

        if($this->template){
          $str = $this->template;
          $str = preg_replace('/\$flag_image/i', $flag_image, $str);
          $str = preg_replace('/\$flag_country/i', $flag_country, $str);
          $return[] = $str;
        } else {
          $return[] = '<p style="white-space: nowrap; overflow: hidden;"><img src="static/image/flag/'.$cfile.'" title="'.lang('country',$country).'" />&nbsp;'.lang('country',$country).'</p>';
        }
      } else {
        $return[] = '';
      }
    }
    return $return;
  }

  function viewthread_sidebottom_output() {
    return $this->countryflag_go();
  }
}

<?php
/*
 * Language Pack Diff, v.2.2
 * Last modified date: 24.03.2020
 * (c) by http://codersclub.org
 * Idea by fanha99, http://codersclub.org/discuzx/?1906
 * Rewritten by Valery Votintsev, http://codersclub.org/discuzx/?1
 * -------------------------------------------------------------
 * Usage:
 *   copy this file to the Discuz root folder
 *   and call it by a browser:
 *   http://your_site.tld/discuz_folder/_lang_diff.php
 */

//error_reporting(E_ALL);

// Script Version
$version = '2.3';

// Discuz Root Directory
define('DISCUZ_ROOT', str_replace('\\', '/', dirname(__FILE__)));

// Enabled languages
define('LANG_LIST', array(
	'ar',
	'de',
	'en',
	'es',
	'fa',
	'fr',
	'kr',
	'la',
	'pl',
	'ru',
	'sc',
	'tc',
	'th',
	'tr',
	'ui',
	'vn',
	'_sc',
	)
);

// Language Packs Root Directory:
$dz_dir = DISCUZ_ROOT . '/source/language';
$uc_dir = DISCUZ_ROOT . '/uc_server/language';


$fromlang = isset($_GET['fromlang']) ? $_GET['fromlang'] : '';
$tolang   = isset($_GET['tolang']) ? $_GET['tolang'] : '';


define('IN_DISCUZ',1);
define('IN_COMSENZ',1);
define('STATICURL', '');
define('ADMINSCRIPT', '');
define('SOFT_NAME', '');
define('ROOT_PATH', '');
 

@header('Content-Type: text/html; charset=UTF-8');

?>
<html>
<head>
<title>Lang Diff</title>
<style>
body {text-align:center; margin:0 auto;}
</style>
</head>
<body>

<h2>Discuz!ML Language Pack Diff, v.<?= $version ?></h2>

&copy; 2012-<?= date('Y')?> by <a href="http://codersclub.org/discuzx/">codersclub.org</a>
<br>
Idea by <a href="http://codersclub.org/discuzx/?1906">fanha99</a>,
Rewritten by <a href="http://codersclub.org/discuzx/?1">Valery Votintsev</a>
<hr>

<form>
  <input type="text" name="fromlang" value="<?= $fromlang?>">
  <input type="text" name="tolang" value="<?= $tolang?>">
  <input type="submit">
</form>

<?php

if($fromlang && $tolang) {

?>

Base directory: <b><?= $dz_dir?></b>
<br>
<br>

<table align="center" border="1">
  <tr>
    <th>Left Language pack: <?= $fromlang?></th>
    <th>#</th>
    <th>#</th>
    <th>Right Language pack: <?= $tolang?></th>
  </tr>

<?php
  checkdir($dz_dir, '');
?>

</table>

<br>
<br>

UCenter directory: <b><?= $uc_dir?></b>
<br>
<br>

<table align="center" border="1">
  <tr>
    <th>Left Language pack: <?= $fromlang?></th>
    <th>#</th>
    <th>#</th>
    <th>Right Language pack: <?= $tolang?></th>
  </tr>

<?php
  checkdir($uc_dir, '');
?>

</table>

<br/>

All Done.

<?php
}

exit;

?>

</body>
</html>

<?php

//----------------------------------------------------------

function lfile2array($f) {
  $o = file($f);
  foreach($o as &$r) {
    $r = trim($r);
    if (strpos($r, '=>')!==false) $r=trim(substr($r, 0, strpos($r, "=>")));
    else $r="";
  }
  foreach ($o as $k=>$v) {
    if ($v=="") unset ($o[$k]);
  }
  return $o;
}

//----------------------------------------------------------
// Fiction
function getgpc($f) {
  return '';
}

//----------------------------------------------------------
// Fiction
function dgmdate($f) {
  return '';
}

//----------------------------------------------------------
function checkdir($lang_dir='', $dir='') {
  global $fromlang, $tolang;

  $dir = str_replace('\\','/',$dir);	// Replace Backslash with right slash
  $dir = preg_replace('/\/$/','',$dir);	// Remove trailing slash

  $ucenter = (strpos($lang_dir, '/uc_server/') === false) ? 0 : 1;

  $sourcedir = $lang_dir;
  if($fromlang !== 'sc' || $ucenter) {
    $sourcedir = $lang_dir . '/' . $fromlang;
  }
 
  $targetdir = $lang_dir;
  if($targetdir !== 'sc' || $ucenter) {
    $targetdir = $lang_dir . '/' . $tolang;
  }
 

  if(in_array($dir, LANG_LIST)) {
    return;
  }

  if($dir) {
    $sourcedir .= '/' . $dir;
    $targetdir .= '/' . $dir;
  }


//DEBUG
//echo "<pre>";
//echo 'checkdir dir=', $dir, "\n";
//echo "sourcedir=", $sourcedir, "\n";    
//echo "targetdir=", $targetdir, "\n";    
//echo "</pre>";


  $indent = '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';

  if(!is_dir($sourcedir)) {
    error('Source directory <b>' . $sourcedir . '</b> NOT FOUND!');
    return;
  }

  if(!is_dir($targetdir)) {
    error('Target directory <b>' . $targetdir . '</b> NOT FOUND!');
    return;
  }

  //----------------------------------------------------

  $d = opendir($sourcedir);

  while($file = readdir($d)) {

    if($file == '.' || $file == '..') continue;

    $sourcefile = $sourcedir . '/' . $file;
    $targetfile = $targetdir . '/' . $file;

//DEBUG
//echo "<pre>";
//echo "sourcefile=", $sourcefile, "\n";    
//echo "targetfile=", $targetfile, "\n";    
//echo "</pre>";


    if(is_dir($sourcefile)) {

      $newdir = ($dir ? $dir . '/' : '') . $file;
      checkdir($lang_dir, $newdir);

    } else if( substr($file, -4) == '.php') {

      $error = 0;
      $left  = str_replace($lang_dir,'',$sourcefile);
      $right = str_replace($lang_dir,'',$targetfile);
      $source = array();
      $target = array();
      $class = '';
      $right_exists = false;

      //--------------------------------

      unset($lang);
      unset($language);
      unset($languages);
      unset($extend_lang);
      
      include $sourcefile;

      if (isset($lang)) {
        $source = $lang;

      } elseif (isset($language)) {
        $source = $language;

      } elseif (isset($languages)) {
        $source = $languages;

      } elseif (isset($extend_lang)) {
        $source = $extend_lang;

      } else {
        $error = 1;
        $left .= '<br>is NOT LANG file!!!';
      }
        
      //--------------------------------

      if (!is_file($targetfile)) {
        $error = 1;
        $right .= '<br>FILE NOT FOUND!!!';

      } else {

        unset($lang);
        unset($language);
        unset($languages);
        unset($extend_lang);
        $right_exists = true;

        include ($targetfile);

        if (isset($lang)) {
          $target = $lang;

        } elseif (isset($language)) {
          $target = $language;

        } elseif (isset($languages)) {
          $target = $languages;

        } elseif (isset($extend_lang)) {
          $target = $extend_lang;

        } else {
          $error = 1;
          $right .= '<br>is NOT LANG file!!!';
        }
          
      }


      //--------------------------------

      if(@count($source) == @count($target)) {
      } else {

        $error = 1;

        $source_keys = array_keys($source);
        $target_keys = array_keys($target);
        
        if($right_exists) {
          foreach (array_diff($source_keys, $target_keys) as $key) {
            $left .= "<br/>" . $indent . $key;
            if(is_numeric($key)) {
              if(gettype($source[$key])=='array') {
                $left .= "=Array";
              } else {
                $left .= "='" . htmlspecialchars($source[$key]) ."'";
              }
            }
          }
        }

        foreach (array_diff($target_keys, $source_keys) as $key) {
//dump($key, '$key');
          $right .= "<br/>" . $indent . $key;
          if(is_numeric($key)) {
            if(is_string($target[$key])) $right .= "='" . htmlspecialchars($target[$key]) ."'";
          }
        }
      }

echo '<tr valign="top"', ($error ? ' style="color:red;"' : ''), ">\n";
echo "<td>", $left, "</td>\n";
echo '<td align="center">', @count($source), "</td>\n";
echo '<td align="center">', @count($target), "</td>\n";
echo "<td>", $right, "</td>\n";
echo "</tr>\n";
    }
  }
}

function error($s='') {
  echo '<font color="red">'.$s.'</font>'."<br>\n";
}

function htmlspecialarray($var) {
//    return array_map("htmlspecialchars", $myArray, array(ENT_QUOTES, 'UTF-8'));
    return array_map("htmlspecialchars", $myArray, [ENT_QUOTES], ['UTF-8']);
}

//----------------------------------------------------------
// Dump variable value for debug
function dump($data, $name='') {
    $buf = var_export($data, true);

    $buf = str_replace('\\r', '', $buf);
    $buf = preg_replace('/\=\>\s*\n\s*array/s', '=> array', $buf);

    echo '<pre>';

    if($name) {
        echo $name, '=';
    }

    echo $buf;
    echo '</pre>';
}

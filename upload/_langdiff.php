<?php
/*
 * Language Pack Diff, v.2.0
 * (c) by http://codersclub.org
 * Idea by fanha99, http://codersclub.org/discuzx/?1906
 * Rewritten by Valery Votintsev, http://codersclub.org/discuzx/?1
 */

// Language Packs Root Directory:
$lang_dir = str_replace('\\','/',dirname(__FILE__)) . '/source/language';


$fromlang = isset($_GET['fromlang']) ? $_GET['fromlang'] : '';
$tolang   = isset($_GET['tolang']) ? $_GET['tolang'] : '';


define('IN_DISCUZ',1);
define('IN_COMSENZ',1);


@header('Content-Type: text/html; charset=UTF-8');

?>

<center>

<h2>Language Pack Diff, v.2.0</h2>

&copy; 2012-<?= date('Y')?> by <a href="http://codersclub.org/discuzx/">codersclub.org</a>
<br>
Idea by <a href="http://codersclub.org/discuzx/?1906">fanha99</a>,
Rewritten by <a href="http://codersclub.org/discuzx/?1">Valery Votintsev</a>
<hr>

Base directory: <b><?= $lang_dir?></b>
<br>
<br>

<form>
  <input type="text" name="fromlang" value="<?= $fromlang?>">
  <input type="text" name="tolang" value="<?= $tolang?>">
  <input type="submit">
</form>

<?php

if($fromlang && $tolang) {

?>

<table align="center" border="1">
  <tr>
    <th>Left Language pack: <?= $fromlang?></th>
    <th>#</th>
    <th>#</th>
    <th>Right Language pack: <?= $tolang?></th>
  </tr>

<?php

  checkdir('');

?>

</table>

<br/>

All Done.

<?php
}
?>

</center>

<?php

exit;

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
function checkdir($dir = '') {
  global $lang_dir, $fromlang, $tolang;

  $dir = str_replace('\\','/',$dir);	// Replace Backslash with right slash
  $dir = preg_replace('/\/$/','',$dir);	// Remove trailing slash

  $sourcedir = $lang_dir . '/' . $fromlang;
  $targetdir = $lang_dir . '/' . $tolang;

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
      checkdir($newdir);

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
      unset($extend_lang);
      
      include $sourcefile;

      if (isset($lang)) {
        $source = $lang;

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
        unset($extend_lang);
        $right_exists = true;

        include ($targetfile);

        if (isset($lang)) {
          $target = $lang;

        } elseif (isset($extend_lang)) {
          $target = $extend_lang;

        } else {
          $error = 1;
          $right .= '<br>is NOT LANG file!!!';
        }
          
      }


      //--------------------------------

      if(count($source) == count($target)) {
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
          $right .= "<br/>" . $indent . $key;
          if(is_numeric($key)) $right .= "='" . htmlspecialchars($target[$key]) ."'";
        }
      }

echo '<tr valign="top"', ($error ? ' style="color:red;"' : ''), ">\n";
echo "<td>", $left, "</td>\n";
echo '<td align="center">', count($source), "</td>\n";
echo '<td align="center">', count($target), "</td>\n";
echo "<td>", $right, "</td>\n";
echo "</tr>\n";
    }
  }
}

function error($s='') {
  echo '<font color="red">'.$s.'</font>'."<br>\n";
}


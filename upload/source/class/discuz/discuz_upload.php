<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: discuz_upload.php 34648 2014-06-18 02:53:07Z hypowang $
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}


Class discuz_upload{

	var $attach = array();
	var $type = '';
	var $extid = 0;
	var $errorcode = 0;
	var $forcename = '';

	public function __construct() {

	}

	function init($attach, $type = 'temp', $extid = 0, $forcename = '', $subdir = '', $dirtype = 1, $filename = '') {

		if(!is_array($attach) || empty($attach) || !$this->is_upload_file($attach['tmp_name']) || trim($attach['name']) == '' || $attach['size'] == 0) {
			$this->attach = array();
			$this->errorcode = -1;
			return false;
		} else {
			$this->type = $this->check_dir_type($type);
			$this->extid = intval($extid);
			$this->forcename = preg_match("/^[a-z0-9_]+$/i", $forcename) ? $forcename : '';
			$subdir = preg_match("/^[a-z0-9_]+$/i", $subdir) ? $subdir : '';
			$filename = preg_match("/^[a-z0-9_]+$/i", $filename) ? $filename : '';

			$attach['size'] = intval($attach['size']);
			$attach['name'] =  trim($attach['name']);
			$attach['thumb'] = '';
			$attach['ext'] = $this->fileext($attach['name']);

			$attach['name'] =  dhtmlspecialchars($attach['name'], ENT_QUOTES);
			if(dstrlen($attach['name']) > 90) {
				$attach['name'] = cutstr($attach['name'], 80, '').'.'.$attach['ext'];
			}

			$attach['isimage'] = $this->is_image_ext($attach['ext']);
			$attach['extension'] = $this->get_target_extension($attach['ext']);
			$attach['attachdir'] = $this->get_target_dir($this->type, $extid, true, $subdir, $dirtype);
			$attach['attachment'] = $attach['attachdir'].$this->get_target_filename($this->type, $this->extid, $this->forcename, $filename).'.'.$attach['extension'];
			$attach['target'] = getglobal('setting/attachdir').'./'.$this->type.'/'.$attach['attachment'];
			$this->attach = & $attach;
			$this->errorcode = 0;
			return true;
		}

	}

	function save($ignore = 0) {
		if($ignore) {
			if(!$this->save_to_local($this->attach['tmp_name'], $this->attach['target'])) {
				$this->errorcode = -103;
				return false;
			} else {
				$this->errorcode = 0;
				return true;
			}
		}

		if(empty($this->attach) || empty($this->attach['tmp_name']) || empty($this->attach['target'])) {
			$this->errorcode = -101;
		} elseif(in_array($this->type, array('group', 'album', 'category')) && !$this->attach['isimage']) {
			$this->errorcode = -102;
		} elseif(in_array($this->type, array('common')) && (!$this->attach['isimage'] && !in_array($this->attach['ext'], array('ext', 'svg')))) {
			$this->errorcode = -102;
		} elseif(!$this->save_to_local($this->attach['tmp_name'], $this->attach['target'])) {
			$this->errorcode = -103;
		} elseif(($this->attach['isimage'] || $this->attach['ext'] == 'swf') && (!$this->attach['imageinfo'] = $this->get_image_info($this->attach['target'], true))) {
			$this->errorcode = -104;
			@unlink($this->attach['target']);
		} else {
			$this->errorcode = 0;
			return true;
		}

		return false;
	}

	function error() {
		return $this->errorcode;
	}

	function errormessage() {
		return lang('error', 'file_upload_error_'.$this->errorcode);
	}

	public static function fileext($filename) {
		return addslashes(strtolower(substr(strrchr($filename, '.'), 1, 10)));
	}

	public static function is_image_ext($ext) {
		static $imgext  = array('jpg', 'jpeg', 'gif', 'png', 'bmp', 'webp');
		return in_array($ext, $imgext) ? 1 : 0;
	}

	public static function get_image_info($target, $allowswf = false) {
		$ext = discuz_upload::fileext($target);
		$isimage = discuz_upload::is_image_ext($ext);
		if(!$isimage && ($ext != 'swf' || !$allowswf)) {
			return false;
		} elseif(!is_readable($target)) {
			return false;
		} elseif($imageinfo = @getimagesize($target)) {
			list($width, $height, $type) = !empty($imageinfo) ? $imageinfo : array('', '', '');
			$size = $width * $height;
			// Imagick does not have a max size limit, GD limits the value read from the database
			if((!getglobal('setting/imagelib') && $size > (getglobal('setting/gdlimit') ? getglobal('setting/gdlimit') : 16777216)) || $size < 16 ) {
				return false;
			} elseif($ext == 'swf' && $type != 4 && $type != 13) {
				return false;
			} elseif($isimage && !in_array($type, array(1,2,3,6,13,18))) {
				return false;
			} elseif(!$allowswf && ($ext == 'swf' || $type == 4 || $type == 13)) {
				return false;
			}
			return $imageinfo;
		} else {
			return false;
		}
	}

	public static function is_upload_file($source) {
		return $source && ($source != 'none') && (is_uploaded_file($source) || is_uploaded_file(str_replace('\\\\', '\\', $source)));
	}

	public static function get_target_filename($type, $extid = 0, $forcename = '', $filename = '') {
		if (empty($filename)) {
			if($type == 'group' || ($type == 'common' && $forcename != '')) {
				$filename = $type.'_'.intval($extid).($forcename != '' ? "_$forcename" : '');
			} else {
				$filename = date('His').strtolower(random(16));
			}
		}
		return $filename;
	}

	public static function get_target_extension($ext) {
		static $safeext  = array('attach', 'jpg', 'jpeg', 'gif', 'png', 'webp', 'swf', 'bmp', 'txt', 'zip', 'rar', 'mp3');
		if(defined('IN_ADMINCP')) {
			$safeext[] = 'svg';
		}
		return strtolower(!in_array(strtolower($ext), $safeext) ? 'attach' : $ext);
	}

	public static function get_target_dir($type, $extid = '', $check_exists = true, $subdir = '', $dirtype = 1) {

		$dir = $subdir1 = $subdir2 = '';
		// $dirtype == 0 Indicates no need for subdirectories
		if($dirtype == 1) {
			if($type == 'group' || $type == 'common') {
				$dir = $subdir1 = substr(md5($extid), 0, 2).'/';
			} elseif($type != 'temp') {
				$subdir1 = date('Ym');
				$subdir2 = date('d');
				$dir = $subdir1.'/'.$subdir2.'/';
			}
		} elseif($dirtype == 2) {
			$subdir1 = date('Ym');
			$subdir2 = date('d');
			$dir = $subdir1.'/'.$subdir2.'/';
		} elseif($dirtype == 3) {
			$dir = $subdir1 = substr(md5($extid), 0, 2).'/';
		}

		if($subdir) {
			$dir = $subdir.'/'.$dir;
		}

		if($check_exists) {
			if($subdir) {
				discuz_upload::check_dir_exists($type, $subdir, $subdir1);
				discuz_upload::check_dir_exists($type, $subdir.'/'.$subdir1.'/'.$subdir2);
			} else {
				discuz_upload::check_dir_exists($type, $subdir1, $subdir2);
			}
		}

		return $dir;
	}

	public static function check_dir_type($type) {
		return preg_match("/^[a-z]+[a-z0-9_]*$/i", $type) ? $type : 'temp';
	}

	public static function check_dir_exists($type = '', $sub1 = '', $sub2 = '') {

		$type = discuz_upload::check_dir_type($type);

		$basedir = !getglobal('setting/attachdir') ? (DISCUZ_ROOT.'./data/attachment') : getglobal('setting/attachdir');

		$typedir = $type ? ($basedir.'/'.$type) : '';
		$subdir1  = $type && $sub1 !== '' ?  ($typedir.'/'.$sub1) : '';
		$subdir2  = $sub1 && $sub2 !== '' ?  ($subdir1.'/'.$sub2) : '';

		$res = $subdir2 ? is_dir($subdir2) : ($subdir1 ? is_dir($subdir1) : is_dir($typedir));
		if(!$res) {
			$res = $typedir && discuz_upload::make_dir($typedir);
			$res && $subdir1 && ($res = discuz_upload::make_dir($subdir1));
			$res && $subdir1 && $subdir2 && ($res = discuz_upload::make_dir($subdir2));
		}

		return $res;
	}

	function save_to_local($source, $target) {
		if(!discuz_upload::is_upload_file($source)) {
			$succeed = false;
		}elseif(@copy($source, $target)) {
			$succeed = true;
		}elseif(function_exists('move_uploaded_file') && @move_uploaded_file($source, $target)) {
			$succeed = true;
		}elseif (@is_readable($source) && (@$fp_s = fopen($source, 'rb')) && (@$fp_t = fopen($target, 'wb'))) {
			while (!feof($fp_s)) {
				$s = @fread($fp_s, 1024 * 512);
				@fwrite($fp_t, $s);
			}
			fclose($fp_s); fclose($fp_t);
			$succeed = true;
		}
		if($succeed)  {
			$this->errorcode = 0;
			@chmod($target, 0644); @unlink($source);
		} else {
			$this->errorcode = 0;
		}

		return $succeed;
	}

	public static function make_dir($dir, $index = true) {
		$res = true;
		if(!is_dir($dir)) {
			$res = @mkdir($dir, 0777);
			$index && @touch($dir.'/index.html');
		}
		return $res;
	}
}

?>
<?php

/*
	[UCenter] (C)2001-2099 Comsenz Inc.
	This is NOT a freeware, use is subject to license terms

	$Id: cache.php 1059 2011-03-01 07:25:09Z monkey $
*/

!defined('IN_UC') && exit('Access Denied');

class cachemodel {

	var $db;
	var $base;
	var $map;

	function __construct(&$base) {
		$this->cachemodel($base);
	}

	function cachemodel(&$base) {
		$this->base = $base;
		$this->db = $base->db;
		$this->map = array(
			'settings' => array('settings'),
			'badwords' => array('badwords'),
			'plugins' => array('plugins'),
			'apps' => array('apps'),
		);
	}

	function updatedata($cachefile = '') {
		if($cachefile) {
			foreach((array)$this->map[$cachefile] as $modules) {
				$s = "<?php\r\n";
				foreach((array)$modules as $m) {
					$method = "_get_$m";
					$s .= '$_CACHE[\''.$m.'\'] = '.var_export($this->$method(), TRUE).";\r\n";
				}
				$s .= "\r\n?>";
/*vot*/				file_put_contents(UC_DATADIR."/cache/$cachefile.php", $s, LOCK_EX);
			}
		} else {
			foreach((array)$this->map as $file => $modules) {
				$s = "<?php\r\n";
				foreach($modules as $m) {
					$method = "_get_$m";
					$s .= '$_CACHE[\''.$m.'\'] = '.var_export($this->$method(), TRUE).";\r\n";
				}
				$s .= "\r\n?>";
/*vot*/				file_put_contents(UC_DATADIR."/cache/$file.php", $s, LOCK_EX);
			}
		}
	}

	function updatetpl() {
/*vot*/		$tpl = dir(UC_DATADIR.'/view');
		while($entry = $tpl->read()) {
			if(preg_match("/\.php$/", $entry)) {
/*vot*/				@unlink(UC_DATADIR.'/view/'.$entry);
			}
		}
		$tpl->close();
	}

	function _get_badwords() {
		$data = $this->db->fetch_all("SELECT * FROM ".UC_DBTABLEPRE."badwords");
		$return = array();
		if(is_array($data)) {
			foreach($data as $k => $v) {
				$return['findpattern'][$k] = $v['findpattern'];
				$return['replace'][$k] = $v['replacement'];
			}
		}
		return $return;
	}

	function _get_apps() {
		$this->base->load('app');
		$apps = $_ENV['app']->get_apps();
		$apps2 = array();
		if(is_array($apps)) {
			foreach($apps as $v) {
				$apps2[$v['appid']] = $v;
			}
		}
		return $apps2;
	}

	function _get_settings() {
		return $this->base->get_setting();
	}

	function _get_plugins() {
		$this->base->load('plugin');
		return $_ENV['plugin']->get_plugins();
	}
}

?>
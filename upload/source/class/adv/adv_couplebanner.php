<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: adv_couplebanner.php 26692 2011-12-20 05:27:38Z monkey $
 *	Modified by Valery Votintsev at sources.ru
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

class adv_couplebanner {

	var $version = '1.1';
	var $name = 'couplebanner_name';
	var $description = 'couplebanner_desc';
	var $copyright = '<a href="https://www.discuz.vip/" target="_blank">Discuz!</a>';
	var $targets = array('portal', 'home', 'member', 'forum', 'group', 'search', 'plugin', 'custom');
	var $imagesizes = array('60x120', '60x250', '60x468');

	function getsetting() {
		global $_G;
		$settings = array(
			'fids' => array(
				'title' => 'couplebanner_fids',
				'type' => 'mselect',
				'value' => array(),
			),
			'groups' => array(
				'title' => 'couplebanner_groups',
				'type' => 'mselect',
				'value' => array(),
			),
			'category' => array(
				'title' => 'couplebanner_category',
				'type' => 'mselect',
				'value' => array(),
			),
			'position' => array(
				'title' => 'couplebanner_position',
				'type' => 'mradio',
				'value' => array(
					array(1, 'couplebanner_position_left'),
					array(2, 'couplebanner_position_right'),
				),
				'default' => 1,
			),
			'coupleadid' => array(
				'title' => 'couplebanner_coupleadid',
				'type' => 'select',
				'value' => array(),
			),
		        'disableclose' => array(
			    'title' => 'couplebanner_disableclose',
			    'type' => 'mradio',
			    'value' => array(
			            array(0, 'couplebanner_show'),
				    array(1, 'couplebanner_hidden'),
			    ),
			    'default' => 0,
			)
		);
		loadcache(array('forums', 'grouptype'));
		$settings['fids']['value'][] = $settings['groups']['value'][] = array(0, '&nbsp;');
		$settings['fids']['value'][] = $settings['groups']['value'][] = array(-1, 'couplebanner_index');
		if(empty($_G['cache']['forums'])) $_G['cache']['forums'] = array();
		foreach($_G['cache']['forums'] as $fid => $forum) {
			$settings['fids']['value'][] = array($fid, ($forum['type'] == 'forum' ? str_repeat('&nbsp;', 4) : ($forum['type'] == 'sub' ? str_repeat('&nbsp;', 8) : '')).$forum['name']);
		}
		foreach($_G['cache']['grouptype']['first'] as $gid => $group) {
			$settings['groups']['value'][] = array($gid, str_repeat('&nbsp;', 4).$group['name']);
			if($group['secondlist']) {
				foreach($group['secondlist'] as $sgid) {
					$settings['groups']['value'][] = array($sgid, str_repeat('&nbsp;', 8).$_G['cache']['grouptype']['second'][$sgid]['name']);
				}
			}
		}
		foreach(C::t('common_advertisement')->fetch_all_by_type('couplebanner') as $couple) {
			$settings['coupleadid']['value'][] = array($couple['advid'], $couple['title']);
		}
		loadcache('portalcategory');
		$this->categoryvalue[] = array(-1, 'couplebanner_index');
		$this->getcategory(0);
		$settings['category']['value'] = $this->categoryvalue;
		return $settings;
	}

	function getcategory($upid) {
		global $_G;
		foreach($_G['cache']['portalcategory'] as $category) {
			if($category['upid'] == $upid) {
				$this->categoryvalue[] = array($category['catid'], str_repeat('&nbsp;', $category['level'] * 4).$category['catname']);
				$this->getcategory($category['catid']);
			}
		}
	}

	function setsetting(&$advnew, &$parameters) {
		global $_G;
		if(is_array($advnew['targets'])) {
			$advnew['targets'] = implode("\t", $advnew['targets']);
		}
		if(is_array($parameters['extra']['fids']) && in_array(0, $parameters['extra']['fids'])) {
			$parameters['extra']['fids'] = array();
		}
		if(is_array($parameters['extra']['groups']) && in_array(0, $parameters['extra']['groups'])) {
			$parameters['extra']['groups'] = array();
		}
		if(is_array($parameters['extra']['category']) && in_array(0, $parameters['extra']['category'])) {
			$parameters['extra']['category'] = array();
		}
	}

	function evalcode() {
/*vot*/		$l_close = lang('template','close');
		return array(
			'check' => '
			if($params[2] != $parameter[\'position\']
			|| $_G[\'basescript\'] == \'forum\' && $parameter[\'fids\'] && !(in_array($_G[\'fid\'], $parameter[\'fids\']) || CURMODULE == \'index\' && in_array(-1, $parameter[\'fids\']))
			|| $_G[\'basescript\'] == \'group\' && $parameter[\'groups\'] && !(in_array($_G[\'grouptypeid\'], $parameter[\'groups\']) || CURMODULE == \'index\' && in_array(-1, $parameter[\'groups\']))
			|| $_G[\'basescript\'] == \'portal\' && $parameter[\'category\'] && !(!empty($_G[\'catid\']) && in_array($_G[\'catid\'], $parameter[\'category\']) || empty($_G[\'catid\']) && in_array(-1, $parameter[\'category\']))
			) {
				$checked = false;
			}',
			'create' => '
			if(empty($_G[\'couplebrother\'])) {
				$coupleadid = $adids[array_rand($adids)];
				$_G[\'couplebrother\'] = $parameters[$coupleadid][\'coupleadid\'];
			} else {
				$coupleadid = $_G[\'couplebrother\'];
			}
/*vot*/			$adcode = empty($parameter[\'disableclose\']) ? (empty($_G[\'cookie\'][\'adclose_\'.$coupleadid]) ? $codes[$coupleadid].\'<br /><a href="javascript:;" title="'.$l_close.'"onclick="setcookie(\\\'adclose_\'.$coupleadid.\'\\\', 1, 86400);this.parentNode.style.display=\\\'none\\\'"><img src="\'.STATICURL.\'image/common/ad_close.gif" /></a>\' : \'\') : $codes[$coupleadid];
			',
		);
	}

}


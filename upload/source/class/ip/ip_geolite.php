<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: ip_geolite.php 1921 2021-12-03 12:00:00Z opensource $
 *	Detect IP country using the maxmind.com GeoLite2 database
 *	(c) Valery Votintsev, https://codersclub.org/discuzx/
 */
error_reporting(E_ALL);

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

class ip_geolite_init_exception extends Exception {}

class ip_geolite {

	private static $instance = NULL;

	private function __construct() {
/*vot*/		$ipdatafile = DISCUZ_ROOT.'./data/ipdata/GeoLite2-Country.mmdb';
/*vot*/		$geoipfile = DISCUZ_ROOT . './source/class/geoip2.phar';
		if(!@file_exists($ipdatafile)) {
			throw new ip_geolite_init_exception();
		}
		if(!@file_exists($geoipfile)) {
			throw new ip_geolite_init_exception();
		}

		require_once($geoipfile);
	}

	function __destruct() {
	}

	public static function getInstance() {
		if (!self::$instance) {
			try {
				self::$instance = new ip_geolite();
			} catch (Exception $e) {
				return NULL;
			}
		}
		return self::$instance;
	}

	public function convert($ip) {

		$ipdot = explode('.', $ip);
		$return = '';

		$ipdot[0] = (int)$ipdot[0];
		$ipdot[1] = (int)$ipdot[1];
		$ipdot[2] = (int)$ipdot[2];
		$ipdot[3] = (int)$ipdot[3];

		if(preg_match("/^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$/", $ip)) {

			if($ipdot[0] == 127) {
				$return = 'LOC';
			} elseif($ipdot[0] == 10 || ($ipdot[0] == 192 && $ipdot[1] == 168) || ($ipdot[0] == 172 && ($ipdot[1] >= 16 && $ipdot[1] <= 31))) {
				$return = 'LAN';
			} elseif($ipdot[0] > 255 || $ipdot[1] > 255 || $ipdot[2] > 255 || $ipdot[3] > 255) {
				$return = 'BAD';
			} else {

				// This creates the Reader object, which should be reused across lookups.
				$reader = new GeoIp2\Database\Reader($ipdatafile);

				try {
					$record = $reader->country($ip);
					$return = $record->country->isoCode; // 'US'
				} catch (Exception $e) {
					$return = 'ERR';
				}
			}
		}

		if(!$return) {
			$return = '??';
		}

		return '- ' . lang('country', $return);
	}
}

<?php

//vot Define UC Language !!!
//vot	!!!! ToDo: Add Language detection by Cookie/Input !!!!!!!!!!!!!!!

/*vot*/ if(!defined('UC_LANG')) {
/*vot*/		define('UC_LANG',UC_DEFAULT_LANG);
/*vot*/		define('RTLSUFFIX',UC_DEFAULT_DIR == 'rtl' ? '_rtl' : '');
/*vot*/ }
/*vot*/	include_once UC_ROOT.'./language/'.UC_LANG.'/main.lang.php';

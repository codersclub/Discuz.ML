<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: discuz_error.php 33361 2013-05-31 08:59:06Z nemohou $
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

class discuz_error
{

	public static function system_error($message, $show = true, $save = true, $halt = true) {
		if(!empty($message)) {
			$message = lang('error', $message);
		} else {
			$message = lang('error', 'error_unknow');
		}

		list($showtrace, $logtrace) = discuz_error::debug_backtrace();

		if($save) {
			$messagesave = '<b>'.$message.'</b><br><b>PHP:</b>'.$logtrace;
			discuz_error::write_error_log($messagesave);
		}

		if($show) {
			discuz_error::show_error('system', "<li>$message</li>", $showtrace, 0);
		}

		if($halt) {
			exit();
		} else {
			return $message;
		}
	}

	public static function template_error($message, $tplname) {
		$message = lang('error', $message);
		$tplname = str_replace(DISCUZ_ROOT, '', $tplname);
		$message = $message.': '.$tplname;
		discuz_error::system_error($message);
	}

	public static function debug_backtrace() {
		$skipfunc[] = 'discuz_error->debug_backtrace';
		$skipfunc[] = 'discuz_error->db_error';
		$skipfunc[] = 'discuz_error->template_error';
		$skipfunc[] = 'discuz_error->system_error';
		$skipfunc[] = 'db_mysql->halt';
		$skipfunc[] = 'db_mysql->query';
		$skipfunc[] = 'DB::_execute';

		$show = $log = '';
		$debug_backtrace = debug_backtrace();
		krsort($debug_backtrace);
		foreach ($debug_backtrace as $k => $error) {
/*vot*/			$error['file'] = str_replace('\\', '/', $error['file']);
			$file = str_replace(DISCUZ_ROOT, '', $error['file']);
			$func = isset($error['class']) ? $error['class'] : '';
			$func .= isset($error['type']) ? $error['type'] : '';
			$func .= isset($error['function']) ? $error['function'] : '';
			if(in_array($func, $skipfunc)) {
				break;
			}
			$error[line] = sprintf('%04d', $error['line']);

			$show .= "<li>[Line: $error[line]]".$file."($func)</li>";
			$log .= !empty($log) ? ' -> ' : '';$file.':'.$error['line'];
			$log .= $file.':'.$error['line'];
		}
		return array($show, $log);
	}

	public static function db_error($message, $sql) {
		global $_G;

		list($showtrace, $logtrace) = discuz_error::debug_backtrace();

		$title = lang('error', 'db_'.$message);
		$title_msg = lang('error', 'db_error_message');
		$title_sql = lang('error', 'db_query_sql');
		$title_backtrace = lang('error', 'backtrace');
		$title_help = lang('error', 'db_help_link');

		$db = &DB::object();
		$dberrno = $db->errno();
		$dberror = str_replace($db->tablepre,  '', $db->error());
		$sql = dhtmlspecialchars(str_replace($db->tablepre,  '', $sql));

		$msg = '<li>[Type] '.$title.'</li>';
		$msg .= $dberrno ? '<li>['.$dberrno.'] '.$dberror.'</li>' : '';
		$msg .= $sql ? '<li>[Query] '.$sql.'</li>' : '';

		discuz_error::show_error('db', $msg, $showtrace, false);
		unset($msg, $phperror);

		$errormsg = '<b>'.$title.'</b>';
		$errormsg .= "[$dberrno]<br /><b>ERR:</b> $dberror<br />";
		if($sql) {
			$errormsg .= '<b>SQL:</b> '.$sql;
		}
		$errormsg .= "<br />";
		$errormsg .= '<b>PHP:</b> '.$logtrace;

		discuz_error::write_error_log($errormsg);
		exit();

	}

	public static function exception_error($exception) {

		if($exception instanceof DbException) {
			$type = 'db';
		} else {
			$type = 'system';
		}

		if($type == 'db') {
			$errormsg = '('.$exception->getCode().') ';
			$errormsg .= self::sql_clear($exception->getMessage());
			if($exception->getSql()) {
				$errormsg .= '<div class="sql">';
				$errormsg .= self::sql_clear($exception->getSql());
				$errormsg .= '</div>';
			}
		} else {
			$errormsg = $exception->getMessage();
		}

		$trace = $exception->getTrace();
		krsort($trace);

		$trace[] = array('file'=>$exception->getFile(), 'line'=>$exception->getLine(), 'function'=> 'break');
		$phpmsg = array();
		foreach ($trace as $error) {
			if(!empty($error['function'])) {
				$fun = '';
				if(!empty($error['class'])) {
					$fun .= $error['class'].$error['type'];
				}
				$fun .= $error['function'].'(';
				if(!empty($error['args'])) {
					$mark = '';
					foreach($error['args'] as $arg) {
						$fun .= $mark;
						if(is_array($arg)) {
							$fun .= 'Array';
						} elseif(is_bool($arg)) {
							$fun .= $arg ? 'true' : 'false';
						} elseif(is_int($arg)) {
							$fun .= (defined('DISCUZ_DEBUG') && DISCUZ_DEBUG) ? $arg : '%d';
						} elseif(is_float($arg)) {
							$fun .= (defined('DISCUZ_DEBUG') && DISCUZ_DEBUG) ? $arg : '%f';
						} else {
							$fun .= (defined('DISCUZ_DEBUG') && DISCUZ_DEBUG) ? '\''.dhtmlspecialchars(substr(self::clear($arg), 0, 10)).(strlen($arg) > 10 ? ' ...' : '').'\'' : '%s';
						}
						$mark = ', ';
					}
				}

				$fun .= ')';
				$error['function'] = $fun;
			}
/*vot*/			$error['file'] = str_replace('\\', '/', $error['file']);
			$phpmsg[] = array(
			    'file' => str_replace(array(DISCUZ_ROOT, '\\'), array('', '/'), $error['file']),
			    'line' => $error['line'],
			    'function' => $error['function'],
			);
		}

		self::show_error($type, $errormsg, $phpmsg);
		exit();

	}

	public static function show_error($type, $errormsg, $phpmsg = '', $typemsg = '') {
		global $_G;

		ob_end_clean();
		$gzip = getglobal('gzipcompress');
		ob_start($gzip ? 'ob_gzhandler' : null);

		header("HTTP/1.1 503 Service Temporarily Unavailable");
		header("Status: 503 Service Temporarily Unavailable");
		header("Retry-After: 3600");

		$host = $_SERVER['HTTP_HOST'];
		$title = (!isset($_G['config']['security']['error']['showerror']) || !empty($_G['config']['security']['error']['showerror'])) ? ($type == 'db' ? 'Database' : 'System') : 'General';
		echo <<<EOT
<!DOCTYPE html>
<html>
<head>
	<title>$host - $title Error</title>
	<meta charset="{$_G['config']['output']['charset']}" />
	<meta name="renderer" content="webkit" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="ROBOTS" content="NOINDEX,NOFOLLOW,NOARCHIVE" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<style type="text/css">
	<!--
	body { background-color: white; color: black; font: 9pt/11pt verdana, arial, sans-serif;}
	#container { max-width: 1024px; margin: auto; }
	#message   { max-width: 1024px; color: black; }

	.red  {color: red;}
	a:link     { font: 9pt/11pt verdana, arial, sans-serif; color: red; }
	a:visited  { font: 9pt/11pt verdana, arial, sans-serif; color: #4e4e4e; }
	a.guess { font: 11pt/13pt verdana, arial, sans-serif; color: blue; }
	h1 { color: #FF0000; font: 18pt "Verdana"; margin-bottom: 0.5em;}
	.bg1{ background-color: #FFFFCC;}
	.bg2{ background-color: #EEEEEE;}
	.bg3{ background-color: #FFA66C; font-weight: bold;}
	.table {background: #AAAAAA; font: 11pt Menlo,Consolas,"Lucida Console";}
	.table tbody{word-break: break-all;}
	.info {
	    background: none repeat scroll 0 0 #F3F3F3;
	    border: 0px solid #aaaaaa;
	    border-radius: 10px 10px 10px 10px;
	    color: #000000;
	    font-size: 11pt;
	    line-height: 160%;
	    margin-bottom: 1em;
	    padding: 1em;
	}

	.help {
	    background: #F3F3F3;
	    border-radius: 10px 10px 10px 10px;
	    font: 14px verdana, arial, sans-serif;
	    text-align: center;
	    line-height: 160%;
	    padding: 1em;
	    margin: 1em 0;
	}

	.sql {
	    background: none repeat scroll 0 0 #FFFFCC;
	    border: 1px solid #aaaaaa;
	    color: #000000;
	    font: arial, sans-serif;
	    font-size: 9pt;
	    line-height: 160%;
	    margin-top: 1em;
	    padding: 4px;
	}
	-->
	</style>
</head>
<body>
<div id="container">
<h1>Discuz! $title Error</h1>
EOT;
		if(!empty($errormsg) && (!isset($_G['config']['security']['error']['showerror']) || !empty($_G['config']['security']['error']['showerror']))) {
			echo '<div class="info">'.$errormsg.'</div>';
		}

		if(!empty($phpmsg) && (!isset($_G['config']['security']['error']['showerror']) || $_G['config']['security']['error']['showerror'] == '1')) {
			echo '<div class="info">';
			echo '<p><strong>PHP Debug</strong></p>';
			echo '<table cellpadding="5" cellspacing="1" width="100%" class="table">';
			if(is_array($phpmsg)) {
				echo '<tr class="bg2"><td>No.</td><td>File</td><td>Line</td><td>Code</td></tr>';
				foreach($phpmsg as $k => $msg) {
					$k++;
					$explode = explode("/", $msg['file']);
					if ($explode['1'] == 'plugin') {
						$guess = $explode['2'];
						$bg = "bg3";
					} else {
						$bg = "bg1";
					}
					echo '<tr class="'.$bg.'">';
					echo '<td>'.$k.'</td>';
					echo '<td>'.$msg['file'].'</td>';
					echo '<td>'.$msg['line'].'</td>';
					echo '<td>'.$msg['function'].'</td>';
					echo '</tr>';
				}
			} else {
				echo '<tr><td><ul>'.$phpmsg.'</ul></td></tr>';
			}
			echo '</table></div>';
		}

		if (!isset($_G['config']['security']['error']['guessplugin']) || !empty($_G['config']['security']['error']['guessplugin'])) {
			if (!empty($guess)) {
				$suggestion = lang('error', 'suggestion_plugin', array('guess'=>$guess));
			} else {
				$suggestion = lang('error', 'suggestion');
			}
			echo '<div class="help">'.$suggestion.'</div>';
		}

		$endmsg = lang('error', 'error_end_message', array('host'=>$host));
		echo <<<EOT
<div class="help">$endmsg</div>
</div>
</body>
</html>
EOT;
		$exit && exit();

	}

	public static function clear($message) {
		return str_replace(array("\t", "\r", "\n"), " ", $message);
	}

	public static function sql_clear($message) {
		$message = self::clear($message);
		$message = str_replace(DB::object()->tablepre, '', $message);
		$message = dhtmlspecialchars($message);
		return $message;
	}

	public static function write_error_log($message) {

		$message = discuz_error::clear($message);
		$time = time();
		$file =  DISCUZ_ROOT.'./data/log/'.date("Ym").'_errorlog.php';
		$hash = md5($message);

		$uid = getglobal('uid');
		$ip = getglobal('clientip');

		$user = '<b>User:</b> uid='.intval($uid).'; IP='.$ip.'; RIP:'.$_SERVER['REMOTE_ADDR'];
		$uri = 'Request: '.dhtmlspecialchars(discuz_error::clear($_SERVER['REQUEST_URI']));
		$message = "<?PHP exit;?>\t{$time}\t$message\t$hash\t$user $uri\n";
		if($fp = @fopen($file, 'rb')) {
			$lastlen = 50000;
			$maxtime = 60 * 10;
			$offset = filesize($file) - $lastlen;
			if($offset > 0) {
				fseek($fp, $offset);
			}
			if($data = fread($fp, $lastlen)) {
				$array = explode("\n", $data);
				if(is_array($array)) foreach($array as $key => $val) {
					$row = explode("\t", $val);
					if($row[0] != '<?PHP exit;?>') continue;
					if($row[3] == $hash && ($row[1] > $time - $maxtime)) {
						return;
					}
				}
			}
		}
		error_log($message, 3, $file);
	}

}
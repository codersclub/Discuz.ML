<?php

if (!defined('IN_DISCUZ')) {
    exit('Access Denied');
}

require_once DISCUZ_ROOT . './source/plugin/witframe_api/core.php';

$conf = Lib\Core::GetSetting();

$mask = '****************';

if (submitcheck('editsubmit')) {
    $settingnew = !empty($_GET['settingnew']) ? $_GET['settingnew'] : array();
    $settingnew['ver'] = !empty($conf['ver']) && $conf['ver'] > 1 ? $conf['ver'] : 1;
    if (strpos($settingnew['witSecretKey'], $mask) !== false) {
        $settingnew['witSecretKey'] = $conf['witSecretKey'];
    }
    Lib\Core::SetSetting($settingnew);
    cpmsg('&#x8BBE;&#x7F6E;&#x5DF2;&#x66F4;&#x65B0;', 'action=plugins&operation=config&do=' . $pluginid . '&identifier=witframe_api&pmod=setting', 'succeed');
}

$conf['witSecretKey'] = $conf['witSecretKey'] ? substr($conf['witSecretKey'], 0, 3) . $mask . substr($conf['witSecretKey'], -3) : '';

showtableheader();
showformheader('plugins&operation=config&do=' . $pluginid . '&identifier=witframe_api&pmod=setting', '');
showsetting('witUid', 'settingnew[witUid]', $conf['witUid'], 'text');
showsetting('witSecretId', 'settingnew[witSecretId]', $conf['witSecretId'], 'text');
showsetting('witSecretKey', 'settingnew[witSecretKey]', $conf['witSecretKey'], 'text');
showsetting('witPid', 'settingnew[witPid]', $conf['witPid'], 'text');
showsubmit('editsubmit');
showformfooter();
showtablefooter();
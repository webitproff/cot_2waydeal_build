<?php

defined('COT_CODE') or die('Wrong URL');

// redefine resource strings before loading the theme
$R['input_textarea_field_html'] = '<textarea class="form-control exfldhtml" name="{$name}" rows="3" cols="{$cols}"{$attrs}>{$value}</textarea>{$error}';

// connect and load the necessary files
require_once Cot::$cfg['themes_dir'] . '/admin/' . Cot::$cfg['admintheme'] . '/' . Cot::$cfg['admintheme'] . '.rc.php';
require_once Cot::$cfg['themes_dir'] . '/admin/' . Cot::$cfg['admintheme'] . '/' . Cot::$cfg['admintheme'] . '.resources.php';


<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=parser.last
Order=15
[END_COT_EXT]
==================== */

/**
 * Attacher plugin: parser
 *
 * @package Attacher
 * @author Roffun
 * @copyright Copyright (c) Roffun, 2018 - 2019 | https://github.com/Roffun
 * @license BSD License
 */

defined('COT_CODE') or die('Wrong URL.');

require_once cot_incfile('attacher', 'plug');
global $cfg;

// Инициализация $text как пустой строки, если null
$text = is_string($text) ? $text : '';

$att_cfg = isset($cfg['plugin']['attacher']) ? $cfg['plugin']['attacher'] : [];

$folder = isset($att_cfg['folder']) ? $att_cfg['folder'] : 'datas/attacher';
$prefix = isset($att_cfg['prefix']) ? $att_cfg['prefix'] : 'thumb';
$thumb_clickable = isset($att_cfg['thumb_clickable']) ? $att_cfg['thumb_clickable'] : 'default';

if ($thumb_clickable !== 'default') {
    $text = preg_replace(
        '#<a[^>]+>.*?<img(.+?)src="(.+?)' . preg_quote($folder, '#') . '/_thumbs/(.+?)[+>].*?</a>#i',
        '<img$1src="$2' . $folder . '/_thumbs/$3>',
        $text
    );
}

$text = preg_replace_callback(
    '`<img(.+?)src="(.+?)' . preg_quote($folder, '`') . '/_thumbs/([0-9]+)/' . preg_quote($prefix, '`') . '([0-9]+)-(.+?)x(.+?)-(.+?)\.(.+?)"(.*?)[+>]`i',
    'att_customizable_thumb',
    $text
);

$text = str_replace('[att_thumb?', '[att_image?', $text);
$text = preg_replace_callback('`\[att_image\?(.+?)\]`i', 'att_customizable_thumb_bbcode', $text);


// Инициализация $text как пустой строки, если null
/* $text = is_string($text) ? $text : '';

if ($cfg['plugin']['attacher']['thumb_clickable'] !== 'default') {
    $text = preg_replace(
        '#<a[^>]+>.*?<img(.+?)src="(.+?)' . preg_quote($cfg['plugin']['attacher']['folder'], '#') . '/_thumbs/(.+?)[+>].*?</a>#i',
        '<img$1src="$2' . $cfg['plugin']['attacher']['folder'] . '/_thumbs/$3>',
        $text
    );
}

$text = preg_replace_callback(
    '`<img(.+?)src="(.+?)' . preg_quote($cfg['plugin']['attacher']['folder'], '`') . '/_thumbs/([0-9]+)/' . preg_quote($cfg['plugin']['attacher']['prefix'], '`') . '([0-9]+)-(.+?)x(.+?)-(.+?)\.(.+?)"(.*?)[+>]`i',
    'att_customizable_thumb',
    $text
);

$text = str_replace('[att_thumb?', '[att_image?', $text);
$text = preg_replace_callback('`\[att_image\?(.+?)\]`i', 'att_customizable_thumb_bbcode', $text); */

?>
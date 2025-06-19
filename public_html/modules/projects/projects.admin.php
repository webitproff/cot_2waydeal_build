<?php
/**
 * [BEGIN_COT_EXT]
 * Hooks=admin
 * [END_COT_EXT]
 */

/**
 * Projects module
 *
 * @package projects
 * @version 3.0.0
 * @author CMSWorks Team
 * @copyright Copyright (c) CMSWorks.ru, littledev.ru
 * @license BSD
 */

defined('COT_CODE') or die('Wrong URL');

// Подключаем файл модуля projects
require_once cot_incfile('projects', 'module');

// Проверяем права доступа
[$usr['auth_read'], $usr['auth_write'], $usr['isadmin']] = cot_auth('projects', 'any');
cot_block($usr['isadmin']);

// Формируем путь для админки
$adminPath = [
    [cot_url('admin', 'm=extensions'), $L['Extensions']],
    [cot_url('admin', 'm=extensions&a=details&mod=' . $m), $cot_modules[$m]['title'] ?? 'Projects'],
    [cot_url('admin', 'm=' . $m), $L['Administration']],
];

// Проверяем и устанавливаем значение $p
$p = in_array($p, ['types', 'default']) ? $p : 'default';

// Подключаем соответствующий файл админки
require_once cot_incfile('projects', 'module', 'admin.' . $p);

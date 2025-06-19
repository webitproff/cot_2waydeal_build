<?php
/**
 * Install script
 *
 * @package Cotonti
 * @version 0.9.26
 * @author CMSWorks Team
 * @copyright Copyright (c) CMSWorks.ru, littledev.ru
 * @license BSD
 */

defined('COT_CODE') or die('Wrong URL');

// Модули, отмеченные по умолчанию
$default_modules = ['index', 'page', 'users', 'market', 'payments', 'projects', 'folio'];

// Плагины, отмеченные по умолчанию
$default_plugins = [
    'attacher',
    'attacherfreelance',
    'ckeditor',
    'html',
    'htmlpurifier',
    'mcaptcha',
    'indexnews',
    'search',
    'locationselector',
    'paypro',
    'reviews',
    'useragreement',
    'usercategories',
    'usergroupselector',
    'userimages',
];

// Добавление приветственного сообщения к существующему языковому элементу
$L['install_body_message1'] = "Вас приветствует установщик Фриланс-биржи 3.0.1 от 2025 года!<br/><br/>" . ($L['install_body_message1'] ?? '');

/**
 * Шаблонные теги для шага 2 установки (настройка базы данных)
 *
 * @return void
 */
function cot_install_step2_tags(): void
{
    global $t, $db_name;

    $db_x = 'cot_';

    $t->assign([
        'INSTALL_DB_X' => $db_x,
        'INSTALL_DB_X_INPUT' => cot_inputbox('text', 'db_x', $db_x, 'size="32"'),
        'INSTALL_DB_NAME_INPUT' => cot_inputbox('text', 'db_name', $db_name ?? 'freelance', 'size="32"'),
    ]);
}

/**
 * Шаблонные теги для шага 3 установки (выбор темы)
 *
 * @return void
 */
function cot_install_step3_tags(): void
{
    global $t, $rtheme, $rscheme;

    $rtheme = '2waydeal'; // Тема по умолчанию

    $t->assign([
        'INSTALL_THEME_SELECT' => cot_selectbox_theme($rtheme, $rscheme, 'theme'),
    ]);
}

/**
 * Конфигурация для финального этапа установки
 *
 * @return void
 */
function cot_install_step3_setup(): void
{
    global $file;

    if (!empty($file['config']) && file_exists($file['config'])) {
        $config_contents = file_get_contents($file['config']);
        cot_installConfigReplace($config_contents, 'admintheme', '');
        file_put_contents($file['config'], $config_contents);
    }
}

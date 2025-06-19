<?php

/**
 * [BEGIN_COT_EXT]
 * Hooks=module
 * [END_COT_EXT]
 */

// Блок документации: описание модуля
/**
 * market module. filename market.php
 *
 * @package market
 * @version 3.0.0
 * @author CMSWorks Team
 * @copyright Copyright (c) CMSWorks.ru, littledev.ru | adapted 05 June 2025 to php >= 8.2+ & Bootstrap 5.3 by webitproff https://github.com/webitproff
 * @license BSD
 */

// Безопасность: предотвращает прямой доступ к файлу, если скрипт не инициализирован Cotonti
defined('COT_CODE') or die('Wrong URL');

// Подключаем основной файл логики модуля market (market.functions.php)
require_once cot_incfile('market', 'module');

// Проверка: если параметр `$m` не равен add, edit или preview
if (!in_array($m, ['add', 'edit', 'preview']))
{
	// Если передан GET-параметр id или alias (al), показываем страницу товара (main)
	if (isset($_GET['id']) || isset($_GET['al']))
	{
		$m = 'main';
	}
	else
	{
		// Иначе показываем список товаров
		$m = 'list';
	}
}


// Подключаем файл с логикой для выбранного режима ($m): например, market.add.php, market.list.php и т.д.
require_once cot_incfile('market', 'module', $m);

// Подключаем шапку сайта (header.tpl)
require_once $cfg['system_dir'].'/header.php';

// Выводим сгенерированное тело модуля (определяется в ранее подключённом файле)
echo $module_body;

// Подключаем футер сайта (footer.tpl)
require_once $cfg['system_dir'].'/footer.php';

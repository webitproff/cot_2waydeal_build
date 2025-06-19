<?php
/**
 * Installation handler
 *
 * @package paypro
 * @version 2.0.0
 */

// Защита от прямого вызова скрипта — должен запускаться внутри Cotonti
defined('COT_CODE') or die('Wrong URL');


// Объявляем глобальные переменные, чтобы использовать их в этом скрипте
global $db, $db_users, $db_projects, $db_extra_fields, $R;

// Формируем полные имена таблиц с префиксом базы (например, 'cot_users')
//$db_users = $db_x . 'users';
//$db_projects = $db_x . 'projects';
//$db_extra_fields = $db_x . 'extra_fields';

// Подключаем модули 'projects' и 'extrafields', чтобы использовать их функции
require_once cot_incfile('projects', 'module');
require_once cot_incfile('extrafields');


// Проверяем, существует ли в базе поле 'pro' для пользователей ('users') в таблице экстрафилдов
if (cot::$db->query("SELECT COUNT(*) FROM $db_extra_fields WHERE field_name = 'pro' AND field_location = 'users'")->fetchColumn() == 0) {
    // Объявляем глобальную переменную с таблицей пользователей, чтобы cot_extrafield_add видел корректное имя таблицы
    global $db_users;

    // Добавляем новое экстрафилд поле 'pro' для таблицы пользователей с типом inputint (целое число)
    cot_extrafield_add(
        $db_users,          // имя физической таблицы, в которой добавляем колонку
        'pro',              // имя нового поля
        'inputint',         // тип поля (целочисленный ввод)
        '',                 // html-шаблон поля (пусто — используется по умолчанию)
        '',                 // варианты выбора (для радиокнопок, селектов и т.п.)
        '0',                // значение по умолчанию
        false,              // поле не обязательное (required = false)
        'HTML',             // тип парсинга значения (например, HTML)
        'Профессиональный статус', // описание поля (для админки)
        '',                 // дополнительные параметры поля
        1,                  // включено (enabled = 1)
        false,              // нужно ли только зарегистрировать поле без физического создания (false — создаём физически)
        'INT UNSIGNED NOT NULL DEFAULT 0' // SQL тип поля и его свойства
    );
}


// Аналогично для таблицы проектов проверяем наличие экстрафилда 'forpro' в базе
if (cot::$db->query("SELECT COUNT(*) FROM $db_extra_fields WHERE field_name = 'forpro' AND field_location = 'projects'")->fetchColumn() == 0) {
    // Глобально объявляем имя таблицы проектов
    global $db_projects;

    // Добавляем экстрафилд 'forpro' с типом checkbox (флаг)
    cot_extrafield_add(
        $db_projects,       // физическая таблица для добавления колонки
        'forpro',           // имя нового поля
        'checkbox',         // тип поля (чекбокс)
        $R['input_checkbox'],// html-шаблон поля (из ресурсов)
        '',                 // варианты выбора (не используется для чекбокса)
        '',                 // значение по умолчанию (пусто — будет 0)
        false,              // необязательное поле
        'HTML',             // парсинг значения
        'Только для PRO',   // описание поля
        '',                 // дополнительные параметры поля
        1,                  // поле включено
        false,              // физически добавляем колонку в таблицу
        'TINYINT UNSIGNED NOT NULL DEFAULT 0' // SQL тип поля
    );
}

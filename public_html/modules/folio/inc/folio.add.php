<?php
/**
 * folio module
 *
 * @package folio
 * @version 2.5.2
 * @author CMSWorks Team
 * @copyright Copyright (c) CMSWorks.ru, littledev.ru
 * @license BSD
 */

// Проверяет, определена ли константа COT_CODE, чтобы предотвратить прямой доступ к файлу
defined('COT_CODE') or die('Wrong URL');

// Импортирует параметр 'id' из GET-запроса, ожидая целое число (INT)
$id = cot_import('id', 'G', 'INT');
// Импортирует параметр 'r' из GET-запроса, ожидая алфавитно-цифровую строку (ALP)
$r = cot_import('r', 'G', 'ALP');
// Импортирует параметр 'c' (категория) из GET-запроса, ожидая текстовую строку (TXT)
$c = cot_import('c', 'G', 'TXT');
// Проверяет, существует ли категория $c в структуре модуля folio; если нет, сбрасывает $c в пустую строку
if (!empty($c) && !isset($structure['folio'][$c]))
{
    $c = '';
}

// Устанавливает права доступа пользователя для модуля folio: чтение, запись, админ
list($usr['auth_read'], $usr['auth_write'], $usr['isadmin']) = cot_auth('folio', 'any', 'RWA');
// Требует наличие прав на запись; если их нет, выводит ошибку доступа
cot_block($usr['auth_write']);

// Инициализация $ritem с значениями по умолчанию для полей формы
$ritem = array(
    'item_cat' => $c, // Категория, взятая из GET-параметра $c
    'item_title' => '', // Заголовок записи (пустой по умолчанию)
    'item_alias' => '', // Псевдоним (алиас) для URL (пустой по умолчанию)
    'item_text' => '', // Текст записи (пустой по умолчанию)
    'item_cost' => '', // Стоимость (пустая по умолчанию)
    'item_type' => '', // Тип записи (пустой по умолчанию, добавлен для предотвращения ошибок)
);

// Проверяет, передана ли категория через GET; если да, устанавливает её и проверяет права
if (!empty($c))
{
    $ritem['item_cat'] = $c; // Устанавливает категорию в $ritem
    $usr['isadmin'] = cot_auth('folio', $ritem['item_cat'], 'A'); // Проверяет, является ли пользователь админом для категории
}

// Импортирует параметр 'type' из GET-запроса, ожидая текстовую строку
$type = cot_import('type', 'G', 'TXT');
// Если параметр 'type' передан, устанавливает его в $ritem['item_type']
if (!empty($type))
{
    $ritem['item_type'] = $type;
}

/* === Hook === */
// Получает список плагинов, зарегистрированных для хука folio.add.first
$extp = cot_getextplugins('folio.add.first');
// Цикл подключает каждый плагин, чтобы они могли выполнить свою логику
foreach ($extp as $pl)
{
    include $pl; // Подключает файл плагина
}
/* ===== */

// Устанавливает парсер для текста (берётся из конфигурации модуля folio)
$sys['parser'] = $cfg['folio']['parser'];
// Получает список доступных парсеров (например, HTML, BBCode, Markdown)
$parser_list = cot_get_parsers();

// Проверяет, отправлен ли запрос на добавление записи (параметр a=add)
if ($a == 'add')
{
    // Защищает от CSRF-атак, проверяя токен
    cot_shield_protect();

    /* === Hook === */
    // Получает плагины для хука folio.add.add.first (до импорта данных)
    foreach (cot_getextplugins('folio.add.add.first') as $pl)
    {
        include $pl; // Подключает плагин
    }
    /* ===== */

    // Импортирует данные формы из POST, используя функцию модуля folio
    $ritem = cot_folio_import('POST', array(), $usr);

    // Проверяет права доступа для категории, указанной в форме
    list($usr['auth_read'], $usr['auth_write'], $usr['isadmin']) = cot_auth('folio', $ritem['item_cat']);
    // Требует права на запись для категории
    cot_block($usr['auth_write']);

    /* === Hook === */
    // Получает плагины для хука folio.add.add.import (после импорта данных)
    foreach (cot_getextplugins('folio.add.add.import') as $pl)
    {
        include $pl; // Подключает плагин
    }
    /* ===== */

    // Валидирует импортированные данные
    cot_folio_validate($ritem);

    /* === Hook === */
    // Получает плагины для хука folio.add.add.error (для обработки ошибок валидации)
    foreach (cot_getextplugins('folio.add.add.error') as $pl)
    {
        include $pl; // Подключает плагин
    }
    /* ===== */

    // Если ошибок валидации нет, сохраняет запись
    if (!cot_error_found())
    {
        // Добавляет запись в базу данных и возвращает её ID
        $id = cot_folio_add($ritem, $usr);

        // Определяет URL для редиректа в зависимости от статуса записи
        switch ($ritem['item_state'])
        {
            case 0: // Опубликована
                // Формирует параметры URL: либо с ID, либо с алиасом
                $urlparams = empty($ritem['item_alias']) ?
                    array('c' => $ritem['item_cat'], 'id' => $id) :
                    array('c' => $ritem['item_cat'], 'al' => $ritem['item_alias']);
                // Создаёт URL для редиректа
                $r_url = cot_url('folio', $urlparams, '', true);
                break;
            case 1: // Черновик (предпросмотр)
                $r_url = cot_url('folio', 'm=preview&id=' . $id, '', true);
                break;
            case 2: // На модерации
                // Формирует параметры URL, аналогично case 0
                $urlparams = empty($ritem['item_alias']) ?
                    array('c' => $ritem['item_cat'], 'id' => $id) :
                    array('c' => $ritem['item_cat'], 'al' => $ritem['item_alias']);
                $r_url = cot_url('folio', $urlparams, '', true);

                // Если пользователь не админ, отправляет письмо с уведомлением
                if (!$usr['isadmin'])
                {
                    // Формирует текст письма, используя языковую строку
                    $rbody = cot_rc($L['folio_senttovalidation_mail_body'], array(
                        'user_name' => $usr['profile']['user_name'], // Имя пользователя
                        'prd_name' => $ritem['item_title'], // Заголовок записи
                        'sitename' => $cfg['maintitle'], // Название сайта
                        'link' => COT_ABSOLUTE_URL . $r_url // Ссылка на запись
                    ));
                    // Отправляет письмо пользователю
                    cot_mail($usr['profile']['user_email'], $L['folio_senttovalidation_mail_subj'], $rbody);
                }

                // Если включены уведомления для админа, отправляет письмо
                if ($cfg['folio']['notiffolio_admin_moderate'])
                {
                    // Формирует текст письма для админа
                    $nbody = cot_rc($L['folio_notif_admin_moderate_mail_body'], array(
                        'user_name' => $usr['profile']['user_name'],
                        'prd_name' => $ritem['item_title'],
                        'sitename' => $cfg['maintitle'],
                        'link' => COT_ABSOLUTE_URL . $r_url
                    ));
                    // Отправляет письмо админу
                    cot_mail($cfg['adminemail'], $L['folio_notif_admin_moderate_mail_subj'], $nbody);
                }
                break;
        }

        // Перенаправляет на сформированный URL
        cot_redirect($r_url);
        // Завершает выполнение скрипта
        exit;
    }
    else
    {
        // Если есть ошибки валидации, перенаправляет обратно на форму добавления
        cot_redirect(cot_url('folio', 'm=add&c=' . $c, '', true));
    }
}

// Если форма была отправлена (POST-запрос), сохраняет введённые данные для повторного отображения
if ($_SERVER['REQUEST_METHOD'] == 'POST')
{
    $ritem['item_cat'] = cot_import('rcat', 'P', 'TXT'); // Категория из POST
    $ritem['item_title'] = cot_import('rtitle', 'P', 'TXT'); // Заголовок
    $ritem['item_alias'] = cot_import('ralias', 'P', 'TXT'); // Алиас
    $ritem['item_text'] = cot_import('rtext', 'P', 'HTM'); // Текст (HTML)
    $ritem['item_cost'] = cot_import('rcost', 'P', 'NUM'); // Стоимость (число)
}

// Устанавливает заголовок страницы
$out['subtitle'] = $L['folio_add_work_title'];
// Добавляет meta-тег noindex в заголовок страницы
$out['head'] .= $R['code_noindex'];
// Устанавливает подзаголовок (название категории или пустую строку)
$sys['sublocation'] = !empty($c) && isset($structure['folio'][$c]) ? $structure['folio'][$c]['title'] : '';

// Выбирает шаблон для формы, используя tpl категории, если он существует
$tpl = !empty($ritem['item_cat']) && isset($structure['folio'][$ritem['item_cat']]['tpl'])
    ? $structure['folio'][$ritem['item_cat']]['tpl']
    : '';
// Формирует путь к файлу шаблона
$mskin = cot_tplfile(array('folio', 'add', $tpl));

/* === Hook === */
// Получает плагины для хука folio.add.main (основная логика формы)
foreach (cot_getextplugins('folio.add.main') as $pl)
{
    include $pl; // Подключает плагин
}
/* ===== */

// Создаёт объект шаблона на основе выбранного файла
$t = new XTemplate($mskin);

// Отображает сообщения об ошибках или уведомления в шаблоне
cot_display_messages($t);

// Присваивает переменные шаблону
$t->assign(array(
    // URL для отправки формы
    "PRDADD_FORM_SEND" => cot_url('folio', 'm=add&c=' . $c . '&a=add'),
    // Поле выбора категории
    "PRDADD_FORM_CAT" => cot_selectbox_structure('folio', $ritem['item_cat'], 'rcat'),
    // Название категории (или пустая строка)
    "PRDADD_FORM_CATTITLE" => (!empty($c) && isset($structure['folio'][$c])) ? $structure['folio'][$c]['title'] : '',
    // Поле ввода заголовка с экранированием
    "PRDADD_FORM_TITLE" => cot_inputbox('text', 'rtitle', htmlspecialchars($ritem['item_title']), 'size="56"'),
    // Поле ввода алиаса с экранированием
    "PRDADD_FORM_ALIAS" => cot_inputbox('text', 'ralias', htmlspecialchars($ritem['item_alias']), array('size' => '32', 'maxlength' => '255')),
    // Текстовое поле для ввода текста с поддержкой редактора
    "PRDADD_FORM_TEXT" => cot_textarea('rtext', $ritem['item_text'], 10, 60, 'id="formtext"', ($folioeditor && $folioeditor != 'disable') ? 'input_textarea_' . $folioeditor : ''),
    // Поле ввода стоимости с экранированием
    "PRDADD_FORM_COST" => cot_inputbox('text', 'rcost', htmlspecialchars($ritem['item_cost']), 'size="10"'),
    // Поле выбора парсера для текста
    "PRDADD_FORM_PARSER" => cot_selectbox($cfg['folio']['parser'], 'rparser', $parser_list, $parser_list, false),
));

// Обрабатывает дополнительные поля (экстраполя) таблицы cot_folio
foreach ($cot_extrafields[$db_folio] as $exfld)
{
    // Преобразует имя поля в верхний регистр для использования в шаблоне
    $uname = strtoupper($exfld['field_name']);
    // Формирует HTML для экстраполя с учётом его типа
    $exfld_val = cot_build_extrafields('ritem' . $exfld['field_name'], $exfld, isset($ritem['item_' . $exfld['field_name']]) ? $ritem['item_' . $exfld['field_name']] : '');
    // Устанавливает заголовок поля (из языковых строк или описания)
    $exfld_title = isset($L['folio_' . $exfld['field_name'] . '_title']) ? $L['folio_' . $exfld['field_name'] . '_title'] : $exfld['field_description'];
    // Присваивает переменные шаблону для экстраполя
    $t->assign(array(
        'PRDADD_FORM_' . $uname => $exfld_val, // Значение поля
        'PRDADD_FORM_' . $uname . '_TITLE' => $exfld_title, // Заголовок поля
        'PRDADD_FORM_EXTRAFLD' => $exfld_val, // Общее значение для блока экстраполей
        'PRDADD_FORM_EXTRAFLD_TITLE' => $exfld_title // Общий заголовок
    ));
    // Парсит блок MAIN.EXTRAFLD в шаблоне для каждого экстраполя
    $t->parse('MAIN.EXTRAFLD');
}

/* === Hook === */
// Получает плагины для хука folio.add.tags (для дополнительных тегов шаблона)
foreach (cot_getextplugins('folio.add.tags') as $pl)
{
    include $pl; // Подключает плагин
}
/* ===== */

// Парсит основной блок шаблона (MAIN)
$t->parse('MAIN');
// Получает итоговый HTML-код шаблона
$module_body = $t->text('MAIN');
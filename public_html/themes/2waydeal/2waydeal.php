<?php
/* ====================
[BEGIN_COT_THEME]
Name=2-Way Deal [2waydeal] v. 0.0.1
Schemes=default:Default
[END_COT_THEME]
==================== */

/**
 * Cotonti Model Theme
 *
 * @package Cotonti
 * @version 0.9.26
 * @author 
 * @copyright Copyright (c) 
 * @license BSD
 */

defined('COT_CODE') or die('Wrong URL');


/**
 * Cotonti Plugin Users Avatar
 */
$R['userimg_selectfile'] = '{$form_input}';
$R['userimg_html'] = '<div class="userimg_{$code}">{$existing}{$selectfile}</div>';
$R['userimg_remove'] = '<a href="{$url}" class="button btn btn-danger">'.$L['Delete'].'</a>';
$R['userimg_img'] = '<img src="{$src}" alt="{$alt}" class="rounded-3 mb-3 userimg {$class}" />';

$R['users_defaultAvatarSrc'] = Cot::$cfg['themes_dir'] . "/" . Cot::$cfg['defaulttheme'] . "/img/user-noavatar.webp";
$R['userimg_default_avatar'] = $R['users_defaultAvatarSrc'];
/**
 * Cotonti Plugin Users Avatar
 */
/**
 * Cotonti Module Users
 */
/*
 * Group list layout
 */
$R['users_code_grplist_begin'] = '<ul class="list-group list-group-flush">';
$R['users_code_grplist_end'] = '</ul>';
$R['users_code_grplist_item'] = '<li class="list-group-item bg-transparent">{$item}</li>';
$R['users_code_grplist_item_main'] = '<li class="list-group-item bg-transparent"><strong>{$item}</strong></li>';
$R['users_input_grplist_checkbox'] = '<input type="checkbox" class="form-check-input mx-2" name="{$name}" value="1"{$checked}{$attrs} />';
$R['users_input_grplist_radio'] = '<input type="radio" class="form-check-input" name="{$name}" value="{$value}"{$checked}{$attrs} />';

$R['userimg_existing'] = '<div class="userimg_existing">    
<div class="row align-items-center">
        <div class="col-12 col-md-auto">
            <img src="{$url_file}" class="rounded-3 mb-3" alt="Image">
        </div>
        <div class="col-12 col-md-8">
            <a class="btn btn-danger" href="{$url_delete}">'.$L['Delete'].'</a>
        </div>
    </div>
</div>';
$R['icon_down'] = '<i class="fa-regular fa-circle-down fa-lg"></i>';
$R['icon_up'] = '<i class="fa-regular fa-circle-up fa-lg"></i>';
$R['icon_order_asc'] = $R['icon_up'];
$R['icon_order_desc'] = $R['icon_down'];
/**
 * Cotonti Module Users
 */

/**
 * Cotonti Module Private Messages
 */

$R['input_text_newpmtitle'] = '<input class="form-control" type="text" name="{$name}" value="{$value}" {$attrs} />{$error}';
$R['input_textarea_newpmrecipient'] = '<textarea class="form-control" name="{$name}" rows="{$rows}" cols="{$cols}"{$attrs}>{$value}</textarea>{$error}';
/**
 * Cotonti Module Private Messages
 */
 
 
 
function timeLeft($dateTime)
{
    return cot_build_timegap(cot::$sys['now'], $dateTime, 4, 0, null, 60);
}

function ul_transform(?string $code): string
{
    // Проверяем, что входной параметр не null, иначе присваиваем пустую строку
    $code = $code ?? '';

    // Заменяем теги <a> и <span> на их аналоги внутри списка <li>
    $code = str_replace("<a", "<li><a ", $code);
    $code = str_replace("</a>", "</a></li>", $code);
    $code = str_replace("<span", "<li><span", $code);
    $code = str_replace("</span>", "</span></li>", $code);
    $code = str_replace("</li> /", "</li>", $code);

    return $code;
}


// Определяем функцию для проверки существования страницы по категории и ID
// пример: <!-- IF {PHP|cot_page_exists_by_cat_and_id('system', 2)} --> тут ссылка <!-- ENDIF --> 
function cot_page_exists_by_cat_and_id($cat, $id) {
    // Подключаем глобальные переменные Cotonti: $db (объект базы данных), $db_x (префикс таблиц), $db_pages (имя таблицы страниц)
    global $db, $db_x, $db_pages;
    // Устанавливаем имя таблицы: если $db_pages определена, берём её, иначе составляем из префикса $db_x и 'pages' (например, 'cot_pages')
    $table = isset($db_pages) ? $db_pages : $db_x . 'pages';
    // Выполняем SQL-запрос: считаем количество строк в таблице $table, где page_cat = $cat и page_id = $id, используя параметры для безопасности
    $res = $db->query("SELECT COUNT(*) FROM $table WHERE page_cat = ? AND page_id = ?", [$cat, $id])->fetchColumn();
    // Возвращаем true, если страница найдена (count > 0), иначе false
    return $res > 0;
}

<?php
/**
 * Пользовательский файл локализации скина
 *
 * @package Cotonti
 * @version 0.9.26
 * @author 
 * @copyright Copyright (c) 
 * @license BSD
 */
/**
 * Данный файл предназначен для дополнительных пользовательских локализационных строк
 */
defined('COT_CODE') or die('Wrong URL.');

$L['2wd_darkMode'] = 'Ночной режим';
$L['2wd_lightMode'] = 'Светлый режим';

/**
 * переопределяем сетап конфигурации того, что у нас в админке
 * Управление сайтом / Конфигурация / Заголовки и мета-теги 
*/
// Заголовок (Название сайта)
$cfg['maintitle'] = '2-Way Deal';

// Подзаголовок (Описание сайта)
$cfg['subtitle'] = "Бесплатный шаблон для бесплатной сборки маркетплейса услуг, товаров и фриланс-биржи заказов для фрилансеров на CMF Cotonti 0.9.26 Bootstrap 5.3.6";

$cot_groups['7']['name'] = 'Наниматели';
$cot_groups['4']['name'] = 'Исполнители';

// Market structure localization title
$structure['market']['programming']['title'] = 'Программные продукты';
$structure['market']['programming']['tpath'] = 'Программы и скрипты (смотри 2waydeal.ru.lang.php)'; // Use ['tpath'] for Select box
$structure['market']['programming']['desc'] = '<i class="fa-solid fa-circle-info fa-xl me-2"></i> продажа цифровых товаров и программных продуктов по низким ценам - это демпинг и западло! <span class="fw-bold text-danger">(See more in 2waydeal.ru.lang.php)</span>'; // Use {CATDESC}
$structure['market']['management']['title'] = 'Управление проектами';
$structure['market']['marketing']['title'] = 'Реклама и маркетинг';

// usercategories structure localization title
$structure['usercategories']['programming']['title'] = 'Кодинг и програмирование';
$structure['usercategories']['management']['title'] = 'Руководство';
$structure['usercategories']['marketing']['title'] = 'Реклама и маркетинг';

$L['footer_engine'] = 'Движок сайта';
$L['footer_cotonti'] = 'CMF Cotonti 0.9.26';
$L['footer_cotonti_tooltip'] = 'Сайт работает на Cotonti Siena CMF - мощный каркас веб-разработки и инструмент управления контентом с открытым кодом';

$L['2wd_menu_sections'] = 'Разделы сайта';
$L['2wd_info_and_support'] = 'Справка и поддержка';  
$L['2wd_Publications'] = 'Статьи и блоги';
$L['2wd_cat_title_news'] = 'Новости'; 
$L['2wd_cat_title_events'] = 'События'; 
$L['2wd_cat_title_articles'] = 'Статьи'; 
$L['2wd_cat_title_usersblog'] = 'Блог пользователей сайта'; 
$L['2wd_cat_title_blogs'] = 'Блоги пользователей'; 
$L['header_notice'] = 'Есть уведомления'; 
$L['captcha_verification'] = 'Защита от ботов'; 
$L['2wd_WhosOnline'] = "Кто сейчас Online";
$L['2wd_Contact'] = 'Написать нам';
$L['2wd_recentitems_title'] = 'Последние материалы';
/**
 * модуль "Pages"
 */
$L['2wd_contentAuthor'] = 'Автор контента';
$L['2wd_page_published'] = 'Страница размещена:';
$L['2wd_page_latest_update'] = 'Последнее обновление:';
$L['2wd_page_HasAttachment'] = 'Есть файл для загрузки';
$L['2wd_page_DownloadFile'] = 'Скачать файл сейчас';
$L['2wd_page_LinkMainImage_hint'] = 'Через менеджер файлов загружаем главную картинку для этой статьи и затем вставляем ссылку на картинку сюда';


$L['2wd_Comments'] = "Комментариев на странице";
$L['2wd_Comment_Edit'] = "Правка комментария";



$L['Username'] = 'Никнейм';  
$L['2wd_Account'] = 'Аккаунт';
$L['2wd_passCurrent'] = 'Пароль текущий';
$L['2wd_passNew'] = 'Пароль новый';
$L['2wd_passNewRepeat'] = 'Пароль новый повторно';
$L['2wd_public_profile_page'] = 'Публичный профиль на сайте';
$L['2wd_public_profile_set_data'] = 'Настройки профиля и данные';


// Уведомление администратора о местоположении шаблона, если он существует в переменной "mskin"
$L['mskin_admin'] = 'Администратор';
$L['mskin_attention'] = 'обратите внимание!';
$L['mskin_template_file_location'] = 'Расположение файла, формирующего шаблон страницы:';
$L['mskin_template_file_info'] = 'Эта информация вам потребуется, если решили изменить страницу под свои нужды или нашли ошибку';

// Устанавливаем значения по умолчанию, если ключей нет
$L['pfs_pastefile'] = isset($L['pfs_pastefile']) ? $L['pfs_pastefile'] : 'Вставить как ссылку на файл';
$L['pfs_pasteimage'] = isset($L['pfs_pasteimage']) ? $L['pfs_pasteimage'] : 'Вставить как изображение';
$L['pfs_pastethumb'] = isset($L['pfs_pastethumb']) ? $L['pfs_pastethumb'] : 'Вставить миниатюру';
$L['2wd_PFS_Attention'] = "Внимание! Для загрузки файлов нужно создать папку!";
$L['2wd_PFS_Upl_Btn'] = "Откроется форма внизу страницы!";
$L['2wd_not_installed_PFS'] = 'Не установлен модуль <span class="fw-bold">"PFS"</span> для хранения файлов - персональное (PFS) и общее (SFS) хранилище. Вы можете его установить в панели управления сайтом или посмотреть <a href="https://www.cotonti.com/extensions/files-media/" class="alert-link" target="_blank">альтернативные расширения</a> на сайте сообщества';
$L['2wd_PFS'] = 'Модуль <span class="fw-bold">"PFS"</span> для хранения файлов';
$L['2wd_PFS_myFiles_Title'] = 'Менеджер моих файлов';


$L['pm_Selectall'] = 'Выбрать все';
$L['pm_Unselectall'] = 'Снять выделение';

$L['plu_search_options'] = 'Фильтры';
$L['2wd_ReserFilter'] = 'Сброс фильтра';
$L['2wd_StartSearch'] = 'Начать поиск';

$L['2wd_region'] = 'Область';
$L['2wd_city'] = 'Город';

$L['2wd_usrSeller'] = 'Продавец';
$L['2wd_usrCustomer'] = 'Покупатель';
$L['2wd_usrFreelancer'] = 'Исполнитель';
$L['2wd_usrEmployer'] = 'Заказчик';
$L['2wd_publicCardAdmin'] = 'Управление публикацией';
$L['2wd_toolsAdmin'] = 'Инструменты Админа';



$L['2wd_prj_offers_posttext'] = 'Введите текст вашего сообщения ... ';

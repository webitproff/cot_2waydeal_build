<?php
/**
 * Paypro plugin 2.0.0 
 *
 * @package paypro
 * @author CMSWorks Team
 * @copyright Copyright (c) CMSWorks.ru, littledev.ru, 2025-06-12 переписал и пофиксил webitproff https://github.com/webitproff
 * @license BSD
 */

defined('COT_CODE') or die('Wrong URL.');

/**
 * Module Config | function cot_config_titles
 */
$L['cfg_cost'] = 'Стоимость в месяц';
$L['cfg_cost_hint'] = 'цена покупки про-аккаунта';
$L['cfg_offerslimit'] = 'Количество ответов на проекты для обычных пользователей';
$L['cfg_projectslimit'] = 'Лимит проектов для обычных пользователей';
// Описание плагина.
$L['info_name'] = 'Pro-статус';
$L['info_desc'] = 'Pro-аккаунты (вип-статусы)';
$L['info_notes'] = 'Версия 2.0.0 от 2025-06-12 переписал и пофиксил webitproff https://github.com/webitproff';



$L['paypro_forpro'] = 'Только для PRO';
// Метка для PRO-контента.

$L['paypro_buypro_title'] = 'Покупка PRO';
// Заголовок покупки PRO.
$L['paypro_buypro_paydesc'] = 'Покупка PRO';
// Описание платежа PRO.
$L['paypro_costofmonth'] = 'Стоимость за месяц';
// Текст стоимости за месяц.
$L['paypro_error_months'] = 'Укажите срок действия услуги';
// Ошибка при отсутствии срока.

$L['paypro_buy'] = 'Купить';
// Кнопка покупки.
$L['paypro_month'] = 'месяц';
// Период подписки.

$L['paypro_header_buy'] = 'Купить PRO';
// Заголовок секции покупки.
$L['paypro_header_expire'] = 'PRO действует до';
// Заголовок даты окончания.
$L['paypro_header_expire_short'] = 'PRO до';
// Краткий заголовок даты.
$L['paypro_header_extend'] = 'Продлить услугу';
// Заголовок продления.

$projectsLimit = (int) (cot::$cfg['plugin']['paypro']['projectslimit'] ?? 0);
// Получает лимит проектов, приводит к int.
$L['paypro_warning_projectslimit_empty'] = 'Вы больше не можете публиковать проекты. Максимальное число проектов для публикации составляет: ' . $projectsLimit . ' в сутки. Чтобы снять это ограничение, воспользуйтесь услугой PRO-аккаунт.';
// Сообщение об ограничении проектов, с конкатенацией.

$offersLimit = (int) (cot::$cfg['plugin']['paypro']['offerslimit'] ?? 0);
// Получает лимит ответов, приводит к int.
$L['paypro_warning_offerslimit_empty'] = 'Вы больше не можете оставлять предложения по проектам. Максимальное число откликов на проекты составляет: ' . $offersLimit . ' в сутки. Чтобы снять это ограничение, воспользуйтесь услугой PRO-аккаунт.';
// Сообщение об ограничении ответов, с конкатенацией.

$L['paypro_warning_onlyforpro'] = 'Вы не можете оставлять предложения по данному проекту, так как он доступен только для пользователей с PRO-аккаунтом. Чтобы снять это ограничение, воспользуйтесь услугой PRO-аккаунт.';
// Сообщение для PRO-проектов.
$L['paypro_expire'] = 'Дата истечения';

$L['paypro_error_username'] = 'Не указан логин пользователя';
// Ошибка отсутствия логина.
$L['paypro_error_userempty'] = 'Такого пользователя не существует';
// Ошибка отсутствия пользователя.
$L['paypro_error_monthsempty'] = 'Срок действия услуги не указан';
// Ошибка отсутствия срока.
$L['paypro_addproacc'] = 'Добавление PRO-аккаунта для пользователя';
// Текст добавления PRO.

$L['paypro_giftpro'] = 'Подарить PRO-аккаунт';
// Текст подарка PRO.
$L['paypro_giftfor'] = 'Подарить пользователю';
// Текст получателя подарка.
$L['paypro_giftpro_paydesc'] = 'Покупка PRO в подарок для ';
// Описание платежа подарка.
$L['paypro_error_user'] = 'Пользователь не найден';
// Ошибка, если пользователь не найден.
<?php
/* ====================
[BEGIN_COT_EXT]
Code=payments
Name=Payments
Description=Платежный модуль
Category=Payments
Version=2.0.7
Date=2024-12-01
Author=CMSWorks Team, Alexey Kalnov
Copyright=&copy; CMSWorks.ru, 2021-2024 Alexey Kalnov https://lily-software.com
Notes=
Auth_guests=R
Lock_guests=W12345A
Auth_members=RW
Lock_members=12345A
[END_COT_EXT]

[BEGIN_COT_EXT_CONFIG]
balance_enabled=01:radio::1:Включить внутренние счета
valuta=02:string::руб.:Название валюты сайта
transfers_enabled=03:radio::1:Включить переводы между пользователями
transfertax=04:string::0:Комиссия за переводы между пользователями
transfermin=05:string::0:Минимальная сумма перевода между пользователями
transfermax=06:string::0:Максимальная сумма перевода между пользователями
transfertaxfromrecipient=07:radio::0:Удерживать комиссию с получателя перевода
payouts_enabled=08:radio::1:Включить заявки на вывод со счета
payouttax=09:string::0:Комиссия за вывод со счета
payoutmin=10:string::0:Минимальная сумма для вывода со счета
payoutmax=11:string::0:Максимальная сумма для вывода со счета
clearpaymentsdays=12:string::0:Очищать базу от неоплаченных платежек через (дней)
[END_COT_EXT_CONFIG]
==================== */

/**
 * Payments module
 *
 * @package payments
 * @author CMSWorks Team, Alexey Kalnov
 * @copyright (c) CMSWorks.ru, Alexey Kalnov https://lily-software.com
 * @license BSD
 */

defined('COT_CODE') or die('Wrong URL');
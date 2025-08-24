<?php
/**
 * User Categories plugin
 *
 * @package usercategories
 * Description=Додати власні категорії для користувачів CMF Cotonti Siena v.0.9.26 PHP 8.4 
 * Version=3.0.0
 * Date=2025-08-20
 * @author CMSWorks Team
 * @copyright Copyright (c) CMSWorks.ru, littledev.ru
 * @license BSD
 */
defined('COT_CODE') or die('Wrong URL.');

$L['usercategories_admin_config_groupid'] = 'Група';
$L['usercategories_admin_config_limit1'] = 'Ліміт за замовчуванням';
$L['usercategories_admin_config_limit2'] = 'Ліміт для PRO';

$L['usercategories_error_catslimit'] = 'Ви можете обрати не більше {$limit} спеціалізацій';


// usercategories structure localization title
if (isset($structure['usercategories']['e-scooter']) && is_array($structure['usercategories']['e-scooter'])) {
    $structure['usercategories']['e-scooter']['title'] = 'Електросамокати';
}
if (isset($structure['usercategories']['e-mopeds']) && is_array($structure['usercategories']['e-mopeds'])) {
    $structure['usercategories']['e-mopeds']['title'] = 'Електроскутери та мопеди';
}
if (isset($structure['usercategories']['e-bike']) && is_array($structure['usercategories']['e-bike'])) {
    $structure['usercategories']['e-bike']['title'] = 'Електровелосипеди';
}

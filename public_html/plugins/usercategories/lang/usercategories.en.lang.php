<?php
/**
 * User Categories plugin
 *
 * @package usercategories
 * Description=Add custom categories for users CMF Cotonti Siena v.0.9.26 PHP 8.4 
 * Version=3.0.0
 * Date=2025-08-20
 * @author CMSWorks Team
 * @copyright Copyright (c) CMSWorks.ru, littledev.ru
 * @license BSD
 */
defined('COT_CODE') or die('Wrong URL.');

$L['usercategories_admin_config_groupid'] = 'Group';
$L['usercategories_admin_config_limit1'] = 'Default limit';
$L['usercategories_admin_config_limit2'] = 'PRO limit';

$L['usercategories_error_catslimit'] = 'You can select no more than {$limit} specializations';


// usercategories structure localization title
if (isset($structure['usercategories']['e-scooter']) && is_array($structure['usercategories']['e-scooter'])) {
    $structure['usercategories']['e-scooter']['title'] = 'Electric kick scooters';
}
if (isset($structure['usercategories']['e-mopeds']) && is_array($structure['usercategories']['e-mopeds'])) {
    $structure['usercategories']['e-mopeds']['title'] = 'Electric mopeds';
}
if (isset($structure['usercategories']['e-bike']) && is_array($structure['usercategories']['e-bike'])) {
    $structure['usercategories']['e-bike']['title'] = 'Electric bicycles';
}
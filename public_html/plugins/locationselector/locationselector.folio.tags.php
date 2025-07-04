<?php
/**
 * [BEGIN_COT_EXT]
 * Hooks=folio.list.tags,folio.admin.list.tags
 * [END_COT_EXT]
 */
/**
 * Location Selector for Cotonti
 *
 * @package locationselector
 * @version 2.0.0
 * @author CMSWorks Team
 * @copyright Copyright (c) CMSWorks.ru, littledev.ru
 * @license BSD
 */
defined('COT_CODE') or die('Wrong URL.');

// Initialize $location with default values to avoid undefined variable errors
$location = [
    'country' => '',
    'region' => '',
    'city' => ''
];

// Assign the location selector tag
$t->assign([
    'SEARCH_LOCATION' => cot_select_location($location['country'], $location['region'], $location['city'])
]);
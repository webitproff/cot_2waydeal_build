<?php



/**
 * [BEGIN_COT_EXT]
 * Hooks=zakaz.topics.main
 * [END_COT_EXT]
 */

defined('COT_CODE') or die('Wrong URL.');

$location_info = cot_getlocation(
    $rowt['ft_prj_country'] ?? '',
    $rowt['ft_prj_region'] ?? '',
    $rowt['ft_prj_city'] ?? ''
);

$out['subtitle'] .= !empty($location_info['country']) ? ' - ' . $location_info['country'] : '';
$out['subtitle'] .= !empty($location_info['region']) ? ' - ' . $location_info['region'] : '';
$out['subtitle'] .= !empty($location_info['city']) ? ' - ' . $location_info['city'] : '';

/* $location_info = cot_getlocation($rowt['ft_prj_country'], $rowt['ft_prj_region'], $rowt['ft_prj_city']);
$out['subtitle'] .= (!empty($location_info['country'])) ? ' - ' . $location_info['country'] : '';
$out['subtitle'] .= (!empty($location_info['region'])) ? ' - ' . $location_info['region'] : '';
$out['subtitle'] .= (!empty($location_info['city'])) ? ' - ' . $location_info['city'] : ''; */


<?php

/**
 * [BEGIN_COT_EXT]
 * Hooks=zakaz.newtopic.newtopic.first.import,zakaz.editpost.update.first.import
 * [END_COT_EXT]
 */

defined('COT_CODE') or die('Wrong URL.');

/* $location = cot_import_location('P');
$rtopic['ft_prj_country'] = $location['country'];
$rtopic['ft_prj_region'] = $location['region'];
$rtopic['ft_prj_city'] = $location['city']; */

if (function_exists('cot_import_location'))
{
	$location = cot_import_location('P');
$rtopic['ft_prj_country'] = $location['country'];
$rtopic['ft_prj_region'] = $location['region'];
$rtopic['ft_prj_city'] = $location['city'];

}

<?php
/**
 * [BEGIN_COT_EXT]
 * Hooks=folio.add.tags,folio.edit.tags
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

// ==============================================
if ((int) $id > 0)
{
    $country = isset($item['item_country']) ? $item['item_country'] : '';
    $region = isset($item['item_region']) ? $item['item_region'] : '';
    $city = isset($item['item_city']) ? $item['item_city'] : '';

    $t->assign([
        "PRDEDIT_FORM_LOCATION" => cot_select_location($country, $region, $city)
    ]);
}
else
{
    $country = isset($ritem['item_country']) ? $ritem['item_country'] : '';
    $region = isset($ritem['item_region']) ? $ritem['item_region'] : '';
    $city = isset($ritem['item_city']) ? $ritem['item_city'] : '';

    $t->assign([
        "PRDADD_FORM_LOCATION" => cot_select_location($country, $region, $city, true)
    ]);
}
// ==============================================
?>
<?php
defined('COT_CODE') or die('Wrong URL');

/**
 * [BEGIN_COT_EXT]
 * Hooks=users.tags
 * [END_COT_EXT]
 */

require_once cot_incfile('usercategories', 'plug');

$cat = cot_import('cat', 'G', 'TXT');
$categories = array_keys(cot::$structure['usercategories']);

$t->assign([
    'SEARCH_CAT' => cot_usercategories_selectcat($cat, 'cat'),
    'USERCATEGORIES_CATALOG' => cot_usercategories_tree($cat),
    'USERS_CHOSEN_CATEGORY' => cot_usercategories_chosen($cat),
]);

if (!empty($cat) && is_array($structure['usercategories'][$cat])) {
    foreach ($structure['usercategories'][$cat] as $field => $val) {
        $t->assign('CAT'.strtoupper($field), $val);
    }
}





/* 


$t->assign(array(
	'SEARCH_CAT' => cot_usercategories_selectcat($cat, 'cat'),
	'USERCATEGORIES_CATALOG' => cot_usercategories_tree($cat),
));

if(!empty($cat) && is_array($structure['usercategories'][$cat]))
{
	foreach ($structure['usercategories'][$cat] as $field => $val)
	{
		$t->assign('CAT'.strtoupper($field), $val);
	}
} */
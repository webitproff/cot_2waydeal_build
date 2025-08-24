<?php
/**
 * [BEGIN_COT_EXT]
 * Hooks=usertags.main
 * [END_COT_EXT]
 */

defined('COT_CODE') or die('Wrong URL.');

require_once cot_incfile('usercategories', 'plug');
if (is_array($user_data)) {
    $temp_array['CATS'] = isset($user_data['user_cats']) && $user_data['user_cats']
        ? explode(',', $user_data['user_cats'])
        : [];
}
/* if(is_array($user_data)){
	$temp_array['CATS'] = ($user_data['user_cats']) ? explode(',', $user_data['user_cats']) : '';
} */


<?php
/**
 * Installation handler
 *
 * @package usercategories
 * @author CMSWorks Team, Cotonti Team
 * @copyright Copyright (c) CMSWorks.ru, littledev.ru, Cotonti Team
 * @license BSD
 */

defined('COT_CODE') or die('Wrong URL');

global $db_users;

require_once cot_incfile('usercategories', 'plug');
//require_once cot_incfile('extrafields');
require_once cot_incfile('structure');

// Add field if missing
if (!Cot::$db->fieldExists($db_users, "user_cats")) {
	Cot::$db->query(
        'ALTER TABLE ' . Cot::$db->users . ' ADD COLUMN user_cats TEXT NULL DEFAULT NULL'
    );
}

cot_structure_add('usercategories', array('structure_area' => 'usercategories', 'structure_code' => 'programming', 'structure_title' => 'Программирование', 'structure_path' => '001'));
cot_structure_add('usercategories', array('structure_area' => 'usercategories', 'structure_code' => 'management', 'structure_title' => 'Менеджмент', 'structure_path' => '002'));

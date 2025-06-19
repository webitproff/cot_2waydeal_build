<?php
/**
 * Uninstallation handler
 *
 * @package paypro
 * @version 1.0.2
 * @author CMSWorks Team
 * @copyright Copyright (c) CMSWorks.ru, littledev.ru
 * @license BSD
 */

defined('COT_CODE') or die('Wrong URL');

global $db, $db_x, $db_users, $db_extra_fields, $db_projects;

require_once cot_incfile('users', 'module');
require_once cot_incfile('projects', 'module');
require_once cot_incfile('extrafields');



// Удаление поля user_pro
if (Cot::$db->fieldExists($db_users, "user_pro")) {
    Cot::$db->query("ALTER TABLE `$db_users` DROP COLUMN `user_pro`");
}

// Удаление экстраполя pro

    cot_extrafield_remove($db_users, 'pro');


// Удаление поля project_forpro
if (Cot::$db->fieldExists($db_projects, "project_forpro")) {
    Cot::$db->query("ALTER TABLE `$db_projects` DROP COLUMN `project_forpro`");
}

// Удаление экстраполя forpro
    cot_extrafield_remove($db_projects, 'forpro');

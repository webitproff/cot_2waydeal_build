<?php 

/**
 * folio module
 *
 * @package folio
 * @version 3.0.0
 * @author CMSWorks Team
 * @copyright Copyright (c) CMSWorks.ru, littledev.ru | adapted 05 June 2025 to php >= 8.2+ & Bootstrap 5.3 by webitproff https://github.com/webitproff
 * @license BSD
 */

defined('COT_CODE') or die('Wrong URL');


require_once cot_incfile('folio', 'module');

global $db_structure, $db_folio, $db_auth;


	require_once cot_incfile('structure');
	
	cot_structure_add('folio', array('structure_area' => 'folio', 'structure_code' => 'programming', 'structure_title' => 'Программирование', 'structure_path' => '001'));
	cot_structure_add('folio', array('structure_area' => 'folio', 'structure_code' => 'management', 'structure_title' => 'Менеджмент', 'structure_path' => '002'));
	cot_structure_add('folio', array('structure_area' => 'folio', 'structure_code' => 'folioing', 'structure_title' => 'Маркетинг и реклама', 'structure_path' => '003'));
	cot_structure_add('folio', array('structure_area' => 'folio', 'structure_code' => 'design', 'structure_title' => 'Дизайн', 'structure_path' => '004'));
	cot_structure_add('folio', array('structure_area' => 'folio', 'structure_code' => 'seo', 'structure_title' => 'Оптимизация (SEO)', 'structure_path' => '005'));
	cot_structure_add('folio', array('structure_area' => 'folio', 'structure_code' => 'texts', 'structure_title' => 'Тексты', 'structure_path' => '006'));
	cot_structure_add('folio', array('structure_area' => 'folio', 'structure_code' => 'photo', 'structure_title' => 'Фотография', 'structure_path' => '007'));
	cot_structure_add('folio', array('structure_area' => 'folio', 'structure_code' => 'gamedev', 'structure_title' => 'Разработка игр', 'structure_path' => '008'));
	cot_structure_add('folio', array('structure_area' => 'folio', 'structure_code' => 'consulting', 'structure_title' => 'Консалтинг', 'structure_path' => '009'));
	cot_structure_add('folio', array('structure_area' => 'folio', 'structure_code' => 'construction', 'structure_title' => 'Строительство', 'structure_path' => '010'));
	
	$db->update($db_auth, array('auth_rights' => 1), "auth_code='folio' AND auth_groupid=7");
}


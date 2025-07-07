<?php

/**
 * folio module localization folio.en.lang.php
 *
 * @package folio
 * @version 3.0.1
 * @author CMSWorks Team
 * @copyright Copyright (c) CMSWorks.ru, littledev.ru | adapted 07 July 2025 to php >= 8.3+ & Bootstrap 5.3 by webitproff https://github.com/webitproff';
 * @license BSD
 */

defined('COT_CODE') or die('Wrong URL.');

if (empty($sitemap_freqs)) {
    require cot_langfile('sitemap');
}

/**
 * Module Config
 */
$L['cfg_pagelimit'] = 'Number of entries in lists';
$L['cfg_shorttextlen'] = 'Number of characters in lists';
$L['cfg_prevalidate'] = 'Enable pre-moderation';
$L['cfg_preview'] = 'Enable preview';
$L['cfg_title_folio'] = 'Page title in browser';
$L['cfg_count_admin'] = 'Count page views by administrator';
$L['cfg_foliositemap'] = 'Include in Sitemap';
$L['cfg_foliositemap_freq'] = 'Sitemap change frequency';
$L['cfg_foliositemap_freq_params'] = $sitemap_freqs;
$L['cfg_foliositemap_prio'] = 'Sitemap priority';
$L['cfg_description'] = 'Description';
$L['cfg_foliosearch'] = 'Include in global search';
$L['cfg_notiffolio_admin_moderate'] = 'Notify about new portfolios for moderation,Send notification to system email about new portfolios awaiting moderation';
$L['cfg_folioeditor'] = 'Select visual editor configuration';
$L['cfg_folioeditor_params'] = 'Disabled,Minimal button set,Standard button set,Extended button set';
$L['cfg_order'] = 'Sort order';
$L['cfg_way'] = 'Sort direction';
$L['cfg_way_hint'] = 'asc — ascending, desc — descending';

$L['info_name'] = 'Portfolio';
$L['info_desc'] = 'Publications of previously completed works and user achievements on the site';
$L['info_notes'] = 'adapted to php >= 8.2+ & Bootstrap 5.3 by webitproff https://github.com/webitproff';

$L['folio_select_cat'] = "Select category";
$L['folio_locked_cat'] = "Selected category is locked";
$L['folio_empty_title'] = "Title cannot be empty";
$L['folio_empty_text'] = "Description cannot be empty";
$L['folio_large_img'] = "Image is too large";

$L['folio_forreview'] = 'Your work is under review. A moderator will approve its publication soon.';

$L['folio'] = 'Portfolio';
$L['folio_catalog'] = 'Catalog';
$L['folio_add_to_catalog'] = 'Add work';
$L['folio_add_work'] = 'Add work';
$L['folio_edit_work'] = 'Edit work';
$L['folio_add_work_title'] = 'Adding work to portfolio';
$L['folio_edit_work_title'] = 'Editing work from portfolio';

$L['folio_hidden'] = 'Work is not published';
$L['folio_location'] = 'Location';
$L['folio_price'] = 'Work budget';
$L['folio_image_limit'] = 'Allowed formats: JPEG, GIF, JPG, PNG. Maximum size: 1MB.';
$L['folio_aliascharacters'] = 'Use of characters \'+\', \'/\', \'?\', \'%\', \'#\', \'&\' in aliases is not allowed';
$L['folio_costasc'] = 'Price ascending';
$L['folio_costdesc'] = 'Price descending';
$L['folio_mostrelevant'] = 'Most relevant';

$L['folio_notfound'] = 'Works not found';
$L['folio_empty'] = 'No works';

$L['folio_added_mail_subj'] = 'Work added to Portfolio';
$L['folio_senttovalidation_mail_subj'] = 'Your new portfolio work has been sent for review';
$L['folio_admin_home_valqueue'] = 'Under review';
$L['folio_admin_home_public'] = 'Published';
$L['folio_admin_home_hidden'] = 'Hidden';

$L['folio_added_mail_body'] = 'Hello, {$user_name}. '."\n\n".'Work "{$prd_name}" has been added to your Portfolio on the site {$sitename} - {$link}';
$L['folio_senttovalidation_mail_body'] = 'Hello, {$user_name}.'."\n\n".'Your work "{$prd_name}" from Portfolio has been sent for review. A moderator will approve its publication soon.';

$L['folio_notif_admin_moderate_mail_subj'] = 'New portfolio for review';
$L['folio_notif_admin_moderate_mail_body'] = 'Hello, '."\n\n".'User {$user_name} submitted a new portfolio "{$prd_name}" for review.'."\n\n".'{$link}';

$L['folio_status_published'] = 'Published';
$L['folio_status_moderated'] = 'Under review';
$L['folio_status_hidden'] = 'Hidden';

$L['plu_folio_set_sec'] = 'Work categories';
$L['plu_folio_res_sort1'] = 'Publication date';
$L['plu_folio_res_sort2'] = 'Title';
$L['plu_folio_res_sort3'] = 'Popularity';
$L['plu_folio_res_sort4'] = 'Category';
$L['plu_folio_search_names'] = 'Search in titles';
$L['plu_folio_search_text'] = 'Search in description';
$L['plu_folio_set_subsec'] = 'Search in subcategories';

$Ls['folio_headermoderated'] = "portfolio under review,portfolios under review,portfolios under review";

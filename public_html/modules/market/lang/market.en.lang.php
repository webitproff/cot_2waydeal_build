<?php

/**
 * market module
 *
 * @package market
 * @version 3.0.1
 * @author CMSWorks Team
 * @copyright Copyright (c) CMSWorks.ru, littledev.ru | 12 June 2025 adapted to php >= 8.2+ & Bootstrap 5.3 by webitproff https://github.com/webitproff
 * @license BSD
 */

defined('COT_CODE') or die('Wrong URL.');

$L['cfg_market_info_name'] = 'Market (Multi-store)';
if (empty($sitemap_freqs)) {
    require cot_langfile('sitemap');
}

/**
 * Module Config
 */
$L['cfg_pagelimit'] = 'Number of items per list';
$L['cfg_shorttextlen'] = 'Number of characters in lists';
$L['cfg_prevalidate'] = 'Enable pre-moderation';
$L['cfg_preview'] = 'Enable preview';
$L['cfg_marketsitemap'] = 'Include in Sitemap';
$L['cfg_marketsitemap_freq'] = 'Sitemap change frequency';
$L['cfg_marketsitemap_freq_params'] = $sitemap_freqs;
$L['cfg_marketsitemap_prio'] = 'Sitemap priority';
$L['cfg_description'] = 'Section description';
$L['cfg_description_hint'] = 'Displayed on the main store page if no category is selected. (market.list.tpl -> {PHP.cfg.market.description})';
$L['cfg_marketsearch'] = 'Include in global search';
$L['cfg_warranty'] = 'Warranty period (days)';
$L['cfg_tax'] = 'Sales commission (%)';
$L['cfg_ordersperpage'] = 'Number of orders per page';
$L['cfg_title_market'] = 'Product page title in browser';
$L['cfg_notifmarket_admin_moderate'] = 'Notify about new products pending moderation';
$L['cfg_notifmarket_admin_moderate_hint'] = 'Send email notification about new products awaiting moderation to the system email';
$L['cfg_prdeditor'] = 'Visual editor configuration';
$L['cfg_prdeditor_params'] = 'Disabled,Minimal set,Standard set,Extended set';
$L['cfg_truncatetext'] = 'Truncate text in lists to character limit';
$L['cfg_allowemptytext'] = 'Allow empty description';
$L['cfg_market_cat_keywords'] = 'Category keywords';
$L['cfg_market_cat_keywords_hint'] = 'Better to set for each category individually in Admin / Structure / Market (Multi-store)';
$L['cfg_market_cat_metatitle'] = 'Meta title';
$L['cfg_market_cat_metatitle_hint'] = 'Better to set for each category individually in Admin / Structure / Market (Multi-store)';
$L['cfg_market_cat_metadesc'] = 'Meta description';
$L['cfg_market_cat_metadesc_hint'] = 'Better to set for each category individually in Admin / Structure / "' . $L['cfg_market_info_name'] . '"';

$L['info_name'] = $L['cfg_market_info_name'];
$L['info_desc'] = 'Product showcases from different sellers';
$L['info_notes'] = 'adapted to Cotonti 0.9.26 beta, php >= 8.2+ & Bootstrap 5.3 by <a href="https://github.com/webitproff" target="_blank"><span class="text-primary-emphasis fw-bold">webitproff</span></a>';

$L['market_select_cat'] = "Select a section";
$L['market_locked_cat'] = "Selected category is locked";
$L['market_empty_title'] = "Title cannot be empty";
$L['market_empty_text'] = "Description cannot be empty";
$L['market_large_img'] = "Image is too large";

$L['market_forreview'] = 'Your product is under review. A moderator will approve it shortly.';

$L['market'] = 'Store';
$L['market_myproducts'] = 'My products';

$L['market_catalog'] = 'Catalog';
$L['market_add_product'] = 'Add product';
$L['market_edit_product'] = 'Edit product';
$L['market_add_product_title'] = 'Add product to store';
$L['market_edit_product_title'] = 'Edit store product';

$L['market_hidden'] = 'Product not published';
$L['market_location'] = 'Location';
$L['market_price'] = 'Price';
$L['market_image_limit'] = 'Allowed formats: JPEG, GIF, JPG, PNG. Max size 1MB.';
$L['market_aliascharacters'] = 'Characters \'+\', \'/\', \'?\', \'%\', \'#\', \'&\' are not allowed in aliases';

$L['market_costasc'] = 'Price ascending';
$L['market_costdesc'] = 'Price descending';
$L['market_mostrelevant'] = 'Most relevant';

$L['market_notfound'] = 'No products found';
$L['market_empty'] = 'No products';

$L['market_added_mail_subj'] = 'Your product has been published';
$L['market_senttovalidation_mail_subj'] = 'Your product has been sent for review';
$L['market_admin_home_valqueue'] = 'Pending moderation';
$L['market_admin_home_public'] = 'Published';
$L['market_admin_home_hidden'] = 'Hidden';

$L['market_added_mail_body'] = 'Hello, {$user_name}. '."\n\n".'Your product "{$prd_name}" has been published on {$sitename} - {$link}';
$L['market_senttovalidation_mail_body'] = 'Hello, {$user_name}.'."\n\n".'Your product "{$prd_name}" has been sent for review. A moderator will approve it shortly.';

$L['market_notif_admin_moderate_mail_subj'] = 'New product for moderation';
$L['market_notif_admin_moderate_mail_body'] = 'Hello,'."\n\n".'User {$user_name} has submitted a new product "{$prd_name}" for review.'."\n\n".'{$link}';

$L['market_status_published'] = 'Published';
$L['market_status_moderated'] = 'Under review';
$L['market_status_hidden'] = 'Hidden';

$L['plu_market_set_sec'] = 'Product categories';
$L['plu_market_res_sort1'] = 'By publish date';
$L['plu_market_res_sort2'] = 'By name';
$L['plu_market_res_sort3'] = 'By popularity';
$L['plu_market_res_sort4'] = 'By category';
$L['plu_market_search_names'] = 'Search in product names';
$L['plu_market_search_text'] = 'Search in product descriptions';
$L['plu_market_set_subsec'] = 'Search in subcategories';

$Ls['market_headermoderated'] = "product under review,products under review,products under review";

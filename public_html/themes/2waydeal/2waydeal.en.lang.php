<?php
/**
 * Custom skin English localization file 2waydeal.en.lang.php
 *
 * @package Cotonti
 * @version 0.9.26
 * @author 
 * @copyright Copyright (c)
 * @license BSD
 */
/**
 * This file is intended for additional custom localization strings
 */
defined('COT_CODE') or die('Wrong URL.');

$L['2wd_darkMode'] = 'Dark Mode';
$L['2wd_lightMode'] = 'Light Mode';

/**
 * Override the configuration setup from the admin panel
 * Site Management / Configuration / Titles and Meta Tags
 */
global $cfg;
$useCfgFromLang = true; // Use configuration values from the localization file

if ($useCfgFromLang === true) {
    // Title (Site Name)
    $cfg['maintitle'] = '2-Way Deal';
    // Subtitle (Site Description)
    $cfg['subtitle'] = 'Site description in English for a marketplace of services, goods, and a freelance job exchange, template and script for a freelance exchange on CMF Cotonti 0.9.26 Bootstrap 5.3.6';
}

$cot_groups['7']['name'] = 'Employers';
$cot_groups['4']['name'] = 'Freelancers';


// Market structure localization title
if (isset($structure['market']['programming']) && is_array($structure['market']['programming'])) {
    $structure['market']['programming']['title'] = 'Software Products';
    $structure['market']['programming']['tpath'] = 'Programs and Scripts (see 2waydeal.en.lang.php)';// Use ['tpath'] for Select box
    $structure['market']['programming']['desc'] = '<i class="fa-solid fa-circle-info fa-xl me-2"></i> Selling digital goods and software products at dirt-cheap prices is dumping and shady! <span class="fw-bold text-danger">(See more in 2waydeal.en.lang.php)</span>';
	// Market category configuration meta-data for example
	$cfg['market']['cat_programming']['market_cat_metatitle']= 'Meta Heading of the Programming category (See 2waydeal.EN.lang.php)';
	$cfg['market']['cat_programming']['market_cat_metadesc']= 'Selling digital goods and software products at low prices is dumping (See 2waydeal.EN.lang.php)';
}

if (isset($structure['market']['management']) && is_array($structure['market']['management'])) {
    $structure['market']['management']['title'] = 'Project Management';
}
if (isset($structure['market']['marketing']) && is_array($structure['market']['marketing'])) {
    $structure['market']['marketing']['title'] = 'Advertising and Marketing';
}

// usercategories structure localization title
if (isset($structure['usercategories']['programming']) && is_array($structure['usercategories']['programming'])) {
    $structure['usercategories']['programming']['title'] = 'Coding and Programming';
}
if (isset($structure['usercategories']['management']) && is_array($structure['usercategories']['management'])) {
    $structure['usercategories']['management']['title'] = 'Management';
}
if (isset($structure['usercategories']['marketing']) && is_array($structure['usercategories']['marketing'])) {
    $structure['usercategories']['marketing']['title'] = 'Advertising and Marketing';
}

$L['footer_engine'] = 'Site Engine';
$L['footer_cotonti'] = 'CMF Cotonti 0.9.26';
$L['footer_cotonti_tooltip'] = 'The site is powered by Cotonti Siena CMF - a powerful web development framework and open-source content management tool';

$L['2wd_menu_sections'] = 'Site Sections';
$L['2wd_info_and_support'] = 'Help and Support';
$L['2wd_info_sourceCode'] = 'Source code and updates';
$L['2wd_info_forumSupport'] = 'Support, help, questions';
$L['2wd_Publications'] = 'Articles and Blogs';
$L['2wd_cat_title_news'] = 'News';
$L['2wd_cat_title_events'] = 'Events';
$L['2wd_cat_title_articles'] = 'Articles';
$L['2wd_cat_title_usersblog'] = 'Site Users Blog';
$L['2wd_cat_title_blogs'] = 'User Blogs';
$L['header_notice'] = 'You Have Notifications';
$L['captcha_verification'] = 'Bot Protection';
$L['2wd_WhosOnline'] = "Who's Online Now";
$L['2wd_Contact'] = 'Contact Us';
$L['2wd_recentitems_title'] = 'Recent Items';
/**
 * "Pages" module
 */
$L['2wd_contentAuthor'] = 'Content Author';
$L['2wd_page_published'] = 'Page Published:';
$L['2wd_page_latest_update'] = 'Last Updated:';
$L['2wd_page_HasAttachment'] = 'Has File for Download';
$L['2wd_page_DownloadFile'] = 'Download File Now';
$L['2wd_page_LinkMainImage_hint'] = 'Upload the main image for this article via the file manager and then insert the image link here';
$L['2wd_page_catEmpty'] = 'There are no articles in this section yet';

$L['2wd_Comments'] = "Comments on the Page";
$L['2wd_Comment_Edit'] = "Edit Comment";

$L['Username'] = 'Nickname';
$L['2wd_Account'] = 'Account';
$L['2wd_passCurrent'] = 'Current Password';
$L['2wd_passNew'] = 'New Password';
$L['2wd_passNewRepeat'] = 'Repeat New Password';
$L['2wd_public_profile_page'] = 'Public Profile on the Site';
$L['2wd_public_profile_set_data'] = 'Profile Settings and Data';

// Admin notification about template location if it exists in the "mskin" variable
$L['mskin_admin'] = 'Administrator';
$L['mskin_attention'] = 'Attention!';
$L['mskin_template_file_location'] = 'Location of the file forming the page template:';
$L['mskin_template_file_info'] = 'This information is needed if you decide to modify the page for your needs or find an error';

// Set default values if keys are missing
$L['pfs_pastefile'] = isset($L['pfs_pastefile']) ? $L['pfs_pastefile'] : 'Insert as File Link';
$L['pfs_pasteimage'] = isset($L['pfs_pasteimage']) ? $L['pfs_pasteimage'] : 'Insert as Image';
$L['pfs_pastethumb'] = isset($L['pfs_pastethumb']) ? $L['pfs_pastethumb'] : 'Insert as Thumbnail';
$L['2wd_PFS_Attention'] = "Attention! You need to create a folder for file uploads!";
$L['2wd_PFS_Upl_Btn'] = "A form will open at the bottom of the page!";
$L['2wd_not_installed_PFS'] = 'The <span class="fw-bold">"PFS"</span> module for file storage - personal (PFS) and shared (SFS) storage - is not installed. You can install it in the site control panel or check <a href="https://www.cotonti.com/extensions/files-media/" class="alert-link" target="_blank">alternative extensions</a> on the community site';
$L['2wd_PFS'] = '<span class="fw-bold">"PFS"</span> File Storage Module';
$L['2wd_PFS_myFiles_Title'] = 'My Files Manager';

$L['pm_Selectall'] = 'Select All';
$L['pm_Unselectall'] = 'Deselect All';

$L['plu_search_options'] = 'Filters';
$L['2wd_ReserFilter'] = 'Reset Filter';
$L['2wd_StartSearch'] = 'Start Search';

$L['2wd_region'] = 'Region';
$L['2wd_city'] = 'City';

$L['2wd_usrSeller'] = 'Seller';
$L['2wd_usrCustomer'] = 'Buyer';
$L['2wd_usrFreelancer'] = 'Freelancer';
$L['2wd_usrEmployer'] = 'Employer';
$L['2wd_publicCardAdmin'] = 'Publication Management';
$L['2wd_toolsAdmin'] = 'Admin Tools';

$L['2wd_prj_offers_posttext'] = 'Enter the text of your message ...';

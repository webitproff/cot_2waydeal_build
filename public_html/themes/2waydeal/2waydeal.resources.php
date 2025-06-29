<?php
defined('COT_CODE') or die('Wrong URL.');
global $L;
// Пагинация (обновлены классы для Bootstrap 5)
$R['code_title_page_num'] = ' (' . $L['Page'] . ' {$num})';
$R['link_pagenav_current'] = '<li class="page-item active"><a class="page-link" href="{$url}"{$event}{$rel}>{$num}</a></li>';
$R['link_pagenav_first'] = '<li class="page-item"><a class="page-link" href="{$url}"{$event}{$rel}>' . $L['pagenav_first'] . '</a></li>';
$R['link_pagenav_gap'] = '<li class="page-item disabled"><span class="page-link">...</span></li>'; 
$R['link_pagenav_last'] = '<li class="page-item"><a class="page-link" href="{$url}"{$event}{$rel}>' . $L['pagenav_last'] . '</a></li>';
$R['link_pagenav_main'] = '<li class="page-item"><a class="page-link" href="{$url}"{$event}{$rel}>{$num}</a></li>';
$R['link_pagenav_next'] = '<li class="page-item"><a class="page-link" href="{$url}"{$event}{$rel}>' . $L['pagenav_next'] . '</a></li>';
$R['link_pagenav_prev'] = '<li class="page-item"><a class="page-link" href="{$url}"{$event}{$rel}>' . $L['pagenav_prev'] . '</a></li>';
$R['forums_code_topic_pages'] = '<ul class="pagination pagination-sm">{$main}{$last}</ul>';

$R['input_checkbox'] = '<input type="hidden" name="{$name}" value="{$value_off}" /><div class="form-check"><input class="form-check-input" type="checkbox" name="{$name}" value="{$value}"{$checked}{$attrs} id="{$name}" /><label class="form-check-label" for="{$name}">{$title}</label></div>';
$R['input_check'] = '<div class="form-check"><input class="form-check-input" type="checkbox" name="{$name}" value="{$value}"{$checked}{$attrs} id="{$name}" /><label class="form-check-label" for="{$name}">{$title}</label></div>';
$R['input_default'] = '<input class="form-control" type="{$type}" name="{$name}" value="{$value}"{$attrs} />{$error}';
$R['input_radio'] = '<div class="form-check mx-3"><input class="form-check-input" type="radio" name="{$name}" value="{$value}"{$checked}{$attrs} id="{$name}_{$value}" /><label class="form-check-label" for="{$name}_{$value}">{$title}</label></div>{$error}';
$R['input_radio_separator'] = ' ';
$R['input_select'] = '<select class="form-select" name="{$name}"{$attrs}>{$options}</select>{$error}'; 
$R['input_select_option'] = '<option value="{$value}"{$selected}>{$title}</option>';
$R['input_submit'] = '<button class="btn btn-primary" type="submit" name="{$name}" {$attrs}>{$value}</button>'; 
$R['input_file'] = '<div class="input-group"><input type="file" class="form-control" name="{$name}" value="{$value}" {$attrs} id="{$name}" /><label class="input-group-text" for="{$name}"></label></div>{$error}'; 
$R['input_text'] = '<input class="form-control" type="text" name="{$name}" value="{$value}" {$attrs} />{$error}';



$R['input_textarea'] = '<textarea class="form-control" name="{$name}" rows="{$rows}" cols="{$cols}"{$attrs}>{$value}</textarea>{$error}';
$R['input_textarea_editor'] = '<textarea class="form-control editor" name="{$name}" rows="{$rows}" cols="{$cols}"{$attrs}>{$value}</textarea>{$error}';
$R['input_textarea_medieditor'] = '<textarea class="form-control medieditor" name="{$name}" rows="{$rows}" cols="{$cols}"{$attrs}>{$value}</textarea>{$error}';
$R['input_textarea_minieditor'] = '<textarea class="form-control minieditor" name="{$name}" rows="{$rows}" cols="{$cols}"{$attrs}>{$value}</textarea>{$error}';


$R['input_date'] = '<div class="row g-2">
    <div class="col-2">{$day}</div>
    <div class="col-3">{$month}</div>
    <div class="col-2">{$year}</div>
    <div class="col-2">{$hour}</div>
    <div class="col-1 text-center">:</div>
    <div class="col-2">{$minute}</div>
</div>';
$R['input_date_short'] = '<div class="row g-2">
    <div class="col-4">{$day}</div>
    <div class="col-4">{$month}</div>
    <div class="col-4">{$year}</div>
</div>';
$R['input_location'] = '<div style="display: none;">{$country}</div>
<div class="row g-3">
	<div class="col-md-auto">
		<label class="form-label">' . Cot::$L['2wd_region'] . '</label>{$region}
	</div>
	<div class="col-md-auto">
		<label class="form-label">' . Cot::$L['2wd_city'] . '</label>{$city}
	</div>
</div>';


$R['input_password_roldpass'] = '<input class="form-control" type="password" name="{$name}" placeholder="' . Cot::$L['2wd_passCurrent'] . '" value="{$value}" {$attrs} />{$error}';
$R['input_password_rnewpass1'] = '<input class="form-control" type="password" name="{$name}" placeholder="' . Cot::$L['2wd_passNew'] . '" value="{$value}" {$attrs} />{$error}';
$R['input_password_rnewpass2'] = '<input class="form-control" type="password" name="{$name}" placeholder="' . Cot::$L['2wd_passNewRepeat'] . '" value="{$value}" {$attrs} />{$error}';

$R['form_guest_remember'] = '<input class="form-check-input" type="checkbox" name="rremember" />';
$R['form_guest_remember_forced'] = '<input class="form-check-input" type="checkbox" name="rremember" checked="checked" disabled="disabled" />';
$R['form_guest_password'] = '<input class="form-control" type="password" name="rpassword" size="12" maxlength="32" />';
$R['form_guest_username'] = '<input class="form-control" type="text" name="rusername" size="12" maxlength="100" />';

$R['tags_input_editpage'] = '<input type="text" name="rtags" class="form-control autotags" value="{$tags}" />';
$R['tags_input_editpost'] = '<input type="text" name="rtags" class="form-control autotags" value="{$tags}" />';

$R['page_default_image'] = Cot::$cfg['themes_dir'] . "/" . Cot::$cfg['defaulttheme'] . "/img/freelance-on-cmf-cotonti.webp";
$R['cat_icon_mylogo'] = Cot::$cfg['themes_dir'] . "/" . Cot::$cfg['defaulttheme'] . "/img/favicon-small.webp";


// форма ответов в предложениях по заказам
$R['input_textarea_posttext'] = '<textarea class="form-control rounded-2" placeholder="' . Cot::$L['2wd_prj_offers_posttext'] . '" name="{$name}" rows="{$rows}" cols="{$cols}"{$attrs}" style="border: 2px var(--bs-primary-border-subtle) solid">{$value}</textarea>{$error}';
//$R['breadcrumbs_separator'] = ' <i class="fa-solid fa-angles-right" style="color: #ff8000;"></i> ';
// Breadcrumbs
$R['breadcrumbs_container'] = '{$crumbs}';
$R['breadcrumbs_separator'] = '<span class="mx-2"><svg xmlns="http://www.w3.org/2000/svg" height="11" width="11" viewBox="0 0 512 512"><path fill="#ff8000" d="M470.6 278.6c12.5-12.5 12.5-32.8 0-45.3l-160-160c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3L402.7 256 265.4 393.4c-12.5 12.5-12.5 32.8 0 45.3s32.8 12.5 45.3 0l160-160zm-352 160l160-160c12.5-12.5 12.5-32.8 0-45.3l-160-160c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3L210.7 256 73.4 393.4c-12.5 12.5-12.5 32.8 0 45.3s32.8 12.5 45.3 0z"/></svg></span>';
$R['breadcrumbs_link'] = '<a href="{$url}" title="{$title}">{$title}</a>';
$R['breadcrumbs_plain'] = '{$title}';
$R['breadcrumbs_crumb'] = '{$crumb}';
$R['breadcrumbs_first'] = '{$crumb}';
$R['breadcrumbs_last'] = '<span class="d-inline-block text-truncate" style="max-width: 450px;">{$crumb}</span>';





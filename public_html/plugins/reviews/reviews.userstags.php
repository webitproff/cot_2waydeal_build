<?php
/**
 * [BEGIN_COT_EXT]
 * Hooks=usertags.main
 * [END_COT_EXT]
 */
/**
 * Reviews plugin
 * Filename: reviews.userstags.php
 * @package reviews
 * @version 3.0.0
 * @author CMSWorks Team
 * @copyright Copyright (c) 2025
 * @license BSD
 */
defined('COT_CODE') or die('Wrong URL.');
require_once cot_incfile('reviews', 'plug');
if (is_array($user_data)) {
    $scores = cot_getreview_scores($user_data['user_id']);
    require_once cot_incfile('reviews', 'plug'); // Подключаем cot_generate_stars

    $avg_stars = $scores['total']['count'] > 0 ? round($scores['stars']['summ'] / $scores['total']['count'], 1) : 0;
    
    $temp_array['REVIEWS_STARS_SUMM'] = $scores['stars']['summ'];
    $temp_array['REVIEWS_TOTAL_COUNT'] = $scores['total']['count'];
    $temp_array['REVIEWS_AVG_STARS'] = $avg_stars;
    $temp_array['REVIEWS_AVG_STARS_HTML'] = cot_generate_stars(floor($avg_stars)); // Готовые звёзды
}

/* defined('COT_CODE') or die('Wrong URL.');

if(is_array($user_data)){
	$scores = cot_getreview_scores($user_data['user_id']);

	$temp_array['REVIEWS_NEGATIVE_SUMM'] = $scores['neg']['summ'];
	$temp_array['REVIEWS_POZITIVE_SUMM'] = $scores['poz']['summ'];
	$temp_array['REVIEWS_SUMM'] = $scores['poz']['summ'] + $scores['neg']['summ'];
} */
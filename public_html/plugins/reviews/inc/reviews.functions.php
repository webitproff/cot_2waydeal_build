<?php
/**
 * Reviews plugin
 * Filename: reviews.functions.php
 * @package reviews
 * @version 3.0.0
 * @author CMSWorks Team
 * @copyright Copyright (c) 2025
 * @license BSD
 */
defined('COT_CODE') or die('Wrong URL.');
defined('COT_CODE') or die('Wrong URL.');

/**
 * Генерация звёзд для оценки
 */
function cot_generate_stars($score)
{
    $score = (int)$score;
    $stars = '';
    for ($i = 1; $i <= 5; $i++) {
        $stars .= $i <= $score ? '<i class="fa-solid fa-star"></i>' : '<i class="fa-regular fa-star"></i>';
    }
    return $stars;
}

global $cot_extrafields;
cot::$db->registerTable('reviews');

/**
 * Вывод "очков" пользователя
 */
function cot_getreview_scores($userid)
{
    global $db_reviews, $db;
    $scores = [
        'total' => ['count' => 0, 'summ' => 0],
        'stars' => ['count' => 0, 'summ' => 0],
    ];
    $sql = $db->query("SELECT COUNT(item_score) AS cnt, item_score FROM $db_reviews WHERE item_touserid = ? 
        GROUP BY item_score ORDER BY item_score ASC", [$userid]);
    while ($scr = $sql->fetch()) {
        $scr['item_score'] = (int)$scr['item_score'];
        $summ = $scr['cnt'] * $scr['item_score'];
        $scores[$scr['item_score']] = ['count' => $scr['cnt'], 'summ' => $summ];
        $scores['total']['count'] += $scr['cnt'];
        $scores['total']['summ'] += $summ;
        if ($scr['item_score'] >= 1 && $scr['item_score'] <= 5) {
            $scores['stars']['count'] += $scr['cnt'];
            $scores['stars']['summ'] += $summ;
        }
    }
    return $scores;
}

/**
 * Форма просмотра отзывов / добавление / редактирование отзыва
 */
function cot_reviews_list($userid, $area, $code = '', $name = '', $params = '', $tail = '', $showall = false)
{
    global $db_reviews, $db_users, $db, $L, $usr, $cfg, $sys;
    list($usr['auth_read'], $usr['auth_write'], $usr['isadmin']) = cot_auth('plug', 'reviews', 'RWA');
    if (!$usr['auth_read']) {
        return '';
    }

    $t1 = new XTemplate(cot_tplfile(['reviews', $area], 'plug'));
    require_once cot_langfile('reviews', 'plug');

    $sqlarea = $sqlcode = '';
    if (!$showall) {
        $sqlcode = !empty($code) ? " AND item_code = ?" : '';
        $sqlarea = " AND item_area = ?";
    }
    $sql_params = [$userid];
    if (!empty($sqlarea)) $sql_params[] = $area;
    if (!empty($sqlcode)) $sql_params[] = $code;

    $sql = $db->query("SELECT * FROM $db_reviews AS r LEFT JOIN $db_users AS u ON u.user_id = r.item_userid 
        WHERE item_touserid = ?" . $sqlarea . $sqlcode . " ORDER BY item_date ASC", $sql_params);
    
    $params = is_array($params) ? array_map(fn($v) => str_replace(['$userid', '$area', '$code'], [$userid, $area, $code], $v), $params) : 
        str_replace(['$userid', '$area', '$code'], [$userid, $area, $code], $params);
    $redirect = cot_url($name, $params, $tail, true);
    $redirect = base64_encode($redirect);

    while ($item = $sql->fetch()) {
        $t1->assign(cot_generate_usertags($item, 'REVIEW_ROW_'));
        $t1->assign([
            'REVIEW_ROW_ID' => $item['item_id'],
            'REVIEW_ROW_TEXT' => $item['item_text'],
			'REVIEW_ROW_TITLE' => $item['item_title'],
            'REVIEW_ROW_TOUSER' => $item['item_touserid'],
            'REVIEW_ROW_OWNERID' => $item['item_userid'],
            'REVIEW_ROW_OWNER' => cot_build_user($item['item_userid'], htmlspecialchars($item['user_name'])),
            'REVIEW_ROW_SCORE' => $item['item_score'],
            'REVIEW_ROW_STARS' => cot_generate_stars($item['item_score']),
            'REVIEW_ROW_AREA' => $item['item_area'],
            'REVIEW_ROW_CODE' => $item['item_code'],
            'REVIEW_ROW_DATE' => $item['item_date'],
            'REVIEW_ROW_DELETE_URL' => ($usr['id'] == $item['item_userid'] || $usr['isadmin']) ? 
                cot_url('plug', [
                    'r' => 'reviews',
                    'a' => 'delete',
                    'area' => $item['item_area'],
                    'code' => $item['item_code'],
                    'touser' => $userid,
                    'itemid' => $item['item_id'],
                    'redirect' => $redirect
                ]) : '',
        ]);

        if ($item['item_area'] == 'projects' && !empty($item['item_code'])) {
            require_once cot_incfile('projects', 'module');
            global $db_projects;
            $prj = $db->query("SELECT * FROM $db_projects WHERE item_id = ?", [$item['item_code']])->fetch();
            $t1->assign(cot_generate_projecttags($prj, 'REVIEW_ROW_PRJ_'));
        }

        /* === Hook === */
        foreach (cot_getextplugins('reviews.list.tags') as $pl) {
            include $pl;
        }
        /* ===== */

        // Форма редактирования для каждого отзыва
        if ($usr['id'] == $item['item_userid'] || $usr['isadmin']) {
            $user_options = [];
            if ($usr['isadmin']) {
                $users_sql = $db->query("SELECT user_id, user_name FROM $db_users ORDER BY user_name ASC");
                while ($u = $users_sql->fetch()) {
                    $user_options[$u['user_id']] = htmlspecialchars($u['user_name']);
                }
            }
			/* 
            $user_options = [];
            if ($usr['isadmin']) {
                $users_sql = $db->query("SELECT user_id, user_name FROM $db_users WHERE user_maingrp = 7 ORDER BY user_name ASC");
                while ($u = $users_sql->fetch()) {
                    $user_options[$u['user_id']] = htmlspecialchars($u['user_name']);
                }
            }
			 */
            $date_value = !empty($item['item_date']) ? (int)$item['item_date'] : (int)$sys['now'];
            $edit_url = cot_url('plug', [
                'r' => 'reviews',
                'a' => 'update',
                'area' => $item['item_area'],
                'code' => $item['item_code'],
                'touser' => $userid,
                'itemid' => $item['item_id'],
                'redirect' => $redirect
            ]);
            error_log("Edit URL for review {$item['item_id']}: $edit_url");
            $t1->assign(cot_generate_usertags($item, 'EDIT_FORM_OWNER_'));
            $t1->assign([
                'EDIT_FORM_ID' => $item['item_id'],
                'EDIT_FORM_SEND' => $edit_url,
                'EDIT_FORM_TEXT' => cot_textarea('rtext', $item['item_text'], 5, 50, 'class="form-control"'),
				'EDIT_FORM_TITLE' => cot_inputbox('text', 'rtitle', $item['item_title'], 'class="form-control" maxlength="255"'),
                'EDIT_FORM_SCORE' => cot_radiobox($item['item_score'], 'rscore', $L['reviews_score_values'], $L['reviews_score_titles'], 'class="form-check-input"'),
                'EDIT_FORM_USERID' => $usr['isadmin'] ? cot_selectbox($item['item_userid'], 'ruserid', array_keys($user_options), array_values($user_options), true, 'class="form-control"') : '',
                'EDIT_FORM_DATE' => $usr['isadmin'] ? cot_selectbox_date($date_value, 'long', 'rdate', date('Y', $sys['now']), date('Y', $sys['now']) - 5, false, '', 'class="form-control d-inline-block w-auto"') : '',
                'EDIT_FORM_DELETE_URL' => cot_url('plug', [
                    'r' => 'reviews',
                    'a' => 'delete',
                    'area' => $item['item_area'],
                    'code' => $item['item_code'],
                    'touser' => $userid,
                    'itemid' => $item['item_id'],
                    'redirect' => $redirect
                ]),
            ]);

            /* === Hook === */
            foreach (cot_getextplugins('reviews.edit.tags') as $pl) {
                include $pl;
            }
            /* ===== */

            $t1->parse('MAIN.REVIEWS_ROWS.EDIT_FORM');
        }
        
        $t1->parse('MAIN.REVIEWS_ROWS');
    }

    // Форма добавления отзыва
    if ($usr['auth_write'] && $usr['id'] != $userid) {
        cot_display_messages($t1);
        
        $user_options = [];
        if ($usr['isadmin']) {
            $users_sql = $db->query("SELECT user_id, user_name FROM $db_users WHERE user_maingrp = 7 ORDER BY user_name ASC");
            while ($u = $users_sql->fetch()) {
                $user_options[$u['user_id']] = htmlspecialchars($u['user_name']);
            }
        }

        $bothprj_count = 0;
        $prj_ids = [];
        $prj_titles = [];
        if (cot_module_active('projects') && $cfg['plugin']['reviews']['checkprojects'] && $usr['id'] > 0) {
            require_once cot_incfile('projects', 'module');
            global $db_projects_offers, $db_projects;

            $prjreviews = [];
            $prj_reviews_sql = $db->query("SELECT item_code FROM $db_reviews WHERE item_area='projects' AND item_userid = ?", [$usr['id']]);
            while ($row = $prj_reviews_sql->fetch()) {
                $prjreviews[] = $row['item_code'];
            }
            
            $prjreviews_string = count($prjreviews) > 0 ? "AND o.offer_pid NOT IN (" . implode(",", array_map('intval', $prjreviews)) . ")" : '';
            
            $bothprj_count = $db->query("SELECT COUNT(*) FROM $db_projects_offers AS o
                LEFT JOIN $db_projects AS p ON p.item_id = o.offer_pid
                WHERE ((p.item_userid = ? AND o.offer_userid = ?) OR (p.item_userid = ? AND o.offer_userid = ?)) 
                    AND o.offer_choise = 'performer' $prjreviews_string", 
                [$userid, $usr['id'], $usr['id'], $userid])->fetchColumn();
            
            if ($bothprj_count > 0) {
                $bothprj_sql = $db->query("SELECT * FROM $db_projects_offers AS o
                    LEFT JOIN $db_projects AS p ON p.item_id = o.offer_pid
                    WHERE ((p.item_userid = ? AND o.offer_userid = ?) OR (p.item_userid = ? AND o.offer_userid = ?)) 
                        AND o.offer_choise = 'performer' $prjreviews_string", 
                    [$userid, $usr['id'], $usr['id'], $userid]);
                while ($bprj = $bothprj_sql->fetch()) {
                    $prj_ids[] = $bprj['offer_pid'];
                    $prj_titles[] = $bprj['item_title'];
                }
            }
            
            $area = 'projects';
            $usr['auth_write'] = ($bothprj_count == 0) ? false : $usr['auth_write'];
        } else {
            $sqlcode = !empty($code) ? " AND item_code = ?" : '';
            $sqlarea = " AND item_area = ?";
            $sql_params = [(int)$usr['id'], (int)$userid];
            if (!empty($sqlarea)) $sql_params[] = $area;
            if (!empty($sqlcode)) $sql_params[] = $code;
            $reviews_count = $db->query("SELECT COUNT(*) FROM $db_reviews 
                WHERE item_userid = ? AND item_touserid = ?" . $sqlarea . $sqlcode, $sql_params)->fetchColumn();
            $usr['auth_write'] = ($reviews_count > 0) ? false : $usr['auth_write'];
        }
        
        if ($usr['auth_write']) {
            $add_url = cot_url('plug', [
                'r' => 'reviews',
                'a' => 'add',
                'area' => $area,
                'touser' => $userid,
                'redirect' => $redirect
            ]);
            error_log("Add URL for review: $add_url");
            
            $t1->assign([
                'ADD_FORM_SEND' => $add_url,
                'ADD_FORM_TEXT' => cot_textarea('rtext', '', 5, 50, 'class="form-control"'),
				'ADD_FORM_TITLE' => cot_inputbox('text', 'rtitle', '', 'class="form-control" maxlength="255"'),
                'ADD_FORM_SCORE' => cot_radiobox(0, 'rscore', $L['reviews_score_values'], $L['reviews_score_titles'], 'class="form-check-input"'),
                'ADD_FORM_USERID' => $usr['isadmin'] ? cot_selectbox('', 'ruserid', array_keys($user_options), array_values($user_options), true, 'class="form-control"') : '',
                'ADD_FORM_DATE' => $usr['isadmin'] ? cot_selectbox_date($sys['now'], 'long', 'rdate', date('Y', $sys['now']), date('Y', $sys['now']) - 5, false, '', 'class="form-control d-inline-block w-auto"') : '',
                'ADD_FORM_PROJECTS' => (cot_module_active('projects') && $cfg['plugin']['reviews']['checkprojects'] && !empty($bothprj_count)) ?
                    cot_selectbox(0, 'code', $prj_ids, $prj_titles, false, 'class="form-control"') : '',
            ]);
            
            /* === Hook === */
            foreach (cot_getextplugins('reviews.add.tags') as $pl) {
                include $pl;
            }
            /* ===== */
            
            $t1->parse('MAIN.ADD_FORM');
        }
    }

    $t1->parse('MAIN');
    return $t1->text('MAIN');
}

/**
 * Вывод последних отзывов
 */
function cot_reviews_last($count = 0)
{
    global $db_reviews, $db_users, $db, $L, $usr, $cfg;
    list($usr['auth_read'], $usr['auth_write'], $usr['isadmin']) = cot_auth('plug', 'reviews', 'RWA');
    if (!$usr['auth_read']) {
        return '';
    }

    $t1 = new XTemplate(cot_tplfile(['reviews', 'last'], 'plug'));
    require_once cot_langfile('reviews', 'plug');
    
    $limit = $count > 0 ? "LIMIT ?" : '';
    $sql_params = $count > 0 ? [$count] : [];
    $sql = $db->query("SELECT * FROM $db_reviews AS r 
        LEFT JOIN $db_users AS u ON u.user_id = r.item_userid 
        ORDER BY item_date ASC $limit", $sql_params);

    while ($item = $sql->fetch()) {            
        $t1->assign(cot_generate_usertags($item, 'REVIEW_ROW_OWNER_'));
        $t1->assign(cot_generate_usertags($item['item_touserid'], 'REVIEW_ROW_TO_'));
        $t1->assign([
            'REVIEW_ROW_ID' => $item['item_id'],
            'REVIEW_ROW_TEXT' => $item['item_text'],
			'REVIEW_ROW_TITLE' => $item['item_title'],
            'REVIEW_ROW_SCORE' => $item['item_score'],
            'REVIEW_ROW_STARS' => cot_generate_stars($item['item_score']),
            'REVIEW_ROW_AREA' => $item['item_area'],
            'REVIEW_ROW_CODE' => $item['item_code'],
            'REVIEW_ROW_DATE' => $item['item_date'],
        ]);

        if ($item['item_area'] == 'projects' && !empty($item['item_code'])) {
            require_once cot_incfile('projects', 'module');
            global $db_projects;
            $prj = $db->query("SELECT * FROM $db_projects WHERE item_id = ?", [$item['item_code']])->fetch();
            $t1->assign(cot_generate_projecttags($prj, 'REVIEW_ROW_PRJ_'));
        }
      
        /* === Hook === */
        foreach (cot_getextplugins('reviews.list.loop') as $pl) {
            include $pl;
        }
        /* ===== */
        
        $t1->parse('MAIN.REVIEW_ROW');
    }
    $t1->parse('MAIN');
    return $t1->text('MAIN');
}
?>
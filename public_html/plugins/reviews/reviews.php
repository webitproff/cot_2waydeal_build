<?php
/**
 * [BEGIN_COT_EXT]
 * Hooks=ajax
 * [END_COT_EXT]
 */
/**
 * Reviews plugin
 * Filename: reviews.php
 * @package reviews
 * @version 3.0.0
 * @author CMSWorks Team
 * @copyright Copyright (c) 2025
 * @license BSD
 */
defined('COT_CODE') && defined('COT_PLUG') or die('Wrong URL');

require_once cot_langfile('reviews', 'plug');

list($usr['auth_read'], $usr['auth_write'], $usr['isadmin']) = cot_auth('plug', 'reviews', 'RWA');

$touser = cot_import('touser', 'G', 'INT');
$itemid = cot_import('itemid', 'G', 'INT');
$area = cot_import('area', 'G', 'TXT');
$code = cot_import('code', 'G', 'TXT');
$redirect = cot_import('redirect', 'G', 'TXT');
$area = empty($area) ? 'users' : $area;

if ($cfg['plugin']['reviews']['checkprojects'] && cot_module_active('projects') && $usr['id'] > 0 && $touser > 0 && $usr['id'] != $touser && $usr['auth_write']) {
    require_once cot_incfile('projects', 'module');
    global $db_projects_offers, $db_projects;
    $bothprj = $db->query("SELECT COUNT(*) FROM $db_projects_offers AS o
        LEFT JOIN $db_projects AS p ON p.item_id=o.offer_pid
        WHERE (p.item_userid = ? AND o.offer_userid = ? OR p.item_userid = ? AND o.offer_userid = ?) AND o.offer_choise='performer'", 
        [$touser, $usr['id'], $usr['id'], $touser])->fetchColumn();
    $usr['auth_write'] = ($bothprj == 0) ? false : $usr['auth_write'];
}

cot_block($usr['auth_write']);

if ($a == 'add') {
    cot_shield_protect();
    
    $ritem['item_touserid'] = $touser;
    $ritem['item_text'] = cot_import('rtext', 'P', 'TXT');
    $ritem['item_score'] = cot_import('rscore', 'P', 'INT');
    $ritem['item_title'] = cot_import('rtitle', 'P', 'TXT');
    $ritem['item_area'] = $area;
    $ritem['item_code'] = (!empty($code)) ? $code : cot_import('code', 'P', 'TXT');
    $ritem['item_code'] = $db->prep($ritem['item_code']);

    if ($usr['isadmin']) {
        $selected_userid = cot_import('ruserid', 'P', 'INT');
        if ($selected_userid > 0) {
            $user_exists = $db->query("SELECT user_id FROM $db_users WHERE user_id = ? AND user_maingrp = 7", [$selected_userid])->fetch();
            cot_check(!$user_exists, 'reviews_error_invaliduser');
            $ritem['item_userid'] = $selected_userid;
        } else {
            cot_check(true, 'reviews_error_nouserselected');
        }
        $rdate = cot_import_date('rdate', true);
        if ($rdate === false || $rdate <= 0) {
            $ritem['item_date'] = (int)$sys['now'];
        } else {
            $ritem['item_date'] = (int)$rdate;
        }
    } else {
        $ritem['item_userid'] = (int)$usr['id'];
        $ritem['item_date'] = (int)$sys['now'];
    }

    /* === Hook === */
    foreach (cot_getextplugins('reviews.add.import') as $pl) {
        include $pl;
    }
    /* ===== */

    cot_check(empty($touser), 'reviews_error_invaliduser');
    $uinfo = $db->query("SELECT * FROM $db_users WHERE user_id = ?", [$touser])->fetch();
    cot_block(!empty($uinfo['user_name']));
    
    cot_check($touser == $ritem['item_userid'], 'reviews_error_toyourself');
    
    if ($cfg['plugin']['reviews']['checkprojects'] && cot_module_active('projects')) {
        $project_exists = (bool)$db->query("SELECT COUNT(*) FROM $db_projects_offers AS o
            LEFT JOIN $db_projects AS p ON p.item_id=o.offer_pid
            WHERE p.item_id = ? 
                AND (p.item_userid = ? AND o.offer_userid = ? OR p.item_userid = ? AND o.offer_userid = ?) 
                AND o.offer_choise='performer'", 
            [$ritem['item_code'], $touser, $ritem['item_userid'], $ritem['item_userid'], $touser])->fetchColumn();
        cot_check(!$project_exists, 'reviews_error_projectsonly');
    }
    
    $review_exists = (bool)$db->query("SELECT COUNT(*) FROM $db_reviews 
        WHERE item_touserid = ? AND item_area = ? AND item_code = ? AND item_userid = ?", 
        [$touser, $db->prep($area), $db->prep($ritem['item_code']), $ritem['item_userid']])->fetchColumn();

    cot_check($review_exists, 'reviews_error_exists');
    cot_check(empty($ritem['item_text']), 'reviews_error_emptytext');
    cot_check($ritem['item_score'] < 1 || $ritem['item_score'] > 5, 'reviews_error_emptyscore');
    cot_check(empty($ritem['item_title']), 'reviews_err_title', 'rtitle');

    if (!cot_error_found() && $ritem['item_touserid'] != $ritem['item_userid']) {
        $db->insert($db_reviews, $ritem);
        $itemid = $db->lastInsertId();

        // Отправка уведомлений на почту
        $reviewer = $db->query("SELECT user_name FROM $db_users WHERE user_id = ?", [$ritem['item_userid']])->fetch();
        $reviewer_name = $reviewer['user_name'] ?: 'Неизвестный';
        $subject = $L['reviews_new_review'] . ": {$ritem['item_title']}";
        $body = $L['reviews_new_review_body'] . "\n\n";
        $body .= $L['reviews_title'] . ": {$ritem['item_title']}\n";
        $body .= $L['reviews_text'] . ": {$ritem['item_text']}\n";
        $body .= $L['reviews_score'] . ": {$ritem['item_score']}/5\n";
        $body .= $L['reviews_author'] . ": {$reviewer_name} (" . $cfg['mainurl'] . '/' . cot_url('users', 'm=details&id=' . $ritem['item_userid']) . ")\n";
        $body .= $L['reviews_recipient'] . ": {$uinfo['user_name']} (" . $cfg['mainurl'] . '/' . cot_url('users', 'm=details&id=' . $ritem['item_touserid']) . ")\n";
        $body .= $L['reviews_date'] . ": " . cot_date('datetime_full', $ritem['item_date']) . "\n";

        // Отправка супер админам (группа 5)
        $superadmins = $db->query("SELECT user_email FROM $db_users WHERE user_maingrp = 5")->fetchAll();
        foreach ($superadmins as $admin) {
            if (!empty($admin['user_email'])) {
                cot_mail($admin['user_email'], $subject, $body);
            }
        }

        // Отправка получателю отзыва
        if (!empty($uinfo['user_email'])) {
            cot_mail($uinfo['user_email'], $subject, $body);
        }

        /* === Hook === */
        foreach (cot_getextplugins('reviews.add.add.done') as $pl) {
            include $pl;
        }
        /* ===== */
    }
} elseif ($a == 'update') {
    cot_shield_protect();

    if (empty($itemid)) {
        cot_error('reviews_error_invaliduser');
        cot_redirect(base64_decode($redirect));
    }

    $sql = $db->query("SELECT * FROM $db_reviews WHERE item_id = ? LIMIT 1", [$itemid]);
    if ($sql->rowCount() == 0) {
        cot_error('reviews_error_invaliduser');
        cot_redirect(base64_decode($redirect));
    }
    $item = $sql->fetch();

    cot_block($usr['isadmin'] || $usr['id'] == $item['item_userid']);
    
    $ritem['item_title'] = cot_import('rtitle', 'P', 'TXT');
    $ritem['item_text'] = cot_import('rtext', 'P', 'TXT');
    $ritem['item_score'] = (int)cot_import('rscore', 'P', 'INT');

    if ($usr['isadmin']) {
        $selected_userid = cot_import('ruserid', 'P', 'INT');
        if ($selected_userid > 0) {
            $user_exists = $db->query("SELECT user_id FROM $db_users WHERE user_id = ?", [$selected_userid])->fetch();
            if (!$user_exists) {
                cot_check(true, 'reviews_error_invaliduser');
            } else {
                $ritem['item_userid'] = $selected_userid;
            }
        }
        $rdate = cot_import_date('rdate', true);
        if ($rdate !== false && $rdate > 0) {
            $ritem['item_date'] = (int)$rdate;
        }
    }

    cot_check(empty($ritem['item_text']), 'reviews_error_emptytext');
    cot_check($ritem['item_score'] < 1 || $ritem['item_score'] > 5, 'reviews_error_emptyscore');
    cot_check(empty($ritem['item_title']), 'reviews_err_title', 'rtitle');

    if (!cot_error_found()) {
        $db->update($db_reviews, $ritem, "item_id = ?", [$itemid]);

        // Отправка уведомлений на почту
        $reviewer = $db->query("SELECT user_name FROM $db_users WHERE user_id = ?", [$item['item_userid']])->fetch();
        $reviewer_name = $reviewer['user_name'] ?: 'Неизвестный';
        $recipient = $db->query("SELECT user_name, user_email FROM $db_users WHERE user_id = ?", [$item['item_touserid']])->fetch();
        $subject = $L['reviews_updated_review'] . ": {$ritem['item_title']}";
        $body = $L['reviews_updated_review_body'] . "\n\n";
        $body .= $L['reviews_title'] . ": {$ritem['item_title']}\n";
        $body .= $L['reviews_text'] . ": {$ritem['item_text']}\n";
        $body .= $L['reviews_score'] . ": {$ritem['item_score']}/5\n";
        $body .= $L['reviews_author'] . ": {$reviewer_name} (" . $cfg['mainurl'] . '/' . cot_url('users', 'm=details&id=' . $item['item_userid']) . ")\n";
        $body .= $L['reviews_recipient'] . ": {$recipient['user_name']} (" . $cfg['mainurl'] . '/' . cot_url('users', 'm=details&id=' . $item['item_touserid']) . ")\n";
        $body .= $L['reviews_date'] . ": " . cot_date('datetime_full', $item['item_date']) . "\n";

        // Отправка супер админам (группа 5)
        $superadmins = $db->query("SELECT user_email FROM $db_users WHERE user_maingrp = 5")->fetchAll();
        foreach ($superadmins as $admin) {
            if (!empty($admin['user_email'])) {
                cot_mail($admin['user_email'], $subject, $body);
            }
        }

        // Отправка получателю отзыва
        if (!empty($recipient['user_email'])) {
            cot_mail($recipient['user_email'], $subject, $body);
        }

        /* === Hook === */
        foreach (cot_getextplugins('reviews.edit.update.done') as $pl) {
            include $pl;
        }
        /* ===== */
    }
} elseif ($a == 'delete') {
    if (empty($itemid)) {
        cot_error('reviews_error_invaliduser');
        cot_redirect(base64_decode($redirect));
    }

    $sql = $db->query("SELECT * FROM $db_reviews WHERE item_id = ? LIMIT 1", [$itemid]);
    if ($sql->rowCount() == 0) {
        cot_error('reviews_error_invaliduser');
        cot_redirect(base64_decode($redirect));
    }
    $item = $sql->fetch();

    cot_block($usr['isadmin'] || $usr['id'] == $item['item_userid']);

    $db->delete($db_reviews, "item_id = ?", [$itemid]);

    /* === Hook === */
    foreach (cot_getextplugins('reviews.edit.delete.done') as $pl) {
        include $pl;
        }
    }
    /* ===== */


$redirect_url = empty($redirect) ? cot_url('users', ['m' => 'details', 'id' => $touser]) : base64_decode($redirect);
cot_redirect($redirect_url);
exit;
?>
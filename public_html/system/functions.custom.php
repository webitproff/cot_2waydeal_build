<?php

global $tpl;
defined('COT_CODE') or die('Wrong URL');

function cot_load_structure_custom()
{
    global $db, $db_structure, $cfg, $cot_extrafields, $structure;
    $structure = [];
    $subcats = [];

    if (defined('COT_UPGRADE')) {
        $sql = $db->query("SELECT * FROM $db_structure ORDER BY structure_path ASC");
        $row['structure_area'] = 'page';
    } else {
        $sql = $db->query("SELECT * FROM $db_structure ORDER BY structure_area ASC, structure_path ASC");
    }

    /* == Hook: Part 1 ==*/
    $extp = cot_getextplugins('structure');
    /* ================= */

    $path = []; // code path tree
    $tpath = []; // title path tree
    $tpls = []; // tpl codes tree

    foreach ($sql->fetchAll() as $row) {
        $last_dot = mb_strrpos($row['structure_path'], '.');

        $row['structure_tpl'] = $row['structure_tpl'] ?: $row['structure_code'];

        if ($last_dot !== false) {
            $path1 = mb_substr($row['structure_path'], 0, $last_dot);
            $path[$row['structure_path']] = ($path[$path1] ?? '') . '.' . $row['structure_code'];

            $separator = (strip_tags($cfg['separator']) === $cfg['separator']) ? ' ' . $cfg['separator'] . ' ' : ' \ ';
            $tpath[$row['structure_path']] = ($tpath[$path1] ?? '') . $separator . $row['structure_title'];

            $parent_dot = mb_strrpos($path[$path1] ?? '', '.');
            $parent = ($parent_dot !== false) ? mb_substr($path[$path1], $parent_dot + 1) : $path[$path1];

            $subcats[$row['structure_area']][$parent][] = $row['structure_code'];
        } else {
            $path[$row['structure_path']] = $row['structure_code'];
            $tpath[$row['structure_path']] = $row['structure_title'];
            $parent = $row['structure_code']; // self
        }

        if ($row['structure_tpl'] === 'same_as_parent') {
            $row['structure_tpl'] = $tpls[$parent] ?? $row['structure_code'];
        }

        $tpls[$row['structure_code']] = $row['structure_tpl'];

        $structure[$row['structure_area']][$row['structure_code']] = [
            'path' => $path[$row['structure_path']],
            'tpath' => $tpath[$row['structure_path']],
            'rpath' => $row['structure_path'],
            'id' => $row['structure_id'],
            'tpl' => $row['structure_tpl'],
            'title' => $row['structure_title'],
            'desc' => $row['structure_desc'],
            'icon' => $row['structure_icon'],
            'locked' => $row['structure_locked'],
            'count' => $row['structure_count']
        ];

        if (!empty($cot_extrafields[$db_structure])) {
            foreach ($cot_extrafields[$db_structure] as $exfld) {
                $fieldName = 'structure_' . $exfld['field_name'];
                $structure[$row['structure_area']][$row['structure_code']][$exfld['field_name']] = $row[$fieldName] ?? null;
            }
        }

        /* == Hook: Part 2 ==*/
        foreach ($extp as $pl) {
            include $pl;
        }
        /* ================= */
    }

    foreach ($structure as $area => $area_structure) {
        foreach ($area_structure as $i => $x) {
            $structure[$area][$i]['subcats'] = $subcats[$area][$i] ?? [];
        }
    }
}

function forums_url_structure(&$args)
{
    global $cfg, $db, $structure, $db_forum_topics, $db_forum_posts;

    require_once cot_incfile('forums', 'module');

    $script = 'forums';
    $replacement = '';

    if (isset($args['m']) && $args['m'] === 'topics') {
        if (isset($args['s'])) {
            $d = isset($args['d']) ? (int) $args['d'] : 0;
            $replacement .= str_replace('.', '/', $structure['forums'][$args['s']]['path'] ?? '');

            if (isset($args['d'])) {
                $replacement .= '/page' . $d;
            }

            unset($args['d'], $args['s']);
        } else {
            $replacement .= $script;
        }
    } elseif (isset($args['m']) && $args['m'] === 'posts') {
        if (isset($args['q'])) {
            $q = (int) $args['q'];
            $d = isset($args['d']) ? (int) $args['d'] : 0;
            $s = $db->query("SELECT fp_cat FROM $db_forum_posts WHERE fp_topicid = $q")->fetchColumn();

            if ($s !== false) {
                $replacement .= str_replace('.', '/', $structure['forums'][$s]['path'] ?? '') . '/topic' . $q;
            } else {
                $replacement .= $script;
            }

            if (isset($args['d'])) {
                $replacement .= '/page' . $d;
            }

            unset($args['d'], $args['q'], $args['m']);
        } elseif (isset($args['id'])) {
            $id = (int) $args['id'];
            $s = $db->query("SELECT fp_cat FROM $db_forum_posts WHERE fp_id = $id")->fetchColumn();

            if ($s !== false) {
                $replacement .= str_replace('.', '/', $structure['forums'][$s]['path'] ?? '') . '/post' . $id;
            } else {
                $replacement .= $script;
            }

            unset($args['id'], $args['m']);
        } else {
            $replacement .= $script;
        }
    } else {
        $replacement .= $script;
    }

    return $replacement;
}



/**
 * Получает список пользовательских групп в виде HTML списка
 *
 * @param int $user_id ID пользователя
 * @return string HTML список с группами
 */
function cot_get_user_groups_html($user_id)
{
    global $db, $db_groups, $db_groups_users;

    // Извлекаем все группы, в которых состоит пользователь, и фильтруем по состоянию (gru_state = 0 для активных)
    $groups = $db->query("SELECT g.grp_name 
                          FROM $db_groups_users gu
                          JOIN $db_groups g ON gu.gru_groupid = g.grp_id
                          WHERE gu.gru_userid = ? AND gu.gru_state = 0
                          ORDER BY g.grp_name ASC", [$user_id])->fetchAll();

    // Если групп нет, возвращаем пустой список
    if (empty($groups)) {
        return '<ul class="uk-list"><li>Нет групп</li></ul>';
    }

    // Стартуем HTML список
    $html = '<ul class="uk-list">';

    // Добавляем группы в список
    foreach ($groups as $group) {
        $html .= '<li>' . htmlspecialchars($group['grp_name'], ENT_QUOTES, 'UTF-8') . '</li>';
    }

    // Закрываем HTML список
    $html .= '</ul>';

    return $html;
}

/**
 * Получает список пользовательских групп, в которых состоит конкретный пользователь, в виде строки через запятую
 *
 * @param int $user_id ID пользователя
 * @return string Строка с названиями групп, разделёнными запятой
 */
/**function cot_get_user_groups($user_id)
{
global $db, $db_groups, $db_groups_users;

// Извлекаем все группы, в которых состоит пользователь, и фильтруем по состоянию (gru_state = 0 для активных)
$groups = $db->query("SELECT g.grp_name
FROM $db_groups_users gu
JOIN $db_groups g ON gu.gru_groupid = g.grp_id
WHERE gu.gru_userid = ? AND gu.gru_state = 0
ORDER BY g.grp_name ASC", [$user_id])->fetchAll();

// Массив для хранения названий групп
$group_names = [];

// Добавляем названия групп в массив
foreach ($groups as $group) {
$group_names[] = $group['grp_name'];  // Название группы
}

// Возвращаем список групп через запятую
return implode(', ', $group_names);
}*/
/**
 * Renders user groups dropdown
 *
 * @param string $chosen Selected value
 * @param string $name Dropdown name
 * @param bool $add_empty Add empty option
 * @param mixed $attrs Additional attributes as an associative array or a string
 * @param string $custom_rc Custom resource string name
 * @return string
 */
function cot_selectbox_user_groups($chosen, $name, $add_empty = true, $attrs = '', $custom_rc = '')
{
    global $db, $db_groups;

    // Извлекаем все группы пользователей из таблицы groups, исключая те, у которых grp_hidden > 0
    $groups = $db->query("SELECT grp_id, grp_name FROM $db_groups WHERE grp_hidden = 0 ORDER BY grp_name ASC")->fetchAll();

    // Массивы для хранения кодов и названий групп
    $group_ids = [];
    $group_names = [];

    // Добавляем данные в массивы
    foreach ($groups as $group) {
        $group_ids[] = $group['grp_id'];  // ID группы
        $group_names[] = $group['grp_name'];  // Название группы
    }

    // Если нужно добавить пустую строку в начало списка
    if ($add_empty) {
        array_unshift($group_ids, '0');  // Добавляем "пустую" группу
        array_unshift($group_names, '---');  // Строка для пустого выбора
    }

    // Возвращаем HTML для выпадающего списка
    return cot_selectbox($chosen, $name, $group_ids, $group_names, false, $attrs, $custom_rc);
}



?>
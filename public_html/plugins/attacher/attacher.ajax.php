<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=ajax
[END_COT_EXT]
==================== */

/**
 * Attacher plugin: ajax
 *
 * @package Attacher
 * @author Roffun
 * @copyright Copyright (c) Roffun, 2018 - 2019 | https://github.com/Roffun
 * @license BSD License
 */
defined('COT_CODE') or die('Wrong URL.');

require_once cot_incfile('attacher', 'plug');

$area = cot_import('area', 'R', 'ALP');
$item = cot_import('item', 'R', 'INT');
$field = (string)cot_import('field', 'R', 'TXT');
$id = cot_import('id', 'G', 'INT');
$filename = cot_import('filename', 'R', 'TXT');
$response_code = 200;
$response = null;

if ($a === 'upload') {
    require_once cot_incfile('attacher', 'plug', 'upload');
} elseif ($a === 'display') {
    $formId = "{$area}_{$item}_{$field}";
    $t = new XTemplate(cot_tplfile('attacher.files', 'plug'));

    // Metadata
    $limits = att_get_limits();

    $tpl = new XTemplate(cot_tplfile('attacher.templates', 'plug'));
    $tpl->parse();

    $action = 'index.php?r=attacher&a=upload&area=' . $area . '&item=' . $item;
    if (!empty($field)) {
        $action .= '&field=' . $field;
    }

    $limit = isset($_GET['limit']) ? (int)$_GET['limit'] : -1;
    if ($limit == 0) {
        $limit = 100000000000000000;
    } elseif ($limit == -1) {
        $limit = !empty($cfg['plugin']['attacher']['items']) ? (int)$cfg['plugin']['attacher']['items'] : 100000000000000000;
    }

    $type = cot_import('type', 'G', 'TXT') ?? 'all';
    $type = str_replace(' ', '', $type);
    $type = empty($type) ? ['all'] : explode(',', $type);
    $type = json_encode($type);

    $params = [
        'area' => $area,
        'item' => $item,
        'field' => $field,
        'limit' => $limit,
        'type' => $type,
    ];
    $params = base64_encode(serialize($params));

    $t->assign([
        'ATTACHER_ID' => $formId,
        'ATTACHER_AREA' => $area,
        'ATTACHER_ITEM' => $item,
        'ATTACHER_FIELD' => $field,
        'ATTACHER_LIMIT' => $limit,
        'ATTACHER_PARAM' => $params,
        'ATTACHER_TEMPLATES' => $tpl->text(),
        'ATTACHER_CHUNK' => (int)($cfg['plugin']['attacher']['chunkSize'] ?? 0),
        'ATTACHER_EXTS' => preg_replace('#[^a-zA-Z0-9,]#', '', $cfg['plugin']['attacher']['exts'] ?? ''),
        'ATTACHER_ACCEPT' => preg_replace('#[^a-zA-Z0-9,*/-]#', '', $cfg['plugin']['attacher']['accept'] ?? ''),
        'ATTACHER_MAXSIZE' => $limits['file'],
        'ATTACHER_ACTION' => $action,
        'ATTACHER_X' => $sys['xk'] ?? '',
    ]);

    ob_clean();
    $t->parse();
    $t->out();
    exit;
} elseif ($a === 'dl' && $id > 0) {
    require_once cot_incfile('attacher', 'plug', 'download');
} elseif ($a === 'replace' && $id > 0 && $_SERVER['REQUEST_METHOD'] === 'POST') {
    if (att_update_file($id, 'file')) {
        $response = ['status' => 1];
    } else {
        $errors = cot_implode_messages();
        cot_clear_messages();
        att_ajax_die(403, ['message' => $errors]);
    }
} elseif ($a === 'update_title' && $_SERVER['REQUEST_METHOD'] === 'POST' && $id > 0) {
    global $db, $db_attacher, $usr, $sys;
    $row = $db->query("SELECT * FROM $db_attacher WHERE att_id = ?", [$id])->fetch();
    if (!$row) {
        att_ajax_die(404);
    }
    if (!$usr['isadmin'] && $row['att_user'] != $usr['id']) {
        att_ajax_die(403);
    }

    $title = cot_import('title', 'P', 'TXT');
    $status = 0;
    if ($title !== $row['att_title']) {
        $status = $db->update($db_attacher, ['att_title' => $title, 'att_lastmod' => date('Y-m-d H:i:s', $sys['now'] ?? time())], "att_id = ?", [$id]);
    }
    $response = ['written' => $status];
} elseif ($a === 'reorder' && $_SERVER['REQUEST_METHOD'] === 'POST') {
    global $db, $db_attacher, $usr;
    if (!$usr['isadmin'] && $db->query("SELECT COUNT(*) FROM $db_attacher WHERE att_area = ? AND att_item = ? AND att_user = ?", [$area, $item, $usr['id']])->fetchColumn() == 0) {
        att_ajax_die(403);
    }

    $orders = cot_import('orders', 'P', 'ARR') ?? [];
    foreach ($orders as $order => $id) {
        $db->update(
            $db_attacher,
            ['att_order' => $order],
            "att_id = ? AND att_area = ? AND att_item = ? AND att_field = ? AND att_order != ?",
            [(int)$id, $area, $item, $field, $order]
        );
    }
    $response = ['status' => 1];
} else {
    $response_code = 400;
}

ob_clean();
cot_sendheaders('application/json', att_ajax_get_status($response_code));
echo json_encode($response ?? ['message' => 'Invalid request']);
exit;

/**
 * Terminates script execution with HTTP status and JSON output
 *
 * @param int $code HTTP status code
 * @param array|string|null $message Output message or response
 */
function att_ajax_die($code, $message = null)
{
    $status = att_ajax_get_status($code);
    cot_sendheaders('application/json', $status);
    if (is_null($message)) {
        $message = substr($status, strpos($status, ' ') + 1);
    }
    echo json_encode(is_array($message) ? $message : ['message' => $message]);
    exit;
}

/**
 * Returns HTTP status line for a given code
 *
 * @param int $code HTTP response code
 * @return string HTTP status line
 */
function att_ajax_get_status($code)
{
    static $msg_status = [
        200 => '200 OK',
        201 => '201 Created',
        204 => '204 No Content',
        205 => '205 Reset Content',
        206 => '206 Partial Content',
        300 => '300 Multiple Choices',
        301 => '301 Moved Permanently',
        302 => '302 Found',
        303 => '303 See Other',
        304 => '304 Not Modified',
        307 => '307 Temporary Redirect',
        400 => '400 Bad Request',
        401 => '401 Authorization Required',
        403 => '403 Forbidden',
        404 => '404 Not Found',
        409 => '409 Conflict',
        411 => '411 Length Required',
        500 => '500 Internal Server Error',
        501 => '501 Not Implemented',
        503 => '503 Service Unavailable',
    ];
    return $msg_status[$code] ?? "$code Unknown";
}
?>
<?php
/**
 * Attacher plugin: upload files
 *
 * @package Attacher
 * @author Roffun
 * @copyright Copyright (c) Roffun, 2018 - 2019 | https://github.com/Roffun
 * @license BSD License
 */
defined('COT_CODE') or die('Wrong URL');

// Отключение вывода ошибок для продакшена
ini_set('display_errors', 0);
error_reporting(E_ALL);

// Очистка буфера вывода
ob_start();

header('Pragma: no-cache');
header('Cache-Control: no-store, no-cache, must-revalidate');
header('Content-Disposition: inline; filename="files.json"');
header('X-Content-Type-Options: nosniff');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: OPTIONS, HEAD, GET, POST, PUT, DELETE');
header('Access-Control-Allow-Headers: X-File-Name, X-File-Type, X-File-Size');

$area = cot_import('area', 'R', 'ALP');
$item = cot_import('item', 'R', 'INT');
$field = (string)cot_import('field', 'R', 'TXT');
$filename = cot_import('filename', 'R', 'TXT');

if (!empty($filename)) {
    $filename = mb_basename(stripslashes($filename));
}

switch ($_SERVER['REQUEST_METHOD']) {
    case 'OPTIONS':
        break;
    case 'HEAD':
    case 'GET':
        header('Content-type: application/json');
        ob_clean();
        echo json_encode(att_ajax_get($area, $item, $field, $filename) ?? ['success' => false, 'message' => 'No files found']);
        break;
    case 'PATCH':
    case 'PUT':
    case 'POST':
        if (isset($_REQUEST['_method']) && $_REQUEST['_method'] === 'DELETE') {
            $id = cot_import('id', 'R', 'INT');
            header('Content-type: application/json');
            ob_clean();
            echo json_encode(['success' => $id > 0 ? (bool)att_remove($id) : false]);
        } else {
            ob_clean();
            echo att_ajax_post();
        }
        break;
    default:
        header('HTTP/1.1 405 Method Not Allowed');
        ob_clean();
        echo json_encode(['success' => false, 'message' => 'Method not allowed']);
}
ob_end_flush();
exit;

/**
 * Fetches AJAX data for a given file or all files attached
 *
 * @param string $area Target module/plugin code
 * @param int $item Target item id
 * @param string $field If item has several attach fields
 * @param string|null $filename Name of the original file
 * @return array|null Data for JSON response
 */
function att_ajax_get($area, $item, $field = '', $filename = null)
{
    global $db, $db_attacher, $cfg, $sys, $usr;

    $whereUserId = $item == 0 ? "AND att_user = {$usr['id']}" : '';
    if ($item == 0) {
        $unikey = cot_import('unikey', 'G', 'TXT') ?? '';
        if ($unikey) {
            $db->update($db_attacher, ['att_unikey' => $unikey], "att_item = 0 AND att_user = {$usr['id']}");
        }
    }

    $params = [$area, (int)$item, $field];
    if (empty($filename)) {
        $query = "SELECT * FROM $db_attacher WHERE att_area = ? AND att_item = ? AND att_field = ? $whereUserId ORDER BY att_order";
    } else {
        $query = "SELECT * FROM $db_attacher WHERE att_area = ? AND att_item = ? AND att_field = ? AND att_filename = ? $whereUserId LIMIT 1";
        $params[] = $filename;
    }

    $res = $db->query($query, $params);
    if ($res->rowCount() == 0) {
        return null;
    }

    $files = [];
    foreach ($res->fetchAll() as $row) {
        $file = [
            'id' => $row['att_id'],
            'name' => $row['att_filename'],
            'size' => (int)$row['att_size'],
            'url' => $cfg['mainurl'] . '/' . att_path($area, $item, $row['att_id'], $row['att_ext']),
            'deleteType' => 'POST',
            'deleteUrl' => $cfg['mainurl'] . '/index.php?r=attacher&a=upload&id=' . $row['att_id'] . '&_method=DELETE&x=' . ($sys['xk'] ?? ''),
            'title' => htmlspecialchars($row['att_title']),
            'lastmod' => $row['att_lastmod'],
            'isImage' => (bool)$row['att_img'],
            'shortname' => ($cfg['plugin']['attacher']['prefix'] ?? 'att_') . $row['att_id'] . '.' . $row['att_ext']
        ];

        if ($row['att_img']) {
            $thumb = att_thumb($row['att_id']);
            $file['thumbnailUrl'] = $cfg['mainurl'] . '/' . $thumb . '?lastmod=' . $row['att_lastmod'];
            $file['thumbnail'] = $cfg['mainurl'] . '/' . $thumb;
            $file['thumbnailBigUrl'] = $cfg['mainurl'] . '/' . att_thumb($row['att_id'], $cfg['plugin']['attacher']['thumb_big_width'] ?? 800, $cfg['plugin']['attacher']['thumb_big_height'] ?? 600, $cfg['plugin']['attacher']['thumb_big_framing'] ?? 'fit') . '?lastmod=' . $row['att_lastmod'];
            $file['thumbnailBig'] = $cfg['mainurl'] . '/' . att_thumb($row['att_id'], $cfg['plugin']['attacher']['thumb_big_width'] ?? 800, $cfg['plugin']['attacher']['thumb_big_height'] ?? 600, $cfg['plugin']['attacher']['thumb_big_framing'] ?? 'fit');
        } else {
            $icon = att_icon(att_get_ext($row['att_filename']));
            $file['thumbnailUrl'] = $cfg['mainurl'] . '/' . $icon;
            $file['thumbnailBigUrl'] = $cfg['mainurl'] . '/' . $icon;
            $file['downloadUrl'] = $cfg['mainurl'] . '/index.php?r=attacher&a=dl&id=' . $row['att_id'];
        }

        foreach (cot_getextplugins('attacher.upload.row') as $pl) {
            include $pl;
        }

        $files[] = $file;
    }

    return empty($filename) ? ['files' => $files] : $files[0];
}

/**
 * Handles POST file uploads
 *
 * @return string JSON response
 */
function att_ajax_post()
{
    global $cfg, $L;

    $param_name = 'files';
    if (!isset($_FILES[$param_name]) || empty($_FILES[$param_name]['tmp_name'])) {
        header('HTTP/1.1 400 Bad Request');
        return json_encode(['files' => [], 'error' => $L['att_err_no_file'] ?? 'No file uploaded']);
    }

    $upload = $_FILES[$param_name];
    $info = [];

    $file_name = $_SERVER['HTTP_X_FILE_NAME'] ?? null;
    $content_range = $_SERVER['HTTP_CONTENT_RANGE'] ?? null;
    $size = $content_range ? (int)(preg_split('/[^0-9]+/', $content_range)[3] ?? 0) : null;

    if (is_array($upload['tmp_name'])) {
        foreach (array_keys($upload['tmp_name']) as $index) {
            $info[] = att_ajax_handle_file_upload(
                $upload['tmp_name'][$index],
                $file_name ?: $upload['name'][$index],
                $size ?: $upload['size'][$index],
                $upload['type'][$index],
                $upload['error'][$index],
                $index,
                $content_range
            );
        }
    } else {
        $info[] = att_ajax_handle_file_upload(
            $upload['tmp_name'] ?? null,
            $file_name ?: ($upload['name'] ?? null),
            $size ?: ($upload['size'] ?? ($_SERVER['CONTENT_LENGTH'] ?? 0)),
            $upload['type'] ?? ($_SERVER['CONTENT_TYPE'] ?? ''),
            $upload['error'] ?? null,
            null,
            $content_range
        );
    }

    header('Vary: Accept');
    header('Content-type: application/json');
    return json_encode(['files' => $info]);
}

/**
 * AJAX upload handler
 *
 * @return stdClass
 */
function att_ajax_handle_file_upload($uploaded_file, $name, $size, $type, $error, $index = null, $content_range = null)
{
    global $db, $db_attacher, $area, $item, $field, $cfg, $usr, $L, $sys;

    $file = new stdClass();
    $file->name = trim(mb_basename(stripslashes($name ?? '')));
    $file->size = (int)$size;
    $file->type = $type;
    $file->lastmod = date('Y-m-d H:i:s', $sys['now'] ?? time());

    if (!att_ajax_validate($uploaded_file, $file, $error)) {
        return $file;
    }

    $file_ext = att_get_ext($file->name);
    $is_img = in_array($file_ext, ['gif', 'jpg', 'jpeg', 'png', 'webp']);
    $file_path = ($cfg['plugin']['attacher']['folder'] ?? 'datas/attacher') . '/' . $area . '/' . $item . '/' . $file->name;

    $dir_path = dirname($file_path);
    if (!is_dir($dir_path) && !mkdir($dir_path, $cfg['dir_perms'] ?? 0755, true)) {
        $file->error = $L['att_err_dir'] ?? 'Failed to create directory';
        return $file;
    }

    $append_file = $content_range && is_file($uploaded_file) && $file->size > filesize($uploaded_file);
    if ($uploaded_file && is_uploaded_file($uploaded_file)) {
        if ($append_file) {
            file_put_contents($file_path, fopen($uploaded_file, 'r'), FILE_APPEND);
        } else {
            move_uploaded_file($uploaded_file, $file_path);
        }
    } else {
        file_put_contents($file_path, fopen('php://input', 'r'), $append_file ? FILE_APPEND : 0);
    }

    $file_size = is_file($file_path) ? filesize($file_path) : 0;
    if ($file_size !== $file->size) {
        @unlink($file_path);
        $file->error = 'abort';
        return $file;
    }

    if ($is_img && !cot_img_check_memory($file_path)) {
        @unlink($file_path);
        $file->error = $L['att_err_toobig'] ?? 'File too large';
        return $file;
    }

    $order = ((int)$db->query("SELECT MAX(att_order) FROM $db_attacher WHERE att_area = ? AND att_item = ?", [$area, $item])->fetchColumn()) + 1;
    $unikey = $item == 0 ? (cot_import('unikey', 'G', 'TXT') ?? '') : '';

    $affected = $db->insert($db_attacher, [
        'att_user' => $usr['id'],
        'att_area' => $area,
        'att_item' => $item,
        'att_field' => $field,
        'att_path' => '',
        'att_filename' => $file->name,
        'att_ext' => $file_ext,
        'att_img' => (int)$is_img,
        'att_size' => $file->size,
        'att_title' => '',
        'att_count' => 0,
        'att_order' => $order,
        'att_lastmod' => $file->lastmod,
        'att_unikey' => $unikey,
    ]);

    if ($affected !== 1) {
        @unlink($file_path);
        $file->error = $L['att_err_db'] ?? 'Database error';
        return $file;
    }

    $id = $db->lastInsertId();
    $tmpFilePath = $file_path;
    $file_path = att_path($area, $item, $id, $file_ext);
    rename($tmpFilePath, $file_path);

    if ($is_img && ($cfg['plugin']['attacher']['imageconvert'] ?? false) && !in_array($file_ext, ['jpg', 'jpeg'])) {
        $input_file = $file_path;
        $output_file = att_path($area, $item, $id, 'jpg');
        $input = in_array($file_ext, ['png', 'gif']) ? ($file_ext === 'png' ? imagecreatefrompng($input_file) : imagecreatefromgif($input_file)) : null;
        if ($input) {
            list($width, $height) = getimagesize($input_file);
            $output = imagecreatetruecolor($width, $height);
            $white = imagecolorallocate($output, 255, 255, 255);
            imagefilledrectangle($output, 0, 0, $width, $height, $white);
            imagecopy($output, $input, 0, 0, 0, 0, $width, $height);
            imagejpeg($output, $output_file);
            @unlink($input_file);
            imagedestroy($input);
            imagedestroy($output);
            $file_path = $output_file;
            $file_size = filesize($output_file);
            $file_ext = 'jpg';
            $file->name = pathinfo($file->name, PATHINFO_FILENAME) . '.jpg';
        }
    }

    if ($is_img && function_exists('exif_read_data')) {
        $exif = @exif_read_data($file_path);
        if ($exif && isset($exif['Orientation']) && in_array($exif['Orientation'], [3, 6, 8])) {
            list($width, $height) = getimagesize($file_path);
            $size_ok = function_exists('cot_img_check_memory') ? cot_img_check_memory($file_path, (int)ceil($width * $height * 4 / 1048576)) : true;
            if ($size_ok) {
                $newimage = in_array($file_ext, ['gif', 'png']) ? ($file_ext === 'gif' ? imagecreatefromgif($file_path) : imagecreatefrompng($file_path)) : imagecreatefromjpeg($file_path);
                if ($newimage) {
                    if ($file_ext === 'png') {
                        imagealphablending($newimage, false);
                        imagesavealpha($newimage, true);
                    }
                    switch ($exif['Orientation']) {
                        case 3:
                            $newimage = imagerotate($newimage, 180, 0);
                            break;
                        case 6:
                            $newimage = imagerotate($newimage, -90, 0);
                            break;
                        case 8:
                            $newimage = imagerotate($newimage, 90, 0);
                            break;
                    }
                    switch ($file_ext) {
                        case 'gif':
                            imagegif($newimage, $file_path);
                            break;
                        case 'png':
                            imagepng($newimage, $file_path);
                            break;
                        default:
                            imagejpeg($newimage, $file_path, 96);
                            break;
                    }
                    imagedestroy($newimage);
                }
            }
        }
    }

    if ($is_img && ($cfg['plugin']['attacher']['img_resize'] ?? false)) {
        list($width_orig, $height_orig) = getimagesize($file_path);
        if ($width_orig > ($cfg['plugin']['attacher']['img_maxwidht'] ?? 1920) || $height_orig > ($cfg['plugin']['attacher']['img_maxheight'] ?? 1080)) {
            $input_file = $file_path;
            $tmp_file = att_path($area, $item, $id, 'tmp.' . $file_ext);
            att_cot_thumb(
                $input_file,
                $tmp_file,
                $cfg['plugin']['attacher']['img_maxwidht'] ?? 1920,
                $cfg['plugin']['attacher']['img_maxheight'] ?? 1080,
                'auto',
                (int)($cfg['plugin']['attacher']['quality'] ?? 90)
            );
            @unlink($input_file);
            @rename($tmp_file, $input_file);
            $file->size = $file_size = filesize($input_file);
        }
    }

    $db->update($db_attacher, [
        'att_path' => $file_path,
        'att_size' => $file_size,
        'att_ext' => $file_ext,
        'att_filename' => $file->name,
        'att_lastmod' => $file->lastmod
    ], "att_id = ?", [$id]);

    $file->isImage = $is_img;
    $file->url = $cfg['mainurl'] . '/' . $file_path;
    $file->thumbnail = $is_img ? $cfg['mainurl'] . '/' . att_thumb($id) : $cfg['mainurl'] . '/' . att_icon($file_ext);
    $file->thumbnailUrl = $is_img ? $cfg['mainurl'] . '/' . att_thumb($id) . '?lastmod=' . $file->lastmod : $cfg['mainurl'] . '/' . att_icon($file_ext);
    $file->thumbnailBig = $is_img ? $cfg['mainurl'] . '/' . att_thumb($id, $cfg['plugin']['attacher']['thumb_big_width'] ?? 800, $cfg['plugin']['attacher']['thumb_big_height'] ?? 600, $cfg['plugin']['attacher']['thumb_big_framing'] ?? 'fit') : $cfg['mainurl'] . '/' . att_icon($file_ext);
    $file->thumbnailBigUrl = $is_img ? $cfg['mainurl'] . '/' . att_thumb($id, $cfg['plugin']['attacher']['thumb_big_width'] ?? 800, $cfg['plugin']['attacher']['thumb_big_height'] ?? 600, $cfg['plugin']['attacher']['thumb_big_framing'] ?? 'fit') . '?lastmod=' . $file->lastmod : $cfg['mainurl'] . '/' . att_icon($file_ext);
    $file->id = $id;
    $file->deleteUrl = $cfg['mainurl'] . '/index.php?r=attacher&a=upload&id=' . $id . '&_method=DELETE&x=' . ($sys['xk'] ?? '');
    $file->deleteType = 'POST';
    $file->shortname = ($cfg['plugin']['attacher']['prefix'] ?? 'att_') . $id . '.' . $file_ext;
    $file->downloadUrl = $cfg['mainurl'] . '/index.php?r=attacher&a=dl&id=' . $id;

    foreach (cot_getextplugins('attacher.upload.after_save') as $pl) {
        include $pl;
    }

    return $file;
}

/**
 * Validates uploaded file
 */
function att_ajax_validate($uploaded_file, $file, $error)
{
    global $area, $item, $field, $L, $cfg;

    if (!cot_auth('plug', 'attacher', 'W')) {
        $file->error = $L['att_err_perms'] ?? 'Permission denied';
        return false;
    }

    if ($error) {
        $file->error = $error;
        return false;
    }

    if (!$file->name) {
        $file->error = 'missingFileName';
        return false;
    }

    $file_ext = att_get_ext($file->name);
    if (!att_check_file($file_ext)) {
        $file->error = $L['att_err_type'] ?? 'Invalid file type';
        return false;
    }

    $file_size = $uploaded_file && is_uploaded_file($uploaded_file) ? filesize($uploaded_file) : ($_SERVER['CONTENT_LENGTH'] ?? 0);
    $limits = att_get_limits();
    if (($limits['file'] ?? 0) && ($file_size > $limits['file'] || $file->size > $limits['file'])) {
        $file->error = $L['att_err_toobig'] ?? 'File too large';
        return false;
    }

    if ($file_size < 1) {
        $file->error = 'minFileSize';
        return false;
    }

    $params = cot_import('param', 'R', 'HTM') ?? '';
    if (!empty($params)) {
        $params = unserialize(base64_decode($params)) ?: [];
        if (!empty($params['type'])) {
            $params['type'] = json_decode($params['type'], true) ?: ['all'];
            $is_img = in_array($file_ext, ['gif', 'jpg', 'jpeg', 'png', 'webp']);
            $typeOk = in_array('all', $params['type']) || (in_array('image', $params['type']) && $is_img);
            if (!$typeOk) {
                $file->error = $L['att_err_type'] ?? 'Invalid file type';
                return false;
            }
        }
        $params['limit'] = $params['limit'] ?? ($cfg['plugin']['attacher']['items'] ?? 0);
        $params['field'] = $params['field'] ?? $field;
        if ($params['limit'] > 0 && att_count_files($area, $item, $params['field']) >= $params['limit']) {
            $file->error = $L['att_err_count'] ?? 'Too many files';
            return false;
        }
    }

    return true;
}

/**
 * Workaround for splitting basename with UTF-8 multibyte chars
 */
function mb_basename($filepath, $suffix = null)
{
    $splited = preg_split('/\//', rtrim($filepath, '/ '));
    return substr(basename('X' . end($splited), $suffix), 1);
}

/**
 * Fix for overflowing signed 32-bit integers
 */
function fix_integer_overflow($size)
{
    if ($size < 0) {
        $size += 2.0 * (PHP_INT_MAX + 1);
    }
    return $size;
}
?>
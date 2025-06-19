<?php

/**
 * Payments module
 *
 * @package payments
 * @version 1.1.2
 * @author CMSWorks Team
 * @copyright Copyright (c) CMSWorks.ru
 * @license BSD
 */

use cot\modules\payments\dictionaries\PaymentDictionary;
use cot\modules\payments\Repositories\PaymentRepository;
use cot\modules\payments\Services\PaymentService;
use cot\modules\payments\Services\UserBalanceService;

defined('COT_CODE') or die('Wrong URL');

// Requirements
require_once cot_langfile('payments', 'module');

cot::$db->registerTable('payments');
cot::$db->registerTable('payments_outs');
cot::$db->registerTable('payments_transfers');
cot::$db->registerTable('payments_services');

/**
 * Удаление услуг с истекщим сроком действия (если установлен параметр service_expire)
 * 
 * @param string $area идентификатор услуги
 * @param int $userid id пользователя
 * @return bool
 */
function cot_payments_delete_expired_services($area, $userid = null)
{
	global $db_payments_services, $db, $sys;
	
	if($userid > 0) $query_string = "AND service_userid=".$userid;
		
	if ($db->delete($db_payments_services, "service_expire > 0 AND service_expire < " . $sys['now'] . $query_string))
		return true;
	else
		return false;
}

/**
 * Добавление / Изменение услуги для пользователя
 *
 * @param string $area идентификатор услуги
 * @param int $userid id пользователя
 * @param int $expire срок действия
 * @param string $action действие get /set
 * @return int
 */
function cot_payments_userservice($area, $userid, $expire, $action='set')
{
	global $db_payments_services, $db, $sys;
	
	$service_expire = $db->query("SELECT service_expire FROM $db_payments_services 
		WHERE service_userid=" . $userid . " AND service_area='".$area."' AND service_expire > " . $sys['now'])->fetchColumn();
	
	if($action == 'get')
	{
		return $service_expire;
	}
	
	$initialtime = ($service_expire > $sys['now']) ? $service_expire : $sys['now'];
	$res['service_expire'] = $initialtime + (int)$expire;	

	if((int)$service_expire > 0 && (int)$expire <= 0)
	{
		$db->delete($db_payments_services, "service_area=? AND service_userid=?", array($area, $userid));
		return false;
	}	
	elseif((int)$service_expire > 0)
	{
		$db->update($db_payments_services, $res, "service_area=? AND service_userid=?", array($area, $userid));
	}
	elseif((int)$expire > 0)
	{
		$res['service_area'] = $area;
		$res['service_userid'] = $userid;	
		$db->insert($db_payments_services, $res);
	}
	return $res['service_expire'];
}

/**
 * Создание платежки
 * @param string $area тип услуги, по-умолчанию пополнение счета
 * @param int $summ стоимость
 * @param array $options дополнительные параметры
 */
function cot_payments_create_order($area = 'balance', $summ = 0, $options = array())
{
	global $db_payments, $db_payments_balance, $db, $sys, $cfg, $usr;

	if(empty($summ))
	{
		cot_redirect(cot_url('payments', 'm=error&msg=3', '', true));
	}
	
	$payinfo['pay_userid'] = $usr['id'];
	$payinfo['pay_area'] = $area;
	$payinfo['pay_summ'] = $summ;
	$payinfo['pay_cdate'] = Cot::$sys['now'];
	$payinfo['pay_status'] = PaymentDictionary::STATUS_NEW;

	if (count($options) > 0) {
		foreach ($options as $i => $opt) {
			$payinfo['pay_' . $i] = $opt;
		}
	}

	// Создание платежного поручения для системы

	$db->insert($db_payments, $payinfo);
	$id = $db->lastInsertId();

	cot_redirect(cot_url('payments', 'm=billing&pid=' . $id, '', true));
}

/**
 * Получение информации о платежке
 * @deprecated
 * @see PaymentRepository::getById
 */
function cot_payments_payinfo($pid): ?array
{
    return PaymentRepository::getInstance()->getById($pid);
}

/**
 * Получение всех платежек по услуге с заданным статусом 
 */
function cot_payments_getallpays($area, $status = 'all')
{
	global $db_payments, $db;

	if ($status == 'all')
	{
		$allpays = $db->query("SELECT * FROM $db_payments WHERE pay_area='" . $area . "'")->fetchAll();
	}
	else
	{
		$allpays = $db->query("SELECT * FROM $db_payments WHERE pay_area='" . $area . "' AND pay_status='" . $status . "'")->fetchAll();
	}
	return ($allpays) ? $allpays : false;
}

/**
 * Обновление статуса платежки:
 * new - новая
 * process - в процессе оплаты
 * paid - оплачена
 * done - исполнено (услуга активирована)
 * @deprecated
 * @see \cot\modules\payments\Services\PaymentService::setStatus()
 */
function cot_payments_updatestatus($pid, $status)
{
	return PaymentService::getInstance()-setStatus($pid, $status);
}

/**
 * @deprecated
 * @see UserBalanceService::getByUserId
 */
function cot_payments_getuserbalance($userid): float
{
    return (float) UserBalanceService::getInstance()->getByUserId((int) $userid);
}

/**
 * @deprecated
 * @see UserBalanceService::updateForUser()
 */
function cot_payments_updateuserbalance($userid, $summ, $pid)
{
	return UserBalanceService::getInstance()
        ->updateForUser((int) $userid, (string) $summ, $pid ? (int) $pid : null);
}


function cot_generate_paytags($item_data, $tag_prefix = '')
{
	global $db, $cfg, $L, $Ls, $R, $db_payments, $usr, $sys;
	static $extp_first = null, $extp_main = null;

	if (is_null($extp_first)) {
		$extp_first = cot_getextplugins('paytags.first');
		$extp_main = cot_getextplugins('paytags.main');
	}

	/* === Hook === */
	foreach ($extp_first as $pl) {
		include $pl;
	}
	/* ===== */

	if (!is_array($item_data)) {
		$sql = $db->query("SELECT * FROM $db_payments WHERE pay_id = '" . (int)$item_data . "' LIMIT 1");
		$item_data = $sql->fetch();
	}

	if ($item_data['pay_id'] > 0 && !empty($item_data['pay_area'])) {
		$temp_array = [
			'ID' => $item_data['pay_id'],
			'USERID' => $item_data['pay_userid'],
			'CDATE' => $item_data['pay_cdate'],
			'PDATE' => $item_data['pay_pdate'],
			'ADATE' => $item_data['pay_adate'],
			'AREA' => $item_data['pay_area'],
			'CODE' => $item_data['pay_code'],
			'DESC' => $item_data['pay_desc'],
			'SUMM' => $item_data['pay_summ'],
			'TIME' => $item_data['pay_time'],
			'STATUS' => $item_data['pay_status'],
            'SYSTEM' => $item_data['pay_system'],
            'METHOD' => $item_data['pay_method'],
            'PS_PAYMENT_ID' => $item_data['pay_payment_id'],
            'PS_TRANSACTION' => $item_data['pay_transaction_id'],
		];

		/* === Hook === */
		foreach ($extp_main as $pl)
		{
			include $pl;
		}
		/* ===== */
	}

	$return_array = array();
	foreach ($temp_array as $key => $val)
	{
		$return_array[$tag_prefix . $key] = $val;
	}

	return $return_array;
}

?>
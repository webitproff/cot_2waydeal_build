<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=admin
[END_COT_EXT]
==================== */

/**
 * Payments module
 *
 * @package payments
 * @author CMSWorks Team, Kalnov Alexey
 * @copyright (c) CMSWorks.ru, Kalnov Alexey https://lily-software.com
 * @license BSD
 */

use cot\modules\payments\dictionaries\PaymentDictionary;

(defined('COT_CODE') && defined('COT_ADMIN')) or die('Wrong URL.');

[Cot::$usr['auth_read'], Cot::$usr['auth_write'], Cot::$usr['isadmin']] = cot_auth('payments', 'any');
cot_block(Cot::$usr['isadmin']);

$p = cot_import('p', 'G', 'ALP');
$sq = cot_import('sq', 'P', 'TXT');
$sq = $db->prep($sq);

$t = new XTemplate(cot_tplfile('payments.admin', 'module', true));

require_once cot_incfile('payments', 'module');

$adminPath[] = array(cot_url('admin', 'm=extensions'), $L['Extensions']);
$adminPath[] = array(cot_url('admin', 'm=extensions&a=details&mod='.$m), $cot_modules[$m]['title']);
$adminPath[] = array(cot_url('admin', 'm='.$m), $L['Administration']);
//$adminHelp = $L['adm_help_payments'];

if($p == 'payouts')
{
	
	if($a == 'done' && isset($id)){

		$payout = $db->query("SELECT * FROM $db_payments_outs
			WHERE out_status='process' AND out_id=".$id)->fetch();

		$rpayout['out_date'] = $sys['now'];
		$rpayout['out_status'] = 'done';

		$db->update($db_payments_outs, $rpayout, "out_id=".$id);
		cot_redirect(cot_url('admin', 'm=payments&p=payouts'));
	}

	if($a == 'cancel' && isset($id)){

		$payout = $db->query("SELECT * FROM $db_payments_outs AS o 
			LEFT JOIN $db_users AS u ON u.user_id=o.out_userid
			LEFT JOIN $db_payments AS p ON p.pay_code=o.out_id AND p.pay_area='payout'
			WHERE out_status='process' AND out_id=".$id)->fetch();

		$rpayout['out_date'] = $sys['now'];
		$rpayout['out_status'] = 'canceled';

		if($db->update($db_payments_outs, $rpayout, "out_id=".$id))
		{
			$payinfo['pay_userid'] = $payout['out_userid'];
			$payinfo['pay_area'] = 'balance';
			$payinfo['pay_code'] = $id;
			$payinfo['pay_summ'] = $payout['pay_summ'];
			$payinfo['pay_cdate'] = $sys['now'];
			$payinfo['pay_pdate'] = $sys['now'];
			$payinfo['pay_adate'] = $sys['now'];
			$payinfo['pay_status'] = 'done';
			$payinfo['pay_desc'] = $L['payments_balance_payout_cancel_desc'];

			$db->insert($db_payments, $payinfo);

			// Отправка уведомления об отмене заявки
			$subject = $L['payments_balance_payout_cancel_subject'];
			$body = sprintf($L['payments_balance_payout_cancel_body'], $payout['user_name'], $id);
			cot_mail($payout['user_email'], $subject, $body);
		}
		cot_redirect(cot_url('admin', 'm=payments&p=payouts'));
	}

	$where = array();

	if (!empty($sq))
	{
		$where['search'] = "(u.user_name LIKE '%".$db->prep($sq)."%' OR u.user_email LIKE '%".$db->prep($sq)."%')";
	}

	$where = array_filter($where);
	$where = ($where) ? 'WHERE ' . implode(' AND ', $where) : '';

	$payouts = $db->query("SELECT * FROM $db_payments_outs AS o
		LEFT JOIN $db_users AS u ON u.user_id=o.out_userid
		$where
		ORDER BY o.out_id DESC")->fetchAll();

	foreach($payouts as $payout){
		$t->assign(array(
			'PAYOUT_ROW_DATE' => $payout['out_date'],
			'PAYOUT_ROW_SUMM' => $payout['out_summ'],
			'PAYOUT_ROW_DETAILS' => $payout['out_details'],
			'PAYOUT_ROW_STATUS' => $payout['out_status'],
			'PAYOUT_ROW_LOCALSTATUS' => $L['payments_balance_payout_status_'.$payout['out_status']],
			'PAYOUT_ROW_DONE_URL' => cot_url('admin', 'm=payments&p=payouts&a=done&id='.$payout['out_id']),
			'PAYOUT_ROW_CANCEL_URL' => cot_url('admin', 'm=payments&p=payouts&a=cancel&id='.$payout['out_id']),
		));
		$t->assign(cot_generate_usertags($payout, 'PAYOUT_ROW_USER_'));
		$t->parse('MAIN.PAYOUTS.PAYOUT_ROW');
	}
	$t->parse('MAIN.PAYOUTS');
} elseif($p == 'transfers') {
	if ($a == 'done' && isset($id)) {
		$transfer = Cot::$db->query(
            'SELECT * FROM ' . Cot::$db->payments_transfers . ' AS t '
			//. 'LEFT JOIN $db_users AS u ON u.user_id=t.trn_from '
			. "WHERE trn_status='process' AND trn_id = :transferId",
            ['transferId' => $id]
        )->fetch();

		$rtransfer['trn_done'] = Cot::$sys['now'];
		$rtransfer['trn_status'] = 'done';

        $feeAmount = 0;
        if (!empty(Cot::$cfg['payments']['transfertax'])) {
            $feeAmount = $transfer['trn_summ'] * ((float) Cot::$cfg['payments']['transfertax']) / 100;
        }

        if (Cot::$cfg['payments']['transfertaxfromrecipient']) {
			$senderAmount = $transfer['trn_summ'];
			$recipientAmount = $transfer['trn_summ'] - $feeAmount;
		} else {
			$senderAmount = $transfer['trn_summ'] + $feeAmount;
			$recipientAmount = $transfer['trn_summ'];
		}

        $sender = cot_user_data((int) $transfer['trn_from']);
		$recipient = cot_user_data((int) $transfer['trn_to']);

        $senderName = cot_user_full_name($sender);
        if ($senderName !== $sender['user_name']) {
            $senderName .= ' (' . $sender['user_name'] . ')';
        }

        $recipientName = cot_user_full_name($recipient);
        if ($recipientName !== $recipient['user_name']) {
            $recipientName .= ' (' . $recipient['user_name'] . ')';
        }

		$payinfo['pay_userid'] = $transfer['trn_to'];
		$payinfo['pay_area'] = PaymentDictionary::PAYMENT_SOURCE_BALANCE;
		//$payinfo['pay_code'] = $pid;
		$payinfo['pay_summ'] = $recipientAmount;
		$payinfo['pay_cdate'] = Cot::$sys['now'];
		$payinfo['pay_pdate'] = Cot::$sys['now'];
		$payinfo['pay_adate'] = Cot::$sys['now'];
		$payinfo['pay_status'] = PaymentDictionary::STATUS_DONE;
		$payinfo['pay_desc'] = sprintf($L['payments_balance_transfer_desc'], $transfer['user_name'], $recipient['user_name'], $transfer['trn_comment']);

        Cot::$db->insert(Cot::$db->payments, $payinfo);
		$paymentId = Cot::$db->lastInsertId();
		
		if ($paymentId) {
			// Отправка уведомления получателю о переводе на его счет
			$subject = Cot::$L['payments_balance_transfer_recipient_subject'];
			$body = sprintf(
                Cot::$L['payments_balance_transfer_recipient_body'],
                $senderName,
                $recipientName,
                $transfer['trn_summ'],
                $feeAmount,
                $senderAmount,
                $recipientAmount,
                Cot::$cfg['payments']['valuta'],
                cot_date('datetime_medium', Cot::$sys['now']),
                $transfer['trn_comment']
            );
			cot_mail($recipient['user_email'], $subject, $body);

            Cot::$db->update($db_payments_transfers, $rtransfer, 'trn_id = ' . $id);

            /* === Hook === */
            foreach (cot_getextplugins('payments.balance.transfer.done') as $pl) {
                include $pl;
            }
            /* ===== */
		}

		cot_redirect(cot_url('admin', 'm=payments&p=transfers'));
	}

	if ($a === 'cancel' && isset($id)) {
		$transfer = $db->query(
            "SELECT * FROM $db_payments_transfers AS t
			LEFT JOIN $db_users AS u ON u.user_id=t.trn_from
			LEFT JOIN $db_payments AS p ON p.pay_code=t.trn_id AND p.pay_area='transfer'
			WHERE trn_id = ? AND trn_status = 'process'",
            $id
        )->fetch();

		$rtransfer['trn_done'] = $sys['now'];
		$rtransfer['trn_status'] = 'canceled';

		if($db->update($db_payments_transfers, $rtransfer, "trn_id=".$id))
		{
			$payinfo['pay_userid'] = $transfer['trn_from'];
			$payinfo['pay_area'] = 'balance';
			$payinfo['pay_code'] = $id;
			$payinfo['pay_summ'] = $transfer['pay_summ'];
			$payinfo['pay_cdate'] = $sys['now'];
			$payinfo['pay_pdate'] = $sys['now'];
			$payinfo['pay_adate'] = $sys['now'];
			$payinfo['pay_status'] = 'done';
			$payinfo['pay_desc'] = sprintf($L['payments_balance_transfer_cancel_desc'], $id);

			$db->insert($db_payments, $payinfo);

			// Отправка уведомления об отмене перевода
			$subject = $L['payments_balance_transfer_cancel_subject'];
			$body = sprintf($L['payments_balance_transfer_cancel_body'], $transfer['user_name'], $id);
			cot_mail($transfer['user_email'], $subject, $body);
		}
		cot_redirect(cot_url('admin', 'm=payments&p=payouts'));
	}

	$where = array();

	if (!empty($sq))
	{
		$where['search'] = "(u.user_name LIKE '%".$db->prep($sq)."%' OR u.user_email LIKE '%".$db->prep($sq)."%')";
	}

	$where = array_filter($where);
	$where = ($where) ? 'WHERE ' . implode(' AND ', $where) : '';

	$transfers = $db->query("SELECT * FROM $db_payments_transfers AS t
		LEFT JOIN $db_users AS u ON u.user_id=t.trn_from
		LEFT JOIN $db_payments AS p ON p.pay_code=t.trn_id AND p.pay_area='transfer'
		$where
		ORDER BY pay_cdate DESC")->fetchAll();

	if(count($transfers) > 0)
	{
		foreach ($transfers as $transfer)
		{
			$t->assign(array(
				'TRANSFER_ROW_ID' => $transfer['trn_id'],
				'TRANSFER_ROW_SUMM' => $transfer['trn_summ'],
				'TRANSFER_ROW_COMMENT' => $transfer['trn_comment'],
				'TRANSFER_ROW_DATE' => $transfer['trn_date'],
				'TRANSFER_ROW_DONE' => $transfer['trn_done'],
				'TRANSFER_ROW_STATUS' => $transfer['trn_status'],
				'TRANSFER_ROW_LOCALSTATUS' => $L['payments_balance_payout_status_'.$transfer['trn_status']],
				'TRANSFER_ROW_DONE_URL' => cot_url('admin', 'm=payments&p=transfers&a=done&id='.$transfer['trn_id']),
				'TRANSFER_ROW_CANCEL_URL' => cot_url('admin', 'm=payments&p=transfers&a=cancel&id='.$transfer['trn_id']),
			));
			$t->assign(cot_generate_usertags($transfer['trn_from'], 'TRANSFER_ROW_FROM_'));
			$t->assign(cot_generate_usertags($transfer['trn_to'], 'TRANSFER_ROW_FOR_'));
			$t->parse('MAIN.TRANSFERS.TRANSFER_ROW');
		}
	}
	$t->parse('MAIN.TRANSFERS');
} else {
	[$pn, $d, $d_url] = cot_import_pagenav('d', Cot::$cfg['maxrowsperpage']);
	$id = cot_import('id', 'G', 'INT');

	[$pg, $d, $durl] = cot_import_pagenav('d', Cot::$cfg['maxrowsperpage']);

    $paymentStatusesToShow = [
        PaymentDictionary::STATUS_PAID,
        PaymentDictionary::STATUS_DONE,
    ];

	$where['status'] = "pay_status IN ('" . implode("', '", $paymentStatusesToShow) . "')";
	$where['summ'] = 'pay_summ > 0';

	if (!empty($sq)) {
		$where['search'] = "(u.user_name LIKE '%".$db->prep($sq)."%' OR u.user_email LIKE '%".$db->prep($sq)."%')";
	}

	if (isset($id)) {
		$where['userid'] = 'pay_userid=' . $id;
		$urr = $db->query("SELECT * FROM $db_users WHERE user_id=" . (int)$id)->fetch();
		$t->assign(cot_generate_usertags($urr, 'USER_'));
	}	

	$where = array_filter($where);
	$where = ($where) ? 'WHERE ' . implode(' AND ', $where) : '';

	$pays = $db->query("SELECT * FROM $db_payments AS p
		LEFT JOIN $db_users AS u ON u.user_id=p.pay_userid
		$where 
		ORDER BY pay_pdate DESC, pay_id DESC LIMIT $d, " . $cfg['maxrowsperpage'])->fetchAll();

	$totalitems = $db->query("SELECT COUNT(*) FROM $db_payments AS p
		LEFT JOIN $db_users AS u ON u.user_id=p.pay_userid 
		$where")->fetchColumn();

	$pagenav = cot_pagenav('admin', 'm=payments&id='.$id.'&sq='.$sq, $d, $totalitems, $cfg['maxrowsperpage']);

    $t->assign(cot_generatePaginationTags($pagenav));

    if (isset(Cot::$cfg['legacyMode']) && Cot::$cfg['legacyMode']) {
        // @deprecated in 2.0.6
        $t->assign([
            'PAGENAV_PAGES' => $pagenav['main'],
            'PAGENAV_PREV' => $pagenav['prev'],
            'PAGENAV_NEXT' => $pagenav['next'],
        ]);
    }

    foreach($pays as $pay) {
		$t->assign(cot_generate_paytags($pay, 'PAY_ROW_'));
		
		if ($pay['pay_userid'] > 0) {
			$t->assign(cot_generate_usertags($pay, 'PAY_ROW_USER_'));
		} else {
			$t->assign([
				'PAY_ROW_USER_ID' => 0,
				'PAY_ROW_USER_NICKNAME' => Cot::$L['Guest'],
			]);
		}
		
		$t->parse('MAIN.PAYMENTS.PAY_ROW');	
	}
    $where_string = '';
	if (!empty($id)) {
		$where_string = 'AND pay_userid='.$id;
	}
	$inbalance = Cot::$db->query("SELECT SUM(pay_summ) as summ FROM $db_payments AS p
		WHERE pay_area='balance' AND pay_summ>0 $where_string AND pay_status='done'")->fetchColumn();

	$outbalance = Cot::$db->query("SELECT SUM(pay_summ) as summ FROM $db_payments AS p
		WHERE pay_area='balance' AND pay_summ<0 $where_string AND pay_status='done'")->fetchColumn();

	$credit = Cot::$db->query("SELECT SUM(pay_summ) as summ FROM $db_payments AS p
		WHERE pay_area!='balance' $where_string AND pay_status='done'")->fetchColumn();

	$t->assign([
		'INBALANCE'  => number_format((float)($inbalance ?? 0), 2, '.', ' '),
		'OUTBALANCE' => number_format(abs((float)($outbalance ?? 0)), 2, '.', ' '),
		'BALANCE'    => number_format((float)($inbalance ?? 0) - abs((float)($outbalance ?? 0)), 2, '.', ' '),
		'CREDIT'     => number_format((float)($credit ?? 0), 2, '.', ' '),
	]);


	$t->parse('MAIN.PAYMENTS');
}

$t->parse('MAIN');
$adminMain = $t->text('MAIN');

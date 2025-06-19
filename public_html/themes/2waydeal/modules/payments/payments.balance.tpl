<!-- BEGIN: MAIN -->
<div class="border-bottom border-secondary py-3 px-3">
  <nav aria-label="breadcrumb">
    <div class="ps-container-breadcrumb">
      <ol class="breadcrumb d-flex mb-0">
        <li class="breadcrumb-item">
          <a href="{PHP.cfg.mainurl}">{PHP.L.Home}</a>
        </li>
        <li class="breadcrumb-item active" aria-current="page">
          {PHP.L.payments_mybalance}
        </li>
      </ol>
    </div>
  </nav>
</div>

  <div class="min-vh-50 px-2 px-md-3 py-4">
    <!-- IF {PHP.cfg.payments.balance_enabled} -->
    <h4>{PHP.L.payments_balance}: {BALANCE_SUMM|number_format($this, '2', '.', ' ')} {PHP.cfg.payments.valuta}</h4>
    <!-- ENDIF -->

    {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
    <div class="row">
      <div class="col-12 col-md-4 mx-auto mb-4">
        <div class="card mt-4 mb-4">
          <div class="card-header bg-warning text-dark">
            <h2 class="h5 mb-0">{PHP.L.payments_mybalance}</h2>
          </div>
          <div class="card-body">
            <ul class="list-group list-group-flush">
              <li class="list-group-item bg-transparent">
                <a href="{BALANCE_HISTORY_URL}">{PHP.L.payments_history}</a>
              </li>
              <!-- IF {PHP.cfg.payments.balance_enabled} -->
              <li class="list-group-item bg-transparent">
                <a <!-- IF {PHP.n} == 'billing' --> class="active"<!-- ENDIF --> href="{BALANCE_BILLING_URL}">{PHP.L.payments_paytobalance}</a>
              </li>
              <!-- IF {PHP.cfg.payments.payouts_enabled} -->
              <li class="list-group-item bg-transparent">
                <a <!-- IF {PHP.n} == 'payouts' --> class="active"<!-- ENDIF --> href="{BALANCE_PAYOUT_URL}">{PHP.L.payments_payouts}</a>
              </li>
              <!-- ENDIF -->
              <!-- IF {PHP.cfg.payments.transfers_enabled} -->
              <li class="list-group-item bg-transparent">
                <a <!-- IF {PHP.n} == 'transfers' --> class="active"<!-- ENDIF --> href="{BALANCE_TRANSFER_URL}">{PHP.L.payments_transfer}</a>
              </li>
              <!-- ENDIF -->
              <!-- ENDIF -->
            </ul>
          </div>
        </div>
      </div>
      <div class="col-12 col-md-8 mx-auto mb-4">
        <!-- BEGIN: BILLINGFORM -->
        {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
        <div class="card mt-4 mb-4">
          <div class="card-header bg-dark-subtle text-dark">
            <h2 class="h5 mb-0">{PHP.L.payments_balance_billing_desc}</h2>
          </div>
          <div class="card-body">
            <form action="{BALANCE_FORM_ACTION_URL}" method="post">
              <div class="mb-3">
                <label class="form-label">{PHP.L.payments_balance_billing_summ}:</label>
                <div class="input-group">
                  {BALANCE_FORM_SUMM}
                  <span class="input-group-text">{PHP.cfg.payments.valuta}</span>
                </div>
              </div>
              <div class="mb-3">
                <label class="form-label"></label>
                <button class="btn btn-success">{PHP.L.payments_paytobalance}</button>
              </div>
            </form>
          </div>
        </div>
        <!-- END: BILLINGFORM -->

        <!-- BEGIN: PAYOUTS -->
        <div class="card mt-4 mb-4">
          <div class="card-header bg-success-subtle text-success-emphasis">
            <h2 class="h5 mb-0">{PHP.L.payments_balance_payout_list}</h2>
          </div>
          <div class="card-body">
            <!-- IF {PHP.payouts|count($this)} > 0 -->
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>ID</th>
                  <th class="text-right">{PHP.L.payments_summ}</th>
                  <th class="text-right">{PHP.L.Date}</th>
                  <th class="text-right">{PHP.L.Done}</th>
                  <th class="text-right">{PHP.L.Status}</th>
                </tr>
              </thead>
              <!-- BEGIN: PAYOUT_ROW -->
              <tr>
                <td>{PAYOUT_ROW_ID}</td>
                <td class="text-right">{PAYOUT_ROW_SUMM|number_format($this, '2', '.', ' ')} {PHP.cfg.payments.valuta}</td>
                <td class="text-right">{PAYOUT_ROW_CDATE|cot_date('d.m.Y H:i', $this)}</td>
                <td class="text-right">
                  <!-- IF {PAYOUT_ROW_DATE} > 0 -->{PAYOUT_ROW_DATE|cot_date('d.m.Y H:i', $this)}
                  <!-- ELSE -->{PHP.L.No}
                  <!-- ENDIF -->
                </td>
                <td class="text-right">{PAYOUT_ROW_LOCALSTATUS}</td>
              </tr>
              <!-- END: PAYOUT_ROW -->
            </table>
            <!-- ELSE -->
            <div class="alert alert-info">{PHP.L.payments_history_empty}</div>
            <!-- ENDIF -->
          </div>
        </div>
        <a class="float-end btn btn-success" href="{PHP|cot_url('payments', 'm=balance&n=payouts&a=add')}">{PHP.L.payments_balance_payouts_button}</a>
        <!-- END: PAYOUTS -->

        <!-- BEGIN: PAYOUTFORM -->
        {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
        <div class="card mt-4 mb-4">
          <div class="card-header bg-success text-white">
            <h2 class="h5 mb-0">{PHP.L.payments_balance_payout_title}</h2>
          </div>
          <div class="card-body">
            <form action="{PAYOUT_FORM_ACTION_URL}" method="post" id="payoutform">
              <div class="mb-3">
                <label class="form-label">{PHP.L.payments_balance_payout_details}:</label>
                <div>{PAYOUT_FORM_DETAILS}</div>
              </div>
              <div class="mb-3">
                <label class="form-label">{PHP.L.payments_balance_payout_summ}:</label>
                <div class="input-group">
                  {PAYOUT_FORM_SUMM}
                  <span class="input-group-text">{PHP.cfg.payments.valuta}</span>
                </div>
              </div>
              <!-- IF {PHP.cfg.payments.payouttax} > 0 -->
              <div class="mb-3">
                <label class="form-label">{PHP.L.payments_balance_payout_tax} ({PHP.cfg.payments.payouttax}%):</label>
                <div class="form-text">
                  <span id="payout_tax">{PAYOUT_FORM_TAX}</span> {PHP.cfg.payments.valuta}
                </div>
              </div>
              <div class="mb-3">
                <label class="form-label">{PHP.L.payments_balance_payout_total}:</label>
                <div class="form-text">
                  <span id="payout_total">{PAYOUT_FORM_TOTAL}</span> {PHP.cfg.payments.valuta}
                </div>
              </div>
              <!-- ENDIF -->
              <div class="mb-3">
                <label class="form-label"></label>
                <button class="btn btn-success">{PHP.L.Submit}</button></td>
              </div>
            </form>
          </div>
        </div>
        <!-- IF {PHP.cfg.payments.payouttax} > 0 -->
        <script>
          $().ready(function() {
            $('#payoutform').bind('change click keyup', function() {
              var summ = parseFloat($("input[name='summ']").val());
              var tax = parseFloat({PHP.cfg.payments.payouttax});

              if (isNaN(summ)) summ = 0;

              var taxsumm = (summ * tax) / 100;
              var totalsumm = summ + taxsumm;

              $('#payout_tax').html(taxsumm);
              $('#payout_total').html(totalsumm);
            });
          });
        </script>
        <!-- ENDIF -->
        <!-- END: PAYOUTFORM -->

        <!-- BEGIN: TRANSFERS -->
        <div class="card mt-4 mb-4">
          <div class="card-header bg-danger-subtle text-danger-emphasis">
            <h2 class="h5 mb-0">{PHP.L.payments_balance_transfers_list}</h2>
          </div>
          <div class="card-body">
            <!-- IF {PHP.transfers|count($this)} > 0 -->
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>ID</th>
                  <th>{PHP.L.payments_balance_transfers_for}</th>
                  <th class="text-right">{PHP.L.payments_summ}</th>
                  <th>{PHP.L.Description}</th>
                  <th class="text-right">{PHP.L.Date}</th>
                  <th class="text-right">{PHP.L.Done}</th>
                  <th class="text-right">{PHP.L.Status}</th>
                </tr>
              </thead>
              <!-- BEGIN: TRANSFER_ROW -->
              <tr>
                <td>{TRANSFER_ROW_ID}</td>
                <td>
                  <a href="{TRANSFER_ROW_FOR_DETAILSLINK}">{TRANSFER_ROW_FOR_FULL_NAME}</a>
                </td>
                <td class="text-right">{TRANSFER_ROW_SUMM|number_format($this, '2', '.', ' ')} {PHP.cfg.payments.valuta}</td>
                <td>{TRANSFER_ROW_COMMENT}</td>
                <td class="text-right">{TRANSFER_ROW_DATE|cot_date('d.m.Y H:i', $this)}</td>
                <td class="text-right">
                  <!-- IF {TRANSFER_ROW_DONE} > 0 -->{TRANSFER_ROW_DONE|cot_date('d.m.Y H:i', $this)}
                  <!-- ELSE -->{PHP.L.No}
                  <!-- ENDIF -->
                </td>
                <td class="text-right">{TRANSFER_ROW_LOCALSTATUS}</td>
              </tr>
              <!-- END: TRANSFER_ROW -->
            </table>
            <!-- ELSE -->
            <div class="alert alert-info">{PHP.L.payments_history_empty}</div>
            <!-- ENDIF -->
          </div>
        </div>
        <a class="float-end btn btn-success" href="{PHP|cot_url('payments', 'm=balance&n=transfers&a=add')}">{PHP.L.payments_balance_transfers_button}</a>
        <!-- END: TRANSFERS -->

        <!-- BEGIN: TRANSFERFORM -->
        {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
        <div class="card mt-4 mb-4">
          <div class="card-header bg-danger text-white">
            <h2 class="h5 mb-0">{PHP.L.payments_transfer}</h2>
          </div>
          <div class="card-body">
            <form action="{TRANSFER_FORM_ACTION_URL}" method="post" id="transferform">
              <div class="mb-3">
                <label class="form-label">{PHP.L.payments_balance_transfer_comment}:</label>
                <div>{TRANSFER_FORM_COMMENT}</div>
              </div>
              <div class="mb-3">
                <label class="form-label">{PHP.L.payments_balance_transfer_username}:</label>
                <div>{TRANSFER_FORM_USERNAME}</div>
              </div>
              <div class="mb-3">
                <label class="form-label">{PHP.L.payments_balance_transfer_summ}:</label>
                <div class="input-group">
                  {TRANSFER_FORM_SUMM}
                  <span class="input-group-text">{PHP.cfg.payments.valuta}</span>
                </div>
              </div>
              <!-- IF {PHP.cfg.payments.transfertax} > 0 AND !{PHP.cfg.payments.transfertaxfromrecipient} -->
              <div class="mb-3">
                <label class="form-label">{PHP.L.payments_balance_transfer_tax} ({PHP.cfg.payments.transfertax}%):</label>
                <div class="form-text">
                  <span id="transfer_tax">{TRANSFER_FORM_TAX}</span> {PHP.cfg.payments.valuta}
                </div>
              </div>
              <div class="mb-3">
                <label class="form-label">{PHP.L.payments_balance_transfer_total}:</label>
                <div class="form-text">
                  <span id="transfer_total">{TRANSFER_FORM_TOTAL}</span> {PHP.cfg.payments.valuta}
                  <script>
                    $().ready(function() {
                      $('#transferform').bind('change click keyup', function() {
                        var summ = parseFloat($("input[name='summ']").val());
                        var tax = parseFloat({PHP.cfg.payments.transfertax});

                        if (isNaN(summ)) summ = 0;

                        var taxsumm = (summ * tax) / 100;
                        var totalsumm = summ + taxsumm;

                        $('#transfer_tax').html(taxsumm);
                        $('#transfer_total').html(totalsumm);
                      });
                    });
                  </script>
                </div>
              </div>
              <!-- ENDIF -->
              <div class="mb-3">
                <label class="form-label"></label>
                <button class="btn btn-success">{PHP.L.Submit}</button>
              </div>
            </form>
          </div>
        </div>
        <!-- END: TRANSFERFORM -->

        <!-- BEGIN: HISTORY -->
        <div class="card mt-4 mb-4">
          <div class="card-header bg-primary-subtle text-primary-emphasis">
            <h2 class="h5 mb-0">{PHP.L.payments_history}</h2>
          </div>
          <div class="card-body">
            <!-- IF {HISTORY_COUNT} > 0 -->
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>#</th>
                  <th>-/+</th>
                  <th>{PHP.L.Date}</th>
                  <th>{PHP.L.Description}</th>
                  <th class="text-right">{PHP.L.payments_summ}</th>
                </tr>
              </thead>
              <tbody>
                <!-- BEGIN: HIST_ROW -->
                <tr>
                  <td>{HIST_ROW_ID}</td>
                  <td>
                    <!-- IF {HIST_ROW_AREA} == 'balance' -->+
                    <!-- ELSE -->-
                    <!-- ENDIF -->
                  </td>
                  <td>{HIST_ROW_PDATE|cot_date('d.m.Y H:i', $this)}</td>
                  <td>{HIST_ROW_DESC}</td>
                  <td class="text-right">{HIST_ROW_SUMM|number_format($this, '2', '.', ' ')} {PHP.cfg.payments.valuta}</td>
                </tr>
                <!-- END: HIST_ROW -->
              </tbody>
            </table>
            <div class="pagination">{PAGENAV_PREV}{PAGENAV_PAGES}{PAGENAV_NEXT}</div>
            <!-- ELSE -->
            <div class="alert alert-info">{PHP.L.payments_history_empty}</div>
            <!-- ENDIF -->
          </div>
        </div>
        <!-- END: HISTORY -->
      </div>
    </div>
  </div>

<!-- END: MAIN -->
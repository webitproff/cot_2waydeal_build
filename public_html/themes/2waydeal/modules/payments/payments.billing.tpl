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
    {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}

    <!-- BEGIN: BILLINGS -->
    <h4>{PHP.L.payments_billing_title}:</h4>
    <!-- BEGIN: BILL_ROW -->
    <div class="d-flex align-items-center mb-3">
      <div class="me-3">
        <img src="<!-- IF {BILL_ROW_ICON} -->{BILL_ROW_ICON}<!-- ELSE -->modules/payments/images/billing_blank.png<!-- ENDIF -->" />
      </div>
      <div class="flex-grow-1">
        <h5><a href="{BILL_ROW_URL}">{BILL_ROW_TITLE}</a></h5>
      </div>
    </div>
    <!-- END: BILL_ROW -->
    <!-- END: BILLINGS -->

    <!-- BEGIN: EMPTYBILLINGS -->
    <h4>{PHP.L.payments_billing_title}:</h4>
    <div class="alert alert-danger">{PHP.L.payments_emptybillings}</div>
    <!-- END: EMPTYBILLINGS -->
  </div>

<!-- END: MAIN -->
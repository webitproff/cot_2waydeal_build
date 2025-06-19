<!-- BEGIN: MAIN -->
<div class="px-2 px-md-3 py-2 border-bottom border-secondary">
    <div class="p-2">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb mb-0 small flex-nowrap overflow-x-auto">{PHP.L.paypro_buypro_title}</ol>
        </nav>
    </div>
</div>
<div class="min-vh-50 px-2 px-md-3 py-5">
    <div class="row justify-content-center">
        <div class="col-12 col-lg-10">
            <form action="{PRO_FORM_ACTION}" method="post" class="needs-validation" novalidate>
                <div class="card shadow-sm">
                    <div class="card-header">
                        <h5 class="mb-0">{PHP.L.paypro_buypro_title}</h5>
                    </div>
                    <div class="card-body">
                        {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
                        <div class="mb-3 row">
                            <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.paypro_costofmonth}</label>
                            <div class="col-sm-9">
                                {PRO_FORM_COST} {PHP.cfg.plugin.paypro.cost} {PHP.cfg.payments.valuta}
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.paypro_error_months}</label>
                            <div class="col-sm-9">
                                {PRO_FORM_PERIOD} {PHP.L.paypro_month}
                            </div>
                        </div>
                        <!-- IF {PRO_FORM_USER_NAME} -->
                        <div class="mb-3 row">
                            <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.paypro_giftfor}</label>
                            <div class="col-sm-9">
                                {PRO_FORM_USER_NAME}
                            </div>
                        </div>
                        <!-- ENDIF -->
                    </div>
                    <div class="card-footer text-end">
                        <button type="submit" class="btn btn-outline-primary">
                            <i class="fa-solid fa-cart-shopping me-1"></i> {PHP.L.paypro_buy}
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- END: MAIN -->
<!-- BEGIN: MAIN -->
<div class="px-2 px-md-3 py-5">
    <div class="row justify-content-center">
        <div class="col-12 col-lg-10">
            <ul class="list-group list-group-flush mb-4">
                <!-- BEGIN: PRO_ROW -->
				<li class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-md-4">
                            <a href="{PRO_ROW_USER_DETAILSLINK}">{PRO_ROW_USER_NAME}</a>
                        </div>
                        <div class="col-md-4">
                            <small class="text-muted">{PHP.L.paypro_expire}: {PRO_ROW_EXPIRE|cot_date('d.m.Y', $this)}</small>
                        </div>
                        <div class="col-md-4 text-md-end">
                            <a href="{PRO_ROW_USER_ID|cot_url('admin', 'm=other&p=paypro&a=delete&id='$this)}" class="text-danger">{PHP.L.Delete}</a>
                        </div>
                    </div>
                </li>
                <!-- END: PRO_ROW -->
            </ul>

            <div class="card shadow-sm">
                <div class="card-header">
                    <h5 class="mb-0">{PHP.L.paypro_addproacc}</h5>
                </div>
                <div class="card-body">
                    {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
                    <form action="{PRO_FORM_ACTION_URL}" method="post" class="needs-validation" novalidate>
                        <div class="mb-3 row">
                            <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.Username}</label>
                            <div class="col-sm-9">
                                <div class="row g-2">
                                    <div class="col-sm-6">
                                        {PRO_FORM_SELECTUSER}
                                    </div>
                                    <div class="col-sm-6">
                                        {PRO_FORM_PERIOD} {PHP.L.paypro_month}
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="text-end">
                            <button type="submit" class="btn btn-outline-primary">
                                <i class="fa-solid fa-plus me-1"></i> {PHP.L.Add}
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END: MAIN -->
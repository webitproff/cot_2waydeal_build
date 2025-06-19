<!-- BEGIN: MAIN -->
    <!-- BEGIN: BEFORE_AJAX -->
        <div id="ajaxBlock">
    <!-- END: BEFORE_AJAX -->
        <div class="border-bottom border-secondary py-3 px-3">
            <nav aria-label="breadcrumb">
                <div class="ps-container-breadcrumb">
                    <ol class="breadcrumb d-flex mb-0">
                        {PMSEND_TITLE}
                    </ol>
                </div>
            </nav>
        </div>
        <div class="min-vh-50 px-2 px-md-3 py-4">
            <div class="row g-4">
                <div class="col-md-3">
                    <div class="card">
                        <div class="card-body">
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">{PMSEND_INBOX}</li>
                                <li class="list-group-item">{PMSEND_SENTBOX}</li>
                                <li class="list-group-item">{PMSEND_SENDNEWPM}</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="card">
                        <div class="card-body">
                            <p class="small text-muted mb-4">{PHP.L.pmsend_subtitle}</p>
                            {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
                            <form action="{PMSEND_FORM_SEND}" method="post" name="newmessage" id="mewmessage" class="needs-validation" novalidate>
                                <div class="row g-3">
                                    <!-- BEGIN: PMSEND_USERLIST -->
                                        <div class="col-12">
                                            <label for="toUser" class="form-label fw-semibold">{PHP.L.Recipients}:</label>
                                            <div class="input-group">
                                                {PMSEND_FORM_TOUSER}
                                            </div>
                                            <small class="form-text text-muted">{PHP.L.pm_sendmessagetohint}</small>
                                        </div>
                                    <!-- END: PMSEND_USERLIST -->
                                    <div class="col-12">
                                        <label for="pmTitle" class="form-label fw-semibold">{PHP.L.Subject}:</label>
                                        <div class="input-group">
                                            {PMSEND_FORM_TITLE}
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <label for="pmText" class="form-label fw-semibold d-none">{PHP.L.Message}:</label>
                                        <div class="input-group has-validation">
                                            {PMSEND_FORM_TEXT}
                                        </div>
                                    </div>
                                    <!-- IF {PHP|cot_module_active('pfs')} -->
                                        <div class="col-12">
                                            <label for="pmFiles" class="form-label fw-semibold">{PHP.L.Files}:</label>
                                            <div class="d-flex flex-wrap gap-2">
                                                {PMSEND_FORM_PFS}
                                                {PMSEND_FORM_SFS}
                                            </div>
                                        </div>
                                    <!-- ENDIF -->
                                    <div class="col-12">
                                        <div class="form-check mb-3">
                                            {PMSEND_FORM_NOT_TO_SENTBOX}
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                                            <button type="submit" class="btn btn-primary">{PHP.L.Submit}</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <!-- This is the name of the template for informing the administrator -->
    <!-- IF {PHP.usr.maingrp} == 5 -->
        <div class="container-xl py-5">
            <div class="alert alert-warning" role="alert">
                <strong>{PHP.usr.name}</strong>, This is the HTML template
                <code>pm.send.tpl</code>
            </div>
        </div>
    <!-- ENDIF -->
    <!-- BEGIN: AFTER_AJAX -->
        </div>
    <!-- END: AFTER_AJAX -->
<!-- END: MAIN -->
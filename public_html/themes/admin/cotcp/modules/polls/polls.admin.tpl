<!-- BEGIN: MAIN -->
<div class="mb-3">
    <div class="row g-2">
        <div class="col-12 col-lg-3">
            <a href="{ADMIN_POLLS_CONF_URL}" class="btn btn-outline-secondary w-100">
                <i class="fa-solid fa-gear me-1"></i>{PHP.L.Configuration}
            </a>
        </div>
    </div>
</div>

{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
<hr>

<div class="card filter-section p-3 mb-4" style="border: 5px var(--bs-dark-border-subtle) solid">
    <div class="row g-2 align-items-end">
        <div class="col-12 col-lg-3 d-flex flex-column h-100">
            <div class="flex-grow-1">
                <select name="jumpbox" size="1" onchange="redirect(this)" class="form-select">
                    <!-- BEGIN: POLLS_ROW_FILTER -->
                    <option value="{ADMIN_POLLS_ROW_FILTER_VALUE}"{ADMIN_POLLS_ROW_FILTER_CHECKED}>{ADMIN_POLLS_ROW_FILTER_NAME}</option>
                    <!-- END: POLLS_ROW_FILTER -->
                </select>
            </div>
        </div>
        <div class="col-12 col-lg-9"></div>
    </div>
</div>

<div class="mb-3">
    <div class="list-group list-group-flush">
        <div class="list-group-item list-group-item-dark">
            <div class="row align-items-center fw-bold">
                <div class="col-12 col-md-1">{PHP.L.Date}</div>
                <div class="col-12 col-md-2">{PHP.L.Type}</div>
                <div class="col-12 col-md-4">{PHP.L.Poll} {PHP.L.adm_clicktoedit}</div>
                <div class="col-12 col-md-1">{PHP.L.Votes}</div>
                <div class="col-12 col-md-4">{PHP.L.Action}</div>
            </div>
        </div>
        <!-- BEGIN: POLLS_ROW -->
        <div class="list-group-item list-group-item-action">
            <div class="row align-items-center">
                <div class="col-12 col-md-1">{ADMIN_POLLS_ROW_POLL_CREATIONDATE}</div>
                <div class="col-12 col-md-2">{ADMIN_POLLS_ROW_POLL_TYPE}</div>
                <div class="col-12 col-md-4">{ADMIN_POLLS_ROW_POLL_LOCKED}<a href="{ADMIN_POLLS_ROW_POLL_URL}" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-title="{PHP.L.Edit}">{ADMIN_POLLS_ROW_POLL_TEXT}</a></div>
                <div class="col-12 col-md-1">{ADMIN_POLLS_ROW_POLL_TOTALVOTES}</div>
                <div class="col-12 col-md-4">
                    <div class="d-flex flex-wrap gap-1">
                        <!-- IF !{ADMIN_POLLS_ROW_POLL_LOCKED} -->
                        <a href="{ADMIN_POLLS_ROW_POLL_URL_LCK}" class="btn btn-sm btn-outline-secondary">
                            <i class="fa-solid fa-lock me-1"></i>{PHP.L.Lock}
                        </a>
                        <!-- ELSE -->
                        <a href="{ADMIN_POLLS_ROW_POLL_URL_LCK}" class="btn btn-sm btn-outline-secondary">
                            <i class="fa-solid fa-unlock me-1"></i>{PHP.L.Unlock}
                        </a>
                        <!-- ENDIF -->
                        <a href="{ADMIN_POLLS_ROW_POLL_DELETE_CONFIRM_URL}" class="btn btn-sm btn-outline-danger confirmLink">
                            <i class="fa-solid fa-trash me-1"></i>{PHP.L.Delete}
                        </a>
                        <a href="{ADMIN_POLLS_ROW_POLL_URL_RES}" class="btn btn-sm btn-outline-secondary">
                            <i class="fa-solid fa-rotate-left me-1"></i>{PHP.L.Reset}
                        </a>
                        <a href="{ADMIN_POLLS_ROW_POLL_URL_BMP}" class="btn btn-sm btn-outline-secondary">
                            <i class="fa-solid fa-arrow-up me-1"></i>{PHP.L.adm_polls_bump}
                        </a>
                        <a href="{ADMIN_POLLS_ROW_POLL_URL_OPN}" class="btn btn-sm btn-primary">
                            <i class="fa-solid fa-eye me-1"></i>{PHP.L.Open}
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <!-- END: POLLS_ROW -->
        <!-- IF !{TOTAL_ENTRIES} -->
        <div class="list-group-item text-center">{PHP.L.adm_polls_nopolls}</div>
        <!-- ENDIF -->
    </div>
</div>

<!-- IF {TOTAL_ENTRIES} -->
<nav aria-label="Page Pagination" class="mt-3">
    <div class="text-center mb-2">{PHP.L.Total}: {TOTAL_ENTRIES}, {PHP.L.Onpage}: {ENTRIES_ON_CURRENT_PAGE}</div>
    <ul class="pagination justify-content-center">{PREVIOUS_PAGE} {PAGINATION} {NEXT_PAGE}</ul>
</nav>
<!-- ENDIF -->

<div class="card mb-3">
    <div class="card-header">
        <h2 class="h5 mb-0">{ADMIN_POLLS_FORMNAME}</h2>
    </div>
    <div class="card-body">
        <form id="addpoll" action="{ADMIN_POLLS_FORM_URL}" method="post">
            <!-- IF {PHP.cfg.jquery} -->
            <script type="text/javascript" src="{PHP.cfg.modules_dir}/polls/js/polls.js"></script>
            <script type="text/javascript">
                var ansMax = {PHP.cfg.polls.max_options_polls};
            </script>
            <!-- ENDIF -->
            <div class="row g-2">
                <div class="col-12 col-md-3">{PHP.L.poll}:</div>
                <div class="col-12 col-md-9">{EDIT_POLL_IDFIELD}{EDIT_POLL_TEXT}</div>
                <div class="col-12 col-md-3">{PHP.L.Options}:</div>
                <div class="col-12 col-md-9">
                    <!-- BEGIN: OPTIONS -->
                              <div class="polloptiondiv position-relative mb-3">
                                {EDIT_POLL_OPTION_TEXT}
                                <button name="deloption" value="x" type="button" class="deloption btn btn-outline-danger btn-sm position-absolute top-50 end-0 translate-middle-y me-2" style="display:none;">
                                  <i class="fa-solid fa-trash"></i> 
                                </button> 
                              </div> 
                    <!-- END: OPTIONS -->
                    <input id="addoption" name="addoption" value="{PHP.L.Add}" type="button" class="btn btn-outline-primary btn-sm" style="display:none;" />
                </div>
                <div class="col-12 col-md-3"></div>
                <div class="col-12 col-md-9">
                    {EDIT_POLL_MULTIPLE}
                    <!-- BEGIN: EDIT -->
                    <div class="mt-2">{EDIT_POLL_LOCKED}</div>
                    <div class="mt-2">{EDIT_POLL_RESET}</div>
                    <div class="mt-2">{EDIT_POLL_DELETE}</div>
                    <!-- END: EDIT -->
                </div>
                <div class="col-12">
                    <button type="submit" class="btn btn-primary confirm">{ADMIN_POLLS_SEND_BUTTON}</button>
                </div>
            </div>
        </form>
    </div>
</div>
<div class="alert alert-info" role="alert">
  polls.admin.tpl
</div>
<!-- END: MAIN -->
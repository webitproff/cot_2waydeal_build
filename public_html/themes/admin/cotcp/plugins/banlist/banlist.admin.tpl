<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}

<div class="mb-3">
    <h3>{PHP.L.editdeleteentries}</h3>
    <div class="list-group list-group-flush">
        <div class="list-group-item list-group-item-dark">
            <div class="row align-items-center fw-bold">
                <div class="col-12 col-md-2">{PHP.L.banlist_ipmask}</div>
                <div class="col-12 col-md-2">{PHP.L.banlist_emailmask}</div>
                <div class="col-12 col-md-4">{PHP.L.banlist_reason}</div>
                <div class="col-12 col-md-2">{PHP.L.banlist_duration}</div>
                <div class="col-12 col-md-2">{PHP.L.Action}</div>
            </div>
        </div>
        <!-- BEGIN: ADMIN_BANLIST_ROW -->
        <form name="savebanlist_{ADMIN_BANLIST_ROW_ID}" id="savebanlist_{ADMIN_BANLIST_ROW_ID}" action="{ADMIN_BANLIST_ROW_URL}" method="post">
            <div class="list-group-item list-group-item-action">
                <div class="row align-items-center">
                    <div class="col-12 col-md-2">{ADMIN_BANLIST_ROW_IP}</div>
                    <div class="col-12 col-md-2">{ADMIN_BANLIST_ROW_EMAIL}</div>
                    <div class="col-12 col-md-4">{ADMIN_BANLIST_ROW_REASON}</div>
                    <div class="col-12 col-md-2">{ADMIN_BANLIST_ROW_EXPIRE}</div>
                    <div class="col-12 col-md-2">
                        <div class="d-flex flex-wrap gap-1 justify-content-center">
                            <button type="submit" class="btn btn-outline-primary btn-sm">
                                <i class="fa-solid fa-pen me-1"></i>{PHP.L.Update}
                            </button>
                            <button type="submit" onclick="window.location.replace('{ADMIN_BANLIST_ROW_DELURL}'); return false;" class="btn btn-outline-danger btn-sm">
                                <i class="fa-solid fa-trash me-1"></i>{PHP.L.Delete}
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <!-- END: ADMIN_BANLIST_ROW -->
    </div>
</div>

<!-- IF {ADMIN_BANLIST_TOTALITEMS} -->
<nav aria-label="Page Pagination" class="mt-3">
    <div class="text-center mb-2">{PHP.L.Total}: {ADMIN_BANLIST_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_BANLIST_COUNTER_ROW}</div>
    <ul class="pagination justify-content-center">{ADMIN_BANLIST_PAGINATION_PREV}{ADMIN_BANLIST_PAGNAV}{ADMIN_BANLIST_PAGINATION_NEXT}</ul>
</nav>
<!-- ENDIF -->

<div class="card mb-3">
    <div class="card-header">
        <h2 class="h5 mb-0">{PHP.L.Add}</h2>
    </div>
    <div class="card-body">
        <form name="addbanlist" id="addbanlist" action="{ADMIN_BANLIST_URLFORMADD}" method="post" class="ajax">
            <div class="row g-2">
                <div class="col-12 col-md-3">{PHP.L.banlist_ipmask}:</div>
                <div class="col-12 col-md-9">{ADMIN_BANLIST_IP}</div>
                <div class="col-12 col-md-3">{PHP.L.banlist_emailmask}:</div>
                <div class="col-12 col-md-9">{ADMIN_BANLIST_EMAIL}</div>
                <div class="col-12 col-md-3">{PHP.L.banlist_reason}:</div>
                <div class="col-12 col-md-9">{ADMIN_BANLIST_REASON}</div>
                <div class="col-12 col-md-3">{PHP.L.banlist_duration}:</div>
                <div class="col-12 col-md-9">{ADMIN_BANLIST_EXPIRE}</div>
                <div class="col-12">
                    <button type="submit" class="btn btn-primary">{PHP.L.Add}</button>
                </div>
            </div>
        </form>
    </div>
</div>

<div class="alert alert-info" role="alert">
    banlist.admin.tpl
</div>
<!-- END: MAIN -->
<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}

<div class="py-4">
    <div class="min-height-50vh d-flex flex-column px-2 px-md-3 py-4">
        <div class="row">
            <div class="col-12">
                <!-- IF {PHP.usr.isadmin} -->
                <div class="row mb-3">
                    <div class="col-12">
                        <a title="{PHP.L.adm_purgeall}" href="{ADMIN_LOG_URL_PRUNE}" class="ajax btn btn-primary-outline">{PHP.L.adm_purgeall}</a>
                    </div>
                </div>
                <!-- ENDIF -->

                <h2>{PHP.L.Log} ({ADMIN_LOG_TOTALDBLOG})</h2>
                <form action="" class="mb-3">
                    <div class="row">
                        <div class="col-12 col-md-4">
                            <label class="form-label">{PHP.L.Group}:</label>
                            <select name="groups" class="form-select" onchange="redirect(this)">
                                <!-- BEGIN: GROUP_SELECT_OPTION -->
                                <option value="{ADMIN_LOG_OPTION_VALUE_URL}"{ADMIN_LOG_OPTION_SELECTED}>{ADMIN_LOG_OPTION_GRP_NAME}</option>
                                <!-- END: GROUP_SELECT_OPTION -->
                            </select>
                        </div>
                    </div>
                </form>

                <div class="list-group mb-3">
                    <div class="list-group-item list-group-item-dark">
                        <div class="row align-items-center fw-bold">
                            <div class="col-12 col-md-1">#</div>
                            <div class="col-12 col-md-2">{PHP.L.Date} (GMT)</div>
                            <div class="col-12 col-md-2">{PHP.L.Ip}</div>
                            <div class="col-12 col-md-2">{PHP.L.User}</div>
                            <div class="col-12 col-md-2">{PHP.L.Group}</div>
                            <div class="col-12 col-md-3">{PHP.L.Log}</div>
                        </div>
                    </div>
                    <!-- BEGIN: LOG_ROW -->
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 col-md-1 text-center">{ADMIN_LOG_ROW_LOG_ID}</div>
                            <div class="col-12 col-md-2 text-center">{ADMIN_LOG_ROW_DATE}</div>
                            <div class="col-12 col-md-2 text-center"><a href="{ADMIN_LOG_ROW_URL_IP_SEARCH}">{ADMIN_LOG_ROW_LOG_IP}</a></div>
                            <div class="col-12 col-md-2 text-center">{ADMIN_LOG_ROW_LOG_NAME}</div>
                            <div class="col-12 col-md-2 text-center"><a href="{ADMIN_LOG_ROW_URL_LOG_GROUP}" class="ajax">{ADMIN_LOG_ROW_LOG_GROUP}</a></div>
                            <div class="col-12 col-md-3">{ADMIN_LOG_ROW_LOG_TEXT}</div>
                        </div>
                    </div>
                    <!-- END: LOG_ROW -->
                </div>

                <nav aria-label="Pagination" class="mb-3">
                    <div class="text-center mb-2">{PHP.L.Total}: {ADMIN_LOG_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_LOG_ON_PAGE}</div>
                    <ul class="pagination justify-content-center">
                        {ADMIN_LOG_PAGINATION_PREV}
                        {ADMIN_LOG_PAGNAV}
                        {ADMIN_LOG_PAGINATION_NEXT}
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</div>
<div class="alert alert-info" role="alert">
  admin.log.tpl
</div>
<!-- END: MAIN -->
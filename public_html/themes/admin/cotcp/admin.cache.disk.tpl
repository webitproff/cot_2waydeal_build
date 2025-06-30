<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
<div class="py-4">
    <div class="min-height-50vh d-flex flex-column px-2 px-md-3 py-4">
        <div class="row">
            <div class="col-12">
                <div class="row mb-3">
                    <div class="col-12 col-md-6">
                        <a href="{ADMIN_DISKCACHE_URL_REFRESH}" class="ajax btn btn-primary">{PHP.L.Refresh}</a>
                    </div>
                    <div class="col-12 col-md-6">
                        <a href="{ADMIN_DISKCACHE_URL_PURGE}" class="ajax btn btn-primary">{PHP.L.adm_purgeall}</a>
                    </div>
                </div>

                <h2>{PHP.L.adm_diskcache}</h2>
                <div class="list-group mb-3">
                    <div class="list-group-item list-group-item-dark">
                        <div class="row align-items-center fw-bold">
                            <div class="col-12 col-md-3">{PHP.L.Item}</div>
                            <div class="col-12 col-md-3">{PHP.L.Files}</div>
                            <div class="col-12 col-md-3">{PHP.L.Size}</div>
                            <div class="col-12 col-md-3">{PHP.L.Delete}</div>
                        </div>
                    </div>

                    <!-- BEGIN: ADMIN_DISKCACHE_ROW -->
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 col-md-3">{ADMIN_DISKCACHE_ITEM_NAME}</div>
                            <div class="col-12 col-md-3">{ADMIN_DISKCACHE_FILES}</div>
                            <div class="col-12 col-md-3">{ADMIN_DISKCACHE_SIZE}</div>
                            <div class="col-12 col-md-3">
                                <a title="{PHP.L.Delete}" href="{ADMIN_DISKCACHE_ITEM_DEL_URL}" class="ajax btn btn-danger">{PHP.L.Delete}</a>
                            </div>
                        </div>
                    </div>
                    <!-- END: ADMIN_DISKCACHE_ROW -->

                    <div class="list-group-item list-group-item-secondary">
                        <div class="row align-items-center fw-bold">
                            <div class="col-12 col-md-3">{PHP.L.Total}:</div>
                            <div class="col-12 col-md-3">{ADMIN_DISKCACHE_CACHEFILES}</div>
                            <div class="col-12 col-md-3">{ADMIN_DISKCACHE_CACHESIZE}</div>
                            <div class="col-12 col-md-3"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="alert alert-info" role="alert">
  admin.cache.disk.tpl
</div>
<!-- END: MAIN -->
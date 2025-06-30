<!-- BEGIN: MAIN -->
<div class="mb-3">
    <div class="row g-2">
        <div class="col-12 col-lg-3">
            <a href="{ADMIN_TRASHCAN_CONF_URL}" class="btn btn-outline-secondary w-100">
                <i class="fa-solid fa-gear me-1"></i>{PHP.L.Configuration}
            </a>
        </div>
        <!-- IF {TOTAL_ENTRIES} > 0 -->
        <div class="col-12 col-lg-3">
            <a href="{ADMIN_TRASHCAN_WIPEALL_URL}" class="btn btn-outline-danger w-100 confirmLink">
                <i class="fa-solid fa-trash me-1"></i>{PHP.L.Wipeall}
            </a>
        </div>
        <!-- ENDIF -->
    </div>
</div>

{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}

<div class="mb-3">
    <!-- BEGIN: TRASHCAN_ROW -->
    <div class="list-group list-group-flush mb-4">
        <div class="list-group-item list-group-item-dark">
            <div class="row align-items-center fw-bold">
                <div class="col-12 col-md-2">{PHP.L.Type}</div>
                <div class="col-12 col-md-2">{PHP.L.Date}</div>
                <div class="col-12 col-md-4">{PHP.L.Title}</div>
                <div class="col-12 col-md-2">{PHP.L.adm_setby}</div>
                <div class="col-12 col-md-2">{PHP.L.Action}</div>
            </div>
        </div>
        <div class="list-group-item list-group-item-action">
            <div class="row align-items-center">
                <div class="col-12 col-md-2 text-center">{ADMIN_TRASHCAN_TYPESTR_ICON}</div>
                <div class="col-12 col-md-2 text-center">{ADMIN_TRASHCAN_DATE}</div>
                <div class="col-12 col-md-4 text-center">{ADMIN_TRASHCAN_TITLE}</div>
                <div class="col-12 col-md-2 text-center">{ADMIN_TRASHCAN_TRASHEDBY}</div>
                <div class="col-12 col-md-2">
                    <div class="d-flex flex-wrap gap-1 justify-content-center">
                        <!-- IF {ADMIN_TRASHCAN_ROW_RESTORE_ENABLED} -->
                        <a href="{ADMIN_TRASHCAN_ROW_RESTORE_URL}" class="btn btn-outline-success btn-sm">
                            <i class="fa-solid fa-undo me-1"></i>{PHP.L.Restore}
                        </a>
                        <!-- ENDIF -->
                        <a href="{ADMIN_TRASHCAN_ROW_WIPE_URL}" class="btn btn-outline-danger btn-sm confirmLink">
                            <i class="fa-solid fa-trash me-1"></i>{PHP.L.Wipe}
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="card mb-4">
        <div class="card-body">
            <div class="list-group list-group-flush">
                <div class="list-group-item list-group-item-dark">
                    <div class="row align-items-center fw-bold">
                        <div class="col-12 col-md-3">{PHP.L.Key}</div>
                        <div class="col-12 col-md-9">{PHP.L.Value}</div>
                    </div>
                </div>
                <!-- BEGIN: TRASHCAN_INFOROW -->
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3 text-center">{ADMIN_TRASHCAN_INFO_ROW}</div>
                        <div class="col-12 col-md-9 text-center">{ADMIN_TRASHCAN_INFO_VALUE}</div>
                    </div>
                </div>
                <!-- END: TRASHCAN_INFOROW -->
            </div>
        </div>
    </div>
    <!-- END: TRASHCAN_ROW -->
</div>

<div class="alert alert-info mt-4" role="alert">
    trashcan.info.admin.tpl
</div>
<!-- END: MAIN -->
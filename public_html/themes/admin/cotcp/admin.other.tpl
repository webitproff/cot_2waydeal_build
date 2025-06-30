<!-- BEGIN: MAIN -->
<div class="py-4">
    <div class="min-height-50vh d-flex flex-column px-2 px-md-3 py-4">
        <div class="row">
            <div class="col-12">
                <h2>{PHP.L.Core}</h2>
                <div class="list-group mb-3">
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 d-flex align-items-center">
                                <figure class="me-2">{PHP.R.admin_icon_core}</figure>
                                <div>
                                    <a href="{ADMIN_OTHER_URL_CACHE}" class="h5">{PHP.L.adm_internalcache}</a>
                                    <p>{PHP.L.adm_internalcache_desc}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 d-flex align-items-center">
                                <figure class="me-2">{PHP.R.admin_icon_core}</figure>
                                <div>
                                    <a href="{ADMIN_OTHER_URL_DISKCACHE}" class="h5">{PHP.L.adm_diskcache}</a>
                                    <p>{PHP.L.adm_diskcache_desc}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 d-flex align-items-center">
                                <figure class="me-2">{PHP.R.admin_icon_core}</figure>
                                <div>
                                    <a href="{ADMIN_OTHER_URL_EXFLDS}" class="h5">{PHP.L.adm_extrafields}</a>
                                    <p>{PHP.L.adm_extrafields_desc}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 d-flex align-items-center">
                                <figure class="me-2">{PHP.R.icon_cfg_info}</figure>
                                <div>
                                    <a href="{ADMIN_OTHER_URL_LOG}" class="h5">{PHP.L.adm_log}</a>
                                    <p>{PHP.L.adm_log_desc}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 d-flex align-items-center">
                                <figure class="me-2">{PHP.R.icon_cfg_info}</figure>
                                <div>
                                    <a href="{ADMIN_OTHER_URL_INFOS}" class="h5">{PHP.L.adm_infos}</a>
                                    <p>{PHP.L.adm_infos_desc}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 d-flex align-items-center">
                                <figure class="me-2">{PHP.R.icon_cfg_phpinfo}</figure>
                                <div>
                                    <a href="{ADMIN_OTHER_URL_PHPINFO}" class="h5">{PHP.L.adm_phpinfo}</a>
                                    <p>{PHP.L.adm_phpinfo_desc}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- BEGIN: SECTION -->
<div class="py-4">
    <div class="min-height-50vh d-flex flex-column px-2 px-md-3 py-4">
        <div class="row">
            <div class="col-12">
                <h2>{ADMIN_OTHER_SECTION}</h2>
                <div class="list-group mb-3">
                    <!-- BEGIN: ROW -->
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 d-flex align-items-center">
                                <figure class="me-2">{ADMIN_OTHER_EXT_ICON}</figure>
                                <div>
                                    <a href="{ADMIN_OTHER_EXT_URL}" class="h6">{ADMIN_OTHER_EXT_NAME}</a>
                                    <!-- IF {ADMIN_OTHER_EXT_DESC} -->
                                    <p>{ADMIN_OTHER_EXT_DESC}</p>
                                    <!-- ENDIF -->
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END: ROW -->
                    <!-- BEGIN: EMPTY -->
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12">{PHP.L.adm_listisempty}</div>
                        </div>
                    </div>
                    <!-- END: EMPTY -->
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END: SECTION -->
<div class="alert alert-info" role="alert">
  admin.other.tpl
</div>
<!-- END: MAIN -->
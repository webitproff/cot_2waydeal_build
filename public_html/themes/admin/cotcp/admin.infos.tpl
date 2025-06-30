<!-- BEGIN: MAIN -->
<div class="py-4">
    <div class="min-height-50vh d-flex flex-column px-2 px-md-3 py-4">
        <div class="row">
            <div class="col-12">
                <h2>{PHP.L.adm_core_info}:</h2>
                <div class="list-group mb-3">
                    <div class="list-group-item list-group-item-dark">
                        <div class="row align-items-center fw-bold">
                            <div class="col-12 col-md-6">{PHP.L.Parameter}</div>
                            <div class="col-12 col-md-6">{PHP.L.Value}</div>
                        </div>
                    </div>
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 col-md-6">{PHP.L.Version}</div>
                            <div class="col-12 col-md-6">{ADMIN_INFOS_VERSION}</div>
                        </div>
                    </div>
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 col-md-6">{PHP.L.Database}</div>
                            <div class="col-12 col-md-6">{ADMIN_INFOS_DB_VERSION}</div>
                        </div>
                    </div>
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 col-md-6">{PHP.L.home_db_rows}</div>
                            <div class="col-12 col-md-6">{ADMIN_INFOS_DB_TOTAL_ROWS}</div>
                        </div>
                    </div>
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 col-md-6">{PHP.L.home_db_indexsize}</div>
                            <div class="col-12 col-md-6">{ADMIN_INFOS_DB_INDEXSIZE}</div>
                        </div>
                    </div>
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 col-md-6">{PHP.L.home_db_datassize}</div>
                            <div class="col-12 col-md-6">{ADMIN_INFOS_DB_DATASSIZE}</div>
                        </div>
                    </div>
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 col-md-6">{PHP.L.home_db_totalsize}</div>
                            <div class="col-12 col-md-6">{ADMIN_INFOS_DB_TOTALSIZE}</div>
                        </div>
                    </div>
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 col-md-6">{PHP.L.Plugins}</div>
                            <div class="col-12 col-md-6">{ADMIN_INFOS_TOTALPLUGINS}</div>
                        </div>
                    </div>
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 col-md-6">{PHP.L.Hooks}</div>
                            <div class="col-12 col-md-6">{ADMIN_INFOS_TOTALHOOKS}</div>
                        </div>
                    </div>
                </div>

                <h2>{PHP.L.adm_server_info}:</h2>
                <div class="list-group mb-3">
                    <div class="list-group-item list-group-item-dark">
                        <div class="row align-items-center fw-bold">
                            <div class="col-12 col-md-6">{PHP.L.Parameter}</div>
                            <div class="col-12 col-md-6">{PHP.L.Value}</div>
                        </div>
                    </div>
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 col-md-6">{PHP.L.adm_phpver}</div>
                            <div class="col-12 col-md-6">{ADMIN_INFOS_PHPVER}</div>
                        </div>
                    </div>
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 col-md-6">{PHP.L.adm_zendver}</div>
                            <div class="col-12 col-md-6">{ADMIN_INFOS_ZENDVER}</div>
                        </div>
                    </div>
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 col-md-6">{PHP.L.adm_interface}</div>
                            <div class="col-12 col-md-6">{ADMIN_INFOS_INTERFACE}</div>
                        </div>
                    </div>
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 col-md-6">{PHP.L.adm_cachedrivers}</div>
                            <div class="col-12 col-md-6">{ADMIN_INFOS_CACHEDRIVERS}</div>
                        </div>
                    </div>
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 col-md-6">{PHP.L.adm_os}</div>
                            <div class="col-12 col-md-6">{ADMIN_INFOS_OS}</div>
                        </div>
                    </div>
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 col-md-6">{PHP.L.adm_time1}</div>
                            <div class="col-12 col-md-6">{ADMIN_INFOS_DATE}</div>
                        </div>
                    </div>
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 col-md-6">{PHP.L.adm_time2}</div>
                            <div class="col-12 col-md-6">{ADMIN_INFOS_GMDATE} GMT</div>
                        </div>
                    </div>
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 col-md-6">{PHP.L.adm_time3}</div>
                            <div class="col-12 col-md-6">{ADMIN_INFOS_GMTTIME}</div>
                        </div>
                    </div>
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 col-md-6">{PHP.L.adm_time4}</div>
                            <div class="col-12 col-md-6">{ADMIN_INFOS_USRTIME} {ADMIN_INFOS_TIMETEXT}</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="alert alert-info" role="alert">
  admin.infos.tpl
</div>
<!-- END: MAIN -->
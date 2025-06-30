<!-- BEGIN: MAIN -->
<div class="container button-toolbar">
    <a href="{ADMIN_PFS_URL_CONFIG}" class="btn btn-primary">{PHP.L.Configuration}</a>
    <a href="{ADMIN_PFS_URL_SFS}" class="btn btn-primary">{PHP.L.SFS}</a>
    <a href="{ADMIN_PFS_URL_ALLPFS}" class="btn btn-primary">{PHP.L.adm_allpfs}</a>
</div>
{FILE "{PHP.cfg.system_dir}/admin/tpl/warnings.tpl"}
<div class="container">
    <h2>{PHP.L.adm_gd}:</h2>
    <div class="wrapper">
        <div class="list-group list-group-striped list-group-flush follow">
            <!-- BEGIN: PFS_ROW -->
                <div class="list-group-item">
                    {ADMIN_PFS_DATAS_NAME}: <span class="fw-bold">{ADMIN_PFS_DATAS_ENABLE_OR_DISABLE}</span>
                </div>
            <!-- END: PFS_ROW -->
        </div>
    </div>
</div>
<div class="container py-5">
    <div class="alert alert-warning" role="alert">
        <code>pfs.admin.tpl</code>
    </div>
</div>
<!-- END: MAIN -->
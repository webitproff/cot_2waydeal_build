
<!-- BEGIN: MAIN -->
<div class="container button-toolbar">
    <a href="{PHP|cot_url('admin', 'm=config&n=edit&o=module&p=pfs')}" class="btn btn-primary">{PHP.L.Configuration}</a>
    <a href="{PHP|cot_url('pfs', 'userid=0')}" class="btn btn-primary">{PHP.L.SFS}</a>
</div>
<div class="container">
    <div class="list-group list-group-striped list-group-flush">
        <div class="list-group-item d-flex justify-content-between align-items-center fw-bold">
            <div class="w-50">{PHP.L.User}</div>
            <div class="w-25 text-center">{PHP.L.Files}</div>
            <div class="w-25 text-center">{PHP.L.Edit}</div>
        </div>
        <!-- BEGIN: ALLPFS_ROW -->
            <div class="list-group-item d-flex justify-content-between align-items-center">
                <div class="w-50">{ADMIN_ALLPFS_ROW_USER}</div>
                <div class="w-25 text-center">{ADMIN_ALLPFS_ROW_COUNT}</div>
                <div class="w-25 text-center"><a href="{ADMIN_ALLPFS_ROW_URL}" title="{PHP.L.Edit}">{PHP.R.icon_prefs}</a></div>
            </div>
        <!-- END: ALLPFS_ROW -->
        <!-- IF !{TOTAL_ENTRIES} -->
            <div class="list-group-item text-center">
                {PHP.L.None}
            </div>
        <!-- ENDIF -->
    </div>
    <!-- IF {TOTAL_ENTRIES} -->
        <p class="paging text-center">
            {PREVIOUS_PAGE}{PAGINATION}{NEXT_PAGE}
            <span>{PHP.L.Total}: {TOTAL_ENTRIES}, {PHP.L.Onpage}: {ENTRIES_ON_CURRENT_PAGE}</span>
        </p>
    <!-- ENDIF -->
</div>
<div class="container py-5">
    <div class="alert alert-warning" role="alert">
        <code>pfs.admin.allpfs.tpl</code>
    </div>
</div>
<!-- END: MAIN -->
<!-- BEGIN: MAIN -->
<div class="mb-3">
    <div class="list-group list-group-flush">
        <div class="list-group-item">
            <a href="{PHP|cot_url('admin', 'm=config&n=edit&o=plug&p=autoalias2')}">
                <i class="fa-solid fa-gear me-1"></i>{PHP.L.Configuration}
            </a>
        </div>
        <div class="list-group-item">
            <a href="{AUTOALIAS_CREATE}">
                <i class="fa-solid fa-plus me-1"></i>{PHP.L.create_aliases}
            </a>
        </div>
    </div>
</div>

{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
<div class="alert alert-info" role="alert">
    autoalias2.admin.tpl
</div>
<!-- END: MAIN -->
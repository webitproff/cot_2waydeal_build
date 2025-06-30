<!-- BEGIN: MAIN -->
	{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
	<!-- BEGIN: UPDATE -->
	<div class="alert alert-info done">
		<h4>{PHP.L.home_update_notice} </h4>
		<p>{ADMIN_HOME_UPDATE_REVISION}. {ADMIN_HOME_UPDATE_MESSAGE}</p>
	</div>
	<!-- END: UPDATE -->

	<!-- BEGIN: MAINPANEL -->
	{ADMIN_HOME_MAINPANEL}
	<!-- END: MAINPANEL -->
<hr/>
<div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-3">
<!-- BEGIN: SIDEPANEL -->

    <div>
        <div class="card h-100">
            <div class="card-body rounded">
                {ADMIN_HOME_SIDEPANEL}
            </div>
        </div>
    </div>

<!-- END: SIDEPANEL -->
</div>
<!-- END: MAIN -->

<!-- BEGIN: MAIN -->
<div class="px-0 m-0 row justify-content-center">
<div class="col-12 col-xxl-10">
<!-- IF {PHP|cot_module_active('projects')} -->
<div class="px-0 px-md-3 py-4">
	<div class="mb-4">
		{PROJECTS_SEARCH}
		{PROJECTS}
	</div>
</div>
<!-- ENDIF -->
<!-- IF {PHP|cot_module_active('market')} -->
<div class="px-0 px-md-3 py-4">
	<div class="row">
	{PHP|cot_getmarketlist('index', '3')}
	</div>
</div>
<!-- ENDIF --> 
<!-- IF {PHP|cot_module_active('folio')} -->
<div class="px-0 px-md-3 py-4">
	<div class="row">
	{PHP|cot_getfoliolist('index', '3')}
	</div>
</div>
<!-- ENDIF --> 
<!-- IF {INDEX_NEWS} -->
<div class="px-0 px-md-3 py-4">
	<div class="row">
		{INDEX_NEWS}
	</div>
</div>
<!-- ENDIF -->


<!-- IF {PHP|cot_plugin_active('reviews')} -->
<div class="px-0 px-md-3 py-4">
<div class="col-12">
	<div class="row">
		{PHP|cot_reviews_last(4)}
	</div>
</div>
</div>
<!-- ENDIF -->
<!-- IF {PHP|cot_plugin_active('recentitems')} -->
<div class="px-0 px-md-3 py-4">
<div class="row">
    <div class="col-12">
        <div class="card mb-5">
            <div class="card-header bg-primary-subtle">
                <h2 class="h5 mb-0"><a href="{PHP|cot_url('plug','e=recentitems')}" class="text-primary-emphasis text-decoration-none">{PHP.L.recentitems_pages}</a></h2>
            </div>
            <div class="card-body p-0">
                <!-- IF {RECENT_PAGES} -->
                {RECENT_PAGES}
                <!-- ELSE -->
                <div class="alert alert-warning mb-0">{PHP.L.recentitems_nonewpages}</div>
                <!-- ENDIF -->
            </div>
        </div>
        
        <div class="card mb-5">
            <div class="card-header bg-primary-subtle">
                <h2 class="h5 mb-0"><a href="{PHP|cot_url('plug','e=recentitems')}" class="text-primary-emphasis text-decoration-none">{PHP.L.recentitems_forums}</a></h2>
            </div>
            <div class="card-body p-0">
                <!-- IF {RECENT_FORUMS} -->
                {RECENT_FORUMS}
                <!-- ELSE -->
                <div class="alert alert-warning mb-0 mt-3">{PHP.L.recentitems_nonewposts}</div>
                <!-- ENDIF -->
            </div>
        </div>
    </div>
</div>
</div>
<!-- ENDIF -->
</div>
</div>
<!-- END: MAIN -->

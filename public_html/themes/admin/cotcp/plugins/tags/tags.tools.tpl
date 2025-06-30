<!-- BEGIN: MAIN -->
<div class="mb-3">
    <div class="row g-2">
        <div class="col-12 col-lg-3">
            <a href="{ADMIN_TAGS_CONFIG_URL}" class="btn btn-outline-secondary w-100">
                <i class="fa-solid fa-gear me-1"></i>{PHP.L.Configuration}
            </a>
        </div>
    </div>
</div>

{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}

<div class="card filter-section p-3 mb-4" style="border: 5px var(--bs-dark-border-subtle) solid">
    <form name="sortfiltertag" class="filter" action="{ADMIN_TAGS_FILTERS_ACTION}" method="GET">
        <div class="row g-2 align-items-end">
            <div class="col-12 col-lg-3 d-flex flex-column h-100">
                <div class="flex-grow-1">{ADMIN_TAGS_FILTERS_FILTER}</div>
            </div>
            <!-- IF {TOTAL_ENTRIES} > 1 -->
            <div class="col-12 col-lg-3 d-flex flex-column h-100">
                <div class="flex-grow-1">{PHP.L.adm_sort} {ADMIN_TAGS_FILTERS_ORDER}</div>
            </div>
            <div class="col-12 col-lg-3 d-flex flex-column h-100">
                <div class="flex-grow-1">{ADMIN_TAGS_FILTERS_WAY}</div>
            </div>
            <!-- ENDIF -->
            <div class="col-12 col-lg-3 d-flex flex-column h-100">
                <div class="flex-grow-1">{PHP.L.Search} {ADMIN_TAGS_FILTERS_SEARCH}</div>
                <button type="submit" class="btn btn-outline-primary w-100 mt-2">
                    <i class="fa-solid fa-filter me-1"></i>{PHP.L.Filter}
                </button>
            </div>
        </div>
    </form>
</div>

<div class="mb-3">
    <div class="list-group list-group-flush">
        <div class="list-group-item list-group-item-dark">
            <div class="row align-items-center fw-bold">
                <div class="col-12 col-md-1">{PHP.L.Code}</div>
                <div class="col-12 col-md-2">{PHP.L.adm_area}</div>
                <div class="col-12 col-md-1">{PHP.L.Count}</div>
                <div class="col-12 col-md-3">{PHP.L.adm_tag_item_area}</div>
                <div class="col-12 col-md-5">{PHP.L.Action}</div>
            </div>
        </div>
        <!-- BEGIN: ADMIN_TAGS_ROW -->
        <div class="list-group-item list-group-item-action">
            <div class="row align-items-center">
                <div class="col-12 col-md-1"><b>{ADMIN_TAGS_ROW_CODE}</b></div>
                <div class="col-12 col-md-2">{ADMIN_TAGS_ROW_AREA}</div>
                <div class="col-12 col-md-1">{ADMIN_TAGS_ROW_COUNT}</div>
                <div class="col-12 col-md-3">
                    <div id="mor_{PHP.ii}" class="mor_info_on_off">
                        <span style="cursor:pointer;">{ADMIN_TAGS_ROW_ITEMS}</span><br />
                        <div class="moreinfo">
                            <!-- BEGIN: ADMIN_TAGS_ROW_ITEMS -->
                            <!-- IF {ADMIN_TAGS_ROW_ITEM_URL} -->
                            <a href="{ADMIN_TAGS_ROW_ITEM_URL}">{ADMIN_TAGS_ROW_ITEM_TITLE}</a>
                            <!-- ELSE -->
                            {ADMIN_TAGS_ROW_ITEM_TITLE}
                            <!-- ENDIF -->
                            <br />
                            <!-- END: ADMIN_TAGS_ROW_ITEMS -->
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-5">
                    <form name="tagedit{PHP.ii}" action="{ADMIN_TAGS_ROW_FORM_ACTION}" method="POST">
                        <input type="hidden" name="action" value="edit" />
                        <input type="hidden" name="old_tag" value="{ADMIN_TAGS_ROW_CODE|htmlspecialchars($this)}" />
						<div class="row g-2 align-items-center">
							<div class="col-12 col-md-4">
								<input type="text" name="tag" value="{ADMIN_TAGS_ROW_CODE|htmlspecialchars($this)}" maxlength="255" class="form-control" />
							</div>
							<div class="col-12 col-md-4">
								<button type="submit" class="btn btn-outline-primary btn-sm w-100">
									<i class="fa-solid fa-pen me-1"></i>{PHP.L.Edit}
								</button>
							</div>
							<div class="col-12 col-md-4">
								<a href="{ADMIN_TAGS_ROW_DELETE_CONFIRM_URL}" class="btn btn-outline-danger btn-sm w-100 confirmLink">
									<i class="fa-solid fa-trash me-1"></i>{PHP.L.Delete}
								</a>
							</div>
						</div>
                    </form>
                </div>
            </div>
        </div>
        <!-- END: ADMIN_TAGS_ROW -->
        <!-- IF !{TOTAL_ENTRIES} -->
        <div class="list-group-item">{PHP.L.None}</div>
        <!-- ENDIF -->
    </div>
</div>

<!-- IF {TOTAL_ENTRIES} -->
<nav aria-label="Page Pagination" class="mt-4">
    <ul class="pagination justify-content-center mb-0">
        {PREVIOUS_PAGE}
        {PAGINATION}
        {NEXT_PAGE}
    </ul>
    <p class="text-center mt-2 small text-muted">
        {PHP.L.Total}: {TOTAL_ENTRIES}, {PHP.L.Onpage}: {ENTRIES_ON_CURRENT_PAGE}
    </p>
</nav>
<!-- ENDIF -->

<script type="text/javascript">
    $('.moreinfo').hide();
    $('.mor_info_on_off').click(function() {
        let kk = $(this).attr('id');
        $('#' + kk).children('.moreinfo').slideToggle(100);
    });
</script>

<div class="alert alert-info mt-4" role="alert">
    tags.tools.tpl
</div>
<!-- END: MAIN -->
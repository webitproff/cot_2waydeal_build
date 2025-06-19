<!-- BEGIN: MAIN -->
<div class="border-bottom border-secondary py-3 px-3">
  <nav aria-label="breadcrumb">
    <div class="ps-container-breadcrumb">
      <ol class="breadcrumb d-flex mb-0">{PLUGIN_BREADCRUMBS}</ol>
    </div>
  </nav>
</div>
    <div class="min-height-50vh py-4 px-3">
        <ul class="nav nav-tabs search-areas" role="tablist">
            <li class="nav-item" role="presentation">
                <a href="{PHP.sq|cot_url('search','sq=$this')}" class="nav-link <!-- IF {PHP.tab} == '' -->active<!-- ENDIF -->" role="tab">{PHP.L.plu_tabs_all}</a>
            </li>
			<!-- IF {PHP.cfg.projects.prjsearch} -->
            <li class="nav-item" role="presentation">
                <a href="{PHP.sq|cot_url('search','tab=projects&sq=$this')}" class="nav-link <!-- IF {PHP.tab} === 'projects' -->active<!-- ENDIF -->" role="tab">{PHP.L.projects_projects}</a>
            </li>
			<!-- ENDIF -->
			<!-- IF {PHP.cfg.market.marketsearch} -->
            <li class="nav-item" role="presentation">
                <a href="{PHP.sq|cot_url('search','tab=market&sq=$this')}" class="nav-link <!-- IF {PHP.tab} === 'market' -->active<!-- ENDIF -->" role="tab">{PHP.L.market}</a>
            </li>
			<!-- ENDIF -->
			<!-- IF {PHP.cfg.folio.foliosearch} -->
            <li class="nav-item" role="presentation">
                <a href="{PHP.sq|cot_url('search','tab=folio&sq=$this')}" class="nav-link <!-- IF {PHP.tab} === 'folio' -->active<!-- ENDIF -->" role="tab">{PHP.L.folio}</a>
            </li>
			<!-- ENDIF -->

            <li class="nav-item" role="presentation">
                <a href="{PHP.sq|cot_url('search','tab=pag&sq=$this')}" class="nav-link <!-- IF {PHP.tab} === 'pag' -->active<!-- ENDIF -->" role="tab">{PHP.L.Pages}</a>
            </li>
            <!-- IF {PHP|cot_module_active('forums')} -->
                <li class="nav-item" role="presentation">
                    <a href="{PHP.sq|cot_url('search','tab=frm&sq=$this')}" class="nav-link <!-- IF {PHP.tab} === 'frm' -->active<!-- ENDIF -->" role="tab">{PHP.L.Forums}</a>
                </li>
            <!-- ENDIF -->
        </ul>

        <form id="search" name="search" action="{PLUGIN_SEARCH_ACTION}" method="GET">
            <!-- IF {PHP.cfg.plugin.urleditor.preset} !== 'handy' -->
                <input type="hidden" name="e" value="search" />
            <!-- ENDIF -->
            <!-- IF {PHP.tab} -->
                <input type="hidden" name="tab" value="{PHP.tab}" />
            <!-- ENDIF -->

            <div class="card my-4" style="background-color: var(--bs-sidebar-bg)">
                <div class="card-body">
                    <div class="row g-3 align-items-center">
                        <div class="col-12 col-md-4 text-center text-md-start">
                            <div class="row">
                                <div class="col-6">
                                    <a href="#searchOptions" class="btn btn-warning btn-sm" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="searchOptions">{PHP.L.plu_search_options}</a>
                                </div>
                                <div class="col-6">{PHP.L.plu_search_req}:</div>
                            </div>
                        </div>
                        <div class="col-12 col-md-5 text-center">{PLUGIN_SEARCH_TEXT}</div>
                        <div class="col-12 col-md-3 text-center">
                            <input type="submit" value="{PHP.L.plu_search_key}" class="col-12 btn btn-outline-info" />
                        </div>
                    </div>
                </div>
            </div>

            <div class="collapse" id="searchOptions">
                <p class="text-center">{PHP.L.plu_other_date}: {PLUGIN_SEARCH_DATE_SELECT} {PLUGIN_SEARCH_DATE_FROM} - {PLUGIN_SEARCH_DATE_TO}</p>
                <p class="text-center">{PHP.L.plu_other_userfilter}: {PLUGIN_SEARCH_USER}</p>
				<!-- BEGIN: PROJECTS_OPTIONS -->
					<h3>{PHP.L.projects_projects}</h3>
					<div class="card mb-4">
						<div class="card-body">
							<div class="row g-3">
								<div class="col-12 col-md-6">
									<p class="fw-bold">{PHP.L.plu_pag_set_sec}:</p>
									<div>{PLUGIN_PROJECTS_SEC_LIST}</div>
									<div>{PLUGIN_PROJECTS_SEARCH_SUBCAT}</div>
									<p class="small">{PHP.L.plu_ctrl_list}</p>
								</div>
								<div class="col-12 col-md-6">
									<p class="fw-bold">{PHP.L.plu_other_opt}:</p>
									<div>
										<label class="d-block">{PLUGIN_PROJECTS_SEARCH_NAMES} {PHP.L.plu_pag_search_names}</label>
									</div>
									<div>{PLUGIN_PROJECTS_SEARCH_TEXT}</div>
									<div>{PLUGIN_PROJECTS_SEARCH_FILE}</div>
									<p class="fw-bold">{PHP.L.plu_res_sort}:</p>
									<div>{PLUGIN_PROJECTS_RES_SORT}</div>
									<div>{PLUGIN_PROJECTS_RES_SORT_WAY}</div>
								</div>
							</div>
						</div>
					</div>
				<!-- END: PROJECTS_OPTIONS -->
				<!-- BEGIN: MARKET_OPTIONS -->
					<h3>{PHP.L.market}</h3>
					<div class="card mb-4">
						<div class="card-body">
							<div class="row g-3">
								<div class="col-12 col-md-6">
									<p class="fw-bold">{PHP.L.plu_market_set_sec}:</p>
									<div>{PLUGIN_MARKET_SEC_LIST}</div>
									<div>{PLUGIN_MARKET_SEARCH_SUBCAT}</div>
									<p class="small">{PHP.L.plu_ctrl_list}</p>
								</div>
								<div class="col-12 col-md-6">
									<p class="fw-bold">{PHP.L.plu_other_opt}:</p>
									<div>
										<label class="d-block">{PLUGIN_MARKET_SEARCH_NAMES} {PHP.L.plu_pag_search_names}</label>
									</div>
									<div>{PLUGIN_MARKET_SEARCH_TEXT}</div>
									<div>{PLUGIN_MARKET_SEARCH_FILE}</div>
									<p class="fw-bold">{PHP.L.plu_res_sort}:</p>
									<div>{PLUGIN_MARKET_RES_SORT}</div>
									<div>{PLUGIN_MARKET_RES_SORT_WAY}</div>
								</div>
							</div>
						</div>
					</div>
				<!-- END: MARKET_OPTIONS -->
				<!-- BEGIN: FOLIO_OPTIONS -->
					<h3>{PHP.L.folio}</h3>
					<div class="card mb-4">
						<div class="card-body">
							<div class="row g-3">
								<div class="col-12 col-md-6">
									<p class="fw-bold">{PHP.L.plu_folio_set_sec}:</p>
									<div>{PLUGIN_FOLIO_SEC_LIST}</div>
									<div>{PLUGIN_FOLIO_SEARCH_SUBCAT}</div>
									<p class="small">{PHP.L.plu_ctrl_list}</p>
								</div>
								<div class="col-12 col-md-6">
									<p class="fw-bold">{PHP.L.plu_other_opt}:</p>
									<div>
										<label class="d-block">{PLUGIN_FOLIO_SEARCH_NAMES} {PHP.L.plu_pag_search_names}</label>
									</div>
									<div>{PLUGIN_FOLIO_SEARCH_TEXT}</div>
									<div>{PLUGIN_FOLIO_SEARCH_FILE}</div>
									<p class="fw-bold">{PHP.L.plu_res_sort}:</p>
									<div>{PLUGIN_FOLIO_RES_SORT}</div>
									<div>{PLUGIN_FOLIO_RES_SORT_WAY}</div>
								</div>
							</div>
						</div>
					</div>
				<!-- END: FOLIO_OPTIONS -->
                <!-- BEGIN: PAGES_OPTIONS -->
                    <h3>{PHP.L.Pages}</h3>
                    <div class="card mb-4">
                        <div class="card-body">
                            <div class="row g-3">
                                <div class="col-12 col-md-6">
                                    <p class="fw-bold">{PHP.L.plu_pag_set_sec}:</p>
                                    <div>{PLUGIN_PAGE_SEC_LIST}</div>
                                    <div>{PLUGIN_PAGE_SEARCH_SUBCAT}</div>
                                    <p class="small">{PHP.L.plu_ctrl_list}</p>
                                </div>
                                <div class="col-12 col-md-6">
                                    <p class="fw-bold">{PHP.L.plu_other_opt}:</p>
                                    <div>
                                        <label class="d-block">{PLUGIN_PAGE_SEARCH_NAMES} {PHP.L.plu_pag_search_names}</label>
                                    </div>
                                    <div>{PLUGIN_PAGE_SEARCH_DESC}</div>
                                    <div>{PLUGIN_PAGE_SEARCH_TEXT}</div>
                                    <div>{PLUGIN_PAGE_SEARCH_FILE}</div>
                                    <p class="fw-bold">{PHP.L.plu_res_sort}:</p>
                                    <div>{PLUGIN_PAGE_RES_SORT}</div>
                                    <div>{PLUGIN_PAGE_RES_SORT_WAY}</div>
                                </div>
                            </div>
                        </div>
                    </div>
                <!-- END: PAGES_OPTIONS -->

                <!-- BEGIN: FORUMS_OPTIONS -->
                    <h3>{PHP.L.Forums}</h3>
                    <div class="card mb-4">
                        <div class="card-body">
                            <div class="row g-3">
                                <div class="col-12 col-md-6">
                                    <p class="fw-bold">{PHP.L.plu_frm_set_sec}:</p>
                                    <div>{PLUGIN_FORUM_SEC_LIST}</div>
                                    <div>{PLUGIN_FORUM_SEARCH_SUBCAT}</div>
                                    <div class="small">{PHP.L.plu_ctrl_list}</div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <p class="fw-bold">{PHP.L.plu_other_opt}:</p>
                                    <div>{PLUGIN_FORUM_SEARCH_NAMES}</div>
                                    <div>{PLUGIN_FORUM_SEARCH_POST}</div>
                                    <div>{PLUGIN_FORUM_SEARCH_ANSW}</div>
                                    <p class="fw-bold">{PHP.L.plu_res_sort}:</p>
                                    <div>{PLUGIN_FORUM_RES_SORT}</div>
                                    <div>{PLUGIN_FORUM_RES_SORT_WAY}</div>
                                </div>
                            </div>
                        </div>
                    </div>
                <!-- END: FORUMS_OPTIONS -->
            </div>
        </form>

        {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}

        <!-- BEGIN: RESULTS -->
			<!-- BEGIN: PROJECTS -->
				<h3>{PHP.L.projects_projects}</h3>
				<p>{PHP.L.plu_result}: {PHP.L.projects_projects}</p>
				<div class="list-group list-group-striped list-group-flush mb-4">
					<!-- BEGIN: ITEM -->
						<div class="list-group-item list-group-item-action {PLUGIN_PROJECTSRES_ODDEVEN}">
							<div>{PLUGIN_PROJECTSRES_TITLE}</div>
							<div>{PLUGIN_PROJECTSRES_TEXT}</div>
							<div class="row g-2">
								<div class="col-12 col-md-6">
									<p class="small">{PHP.L.plu_last_date}: {PLUGIN_PROJECTSRES_TIME}</p>
								</div>
								<div class="col-12 col-md-6 text-md-end">
									<p class="small">{PHP.L.plu_section}: {PLUGIN_PROJECTSRES_CATEGORY}</p>
								</div>
							</div>
						</div>
					<!-- END: ITEM -->
				</div>
			<!-- END: PROJECTS -->
			<!-- BEGIN: MARKET -->
				<h3>{PHP.L.market}</h3>
				<p>{PHP.L.plu_result}: {PHP.L.market}</p>
				<div class="list-group list-group-striped list-group-flush mb-4">
					<!-- BEGIN: ITEM -->
						<div class="list-group-item list-group-item-action {PLUGIN_MARKETRES_ODDEVEN}">
							<div>{PLUGIN_MARKETRES_TITLE}</div>
							<div>{PLUGIN_MARKETRES_TEXT}</div>
							<div class="row g-2">
								<div class="col-12 col-md-6">
									<p class="small">{PHP.L.plu_last_date}: {PLUGIN_MARKETRES_TIME}</p>
								</div>
								<div class="col-12 col-md-6 text-md-end">
									<p class="small">{PHP.L.plu_section}: {PLUGIN_MARKETRES_CATEGORY}</p>
								</div>
							</div>
						</div>
					<!-- END: ITEM -->
				</div>
			<!-- END: MARKET -->
			<!-- BEGIN: FOLIO -->
				<h3>{PHP.L.folio}</h3>
				<p>{PHP.L.plu_result}: {PHP.L.folio}</p>
				<div class="list-group list-group-striped list-group-flush mb-4">
					<!-- BEGIN: ITEM -->
						<div class="list-group-item list-group-item-action {PLUGIN_FOLIORES_ODDEVEN}">
							<div>{PLUGIN_FOLIORES_TITLE}</div>
							<div>{PLUGIN_FOLIORES_TEXT}</div>
							<div class="row g-2">
								<div class="col-12 col-md-6">
									<p class="small">{PHP.L.plu_last_date}: {PLUGIN_FOLIORES_TIME}</p>
								</div>
								<div class="col-12 col-md-6 text-md-end">
									<p class="small">{PHP.L.plu_section}: {PLUGIN_FOLIORES_CATEGORY}</p>
								</div>
							</div>
						</div>
					<!-- END: ITEM -->
				</div>
			<!-- END: FOLIO -->
            <!-- BEGIN: PAGES -->
                <h3>{PHP.L.Pages}</h3>
                <p>{PHP.L.plu_result}: {PHP.L.plu_tabs_pag}</p>
                <div class="list-group list-group-striped list-group-flush mb-4">
                    <!-- BEGIN: ITEM -->
                        <div class="list-group-item list-group-item-action {PLUGIN_PR_ODDEVEN}">
                            <div>{PLUGIN_PR_LINK}</div>
                            <div>{PLUGIN_PR_TEXT}</div>
                            <div class="row g-2">
                                <div class="col-12 col-md-6">
                                    <p class="small">{PHP.L.plu_last_date}: {PLUGIN_PR_TIME}</p>
                                </div>
                                <div class="col-12 col-md-6 text-md-end">
                                    <p class="small">{PHP.L.plu_section}: {PLUGIN_PR_CATEGORY}</p>
                                </div>
                            </div>
                        </div>
                    <!-- END: ITEM -->
                </div>
            <!-- END: PAGES -->

            <!-- BEGIN: FORUMS -->
                <h3>{PHP.L.Forums}</h3>
                <p>{PHP.L.plu_result}: {PHP.L.plu_tabs_frm}</p>
                <div class="list-group list-group-striped list-group-flush mb-4">
                    <!-- BEGIN: ITEM -->
                        <div class="list-group-item list-group-item-action {PLUGIN_FR_ODDEVEN}">
                            <div>{PLUGIN_FR_LINK}</div>
                            <!-- IF {PLUGIN_FR_TEXT} -->
                                <div>{PLUGIN_FR_TEXT}</div>
                            <!-- ENDIF -->
                            <div class="row g-2">
                                <div class="col-12 col-md-6">
                                    <p class="small">{PHP.L.plu_last_date}: {PLUGIN_FR_TIME}</p>
                                </div>
                                <div class="col-12 col-md-6 text-md-end">
                                    <p class="small">{PHP.L.plu_section}: {PLUGIN_FR_CATEGORY}</p>
                                </div>
                            </div>
                        </div>
                    <!-- END: ITEM -->
                </div>
            <!-- END: FORUMS -->
        <!-- END: RESULTS -->

        <!-- IF {PAGINATION} -->
            <nav aria-label="pagination">
                <ul class="pagination mb-0">
                    {PREVIOUS_PAGE}
                    {PAGINATION}
                    {NEXT_PAGE}
                </ul>
            </nav>
        <!-- ENDIF -->
    </div>

    <!-- IF {PHP.usr.maingrp} == 5 -->
        <div class="p-3">
            <div class="alert alert-warning" role="alert">
                <strong>{PHP.usr.name}</strong>, This is the HTML template <code>search.tpl</code>
            </div>
        </div>
    <!-- ENDIF -->
<!-- END: MAIN -->
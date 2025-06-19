<!-- BEGIN: MAIN -->
    <!-- BEGIN: POLL_VIEW -->
        <div id="poll_{POLL_ID}">
            <form action="{POLL_FORM_URL}" method="post" id="poll_form_{POLL_ID}" class="ajax post-poll_{POLL_ID};index.php;e=polls&mode=ajax">
                <input type="hidden" name="poll_id" value="{POLL_ID}" />
                <div class="row g-3">
                    <!-- BEGIN: POLLTABLE -->
                        <div class="col-12">
                            <div class="d-flex flex-column flex-md-row align-items-md-center gap-3">
                                <div class="flex-grow-1">
                                    <label class="d-block">{POLL_INPUT}<span class="ms-3">{POLL_OPTION}</span></label>
                                </div>
                                <div class="progress flex-grow-1" style="max-width: 40%;" role="progressbar" aria-label="{POLL_OPTION}" aria-valuenow="{POLL_PERCENT_FROM_TOTAL}" aria-valuemin="0" aria-valuemax="100">
                                    <div class="progress-bar" style="width:{POLL_PERCENT_FROM_TOTAL}%;"></div>
                                </div>
                                <div class="text-center" style="min-width: 10%;">{POLL_PERCENT_FROM_TOTAL}%</div>
                                <div class="text-center" style="min-width: 10%;">{POLL_VOTES_COUNT}</div>
                            </div>
                        </div>
                    <!-- END: POLLTABLE -->
                    <div class="col-12">
                        <button type="submit" class="btn btn-primary" title="{PHP.L.polls_Vote}">{PHP.L.polls_Vote}</button>
                    </div>
                </div>
                <p>{POLL_VOTERS} {PHP.L.Date} {POLL_SINCE}</p>
            </form>
        </div>
    <!-- END: POLL_VIEW -->
    <!-- BEGIN: POLL_VIEW_VOTED -->
        <div class="row g-3">
            <div class="col-12">
                <p class="fw-bold text-success">{PHP.L.polls_alreadyvoted}</p>
            </div>
            <!-- BEGIN: POLLTABLE -->
                <div class="col-12">
                    <div class="d-flex flex-column flex-md-row align-items-md-center gap-3">
                        <div class="flex-grow-1">{POLL_OPTION}</div>
                        <div class="progress flex-grow-1" style="max-width: 40%;" role="progressbar" aria-label="{POLL_OPTION}" aria-valuenow="{POLL_PERCENT_FROM_TOTAL}" aria-valuemin="0" aria-valuemax="100">
                            <div class="progress-bar" style="width:{POLL_PERCENT_FROM_TOTAL}%;"></div>
                        </div>
                        <div class="text-center" style="min-width: 10%;">{POLL_PERCENT_FROM_TOTAL}%</div>
                        <div class="text-center" style="min-width: 10%;">{POLL_VOTES_COUNT}</div>
                    </div>
                </div>
            <!-- END: POLLTABLE -->
        </div>
        <p>{PHP.L.Votes}: <span class="badge text-bg-success">{POLL_VOTERS}</span> {PHP.L.Date} {POLL_SINCE}</p>
    <!-- END: POLL_VIEW_VOTED -->
    <!-- BEGIN: POLL_VIEW_LOCKED -->
        <div class="row g-3">
            <!-- BEGIN: POLLTABLE -->
                <div class="col-12">
                    <div class="d-flex flex-column flex-md-row align-items-md-center gap-3">
                        <div class="flex-grow-1">{POLL_OPTION}</div>
                        <div class="progress flex-grow-1" style="max-width: 40%;" role="progressbar" aria-label="{POLL_OPTION}" aria-valuenow="{POLL_PERCENT_FROM_TOTAL}" aria-valuemin="0" aria-valuemax="100">
                            <div class="progress-bar" style="width:{POLL_PERCENT_FROM_TOTAL}%;"></div>
                        </div>
                        <div class="text-center" style="min-width: 10%;">{POLL_PERCENT_FROM_TOTAL}%</div>
                        <div class="text-center" style="min-width: 10%;">{POLL_VOTES_COUNT}</div>
                    </div>
                </div>
            <!-- END: POLLTABLE -->
            <div class="col-12">
                <p class="fw-bold text-warning">{PHP.L.polls_locked}</p>
            </div>
        </div>
        <p>{PHP.L.Votes}: <span class="badge text-bg-success">{POLL_VOTERS}</span> {PHP.L.Date} {POLL_SINCE}</p>
    <!-- END: POLL_VIEW_LOCKED -->
    <!-- BEGIN: POLL_VIEW_DISABLED -->
        <ul class="list-unstyled mb-0">
            <!-- BEGIN: POLLTABLE -->
                <li class="mb-2">{POLL_OPTION}</li>
            <!-- END: POLLTABLE -->
            <li class="text-muted small">{PHP.L.rat_registeredonly}</li>
        </ul>
    <!-- END: POLL_VIEW_DISABLED -->
    <!-- BEGIN: POLLS_VIEW -->
		<div class="border-bottom border-secondary py-3 px-3">
		  <nav aria-label="breadcrumb">
			<div class="ps-container-breadcrumb">
			  <ol class="breadcrumb d-flex mb-0">
				<a href="{PHP|cot_url('polls')}">{PHP.L.polls_viewarchives}</a>
			  </ol>
			</div>
		  </nav>
		</div>
        <div class="min-vh-50 px-2 px-md-3 py-4">
            <div class="card mb-4">
                <div class="card-header bg-info-subtle text-info-emphasis">
                    <h2 class="h5 mb-0">{POLLS_TITLE}</h2>
                </div>
                <div class="card-body">
                    {POLLS_FORM}
                </div>
            </div>
            <!-- IF {PHP|cot_plugin_active('comments')} -->
                {POLLS_COMMENTS}
            <!-- ENDIF -->
        </div>
    <!-- END: POLLS_VIEW -->
    <!-- BEGIN: POLLS_VIEWALL -->
        <div class="container-xl min-height-75vh py-4">
            <div class="card">
                <div class="card-header bg-info-subtle">
                    <h2 class="h5">{PHP.L.polls_viewarchives}</h2>
                </div>
                <div class="card-body">
                    <div class="row g-3">
                        <!-- BEGIN: POLL_ROW -->
                            <div class="col-12">
                                <div class="d-flex flex-column flex-md-row align-items-md-center gap-3">
                                    <div class="text-muted small" style="min-width: 15%;">{POLL_DATE}</div>
                                    <div class="flex-grow-1">
                                        <a href="{POLL_HREF}">{POLL_TEXT}</a>
                                    </div>
                                    <div class="text-muted small" style="min-width: 10%;">{POLLS_COMMENTS}</div>
                                </div>
                            </div>
                        <!-- END: POLL_ROW -->
                        <!-- BEGIN: POLL_NONE -->
                            <div class="col-12 text-center text-muted">{PHP.L.None}</div>
                        <!-- END: POLL_NONE -->
                    </div>
                </div>
            </div>
        </div>
    <!-- END: POLLS_VIEWALL -->
    {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
<!-- END: MAIN -->
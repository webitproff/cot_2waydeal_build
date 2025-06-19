
<!-- BEGIN: POLL_VIEW -->
    <div id="poll_{POLL_ID}">
        <form action="{POLL_FORM_URL}" method="post" id="poll_form_{POLL_ID}" class="ajax post-poll_{POLL_ID};index.php;e=polls&mode=ajax&poll_theme=index">
            <input type="hidden" name="poll_id" value="{POLL_ID}" />
            <ul class="list-unstyled mb-0">
                <!-- BEGIN: POLLTABLE -->
                    <li class="mb-2">
                        <label class="d-block">{POLL_INPUT}<span class="ms-3">{POLL_OPTION}</span></label>
                    </li>
                <!-- END: POLLTABLE -->
                <li>
                    <button type="submit" class="btn btn-primary" title="{PHP.L.polls_Vote}">{PHP.L.polls_Vote}</button>
                </li>
            </ul>
        </form>
    </div>
<!-- END: POLL_VIEW -->
<!-- BEGIN: POLL_VIEW_VOTED -->
    <div class="row g-3">
        <!-- BEGIN: POLLTABLE -->
            <div class="col-12">
                <div class="d-flex flex-column flex-md-row align-items-md-center gap-3">
                    <div class="flex-grow-1 small">{POLL_OPTION}</div>
                    <div class="text-end small" style="min-width: 20%;">{POLL_PERCENT_FROM_TOTAL}% ({POLL_VOTES_COUNT})</div>
                </div>
                <div class="progress mt-2" role="progressbar" aria-label="{POLL_OPTION}" aria-valuenow="{POLL_PERCENT_FROM_TOTAL}" aria-valuemin="0" aria-valuemax="100">
                    <div class="progress-bar" style="width: {POLL_PERCENT_FROM_TOTAL}%;"></div>
                </div>
            </div>
        <!-- END: POLLTABLE -->
    </div>
    <p class="small text-center">{PHP.L.Votes}: {POLL_VOTERS}</p>
<!-- END: POLL_VIEW_VOTED -->
<!-- BEGIN: POLL_VIEW_DISABLED -->
    <ul class="list-unstyled mb-0">
        <!-- BEGIN: POLLTABLE -->
            <li class="mb-2">{POLL_OPTION}</li>
        <!-- END: POLLTABLE -->
        <li class="text-muted">{PHP.L.rat_registeredonly}</li>
    </ul>
<!-- END: POLL_VIEW_DISABLED -->
<!-- BEGIN: POLL_VIEW_LOCKED -->
    <div class="row g-3">
        <!-- BEGIN: POLLTABLE -->
            <div class="col-12">
                <div class="d-flex flex-column flex-md-row align-items-md-center gap-3">
                    <div class="flex-grow-1">{POLL_OPTION}</div>
                    <div class="text-end" style="min-width: 20%;">{POLL_PERCENT_FROM_TOTAL}% ({POLL_VOTES_COUNT})</div>
                </div>
                <div class="progress mt-2" role="progressbar" aria-label="{POLL_OPTION}" aria-valuenow="{POLL_PERCENT_FROM_TOTAL}" aria-valuemin="0" aria-valuemax="100">
                    <div class="progress-bar" style="width: {POLL_PERCENT_FROM_TOTAL}%;"></div>
                </div>
            </div>
        <!-- END: POLLTABLE -->
    </div>
    <p>{PHP.L.Date} {POLL_SINCE_SHORT} {PHP.L.Votes} {POLL_VOTERS}</p>
<!-- END: POLL_VIEW_LOCKED -->
<!-- BEGIN: INDEXPOLLS -->
    <div class="container">
        <!-- BEGIN: POLL -->
            <div class="mb-3">
                <a href="{IPOLLS_URL}"><span class="fw-bold">{IPOLLS_TITLE}</span></a>
                <div class="my-3">
                    {IPOLLS_FORM}
                </div>
            </div>
        <!-- END: POLL -->
        <!-- BEGIN: ERROR -->
            <p class="small fw-bold text-center mb-3">{IPOLLS_ERROR}</p>
        <!-- END: ERROR -->
        <div class="text-center">
            <a class="btn btn-success btn-sm" href="{IPOLLS_ALL}">{PHP.L.polls_viewarchives}</a>
        </div>
    </div>
<!-- END: INDEXPOLLS -->
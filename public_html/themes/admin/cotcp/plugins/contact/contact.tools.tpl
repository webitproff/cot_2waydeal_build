<!-- BEGIN: MAIN -->
<div class="mb-3">
    <div class="row mb-2">
        <div class="col-12 col-lg-3">
            <a href="{PHP|cot_url('admin', 'm=config&n=edit&o=plug&p=contact')}" class="btn btn-outline-secondary w-100">
                <i class="fa-solid fa-gear me-1"></i>{PHP.L.Configuration}
            </a>
        </div>
    </div>
</div>

{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}

<div class="mb-3">
    <div class="list-group list-group-flush">
        <div class="list-group-item list-group-item-dark">
            <div class="row align-items-center fw-bold">
                <div class="col-12 col-md-2">{PHP.L.Date}</div>
                <div class="col-12 col-md-2">{PHP.L.User}</div>
                <div class="col-12 col-md-5">{PHP.L.Message}</div>
                <div class="col-12 col-md-3">{PHP.L.Action}</div>
            </div>
        </div>
        <!-- BEGIN: DATA -->
        <div class="list-group-item list-group-item-action {CONTACT_ODDEVEN}">
            <div class="row align-items-center">
                <div class="col-12 col-md-2">
                    {CONTACT_DATE}
                    <!-- IF {CONTACT_VAL} == val -->
					<span class="badge text-bg-info">{PHP.L.contact_shortnew}</span>
                    <!-- ENDIF -->
                </div>
                <div class="col-12 col-md-2">{CONTACT_USER}<br/>{CONTACT_EMAIL}</div>
                <div class="col-12 col-md-5">{CONTACT_TEXTSHORT}</div>
                <div class="col-12 col-md-3">
                    <div class="d-flex flex-wrap gap-1 justify-content-center">
                        <a href="{CONTACT_VIEWLINK}" class="btn btn-sm btn-primary" title="{PHP.L.View}">
                            <i class="fa-solid fa-eye me-1"></i>{PHP.L.Open}
                        </a>
                        <!-- IF {CONTACT_VAL} == val -->
                        <a href="{CONTACT_READLINK}" class="btn btn-sm btn-outline-success confirm" title="{PHP.L.contact_markread}">
                            <i class="fa-solid fa-check me-1"></i>{PHP.L.contact_read}
                        </a>
                        <!-- ELSE -->
                        <a href="{CONTACT_UNREADLINK}" class="btn btn-sm btn-outline-secondary" title="{PHP.L.contact_markunread}">
                            <i class="fa-solid fa-undo me-1"></i>{PHP.L.contact_unread}
                        </a>
                        <!-- ENDIF -->
                        <a href="{CONTACT_DELLINK}" class="btn btn-sm btn-outline-danger">
                            <i class="fa-solid fa-trash me-1"></i>{PHP.L.Delete}
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <!-- END: DATA -->
        <!-- IF !{TOTAL_ENTRIES} -->
        <div class="list-group-item">{PHP.L.None}</div>
        <!-- ENDIF -->
    </div>
</div>

<!-- IF {TOTAL_ENTRIES} -->
<nav aria-label="Page Pagination" class="mt-3">
    <div class="text-center mb-2">{PHP.L.Total}: {TOTAL_ENTRIES}, {PHP.L.Onpage}: {ENTRIES_ON_CURRENT_PAGE}</div>
    <ul class="pagination justify-content-center">{PREVIOUS_PAGE} {PAGINATION} {NEXT_PAGE}</ul>
</nav>
<!-- ENDIF -->

<!-- BEGIN: VIEW -->
<div class="card mb-3">
    <div class="card-header">
        <h2 class="h5 mb-0">
            {PHP.L.contact_view} #{CONTACT_ID}
            (<!-- IF {CONTACT_SUBJECT} -->{CONTACT_SUBJECT}<!-- ELSE -->{PHP.L.contact_nosubject}<!-- ENDIF -->)
        </h2>
    </div>
    <div class="card-body">
        <form action="{CONTACT_FORM_SEND}" method="post" name="contact_form">
            <div class="row mb-2">
                <div class="col-12 col-md-3"><span class="text-muted">{PHP.L.Username}:</span></div>
                <div class="col-12 col-md-9">{CONTACT_USER}</div>
			</div>
			<div class="row mb-2">
                <div class="col-12 col-md-3"><span class="text-muted">{PHP.L.Date}:</span></div>
                <div class="col-12 col-md-9">{CONTACT_DATE}</div>
			</div>
			<div class="row mb-2">
                <div class="col-12 col-md-3"><span class="text-muted">{PHP.L.Email}:</span></div>
                <div class="col-12 col-md-9">{CONTACT_EMAIL}</div>
			</div>
			<div class="row mb-2">
                <div class="col-12 col-md-3"><span class="text-muted">{PHP.L.Subject}:</span></div>
                <div class="col-12 col-md-9">
                    <!-- IF {CONTACT_SUBJECT} -->{CONTACT_SUBJECT}<!-- ELSE -->{PHP.L.contact_nosubject}<!-- ENDIF -->
                </div>
			</div>
			<div class="row mb-2">
                <div class="col-12 col-md-3"><span class="text-muted">{PHP.L.Message}:</span></div>
                <div class="col-12 col-md-9">{CONTACT_TEXT}</div>
			</div>
                <!-- BEGIN: EXTRAFLD -->
			<div class="row mb-2">
                <div class="col-12 col-md-3">{CONTACT_EXTRAFLD_TITLE}</div>
                <div class="col-12 col-md-9">{CONTACT_EXTRAFLD}</div>
			</div>
                <!-- END: EXTRAFLD -->
                <!-- IF {CONTACT_REPLY} -->
			<div class="row mb-2">
                <div class="col-12 col-md-3">{PHP.L.contact_sent}:</div>
                <div class="col-12 col-md-9">{CONTACT_REPLY}</div>
			</div>
                <!-- ENDIF -->
			<div class="row mb-2">
                <div class="col-12 col-md-3">{PHP.L.Reply}:</div>
                <div class="col-12 col-md-9">{CONTACT_FORM_TEXT}</div>
			</div>
                <div class="col-12">
                    <button type="submit" class="btn btn-primary">{PHP.L.Submit}</button>
                </div>
        </form>
    </div>
</div>
<!-- END: VIEW -->
<div class="alert alert-info" role="alert">
    contact.tools.tpl
</div>
<!-- END: MAIN -->
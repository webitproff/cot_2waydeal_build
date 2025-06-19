<!-- BEGIN: MAIN -->
    <!-- BEGIN: BEFORE_AJAX -->
        <div id="ajaxBlock">
    <!-- END: BEFORE_AJAX -->

    <div class="border-bottom border-secondary py-3 px-3">
        <nav aria-label="breadcrumb">
            <div class="ps-container-breadcrumb">
                <ol class="breadcrumb d-flex mb-0">
                    {PM_PAGETITLE}
                </ol>
            </div>
        </nav>
    </div>
        <div class="min-vh-50 px-2 px-md-3 py-4">
            <h2 class="h5 mb-0">{PHP.L.Private_Messages}</h2>
            <p class="small text-muted mb-3">{PM_SUBTITLE}</p>
            <div class="row">
                <div class="col-12 mx-auto">
                    <div class="row">
                        <div class="col-md-3 mb-3">
                            <div class="card">
                                <div class="card-body">
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item">{PM_INBOX} <span class="badge bg-info text-white">{PM_INBOX_COUNT}</span></li>
                                        <li class="list-group-item">{PM_SENTBOX} <span class="badge text-bg-info">{PM_SENTBOX_COUNT}</span></li>
                                        <li class="list-group-item">{PM_SENDNEWPM}</li>
                                    </ul>
                                    <p class="fw-semibold mb-2">{PHP.L.Filter}:</p>
                                    <ul class="nav flex-column">
                                        <li class="nav-item">{PM_FILTER_UNREAD}</li>
                                        <li class="nav-item">{PM_FILTER_STARRED}</li>
                                        <li class="nav-item"><a class="text-reset mb-0 fs-6 fw-semibold text-primary-emphasis text-decoration-none" href="{PM_FILTER_ALL_URL}" title="{PHP.L.pm_all}">{PHP.L.pm_all}</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-9">
                            <form action="{PM_FORM_UPDATE}" method="post" name="update" id="update" class="ajax">
                                <div class="card mb-5">
                                    <div class="card-header">
                                        <div class="row g-3">
                                            <div class="col-12 col-md-8">
                                                <div class="row g-2">
                                                    <div class="col-md-1 text-center">
                                                        <!-- IF {PHP.cfg.jquery} -->
                                                        <input class="form-check-input" type="checkbox" value="{PHP.L.pm_Selectall}/{PHP.L.pm_Unselectall}" onclick="$('.checkbox').attr('checked', this.checked);" />
                                                        <!-- ENDIF -->
                                                    </div>
                                                    <div class="col-md-2 text-center d-none d-md-block">{PHP.L.Status}</div>
                                                    <div class="col-md-2 text-center d-none d-md-block">
                                                        <div class="pm-star pm-star-readonly">
                                                            <a href="#" title="{PHP.L.pm_starred}"> </a>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-7 text-md-start d-none d-md-block">{PHP.L.Subject}</div>
                                                </div>
                                            </div>
                                            <div class="col-12 col-md-4 d-none d-md-block">
                                                <div class="row g-2">
                                                    <div class="col-md-4">{PM_SENT_TYPE}</div>
                                                    <div class="col-md-4">{PHP.L.Date}</div>
                                                    <div class="col-md-4">{PHP.L.Action}</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body p-0">
                                        <div class="list-group list-group-striped list-group-flush">
                                            <!-- BEGIN: PM_ROW -->
                                                <div class="list-group-item list-group-item-action {PM_ROW_ODDEVEN}">
                                                    <div class="row g-3">
                                                        <div class="col-12 col-md-8">
                                                            <div class="row g-2 align-items-center">
                                                                <div class="col-md-1 text-center">
                                                                    <input class="form-check-input checkbox" type="checkbox" name="msg[{PM_ROW_ID}]" />
                                                                </div>
                                                                <div class="col-md-2 text-center">{PM_ROW_ICON_STATUS}</div>
                                                                <div class="col-md-2 text-center">{PM_ROW_STAR}</div>
                                                                <div class="col-md-7">
                                                                    <p class="text-truncate text-reset mb-0 fs-6 fw-semibold text-primary-emphasis text-decoration-none">
                                                                        <!-- IF {PM_ROW_STARED} -->
                                                                        <span class="badge text-bg-warning me-2">{PHP.L.pm_starred}</span>
                                                                        <!-- ENDIF -->
                                                                        {PM_ROW_TITLE}
                                                                    </p>
                                                                    <p class="small text-muted mb-0">{PM_ROW_DESC|strip_tags($this)|mb_substr($this, 0, 120, 'UTF-8')}</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-12 col-md-4">
                                                            <div class="row g-2">
                                                                <div class="col col-md-4"><small class="text-body-secondary">{PM_ROW_USER_NAME}</small></div>
                                                                <div class="col col-md-4"><small class="text-body-secondary">{PM_ROW_DATE}</small></div>
                                                                <div class="col col-md-4"><small class="text-body-secondary">{PM_ROW_ICON_EDIT} {PM_ROW_ICON_DELETE_CONFIRM}</small></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            <!-- END: PM_ROW -->
                                            <!-- BEGIN: PM_ROW_EMPTY -->
                                                <div class="list-group-item text-center">
                                                    {PHP.L.None}
                                                </div>
                                            <!-- END: PM_ROW_EMPTY -->
                                        </div>
                                    </div>
                                </div>
                                <!-- IF {PHP.jj} > 0 -->
                                    <div class="mt-3">
                                        <div class="d-flex flex-wrap align-items-center gap-2">
                                            <span class="fw-semibold">{PHP.L.pm_selected}:</span>
                                            <select name="action" class="form-select w-auto" size="1">
                                                <option value="delete">{PHP.L.Delete}</option>
                                                <option value="star" selected="selected">{PHP.L.pm_putinstarred}</option>
                                            </select>
                                            <button type="submit" name="delete" class="btn btn-primary">{PHP.L.Confirm}</button>
                                        </div>
                                    </div>
                                    <!-- IF {PAGINATION} -->
                                        <nav class="mt-3" aria-label="Pagination">
                                            <ul class="pagination justify-content-center">
                                                {PREVIOUS_PAGE}{PAGINATION}{NEXT_PAGE}
                                            </ul>
                                        </nav>
                                    <!-- ENDIF -->
                                <!-- ENDIF -->
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <!-- This is the name of the template for informing the administrator -->
    <!-- IF {PHP.usr.maingrp} == 5 -->
        <div class="container-xl py-5">
            <div class="alert alert-warning" role="alert">
                <strong>{PHP.usr.name}</strong>, This is the HTML template
                <code>pm.list.tpl</code>
            </div>
        </div>
    <!-- ENDIF -->
    <!-- BEGIN: AFTER_AJAX -->
        </div>
    <!-- END: AFTER_AJAX -->
<!-- END: MAIN -->
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
            <div class="row g-4">
                <div class="col-md-3">
                    <div class="card">
                        <div class="card-body">
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">{PM_INBOX}</li>
                                <li class="list-group-item">{PM_SENTBOX}</li>
                                <li class="list-group-item">{PM_SENDNEWPM}</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="card mb-3">
                        <div class="card-body">
                            <p class="small text-muted mb-4">{PM_SUBTITLE}</p>
                            <div class="row mb-2">
                                <div class="col-lg-3 col-sm-6">
                                    <div class="actions list-group list-group-flush">
                                        <div class="list-group-item list-group-item-action">
                                            <div class="text-center">
											  <!-- IF {PHP|cot_plugin_active('userimages')} -->
											  <!-- IF {PM_USER_AVATAR_SRC} -->
											  <img src="{PM_USER_AVATAR_SRC}" alt="{PM_USER_NICKNAME}" class="rounded-circle img-fluid" width="76" height="76">
											  <!-- ELSE -->
											  <img src="{PHP.R.userimg_default_avatar}" alt="{PM_USER_NICKNAME}" class="rounded-circle img-fluid" width="76" height="76">
											  <!-- ENDIF -->
											  <!-- ENDIF -->
                                            </div>
                                        </div>
                                        <div class="list-group-item list-group-item-action text-center">
                                            <!-- IF {PHP.f} == 'inbox' -->
                                                <span class="fw-normal text-xs">{PHP.L.Sender}:</span>
                                                <br>
                                                <h5>{PM_USER_NAME}</h5>
                                            <!-- ENDIF -->
                                            <!-- IF {PHP.f} == 'sentbox' -->
                                                <span class="fw-normal text-xs">{PHP.L.Recipient}:</span>
                                                <br>
                                                <h5>{PM_USER_NAME}</h5>
                                            <!-- ENDIF -->
                                        </div>
                                        <div class="list-group-item list-group-item-action">
                                            <p class="text-dark-cot mb-0">
                                                <i class="fa-regular fa-calendar-check me-2"></i>{PM_DATE}
                                            </p>
                                        </div>
                                        <!-- IF {PM_QUOTE} -->
                                            <div class="list-group-item list-group-item-action">
                                                <p class="text-warning mb-0">
                                                    <i class="fa-solid fa-quote-left me-2"></i>{PM_QUOTE}
                                                </p>
                                            </div>
                                        <!-- ENDIF -->
                                        <!-- IF {PM_EDIT} -->
                                            <div class="list-group-item list-group-item-action">
                                                <p class="text-success mb-0">
                                                    <i class="fa-solid fa-user-pen me-2"></i>{PM_EDIT}
                                                </p>
                                            </div>
                                        <!-- ENDIF -->
                                        <!-- IF {PM_DELETE} -->
                                            <div class="list-group-item list-group-item-action">
                                                <p class="text-danger mb-0">
                                                    <i class="fa-solid fa-trash-can me-2"></i>{PM_DELETE}
                                                </p>
                                            </div>
                                        <!-- ENDIF -->
                                        <!-- IF {PM_HISTORY} -->
                                            <div class="list-group-item list-group-item-action">
                                                <p class="text-sm text-info mb-0">
                                                    <i class="fa-solid fa-clock-rotate-left me-2"></i>{PM_HISTORY}
                                                </p>
                                            </div>
                                        <!-- ENDIF -->
                                    </div>
                                </div>
                                <div class="col-lg-9 col-sm-6">
                                    <h5 class="mb-3">
                                        <span class="fw-normal">{PHP.L.Subject}:</span> {PM_TITLE}
                                    </h5>
                                    <div class="flex-nowrap overflow-x-auto">
                                        <div>
                                            {PM_TEXT}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="ajaxHistory">
                        <!-- BEGIN: HISTORY -->
                            <div class="card mb-3">
                                <div class="card-body">
                                    <h3 class="mt-4 mb-3">{PHP.L.pm_messagehistory}</h3>
                                    <div class="list-group">
                                        <!-- BEGIN: PM_ROW -->
                                            <div class="list-group-item d-flex flex-column flex-md-row {PM_ROW_ODDEVEN}">
                                                <div class="col-md-3 mb-2 mb-md-0">
                                                    <div class="">
													  <!-- IF {PHP|cot_plugin_active('userimages')} -->
													  <!-- IF {PM_ROW_USER_AVATAR_SRC} -->
													  <img src="{PM_ROW_USER_AVATAR_SRC}" alt="{PM_ROW_USER_NICKNAME}" class="rounded-circle img-fluid" width="76" height="76">
													  <!-- ELSE -->
													  <img src="{PHP.R.userimg_default_avatar}" alt="{PM_ROW_USER_NICKNAME}" class="rounded-circle img-fluid" width="76" height="76">
													  <!-- ENDIF -->
													  <!-- ENDIF -->
                                                    </div>
                                                    <p class="fw-semibold mb-1">{PM_ROW_USER_NAME}</p>
                                                    <p class="small text-muted mb-0">{PM_ROW_DATE}</p>
                                                </div>
                                                <div class="col-md-9">{PM_ROW_TEXT}</div>
                                            </div>
                                        <!-- END: PM_ROW -->
                                        <!-- BEGIN: PM_ROW_EMPTY -->
                                            <div class="list-group-item text-center py-4">
                                                {PHP.L.None}
                                            </div>
                                        <!-- END: PM_ROW_EMPTY -->
                                    </div>
                                    <!-- IF {PAGINATION} -->
                                        <nav class="mt-3" aria-label="Pagination">
                                            <ul class="pagination justify-content-center">
                                                {PREVIOUS_PAGE}{PAGINATION}{NEXT_PAGE}
                                            </ul>
                                        </nav>
                                    <!-- ENDIF -->
                                </div>
                            </div>
                        <!-- END: HISTORY -->
                    </div>
                    <!-- BEGIN: REPLY -->
                        <div class="card mb-3">
                            <div class="card-body">
                                <h3 class="mt-4 mb-3">{PHP.L.pm_replyto}</h3>
                                <form action="{PM_FORM_SEND}" method="post" name="newlink" class="needs-validation" novalidate>
                                    <div class="row g-2">
                                        <div class="col-12">
                                            <label for="pmTitle" class="form-label fw-semibold">{PHP.L.Subject}:</label>
                                            <div class="input-group has-validation">
                                                {PM_FORM_TITLE}
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <label for="pmText" class="form-label fw-semibold d-none">{PHP.L.Message}:</label>
                                            <div class="input-group has-validation">
                                                {PM_FORM_TEXT}
                                            </div>
                                        </div>
                                        <!-- IF {PHP|cot_module_active('files')} AND !{PHP|cot_module_active('pfs')} -->
                                            <div class="col-12">
                                                <label for="pmFiles" class="form-label fw-semibold">{PHP.L.Files}:</label>
                                                <div class="d-flex flex-wrap gap-2">
                                                    {PM_FORM_PFS}
                                                    {PM_FORM_SFS}
                                                </div>
                                            </div>
                                        <!-- ENDIF -->
                                        <!-- IF {PHP|cot_module_active('pfs')} AND !{PHP|cot_module_active('files')} -->
                                            <div class="col-12">
                                                <label for="pmFiles" class="form-label fw-semibold">{PHP.L.Files}:</label>
                                                <div class="d-flex flex-wrap gap-2">
                                                    {PM_FORM_PFS}
                                                    {PM_FORM_SFS}
                                                </div>
                                            </div>
                                        <!-- ENDIF -->
                                        <div class="col-12">
                                            <div class="form-check mb-3">
                                                {PM_FORM_NOT_TO_SENTBOX}
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                                                <button type="submit" class="btn btn-primary">{PHP.L.Reply}</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    <!-- END: REPLY -->
                </div>
            </div>
        </div>
    <!-- This is the name of the template for informing the administrator -->
    <!-- IF {PHP.usr.maingrp} == 5 -->
        <div class="container-xl py-5">
            <div class="alert alert-warning" role="alert">
                <strong>{PHP.usr.name}</strong>, This is the HTML template
                <code>pm.message.tpl</code>
            </div>
        </div>
    <!-- ENDIF -->
    <!-- BEGIN: AFTER_AJAX -->
        </div>
    <!-- END: AFTER_AJAX -->
<!-- END: MAIN -->
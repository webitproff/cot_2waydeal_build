<!-- BEGIN: LIST -->
<div class="block py-4">
    <div class="min-height-50vh d-flex flex-column px-2 px-md-3 py-4">
        <div class="row">
            <div class="col-12">
                <div class="list-group mb-3">
                    <div class="list-group-item list-group-item-dark">
                        <div class="row align-items-center fw-bold">
                            <div class="col-12 col-md-3">Icon & Name</div>
                            <div class="col-12 col-md-9">Description</div>
                        </div>
                    </div>
                    <!-- BEGIN: ADMIN_STRUCTURE_EXT -->
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 col-md-3 d-flex align-items-center">
                                <figure class="me-2">{ADMIN_STRUCTURE_EXT_ICON}</figure>
                                <div>
                                    <a href="{ADMIN_STRUCTURE_EXT_URL}">{ADMIN_STRUCTURE_EXT_NAME}</a>
                                </div>
                            </div>
                            <div class="col-12 col-md-9">
                                <!-- IF {ADMIN_STRUCTURE_EXT_DESC} -->
                                <p class="mb-0">{ADMIN_STRUCTURE_EXT_DESC}</p>
                                <!-- ENDIF -->
                            </div>
                        </div>
                    </div>
                    <!-- END: ADMIN_STRUCTURE_EXT -->
                    <!-- BEGIN: ADMIN_STRUCTURE_EMPTY -->
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12">{PHP.L.adm_listisempty}</div>
                        </div>
                    </div>
                    <!-- END: ADMIN_STRUCTURE_EMPTY -->
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END: LIST -->

<!-- BEGIN: MAIN -->
<div class="button-toolbar mb-3">
    <a href="{ADMIN_STRUCTURE_URL_EXTRAFIELDS}" class="btn btn-outline-secondary">{PHP.L.adm_extrafields}</a>
    <a href="{ADMIN_PAGE_STRUCTURE_RESYNCALL}" class="ajax special btn btn-outline-secondary" title="{PHP.L.adm_tpl_resyncalltitle}">{PHP.L.Resync}</a>
    <!-- IF {ADMIN_STRUCTURE_I18N_URL} -->
    <a href="{ADMIN_STRUCTURE_I18N_URL}" class="btn btn-outline-secondary">{PHP.L.i18n_structure}</a>
    <!-- ENDIF -->
</div>

{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}

<!-- BEGIN: DEFAULT -->
<!-- IF {ADMIN_STRUCTURE_TOTALITEMS} > 0 -->
<div class="block py-4">
    <form name="savestructure" id="savestructure" action="{ADMIN_STRUCTURE_UPDATE_FORM_URL}" method="post" class="ajax" enctype="multipart/form-data">
        <div class="list-group mb-3">
            <div class="list-group-item list-group-item-dark">
                <div class="row align-items-center fw-bold">
                    <div class="col-12 col-md-2">{PHP.L.Path}</div>
                    <div class="col-12 col-md-2">{PHP.L.Code}</div>
                    <div class="col-12 col-md-3">{PHP.L.Title}</div>
                    <div class="col-12 col-md-2">{PHP.L.TPL}</div>
                    <div class="col-12 col-md-1">{PHP.L.Pages}</div>
                    <div class="col-12 col-md-2">{PHP.L.Action}</div>
                </div>
            </div>
            <!-- BEGIN: ROW -->
            <div class="list-group-item {ADMIN_STRUCTURE_ODDEVEN}">
                <div class="row align-items-center">
                    <div class="col-12 col-md-2">{ADMIN_STRUCTURE_PATH}</div>
                    <div class="col-12 col-md-2">{ADMIN_STRUCTURE_CODE}</div>
                    <div class="col-12 col-md-3">{ADMIN_STRUCTURE_TITLE}</div>
                    <div class="col-12 col-md-2">{ADMIN_STRUCTURE_TPL_CODE}</div>
                    <div class="col-12 col-md-1 text-center">{ADMIN_STRUCTURE_COUNT}</div>
                    <div class="col-12 col-md-2 d-flex flex-wrap gap-2">
                        <a href="{ADMIN_STRUCTURE_OPTIONS_URL}" class="ajax btn btn-outline-secondary btn-sm" title="{PHP.L.Options}">{PHP.L.Config}</a>
                        <!-- IF {ADMIN_STRUCTURE_RIGHTS_URL} -->
                        <a href="{ADMIN_STRUCTURE_RIGHTS_URL}" class="btn btn-outline-secondary btn-sm">{PHP.L.Rights}</a>
                        <!-- ENDIF -->
                        <!-- IF {ADMIN_STRUCTURE_CAN_DELETE} -->
                        <a href="{ADMIN_STRUCTURE_DELETE_CONFIRM_URL}" class="confirmLink btn btn-danger btn-sm">{PHP.L.Delete}</a>
                        <!-- ENDIF -->
                        <a href="{ADMIN_STRUCTURE_JUMPTO_URL}" class="special btn btn-outline-secondary btn-sm" title="{PHP.L.Pages}">{PHP.L.Open}</a>
                    </div>
                </div>
            </div>
            <!-- END: ROW -->
            <div class="list-group-item">
                <div class="row">
                    <div class="col-12">
                        <input type="submit" class="submit btn btn-outline-secondary" value="{PHP.L.Update}" />
                    </div>
                </div>
            </div>
        </div>
    </form>
    <!-- IF {ADMIN_STRUCTURE_TOTALITEMS} -->
	<div class="col-12">
	  <nav aria-label="Page Pagination" class="mt-3">
		<div class="text-center mb-2">{PHP.L.Total}: {ADMIN_STRUCTURE_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_STRUCTURE_COUNTER_ROW}</div>
		<ul class="pagination justify-content-center">
		  {ADMIN_STRUCTURE_PAGINATION_PREV}{ADMIN_STRUCTURE_PAGNAV}{ADMIN_STRUCTURE_PAGINATION_NEXT}
		</ul>
	  </nav>
	</div>
    <!-- ENDIF -->
</div>
<!-- ENDIF -->
<!-- END: DEFAULT -->

<!-- BEGIN: OPTIONS -->
<form name="savestructure" id="savestructure" action="{ADMIN_STRUCTURE_UPDATE_FORM_URL}" method="post" enctype="multipart/form-data">
    <div class="block py-4">
        <h2 class="mb-3">{PHP.L.Configuration}</h2>
        <div class="wrapper">
            <div class="list-group mb-3">
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{PHP.L.Path}:</div>
                        <div class="col-12 col-md-9">{ADMIN_STRUCTURE_PATH}</div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{PHP.L.Code}:</div>
                        <div class="col-12 col-md-9">{ADMIN_STRUCTURE_CODE}</div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{PHP.L.Title}:</div>
                        <div class="col-12 col-md-9">{ADMIN_STRUCTURE_TITLE}</div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{PHP.L.Description}:</div>
                        <div class="col-12 col-md-9">{ADMIN_STRUCTURE_DESC}</div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{PHP.L.Icon}:</div>
                        <div class="col-12 col-md-9">{ADMIN_STRUCTURE_ICON}</div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{PHP.L.Locked}:</div>
                        <div class="col-12 col-md-9">{ADMIN_STRUCTURE_LOCKED}</div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{PHP.L.adm_tpl_mode}:</div>
                        <div class="col-12 col-md-9">{ADMIN_STRUCTURE_TPL}</div>
                    </div>
                </div>
                <!-- BEGIN: EXTRAFLD -->
                <div class="list-group-item {ADMIN_STRUCTURE_ODDEVEN}">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{ADMIN_STRUCTURE_EXTRAFLD_TITLE}:</div>
                        <div class="col-12 col-md-9">{ADMIN_STRUCTURE_EXTRAFLD}</div>
                    </div>
                </div>
                <!-- END: EXTRAFLD -->
            </div>
        </div>
    </div>

    <!-- BEGIN: CONFIG -->
    <div class="block py-4">
        <h2 class="mb-3">{PHP.L.Options}</h2>
        {CONFIG_HIDDEN}
        {ADMIN_CONFIG_EDIT_CUSTOM}
        <div class="wrapper">
            <div class="list-group mb-3">
                <div class="list-group-item list-group-item-dark">
                    <div class="row align-items-center fw-bold">
                        <div class="col-12 col-md-4">{PHP.L.Parameter}</div>
                        <div class="col-12 col-md-7">{PHP.L.Value}</div>
                        <div class="col-12 col-md-1">{PHP.L.Reset}</div>
                    </div>
                </div>
                <!-- BEGIN: ADMIN_CONFIG_ROW -->
                <!-- BEGIN: ADMIN_CONFIG_FIELDSET_BEGIN -->
                <div class="list-group-item group_begin">
                    <div class="row align-items-center">
                        <div class="col-12">
                            <h4>{ADMIN_CONFIG_FIELDSET_TITLE}</h4>
                        </div>
                    </div>
                </div>
                <!-- END: ADMIN_CONFIG_FIELDSET_BEGIN -->
                <!-- BEGIN: ADMIN_CONFIG_ROW_OPTION -->
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-4">{ADMIN_CONFIG_ROW_CONFIG_TITLE}:</div>
                        <div class="col-12 col-md-7">
                            {ADMIN_CONFIG_ROW_CONFIG}
                            <div class="adminconfigmore">{ADMIN_CONFIG_ROW_CONFIG_MORE}</div>
                        </div>
                        <div class="col-12 col-md-1 text-center">
                            <a href="{ADMIN_CONFIG_ROW_CONFIG_MORE_URL}" class="ajax btn btn-outline-secondary btn-sm">{PHP.L.Reset}</a>
                        </div>
                    </div>
                </div>
                <!-- END: ADMIN_CONFIG_ROW_OPTION -->
                <!-- END: ADMIN_CONFIG_ROW -->
            </div>
        </div>
    </div>
    <!-- END: CONFIG -->

    <div class="button-toolbar py-3">
        <input type="submit" class="submit btn btn-outline-secondary" value="{PHP.L.Update}" />
    </div>
</form>
<!-- END: OPTIONS -->

<!-- BEGIN: NEWCAT -->
<div class="block py-4">
    <h2 class="mb-3">{PHP.L.Add}:</h2>
    <div class="wrapper">
        <form name="addstructure" id="addstructure" action="{ADMIN_STRUCTURE_URL_FORM_ADD}" method="post" class="ajax" enctype="multipart/form-data">
            <div class="list-group mb-3">
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{PHP.L.Path}:</div>
                        <div class="col-12 col-md-9">{ADMIN_STRUCTURE_PATH} {PHP.L.adm_required}</div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{PHP.L.Code}:</div>
                        <div class="col-12 col-md-9">{ADMIN_STRUCTURE_CODE} {PHP.L.adm_required}</div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{PHP.L.Title}:</div>
                        <div class="col-12 col-md-9">{ADMIN_STRUCTURE_TITLE} {PHP.L.adm_required}</div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{PHP.L.Description}:</div>
                        <div class="col-12 col-md-9">{ADMIN_STRUCTURE_DESC}</div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{PHP.L.Icon}:</div>
                        <div class="col-12 col-md-9">{ADMIN_STRUCTURE_ICON}</div>
                    </div>
                </div>
                <!-- IF {ADMIN_STRUCTURE_TPL} -->
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{PHP.L.adm_tpl_mode}:</div>
                        <div class="col-12 col-md-9">{ADMIN_STRUCTURE_TPL}</div>
                    </div>
                </div>
                <!-- ENDIF -->
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{PHP.L.Locked}:</div>
                        <div class="col-12 col-md-9">{ADMIN_STRUCTURE_LOCKED}</div>
                    </div>
                </div>
                <!-- BEGIN: EXTRAFLD -->
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{ADMIN_STRUCTURE_EXTRAFLD_TITLE}:</div>
                        <div class="col-12 col-md-9">{ADMIN_STRUCTURE_EXTRAFLD}</div>
                    </div>
                </div>
                <!-- END: EXTRAFLD -->
                <div class="list-group-item">
                    <div class="row">
                        <div class="col-12">
                            <input type="submit" class="submit btn btn-outline-secondary" value="{PHP.L.Add}" />
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<!-- END: NEWCAT -->
<div class="alert alert-info" role="alert">
  admin.structure.tpl
</div>
<!-- END: MAIN -->
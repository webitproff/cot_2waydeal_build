<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}

<!-- BEGIN: DEFAULT -->
    <div class="min-height-50vh d-flex flex-column px-2 px-md-3 py-4">
        <div class="row">
            <div class="col-12 pb-4">
				<div class="row g-2">
					<div class="col-12 col-lg-3">
						<a class="btn btn-outline-secondary w-100 <!-- IF {ADMIN_EXTENSIONS_SORT_ALP_SEL} -->btn-special<!-- ENDIF -->" href="{ADMIN_EXTENSIONS_SORT_ALP_URL}">{PHP.L.adm_sort_alphabet}</a>
					</div>
					<div class="col-12 col-lg-3">
						<a class="btn btn-outline-secondary w-100 <!-- IF {ADMIN_EXTENSIONS_SORT_CAT_SEL} -->btn-special<!-- ENDIF -->" href="{ADMIN_EXTENSIONS_SORT_CAT_URL}">{PHP.L.adm_sort_category}</a>
					</div>
					<div class="col-12 col-lg-3">
						<a class="btn btn-outline-secondary w-100 <!-- IF {ADMIN_EXTENSIONS_ONLY_INSTALLED_SEL} -->btn-special<!-- ENDIF -->" href="{ADMIN_EXTENSIONS_ONLY_INSTALLED_URL}">{PHP.L.adm_only_installed}</a>
					</div>
					<div class="col-12 col-lg-3">
						<a href="{ADMIN_EXTENSIONS_HOOKS_URL}" class="btn btn-outline-secondary w-100">{PHP.L.Hooks}</a>
					</div>
				</div>

                <!-- BEGIN: SECTION -->
                <h2 class="mt-3">{ADMIN_EXTENSIONS_SECTION_TITLE} ({ADMIN_EXTENSIONS_CNT_EXTP})</h2>
                <div class="list-group list-group-striped list-group-flush mb-3 border-bottom">
                    <div class="list-group-item list-group-item-dark d-none d-lg-block">
                        <div class="row align-items-center fw-bold">
                            <div class="col-12 col-lg-3">{PHP.L.Name} {PHP.L.adm_clicktoedit}</div>
                            <div class="col-12 col-lg-1">{PHP.L.Code}</div>
                            <div class="col-12 col-lg-1">{PHP.L.Version}</div>
                            <div class="col-12 col-lg-1">{PHP.L.Parts}</div>
                            <div class="col-12 col-lg-1">{PHP.L.Status}</div>
                            <div class="col-12 col-lg-5">{PHP.L.Action}</div>
                        </div>
                    </div>

                    <!-- BEGIN: ROW -->
                    <!-- BEGIN: ROW_CAT -->
                    <div class="list-group-item list-group-item-secondary">
                        <div class="row">
                            <div class="col-12">
                                <h3>{ADMIN_EXTENSIONS_CAT_TITLE}</h3>
                            </div>
                        </div>
                    </div>
                    <!-- END: ROW_CAT -->
                    <!-- BEGIN: ROW_ERROR_EXT -->
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 col-lg-3">{ADMIN_EXTENSIONS_X_ERR}</div>
                            <div class="col-12 col-lg-9">{ADMIN_EXTENSIONS_ERROR_MSG}</div>
                        </div>
                    </div>
                    <!-- END: ROW_ERROR_EXT -->
                    <div class=" list-group-item list-group-item-action">
                        <div class="row align-items-center">
                            <div class="col-12 col-lg-3 d-flex align-items-center">
                                <figure class="me-2">{ADMIN_EXTENSIONS_ICON}</figure>
                                <div>
                                    <a href="{ADMIN_EXTENSIONS_DETAILS_URL}"><h5>{ADMIN_EXTENSIONS_NAME}</h5></a>
                                    <!-- IF {ADMIN_EXTENSIONS_DESCRIPTION} -->
                                    <p class="small text-muted">{ADMIN_EXTENSIONS_DESCRIPTION|cot_cutstring($this, 60)}</p>
                                    <!-- ENDIF -->
                                </div>
                            </div>
                            <div class="col-12 col-lg-1 d-none d-lg-block"><code>{ADMIN_EXTENSIONS_CODE_X}</code></div>
                            <div class="col-12 col-lg-1 d-none d-lg-block">
                                <!-- IF {PHP.part_status} != 3 AND {ADMIN_EXTENSIONS_VERSION_COMPARE} > 0 -->
                                <span class="text-danger">{ADMIN_EXTENSIONS_VERSION_INSTALLED}</span> /
                                <span class="text-success">{ADMIN_EXTENSIONS_VERSION}</span>
                                <!-- ELSE -->
                               <span class="badge text-bg-secondary">{ADMIN_EXTENSIONS_VERSION}</span>
                                <!-- ENDIF -->
                            </div>
                            <div class="col-12 col-lg-1 text-center d-none d-lg-block">{ADMIN_EXTENSIONS_PARTSCOUNT}</div>
                            <div class="col-12 col-lg-1 text-center pb-2 pb-lg-0">
							<!-- IF {PHP.part_status} == 1 -->
							<span class="badge text-bg-success">{ADMIN_EXTENSIONS_STATUS}</span>
							<!-- ELSE -->
							{ADMIN_EXTENSIONS_STATUS}
							<!-- ENDIF -->
							</div>
                            <div class="col-12 col-lg-5">
                                <!-- IF {ADMIN_EXTENSIONS_TOTALCONFIG} -->
                                <a title="{PHP.L.Configuration}" href="{ADMIN_EXTENSIONS_EDIT_URL}" class="btn btn-outline-secondary btn-sm">{PHP.L.Config}</a>
                                <!-- ENDIF -->
                                <!-- IF {ADMIN_EXTENSIONS_STRUCTURE_URL} -->
                                <a title="{PHP.L.Structure}" href="{ADMIN_EXTENSIONS_STRUCTURE_URL}" class="btn btn-outline-secondary btn-sm">{PHP.L.Structure}</a>
                                <!-- ENDIF -->
                                <!-- IF {ADMIN_EXTENSIONS_RIGHTS_URL} -->
                                <a title="{PHP.L.Rights}" href="{ADMIN_EXTENSIONS_RIGHTS_URL}" class="btn btn-outline-secondary btn-sm">{PHP.L.Rights}</a>
                                <!-- ENDIF -->
                                <!-- IF {ADMIN_EXTENSIONS_ADMIN_URL} -->
                                <a title="{PHP.L.Administration}" href="{ADMIN_EXTENSIONS_ADMIN_URL}" class="btn btn-outline-secondary btn-sm btn-special">{PHP.L.Admin}</a>
                                <!-- ENDIF -->
                                <!-- IF {ADMIN_EXTENSIONS_JUMPTO_URL} -->
                                <a title="{PHP.L.Open}" href="{ADMIN_EXTENSIONS_JUMPTO_URL}" class="btn btn-outline-secondary btn-sm btn-special">{PHP.L.Open}</a>
                                <!-- ENDIF -->
                            </div>
                        </div>
                    </div>
                    <!-- END: ROW -->
                    <!-- BEGIN: ROW_ERROR -->
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 col-lg-3">{ADMIN_EXTENSIONS_X}</div>
                            <div class="col-12 col-lg-9">{PHP.L.adm_opt_setup_missing}</div>
                        </div>
                    </div>
                    <!-- END: ROW_ERROR -->
                </div>
                <!-- END: SECTION -->
            </div>
        </div>
    </div>
<!-- END: DEFAULT -->

<!-- BEGIN: DETAILS -->
<div class="py-4">
    <div class="min-height-50vh d-flex flex-column px-2 px-md-3 py-4">
        <div class="row">
            <div class="col-12">
                <h2>{ADMIN_EXTENSIONS_ICON} {ADMIN_EXTENSIONS_TYPE} {ADMIN_EXTENSIONS_NAME}:</h2>
                <!-- IF {PHP.isInstalled} AND {PHP.exists} -->
                <div class="row row-cols-1 row-cols-md-2 row-cols-lg-5 g-3 mb-4">
                    <!-- IF {ADMIN_EXTENSIONS_JUMPTO_URL} -->
                    <div class="col-12">
                        <a title="{PHP.L.Open}" href="{ADMIN_EXTENSIONS_JUMPTO_URL}" class="btn btn-outline-secondary btn-special">{PHP.L.Open}</a>
                    </div>
                    <!-- ENDIF -->
                    <!-- IF {ADMIN_EXTENSIONS_ADMIN_URL} -->
                    <div class="col-12">
                        <a title="{PHP.L.Administration}" href="{ADMIN_EXTENSIONS_ADMIN_URL}" class="btn btn-outline-secondary btn-special">{PHP.L.Administration}</a>
                    </div>
                    <!-- ENDIF -->
                    <!-- IF {ADMIN_EXTENSIONS_TOTALCONFIG} > 0 -->
                    <div class="col-12">
                        <a title="{PHP.L.Configuration}" href="{ADMIN_EXTENSIONS_CONFIG_URL}" class="btn btn-outline-secondary">{PHP.L.Configuration} ({ADMIN_EXTENSIONS_TOTALCONFIG})</a>
                    </div>
                    <!-- ENDIF -->
                    <!-- IF {ADMIN_EXTENSIONS_RIGHTS_URL} -->
                    <div class="col-12">
                        <a title="{PHP.L.Rights}" href="{ADMIN_EXTENSIONS_RIGHTS_URL}" class="btn btn-outline-secondary">{PHP.L.Rights}</a>
                    </div>
                    <!-- ENDIF -->
                    <!-- IF {ADMIN_EXTENSIONS_STRUCTURE_URL} -->
                    <div class="col-12">
                        <a title="{PHP.L.Structure}" href="{ADMIN_EXTENSIONS_STRUCTURE_URL}" class="btn btn-outline-secondary">{PHP.L.Structure}</a>
                    </div>
                    <!-- ENDIF -->
                </div>
                <!-- ENDIF -->
                <div class="list-group mb-3">
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 col-lg-3">{PHP.L.Code}:</div>
                            <div class="col-12 col-lg-9">{ADMIN_EXTENSIONS_CODE}</div>
                        </div>
                    </div>
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 col-lg-3">{PHP.L.Description}:</div>
                            <div class="col-12 col-lg-9">{ADMIN_EXTENSIONS_DESCRIPTION}</div>
                        </div>
                    </div>
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 col-lg-3">{PHP.L.Version}:</div>
                            <div class="col-12 col-lg-9">
                                <!-- IF {PHP.isInstalled} AND {ADMIN_EXTENSIONS_VERSION_COMPARE} > 0 -->
                                <span class="text-danger">{ADMIN_EXTENSIONS_VERSION_INSTALLED}</span> / <span class="text-success">{ADMIN_EXTENSIONS_VERSION}</span>
                                <!-- ELSE -->
                                {ADMIN_EXTENSIONS_VERSION}
                                <!-- ENDIF -->
                            </div>
                        </div>
                    </div>
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 col-lg-3">{PHP.L.Date}:</div>
                            <div class="col-12 col-lg-9">{ADMIN_EXTENSIONS_DATE}</div>
                        </div>
                    </div>
                    <!-- IF {ADMIN_EXTENSIONS_CATEGORY_TITLE} AND {ADMIN_EXTENSIONS_CATEGORY} != 'misc-ext' -->
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 col-lg-3">{PHP.L.Category}:</div>
                            <div class="col-12 col-lg-9">{ADMIN_EXTENSIONS_CATEGORY_TITLE}</div>
                        </div>
                    </div>
                    <!-- ENDIF -->
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 col-lg-3">{PHP.L.Author}:</div>
                            <div class="col-12 col-lg-9">{ADMIN_EXTENSIONS_AUTHOR}</div>
                        </div>
                    </div>
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 col-lg-3">{PHP.L.Copyright}:</div>
                            <div class="col-12 col-lg-9">{ADMIN_EXTENSIONS_COPYRIGHT}</div>
                        </div>
                    </div>
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 col-lg-3">{PHP.L.Notes}:</div>
                            <div class="col-12 col-lg-9">{ADMIN_EXTENSIONS_NOTES}</div>
                        </div>
                    </div>
                    <!-- BEGIN: DEPENDENCIES -->
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 col-lg-3">{ADMIN_EXTENSIONS_DEPENDENCIES_TITLE}:</div>
                            <div class="col-12 col-lg-9">
                                <ul>
                                    <!-- BEGIN: DEPENDENCIES_ROW -->
                                    <li>
                                        <!-- IF {ADMIN_EXTENSIONS_DEPENDENCIES_ROW_URL} != '' -->
                                        <a href="{ADMIN_EXTENSIONS_DEPENDENCIES_ROW_URL}" class="{ADMIN_EXTENSIONS_DEPENDENCIES_ROW_CLASS}">{ADMIN_EXTENSIONS_DEPENDENCIES_ROW_NAME}</a>
                                        <!-- ELSE -->
                                        <span class="{ADMIN_EXTENSIONS_DEPENDENCIES_ROW_CLASS}">{ADMIN_EXTENSIONS_DEPENDENCIES_ROW_NAME}</span>
                                        <!-- ENDIF -->
                                    </li>
                                    <!-- END: DEPENDENCIES_ROW -->
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- END: DEPENDENCIES -->
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12">
                                <!-- IF !{PHP.isInstalled} AND {PHP.dependencies_satisfied} -->
                                <a title="{PHP.L.adm_opt_install_explain}" href="{ADMIN_EXTENSIONS_INSTALL_URL}" class="btn btn-outline-primary btn-special m-1">{PHP.L.adm_opt_install}</a>
                                <!-- ENDIF -->
                                <!-- IF {PHP.isInstalled} -->
                                <!-- IF {PHP.exists} -->
                                <a title="{PHP.L.adm_opt_install_explain}" href="{ADMIN_EXTENSIONS_UPDATE_URL}" class="btn btn-outline-success btn-special m-1">{PHP.L.adm_opt_update}</a>
                                <!-- ENDIF -->
                                <a title="{PHP.L.adm_opt_uninstall_explain}" href="{ADMIN_EXTENSIONS_UNINSTALL_URL}" class="ajax btn btn-outline-danger m-1">{PHP.L.adm_opt_uninstall}</a>
                                <a title="{PHP.L.adm_opt_pauseall_explain}" href="{ADMIN_EXTENSIONS_PAUSE_URL}" class="btn btn-outline-warning m-1">{PHP.L.adm_opt_pauseall}</a>
                                <!-- IF {PHP.exists} -->
                                <a title="{PHP.L.adm_opt_unpauseall_explain}" href="{ADMIN_EXTENSIONS_UNPAUSE_URL}" class="btn btn-outline-info m-1">{PHP.L.adm_opt_unpauseall}</a>
                                <!-- ENDIF -->
                                <!-- ENDIF -->
                            </div>
                        </div>
                    </div>
                </div>

                <h2>{PHP.L.Parts}:</h2>
                <div class="list-group mb-3">
                    <div class="list-group-item list-group-item-dark">
                        <div class="row align-items-center fw-bold">
							<div class="col-12 col-lg-1">#</div>
                            <div class="col-12 col-lg-1">{PHP.L.Part}</div>
                            <div class="col-12 col-lg-3">{PHP.L.File}</div>
                            <div class="col-12 col-lg-3">{PHP.L.Hooks}</div>
                            <div class="col-12 col-lg-1">{PHP.L.Order}</div>
                            <div class="col-12 col-lg-1">{PHP.L.Status}</div>
                            <div class="col-12 col-lg-2">{PHP.L.Action}</div>
                        </div>
                    </div>
                    <!-- BEGIN: ROW_ERROR_PART -->
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 col-lg-1">{ADMIN_EXTENSIONS_DETAILS_ROW_I_1}</div>
                            <div class="col-12 col-lg-1">{ADMIN_EXTENSIONS_DETAILS_ROW_PART}</div>
                            <div class="col-12 col-lg-2">{ADMIN_EXTENSIONS_DETAILS_ROW_FILE}</div>
                            <div class="col-12 col-lg-2">{ADMIN_EXTENSIONS_DETAILS_ROW_HOOKS}</div>
                            <div class="col-12 col-lg-5">{ADMIN_EXTENSIONS_DETAILS_ROW_ERROR}</div>
                        </div>
                    </div>
                    <!-- END: ROW_ERROR_PART -->
                    <!-- BEGIN: ROW_PART -->
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 col-lg-1">{ADMIN_EXTENSIONS_DETAILS_ROW_I_1}</div>
                            <div class="col-12 col-lg-1 text-wrap">{ADMIN_EXTENSIONS_DETAILS_ROW_PART}</div>
                            <div class="col-12 col-lg-3 text-wrap">{ADMIN_EXTENSIONS_DETAILS_ROW_FILE}</div>
                            <div class="col-12 col-lg-3 text-wrap">{ADMIN_EXTENSIONS_DETAILS_ROW_HOOKS}</div>
                            <div class="col-12 col-lg-1 text-wrap">
                                <!-- IF {ADMIN_EXTENSIONS_DETAILS_ROW_ORDER_INSTALLED} != '' AND {ADMIN_EXTENSIONS_DETAILS_ROW_ORDER_INSTALLED} != {ADMIN_EXTENSIONS_DETAILS_ROW_ORDER} -->
                                <span class="text-danger">{ADMIN_EXTENSIONS_DETAILS_ROW_ORDER_INSTALLED}</span> /
                                <span class="text-success">{ADMIN_EXTENSIONS_DETAILS_ROW_ORDER}</span>
                                <!-- ELSE -->
                                {ADMIN_EXTENSIONS_DETAILS_ROW_ORDER}
                                <!-- ENDIF -->
                            </div>
                            <div class="col-12 col-lg-1">{ADMIN_EXTENSIONS_DETAILS_ROW_STATUS}</div>
                            <div class="col-12 col-lg-2">
                                <!-- BEGIN: ROW_PART_NOTINSTALLED -->
                                –
                                <!-- END: ROW_PART_NOTINSTALLED -->
                                <!-- BEGIN: ROW_PART_PAUSE -->
                                <a href="{ADMIN_EXTENSIONS_DETAILS_ROW_PAUSEPART_URL}" class="ajax btn btn-outline-secondary">{PHP.L.adm_opt_pause}</a>
                                <!-- END: ROW_PART_PAUSE -->
                                <!-- BEGIN: ROW_PART_UNPAUSE -->
                                <a href="{ADMIN_EXTENSIONS_DETAILS_ROW_UNPAUSEPART_URL}" class="ajax btn btn-outline-info">{PHP.L.adm_opt_unpause}</a>
                                <!-- END: ROW_PART_UNPAUSE -->
                            </div>
                        </div>
                    </div>
                    <!-- END: ROW_PART -->
                </div>

                <h2>{PHP.L.Tags}:</h2>
                <div class="list-group mb-3">
                    <div class="list-group-item list-group-item-dark">
                        <div class="row align-items-center fw-bold">
                            <div class="col-12 col-lg-1">#</div>
                            <div class="col-12 col-lg-3">{PHP.L.Part}</div>
                            <div class="col-12 col-lg-8">{PHP.L.Files} / {PHP.L.Tags}</div>
                        </div>
                    </div>
                    <!-- BEGIN: ROW_ERROR_TAGS -->
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 col-lg-1">{ADMIN_EXTENSIONS_DETAILS_ROW_I_1}</div>
                            <div class="col-12 col-lg-3">{ADMIN_EXTENSIONS_DETAILS_ROW_PART}</div>
                            <div class="col-12 col-lg-8">{PHP.L.None}</div>
                        </div>
                    </div>
                    <!-- END: ROW_ERROR_TAGS -->
                    <!-- BEGIN: ROW_TAGS -->
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 col-lg-1">{ADMIN_EXTENSIONS_DETAILS_ROW_I_1}</div>
                            <div class="col-12 col-lg-3">{ADMIN_EXTENSIONS_DETAILS_ROW_PART}</div>
                            <div class="col-12 col-lg-8">{ADMIN_EXTENSIONS_DETAILS_ROW_LISTTAGS}</div>
                        </div>
                    </div>
                    <!-- END: ROW_TAGS -->
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END: DETAILS -->

<!-- BEGIN: HOOKS -->
<div class="py-4">
    <div class="min-height-50vh d-flex flex-column px-2 px-md-3 py-4">
        <div class="row">
            <div class="col-12">
                <h2>{PHP.L.Hooks} ({ADMIN_EXTENSIONS_CNT_HOOK}):</h2>
                <div class="list-group mb-3">
                    <div class="list-group-item list-group-item-dark">
                        <div class="row align-items-center fw-bold">
                            <div class="col-12 col-lg-4">{PHP.L.Hooks}</div>
                            <div class="col-12 col-lg-3">{PHP.L.Plugin}</div>
                            <div class="col-12 col-lg-2">{PHP.L.Order}</div>
                            <div class="col-12 col-lg-3">{PHP.L.Active}</div>
                        </div>
                    </div>
                    <!-- BEGIN: HOOKS_ROW -->
                    <div class="list-group-item">
                        <div class="row align-items-center">
                            <div class="col-12 col-lg-4">{ADMIN_EXTENSIONS_HOOK}</div>
                            <div class="col-12 col-lg-3">{ADMIN_EXTENSIONS_CODE}</div>
                            <div class="col-12 col-lg-2 text-center">{ADMIN_EXTENSIONS_ORDER}</div>
                            <div class="col-12 col-lg-3 text-center">{ADMIN_EXTENSIONS_ACTIVE}</div>
                        </div>
                    </div>
                    <!-- END: HOOKS_ROW -->
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END: HOOKS -->
<div class="alert alert-info" role="alert">
  admin.extensions.tpl
</div>
<!-- END: MAIN -->
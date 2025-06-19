<!-- BEGIN: MAIN -->
    <!-- BEGIN: STANDALONE_HEADER -->
        <!DOCTYPE html>
        <html lang="{PHP.cfg.defaultlang}">
            <head>
                <title>{PHP.L.pfs_title} - {PHP.cfg.maintitle}</title>
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1" />
                <base href="{PHP.cfg.mainurl}/" />
                {PFS_HEAD}
                <script type="text/javascript">
                    //<![CDATA[
                    {PFS_HEADER_JAVASCRIPT}
                    //]]>
                </script>
                <link href="{PHP.cfg.themes_dir}/{PHP.theme}/css/{PHP.scheme}.css" type="text/css" rel="stylesheet" />
            </head>
            <body>
    <!-- END: STANDALONE_HEADER -->
				<div class="border-bottom border-secondary py-3 px-3">
				  <nav aria-label="breadcrumb">
					<div class="ps-container-breadcrumb">
					  <ol class="breadcrumb d-flex mb-0">
						{PFS_TITLE} {PFS_PATH}
					  </ol>
					</div>
				  </nav>
				</div>
                <div class="container-xl py-5 min-height-50vh">
                    <!-- IF {PFS_SUBTITLE} -->
                        <p class="small">{PFS_SUBTITLE}</p>
                    <!-- ENDIF -->
                    <!-- BEGIN: PFS_ERRORS -->
                        <div style="py-4 mb-4">
                            <div class="alert alert-primary" role="alert">
                                <ul>
                                    <!-- BEGIN: PFS_ERRORS_ROW -->
                                        <li>{PFS_ERRORS_ROW_MSG}</li>
                                    <!-- END: PFS_ERRORS_ROW -->
                                </ul>
                            </div>
                        </div>
                    <!-- END: PFS_ERRORS -->
                    <div style="py-4 mb-4">
                        <div class="alert alert-info" role="alert">
                            <p>{PHP.L.pfs_totalsize}: {PFS_TOTALSIZE} {PHP.L.Of} {PFS_MAXTOTAL} ({PFS_PERCENTAGE}%)</p>
                            <div class="bar_back">
                                <div class="bar_front" style="width:{PFS_PERCENTAGE}%;"></div>
                            </div>
                            <p>{PHP.L.pfs_maxsize}: {PFS_MAXFILESIZE}</p>
                        </div>
                    </div>
                    <!-- IF {PFS_FOLDER_ID} == 0 AND {PFF_FOLDERCOUNT} > 0 -->
                        <h3 class="h4 mb-4">{PFF_FOLDERCOUNT_TITLE} / {PFF_FILESCOUNT_TITLE} ({PHP.L.pfs_onpage}: {PFF_ONPAGE_FOLDERS_TITLE} / {PFF_ONPAGE_FILES_TITLE})</h3>
                        <div class="list-group list-group-striped list-group-flush">
                            <div class="list-group-item">
                                <div class="row align-items-center fw-bold">
                                    <div class="col-12 col-md-1"></div>
                                    <div class="col-12 col-md-3">{PHP.L.Folder} / {PHP.L.Gallery}</div>
                                    <div class="col-12 col-md-2 text-center">{PHP.L.Public}</div>
                                    <div class="col-12 col-md-1 text-center">{PHP.L.Files}</div>
                                    <div class="col-12 col-md-1 text-center">{PHP.L.Size}</div>
                                    <div class="col-12 col-md-2 text-center">{PHP.L.Updated}</div>
                                    <div class="col-12 col-md-2 text-center">{PHP.L.Action}</div>
                                </div>
                            </div>
                            <!-- BEGIN: PFF_ROW -->
                                <div class="list-group-item">
                                    <div class="row align-items-center">
                                        <div class="col-12 col-md-1 text-center">
                                            <a href="{PFF_ROW_URL}">{PFF_ROW_ICON}</a>
                                        </div>
                                        <div class="col-12 col-md-3">
                                            <p class="fw-bold">
                                                <a href="{PFF_ROW_URL}">{PFF_ROW_TITLE}</a>
                                            </p>
                                            <p class="small">{PFF_ROW_DESC}</p>
                                        </div>
                                        <div class="col-12 col-md-2 text-center">{PFF_ROW_ISPUBLIC}</div>
                                        <div class="col-12 col-md-1 text-center">{PFF_ROW_FCOUNT}</div>
                                        <div class="col-12 col-md-1 text-center">{PFF_ROW_FSIZE}</div>
                                        <div class="col-12 col-md-2 text-center">{PFF_ROW_UPDATED}</div>
                                        <div class="col-12 col-md-2 text-center">
                                            <a href="{PFF_ROW_EDIT_URL}">{PHP.L.Edit}</a>
                                            <a href="{PFF_ROW_DELETE_URL}" class="confirmLink">{PHP.L.Delete}</a>
                                        </div>
                                    </div>
                                </div>
                            <!-- END: PFF_ROW -->
                        </div>
                        <!-- IF {PFF_PAGINATION} -->
                            <p class="paging text-center">{PFF_PREVIOUS_PAGE}{PFF_PAGINATION}{PFF_NEXT_PAGE}</p>
                        <!-- ENDIF -->
                    <!-- ELSE -->
                        <!-- IF {PFS_FOLDER_ID} == 0 -->
                            <div class="py-4">
                                <div class="alert alert-warning" role="alert">
                                    <p class="fw-semibold mb-0">{PHP.L.2wd_PFS_Attention}</p>
                                </div>
                            </div>
                        <!-- ENDIF -->
                    <!-- ENDIF -->
                    <!-- IF {PFS_FILESCOUNT} > 0 -->
                        <h3>{PFS_INTHISFOLDER}: {PFS_FILESCOUNT_TITLE} ({PHP.L.pfs_onpage}: {PFS_ONPAGE_FILES_TITLE}) {PFS_SHOWTHUMBS}</h3>
                        <div class="list-group list-group-striped list-group-flush">
                            <div class="list-group-item">
                                <div class="row g-3 align-items-center fw-bold">
                                    <div class="col-12 col-md-2"></div>
                                    <div class="col-12 col-md-4">{PHP.L.File}</div>
                                    <div class="col-12 col-md-1 d-none d-md-block">{PHP.L.Hits}</div>
                                    <div class="col-12 col-md-1">{PHP.L.Size}</div>
                                    <div class="col-12 col-md-2">{PHP.L.Date}</div>
                                    <div class="col-12 col-md-2 text-center">{PHP.L.Action}</div>
                                </div>
                            </div>
                            <div class="list-group-item list-striped">
                                <!-- BEGIN: PFS_ROW -->
                                    <div class="row align-items-center gx-md-3">
                                        <div class="col-12 col-md-2">
                                            {PFS_ROW_ICON}<span class="badge bg-info">{PFS_ROW_TYPE}</span>
                                        </div>
                                        <div class="col-12 col-md-4">
                                            <p class="fw-bold">
                                                <a href="{PFS_ROW_FILE_URL}">{PFS_ROW_FILE}</a>
                                            </p>
                                            <!-- IF {PFS_ROW_DESC} -->
                                                <p class="small">{PFS_ROW_DESC}</p>
                                            <!-- ENDIF -->
                                        </div>
                                        <div class="col-12 col-md-1 d-none d-md-block">{PFS_ROW_COUNT}</div>
                                        <div class="col-12 col-md-1">{PFS_ROW_SIZE}</div>
                                        <div class="col-12 col-md-2">{PFS_ROW_DATE}</div>
                                        <div class="col-12 col-md-2 text-center">
                                            <a href="{PFS_ROW_DELETE_URL}" class="confirmLink">{PHP.L.Delete}</a>
                                            <a href="{PFS_ROW_EDIT_URL}">{PHP.L.Edit}</a>
                                            <div class="m-2">{PFS_ROW_INSERT}</div>
                                            <!-- IF {PFS_ROW_INSERT} -->
                                                <a class="btn" data-bs-toggle="modal" data-bs-target="#pfs_info_paste" role="button" aria-expanded="false" aria-controls="pfs_info_paste">
                                                    <i class="fa-solid fa-circle-question fa-xl"></i>
                                                </a>
                                            <!-- ENDIF -->
                                        </div>
                                    </div>
                                <!-- END: PFS_ROW -->
                            </div>
                        </div>
                        <!-- IF {PAGINATION} -->
                            <p class="paging text-center">{PREVIOUS_PAGE}{PAGINATION}{NEXT_PAGE}</p>
                        <!-- ENDIF -->
                    <!-- ENDIF -->
                    <div class="row g-4 py-4">
                        <!-- IF {PFS_FOLDER_ID} > 0 -->
                            <div class="col-12 col-md-4" data-bs-toggle="tooltip" data-bs-title="{PHP.L.2wd_PFS_Upl_Btn}">
                                <a class="btn btn-success w-100" data-bs-toggle="collapse" href="#pfs_newfile" role="button" aria-expanded="false" aria-controls="pfs_newfile">{PHP.L.pfs_newfile}</a>
                            </div>
                        <!-- ENDIF -->
                        <div class="col-12 col-md-4">
                            <button type="button" class="btn btn-primary w-100" data-bs-toggle="modal" data-bs-target="#pfs_newfolder">{PHP.L.pfs_newfolder}</button>
                        </div>
                        <div class="col-12 col-md-4">
                            <button type="button" class="btn btn-secondary w-100" data-bs-toggle="modal" data-bs-target="#pfs_extallowed">{PHP.L.pfs_extallowed}</button>
                        </div>
                    </div>
                    <!-- BEGIN: PFS_UPLOAD_FORM -->
                        <div class="collapse" id="pfs_newfile">
                            <h3>{PHP.L.pfs_newfile}</h3>
                            <form enctype="multipart/form-data" action="{PFS_UPLOAD_FORM_ACTION}" method="post">
                                <input type="hidden" name="MAX_FILE_SIZE" value="{PFS_UPLOAD_FORM_MAX_SIZE}" />
                                <div class="list-group list-group-flush">
                                    <!-- BEGIN: PFS_UPLOAD_FORM_ROW -->
                                        <div class="list-group-item list-group-item-action">
                                            <div class="row">
                                                <div class="col-12 col-md-7">
                                                    <label for="ndesc" class="form-label fw-semibold">{PHP.L.Description}</label>
                                                    <div class="input-group has-validation">
                                                        <span class="input-group-text"># <span class="fw-semibold text-primary">{PFS_UPLOAD_FORM_ROW_NUM}</span></span>
                                                        <input type="text" class="form-control" name="ndesc[{PFS_UPLOAD_FORM_ROW_ID}]" value="" maxlength="255" />
                                                    </div>
                                                </div>
                                                <div class="col-12 col-md-5">
                                                    <label for="userfile" class="form-label fw-semibold">{PHP.L.File}</label>
                                                    <div class="input-group has-validation">
                                                        <input name="userfile[{PFS_UPLOAD_FORM_ROW_ID}]" type="file" class="form-control" size="24" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    <!-- END: PFS_UPLOAD_FORM_ROW -->
                                    <div class="list-group-item valid text-center">
                                        <button type="submit" class="btn btn-primary">{PHP.L.Upload}</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    <!-- END: PFS_UPLOAD_FORM -->
                    <div class="modal fade" id="pfs_newfolder" tabindex="-1" aria-labelledby="pfs_newfolder" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="pfs_newfolder">{PHP.L.pfs_newfolder}</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body px-0">
                                    <!-- BEGIN: PFS_NEWFOLDER_FORM -->
                                        <form id="newfolder" action="{NEWFOLDER_FORM_ACTION}" method="post">
                                            <div class="list-group list-group-striped list-group-flush">
                                                <div class="list-group-item d-flex justify-content-between">
                                                    <div class="col-12">
                                                        <label class="form-label fw-semibold">{PHP.L.Title}:</label>
                                                        <div class="input-group has-validation">
                                                            <input type="text" class="form-control" name="ntitle" value="" size="32" maxlength="64" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="list-group-item d-flex justify-content-between">
                                                    <div class="col-12">
                                                        <label class="form-label fw-semibold">{PHP.L.Description}:</label>
                                                        <div class="input-group has-validation">
                                                            <input type="text" class="form-control" name="ndesc" value="" size="32" maxlength="255" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="list-group-item d-flex justify-content-between">
                                                    <div class="w-33">{PHP.L.pfs_ispublic}</div>
                                                    <div class="w-66">
                                                        <label class="radio-label me-3">
                                                            <input type="radio" class="form-check-input" name="nispublic" value="1" /> {PHP.L.Yes}
                                                        </label>
                                                        <label class="radio-label">
                                                            <input type="radio" class="form-check-input" name="nispublic" value="0" checked="checked" /> {PHP.L.No}
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="list-group-item d-flex justify-content-between">
                                                    <div class="w-33">{PHP.L.pfs_isgallery}</div>
                                                    <div class="w-66">
                                                        <label class="radio-label me-3">
                                                            <input type="radio" class="form-check-input" name="nisgallery" value="1" /> {PHP.L.Yes}
                                                        </label>
                                                        <label class="radio-label">
                                                            <input type="radio" class="form-check-input" name="nisgallery" value="0" checked="checked" /> {PHP.L.No}
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="list-group-item valid text-center">
                                                    <button type="submit" class="btn btn-primary">{PHP.L.Create}</button>
                                                </div>
                                            </div>
                                        </form>
                                    <!-- END: PFS_NEWFOLDER_FORM -->
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal fade" id="pfs_extallowed" tabindex="-1" aria-labelledby="pfs_extallowed" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="pfs_extallowed">{PHP.L.pfs_extallowed}</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <!-- BEGIN: ALLOWED_ROW -->
                                        <div class="floatleft small w-20">
                                            <span style="vertical-align:-15px;">{ALLOWED_ROW_ICON}</span> {ALLOWED_ROW_EXT} {ALLOWED_ROW_DESC}
                                        </div>
                                    <!-- END: ALLOWED_ROW -->
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal fade" id="pfs_info_paste" tabindex="-1" aria-labelledby="pfsInfoLabel" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="pfsInfoLabel">{PHP.L.Info}</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item">{PHP.R.pfs_icon_pastethumb} {PHP.L.pfs_pastethumb}</li>
                                        <li class="list-group-item">{PHP.R.pfs_icon_pasteimage} {PHP.L.pfs_pasteimage}</li>
                                        <li class="list-group-item">{PHP.R.pfs_icon_pastefile} {PHP.L.pfs_pastefile}</li>
                                    </ul>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
    <!-- BEGIN: STANDALONE_FOOTER -->
                <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
            </body>
        </html>
    <!-- END: STANDALONE_FOOTER -->
    <!-- This is the name of the template for informing the administrator -->
    <!-- IF {PHP.usr.maingrp} == 5 AND {PHP.mskin} -->
        {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/inc/mskin.tpl"}
    <!-- ENDIF -->
<!-- END: MAIN -->
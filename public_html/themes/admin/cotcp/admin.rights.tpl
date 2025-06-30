<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}

<form name="saverights" id="saverights" action="{ADMIN_RIGHTS_FORM_URL}" method="post" class="ajax">
    {ADMIN_RIGHTS_FORM_ITEMS}

    <!-- IF {PHP.g} > 5 -->
    <div class="py-3">
        <div class="row align-items-center">
            <div class="col-12">
                <div class="d-flex flex-wrap gap-2 align-items-center">
                    <input type="checkbox" class="checkbox" name="ncopyrightsconf" />
                    <span>{PHP.L.adm_copyrightsfrom}:</span>
                    {ADMIN_RIGHTS_SELECTBOX_GROUPS}
                    <input type="submit" class="submit btn btn-primary" value="{PHP.L.Update}" />
                </div>
            </div>
        </div>
    </div>
    <!-- ENDIF -->

    <!-- BEGIN: RIGHTS_SECTION -->
    <div class="block py-4">
        <h2 class="mb-3">{RIGHTS_SECTION_TITLE}:</h2>
        <div class="wrapper">
            <div class="list-group mb-3">
                <div class="list-group-item list-group-item-dark">
                    <div class="row align-items-center fw-bold">
                        <div class="col-12 col-md-1"></div>
                        <div class="col-12 col-md-3">{PHP.L.Section}</div>
                        <div class="col-12 col-md-4">{PHP.L.Rights}</div>
                        <div class="col-12 col-md-2">{PHP.L.adm_rightspergroup}</div>
                        <div class="col-12 col-md-2">{PHP.L.adm_setby}</div>
                    </div>
                </div>

                <!-- BEGIN: RIGHTS_ROW -->
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-1 text-center">
                            <!-- IF {ADMIN_RIGHTS_ROW_ICON} -->
                            {ADMIN_RIGHTS_ROW_ICON}
                            <!-- ELSE -->
                            <img src="{PHP.cfg.icons_dir}/default/default.png" alt="" class="img-fluid" />
                            <!-- ENDIF -->
                        </div>
                        <div class="col-12 col-md-3">
                            <a href="{ADMIN_RIGHTS_ROW_LINK}">{ADMIN_RIGHTS_ROW_TITLE}</a>
                        </div>
                        <div class="col-12 col-md-4">
                            <div class="d-flex flex-wrap gap-2 align-items-center">
                                <!-- BEGIN: RIGHTS_ROW_ITEMS -->
                                <div class="text-center">
                                    <!-- IF {ADMIN_RIGHTS_ROW_ITEMS_LOCKED} AND {ADMIN_RIGHTS_ROW_ITEMS_STATE} -->
                                    <input type="hidden" name="{ADMIN_RIGHTS_ROW_ITEMS_NAME}" value="1" />
                                    {PHP.R.admin_icon_discheck1}
                                    <!-- ENDIF -->
                                    <!-- IF {ADMIN_RIGHTS_ROW_ITEMS_LOCKED} AND !{ADMIN_RIGHTS_ROW_ITEMS_STATE} -->
                                    {PHP.R.admin_icon_discheck0}
                                    <!-- ENDIF -->
                                    <!-- IF !{ADMIN_RIGHTS_ROW_ITEMS_LOCKED} -->
                                    <input type="checkbox" class="checkbox" name="{ADMIN_RIGHTS_ROW_ITEMS_NAME}"{ADMIN_RIGHTS_ROW_ITEMS_CHECKED}{ADMIN_RIGHTS_ROW_ITEMS_DISABLED} />
                                    <!-- ENDIF -->
                                </div>
                                <!-- END: RIGHTS_ROW_ITEMS -->
                            </div>
                        </div>
                        <div class="col-12 col-md-2 text-center">
                            <a title="{PHP.L.Rights}" href="{ADMIN_RIGHTS_ROW_RIGHTSBYITEM}" class="btn btn-secondary btn-sm">{PHP.L.Rights}</a>
                            <a title="{PHP.L.Rights}" href="{ADMIN_RIGHTS_ROW_LINK}" class="btn btn-primary btn-sm special">{PHP.L.Open}</a>
                        </div>
                        <div class="col-12 col-md-2 text-center">{ADMIN_RIGHTS_ROW_USER}{ADMIN_RIGHTS_ROW_PRESERVE}</div>
                    </div>
                </div>
                <!-- END: RIGHTS_ROW -->
            </div>
        </div>
    </div>
    <!-- END: RIGHTS_SECTION -->

    <div class="button-toolbar py-3">
        <a href="{ADMIN_RIGHTS_ADVANCED_URL}" class="btn btn-secondary">{PHP.L.More}</a>
        <input type="submit" class="btn btn-primary" value="{PHP.L.Update}" />
    </div>
</form>
<div class="alert alert-info" role="alert">
  admin.rights.tpl
</div>
<!-- END: MAIN -->

<!-- BEGIN: RIGHTS_HELP -->
<div class="py-3">
    <p class="mb-2">{PHP.R.admin_icon_auth_r} {PHP.L.Read}</p>
    <p class="mb-2">{PHP.R.admin_icon_auth_w} {PHP.L.Write}</p>
    <p class="mb-2">{PHP.R.admin_icon_auth_1} {PHP.L.Custom} #1</p>
    <!-- IF {PHP.advanced} -->
    <p class="mb-2">{PHP.R.admin_icon_auth_2} {PHP.L.Custom} #2</p>
    <p class="mb-2">{PHP.R.admin_icon_auth_3} {PHP.L.Custom} #3</p>
    <p class="mb-2">{PHP.R.admin_icon_auth_4} {PHP.L.Custom} #4</p>
    <p class="mb-2">{PHP.R.admin_icon_auth_5} {PHP.L.Custom} #5</p>
    <!-- ENDIF -->
    <p class="mb-2">{PHP.R.admin_icon_auth_a} {PHP.L.Administration}</p>
</div>
<!-- END: RIGHTS_HELP -->
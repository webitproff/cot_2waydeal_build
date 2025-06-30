<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
<div class="block py-4">
    <h2 class="mb-3">{ADMIN_RIGHTSBYITEM_TITLE}</h2>
    <div class="wrapper">
        <form name="saverightsbyitem" id="saverightsbyitem" action="{ADMIN_RIGHTSBYITEM_FORM_URL}" method="post" class="ajax">
            {ADMIN_RIGHTSBYITEM_FORM_ITEMS}
            <div class="list-group mb-3">
                <div class="list-group-item list-group-item-dark">
                    <div class="row align-items-center fw-bold">
                        <div class="col-12 col-md-1"></div>
                        <div class="col-12 col-md-3">{PHP.L.Groups}</div>
                        <div class="col-12 col-md-4">{PHP.L.Rights}</div>
                        <div class="col-12 col-md-2">{PHP.L.Open}</div>
                        <div class="col-12 col-md-2">{PHP.L.adm_setby}</div>
                    </div>
                </div>

                <!-- BEGIN: RIGHTSBYITEM_ROW -->
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-1 text-center">
                            <img src="{PHP.cfg.icons_dir}/default/modules/users.png" alt="" class="img-fluid" />
                        </div>
                        <div class="col-12 col-md-3">
                            <a href="{ADMIN_RIGHTSBYITEM_ROW_LINK}">{ADMIN_RIGHTSBYITEM_ROW_TITLE}</a>
                        </div>
                        <div class="col-12 col-md-4">
                            <div class="d-flex flex-wrap gap-2 align-items-center">
                                <!-- BEGIN: ROW_ITEMS -->
                                <div class="text-center">
                                    <!-- IF {ADMIN_RIGHTSBYITEM_ROW_ITEMS_LOCKED} AND {ADMIN_RIGHTSBYITEM_ROW_ITEMS_STATE} -->
                                    <input type="hidden" name="{ADMIN_RIGHTSBYITEM_ROW_ITEMS_NAME}" value="1" />
                                    {PHP.R.admin_icon_discheck1}
                                    <!-- ENDIF -->
                                    <!-- IF {ADMIN_RIGHTSBYITEM_ROW_ITEMS_LOCKED} AND !{ADMIN_RIGHTSBYITEM_ROW_ITEMS_STATE} -->
                                    {PHP.R.admin_icon_discheck0}
                                    <!-- ENDIF -->
                                    <!-- IF !{ADMIN_RIGHTSBYITEM_ROW_ITEMS_LOCKED} -->
                                    <input type="checkbox" class="checkbox" name="{ADMIN_RIGHTSBYITEM_ROW_ITEMS_NAME}"{ADMIN_RIGHTSBYITEM_ROW_ITEMS_CHECKED}{ADMIN_RIGHTSBYITEM_ROW_ITEMS_DISABLED} />
                                    <!-- ENDIF -->
                                </div>
                                <!-- END: ROW_ITEMS -->
                            </div>
                        </div>
                        <div class="col-12 col-md-2 text-center">
                            <a title="{PHP.L.Open}" href="{ADMIN_RIGHTSBYITEM_ROW_JUMPTO}" class="btn btn-primary btn-sm special">{PHP.L.Open}</a>
                            <a title="{PHP.L.Open}" href="{ADMIN_RIGHTSBYITEM_ROW_LINK}" class="btn btn-secondary btn-sm">{PHP.L.Rights}</a>
                        </div>
                        <div class="col-12 col-md-2 text-center">
                            {ADMIN_RIGHTSBYITEM_ROW_USER}{ADMIN_RIGHTSBYITEM_ROW_PRESERVE}
                        </div>
                    </div>
                </div>
                <!-- END: RIGHTSBYITEM_ROW -->
            </div>
            <div class="d-flex flex-wrap gap-2 py-3">
                <a href="{ADMIN_RIGHTSBYITEM_ADVANCED_URL}" class="btn btn-secondary">{PHP.L.More}</a>
                <input type="submit" class="submit btn btn-primary" value="{PHP.L.Update}" />
            </div>
        </form>
    </div>
</div>
<div class="alert alert-info" role="alert">
  admin.rightsbyitem.tpl
</div>
<!-- END: MAIN -->

<!-- BEGIN: RIGHTSBYITEM_HELP -->
<div class="py-3">
    <p class="mb-2">{PHP.R.admin_icon_auth_r} {PHP.L.Read}</p>
    <p class="mb-2">{PHP.R.admin_icon_auth_w} {PHP.L.Write}</p>
    <!-- IF {PHP.advanced} OR {PHP.ic} == 'page' -->
    <p class="mb-2">{PHP.R.admin_icon_auth_1} {PHP.l_custom1}</p>
    <!-- ENDIF -->
    <!-- IF {PHP.advanced} -->
    <p class="mb-2">{PHP.R.admin_icon_auth_2} {PHP.L.Custom} #2</p>
    <p class="mb-2">{PHP.R.admin_icon_auth_3} {PHP.L.Custom} #3</p>
    <p class="mb-2">{PHP.R.admin_icon_auth_4} {PHP.L.Custom} #4</p>
    <p class="mb-2">{PHP.R.admin_icon_auth_5} {PHP.L.Custom} #5</p>
    <!-- ENDIF -->
    <p class="mb-2">{PHP.R.admin_icon_auth_a} {PHP.L.Administration}</p>
</div>
<!-- END: RIGHTSBYITEM_HELP -->
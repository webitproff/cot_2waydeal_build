<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}

<!-- BEGIN: EDIT -->
{ADMIN_CONFIG_EDIT_CUSTOM}
<div class="py-4">
    <div class="min-height-50vh d-flex flex-column px-2 px-md-3 py-4">
        <div class="row">
            <div class="col-12">
                <form name="saveconfig" id="saveconfig" action="{ADMIN_CONFIG_FORM_URL}" method="post" class="ajax">
                    <div class="list-group mb-3">
                        <div class="list-group-item list-group-item-dark">
                            <div class="row align-items-center fw-bold">
                                <div class="col-12 col-md-4">{PHP.L.Parameter}</div>
                                <div class="col-12 col-md-6">{PHP.L.Value}</div>
                                <div class="col-12 col-md-2">{PHP.L.Reset}</div>
                            </div>
                        </div>

                        <!-- BEGIN: ADMIN_CONFIG_ROW -->
                        <!-- BEGIN: ADMIN_CONFIG_FIELDSET_BEGIN -->
                        <div class="list-group-item list-group-item-secondary">
                            <div class="row">
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
                                <div class="col-12 col-md-6">
                                    {ADMIN_CONFIG_ROW_CONFIG}
                                    <!-- IF {ADMIN_CONFIG_ROW_CONFIG_MORE} -->
                                    <div class="adminconfigmore">{ADMIN_CONFIG_ROW_CONFIG_MORE}</div>
                                    <!-- ENDIF -->
                                </div>
                                <div class="col-12 col-md-2 text-center">
                                    <a href="{ADMIN_CONFIG_ROW_CONFIG_MORE_URL}" class="button">{PHP.L.Reset}</a>
                                </div>
                            </div>
                        </div>
                        <!-- END: ADMIN_CONFIG_ROW_OPTION -->
                        <!-- END: ADMIN_CONFIG_ROW -->
                    </div>
                    <div class="text-end">
                        <input type="submit" class="btn btn-primary" value="{PHP.L.Update}" />
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- END: EDIT -->

<!-- BEGIN: DEFAULT -->
<!-- BEGIN: ADMIN_CONFIG_COL -->
<div class="py-4">
    <div class="min-height-50vh d-flex flex-column px-2 px-md-3 py-4">
        <div class="row">
            <div class="col-12">
                <h2>{ADMIN_CONFIG_COL_CAPTION}:</h2>
                <ul class="cfg list-group">
                    <!-- BEGIN: ADMIN_CONFIG_ROW -->
                    <li class="list-group-item">
                        <a href="{ADMIN_CONFIG_ROW_URL}" class="ajax">{ADMIN_CONFIG_ROW_ICON} {ADMIN_CONFIG_ROW_NAME}</a>
                    </li>
                    <!-- END: ADMIN_CONFIG_ROW -->
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- END: ADMIN_CONFIG_COL -->
<!-- END: DEFAULT -->
<div class="alert alert-info" role="alert">
  admin.config.tpl
</div>

<!-- END: MAIN -->
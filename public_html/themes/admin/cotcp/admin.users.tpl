<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
<div class="block button-toolbar py-3">
    <a title="{PHP.L.Configuration}" href="{ADMIN_USERS_URL}" class="btn btn-outline-secondary">{PHP.L.Configuration}</a>
    <a href="{ADMIN_USERS_EXTRAFIELDS_URL}" class="btn btn-outline-secondary">{PHP.L.adm_extrafields}</a>
</div>

<!-- BEGIN: ADMIN_USERS_DEFAULT -->
<div class="py-4">
	<div class="ps-3">
		<h2 class="mb-3">{PHP.L.Users}</h2>
	</div>
    <div class="wrapper">
        <div class="list-group mb-3">
            <div class="list-group-item list-group-item-dark">
                <div class="row align-items-center fw-bold">
                    <div class="col-12 col-md-4">{PHP.L.Groups}</div>
                    <div class="col-12 col-md-2 text-center">{PHP.L.Members}</div>
                    <div class="col-12 col-md-2 text-center">{PHP.L.Enabled}</div>
                    <div class="col-12 col-md-4">{PHP.L.Action}</div>
                </div>
            </div>
            <!-- BEGIN: USERS_ROW -->
            <div class="list-group-item">
                <div class="row align-items-center">
                    <div class="col-12 col-md-4 d-flex align-items-center">
                        <figure class="me-2">
                            <!-- IF {PHP.row.grp_disabled} -->
                            {PHP.R.admin_icon_usergroup0}
                            <!-- ELSE -->
                            {PHP.R.admin_icon_usergroup1}
                            <!-- ENDIF -->
                        </figure>
                        <div>
                            <a href="{ADMIN_USERS_ROW_GRP_TITLE_URL}" class="ajax" title="{PHP.L.Edit}">{ADMIN_USERS_ROW_GRP_NAME} (#{ADMIN_USERS_ROW_GRP_ID})</a>
                            <p class="mb-0">{ADMIN_USERS_ROW_GRP_DESC}</p>
                        </div>
                    </div>
                    <div class="col-12 col-md-2 text-center">{ADMIN_USERS_ROW_GRP_COUNT_MEMBERS}</div>
                    <div class="col-12 col-md-2 text-center">{ADMIN_USERS_ROW_GRP_DISABLED}</div>
                    <div class="col-12 col-md-4 d-flex flex-wrap gap-2">
                        <!-- IF !{ADMIN_USERS_ROW_GRP_SKIPRIGHTS} -->
                        <a title="{PHP.L.Rights}" href="{ADMIN_USERS_ROW_GRP_RIGHTS_URL}" class="btn btn-outline-primary btn-sm">{PHP.L.Rights}</a>
                        <!-- ENDIF -->
                        <a title="{PHP.L.Open}" href="{ADMIN_USERS_ROW_GRP_JUMPTO_URL}" class="special btn btn-outline-secondary btn-sm">{PHP.L.Open}</a>
                    </div>
                </div>
            </div>
            <!-- END: USERS_ROW -->
        </div>
    </div>
</div>

<div class="block py-4">
    <h2 class="mb-3">{PHP.L.Add}:</h2>
    <div class="wrapper">
        <form name="addlevel" id="addlevel" action="{ADMIN_USERS_FORM_URL}" method="post" class="ajax">
            <div class="list-group mb-3">
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{PHP.L.Name}:</div>
                        <div class="col-12 col-md-9">{ADMIN_USERS_NGRP_NAME} {PHP.L.adm_required}</div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{PHP.L.Title}:</div>
                        <div class="col-12 col-md-9">{ADMIN_USERS_NGRP_TITLE} {PHP.L.adm_required}</div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{PHP.L.Description}:</div>
                        <div class="col-12 col-md-9">{ADMIN_USERS_NGRP_DESC}</div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{PHP.L.Icon}:</div>
                        <div class="col-12 col-md-9">{ADMIN_USERS_NGRP_ICON}</div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{PHP.L.Alias}:</div>
                        <div class="col-12 col-md-9">{ADMIN_USERS_NGRP_ALIAS}</div>
                    </div>
                </div>
                <!-- IF {PHP.pfs_is_active} -->
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{PHP.L.adm_maxsizesingle}:</div>
                        <div class="col-12 col-md-9">{ADMIN_USERS_NGRP_PFS_MAXFILE}</div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{PHP.L.adm_maxsizeallpfs}:</div>
                        <div class="col-12 col-md-9">{ADMIN_USERS_NGRP_PFS_MAXTOTAL}</div>
                    </div>
                </div>
                <!-- ENDIF -->
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{PHP.L.adm_copyrightsfrom}:</div>
                        <div class="col-12 col-md-9">{ADMIN_USERS_FORM_SELECTBOX_GROUPS} {PHP.L.adm_required}</div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{PHP.L.adm_skiprights}:</div>
                        <div class="col-12 col-md-9">{ADMIN_USERS_NGRP_SKIPRIGHTS}</div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-夷3">{PHP.L.Level}:</div>
                        <div class="col-12 col-md-9">{ADMIN_USERS_NGRP_RLEVEL}</div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{PHP.L.Disabled}:</div>
                        <div class="col-12 col-md-9">{ADMIN_USERS_NGRP_DISABLED}</div>
                    </div>
                </div>
                <!-- IF {PHP.hidden_groups} -->
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{PHP.L.Hidden}:</div>
                        <div class="col-12 col-md-9">{ADMIN_USERS_NGRP_HIDDEN}</div>
                    </div>
                </div>
                <!-- ENDIF -->
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{PHP.L.adm_rights_maintenance}:</div>
                        <div class="col-12 col-md-9">{ADMIN_USERS_NGRP_MAINTENANCE}</div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row">
                        <div class="col-12">
                            <input type="submit" class="submit btn btn-primary" value="{PHP.L.Add}" />
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<!-- END: ADMIN_USERS_DEFAULT -->

<!-- BEGIN: ADMIN_USERS_EDIT -->
<div class="block py-4">
    <h2 class="mb-3">{PHP.L.Edit}</h2>
    <div class="wrapper">
        <form name="editlevel" id="editlevel" action="{ADMIN_USERS_EDITFORM_URL}" method="post" class="ajax">
            <div class="list-group mb-3">
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{PHP.L.Name}:</div>
                        <div class="col-12 col-md-9">{ADMIN_USERS_EDITFORM_GRP_NAME} {PHP.L.adm_required}</div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{PHP.L.Title}:</div>
                        <div class="col-12 col-md-9">{ADMIN_USERS_EDITFORM_GRP_TITLE} {PHP.L.adm_required}</div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{PHP.L.Description}:</div>
                        <div class="col-12 col-md-9">{ADMIN_USERS_EDITFORM_GRP_DESC}</div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{PHP.L.Icon}:</div>
                        <div class="col-12 col-md-9">{ADMIN_USERS_EDITFORM_GRP_ICON}</div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{PHP.L.Alias}:</div>
                        <div class="col-12 col-md-9">{ADMIN_USERS_EDITFORM_GRP_ALIAS}</div>
                    </div>
                </div>
                <!-- IF {PHP.pfs_is_active} -->
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{PHP.L.adm_maxsizesingle}:</div>
                        <div class="col-12 col-md-9">{ADMIN_USERS_EDITFORM_GRP_PFS_MAXFILE}</div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{PHP.L.adm_maxsizeallpfs}:</div>
                        <div class="col-12 col-md-9">{ADMIN_USERS_EDITFORM_GRP_PFS_MAXTOTAL}</div>
                    </div>
                </div>
                <!-- ENDIF -->
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{PHP.L.Disabled}:</div>
                        <div class="col-12 col-md-9">{ADMIN_USERS_EDITFORM_GRP_DISABLED}</div>
                    </div>
                </div>
                <!-- IF {PHP.hidden_groups} -->
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{PHP.L.Hidden}:</div>
                        <div class="col-12 col-md-9">{ADMIN_USERS_EDITFORM_GRP_HIDDEN}</div>
                    </div>
                </div>
                <!-- ENDIF -->
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{PHP.L.Level}:</div>
                        <div class="col-12 col-md-9">{ADMIN_USERS_EDITFORM_GRP_RLEVEL}</div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{PHP.L.Members}:</div>
                        <div class="col-12 col-md-9"><a href="{ADMIN_USERS_EDITFORM_GRP_MEMBERSCOUNT_URL}">{ADMIN_USERS_EDITFORM_GRP_MEMBERSCOUNT}</a></div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{PHP.L.adm_rights_maintenance}:</div>
                        <div class="col-12 col-md-9">{ADMIN_USERS_EDITFORM_GRP_MAINTENANCE}</div>
                    </div>
                </div>
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{PHP.L.adm_skiprights}:</div>
                        <div class="col-12 col-md-9">{ADMIN_USERS_EDITFORM_GRP_SKIPRIGHTS}</div>
                    </div>
                </div>
                <!-- IF !{ADMIN_USERS_EDITFORM_SKIPRIGHTS} -->
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{PHP.L.Rights}:</div>
                        <div class="col-12 col-md-9"><a href="{ADMIN_USERS_EDITFORM_RIGHT_URL}" class="btn btn-outline-primary btn-sm">{PHP.L.Rights}</a></div>
                    </div>
                </div>
                <!-- ENDIF -->
                <!-- IF {PHP.g} > 5 -->
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 col-md-3">{PHP.L.Delete}:</div>
                        <div class="col-12 col-md-9"><a href="{ADMIN_USERS_EDITFORM_DEL_CONFIRM_URL}" class="confirmLink">{PHP.R.admin_icon_delete} {PHP.L.Delete}</a></div>
                    </div>
                </div>
                <!-- ENDIF -->
                <div class="list-group-item">
                    <div class="row">
                        <div class="col-12">
                            <input type="submit" class="submit btn btn-outline-success" value="{PHP.L.Update}" />
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<!-- END: ADMIN_USERS_EDIT -->
<div class="alert alert-info" role="alert">
  admin.users.tpl
</div>
<!-- END: MAIN -->
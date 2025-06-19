<!-- BEGIN: MAIN -->
<div class="border-bottom border-secondary py-3 px-3">
  <nav aria-label="breadcrumb">
    <div class="ps-container-breadcrumb">
      <ol class="breadcrumb d-flex mb-0">
        {USERS_EDIT_BREADCRUMBS}
      </ol>
    </div>
  </nav>
</div>
<div class="min-vh-50 px-2 px-md-3 py-5">
  <div class="row justify-content-center">
    <div class="col-12 col-lg-10"> {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"} <form action="{USERS_EDIT_SEND}" method="post" name="useredit" enctype="multipart/form-data" class="needs-validation" novalidate>
        <input type="hidden" name="id" value="{USERS_EDIT_ID}" />
        <div class="card shadow-sm">
          <div class="card-header">
            <h5 class="mb-0">{PHP.urr.user_name}</h5>
          </div>
          <div class="card-body">
            <!-- ID и логин -->
            <div class="row mb-3">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.users_id}</label>
              <div class="col-sm-9 pt-2">#{USERS_EDIT_ID}</div>
            </div>
            <div class="row mb-3">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.Username}</label>
              <div class="col-sm-9 pt-2">{USERS_EDIT_NAME}</div>
            </div>
            <!-- Экстраполе Extrafield-->
            <!-- IF {USERS_EDIT_FIRSTNAME} -->
            <div class="row mb-3">
              <label class="col-sm-3 col-form-label fw-semibold">{USERS_EDIT_FIRSTNAME_TITLE}:</label>
              <div class="col-sm-9 pt-2">{USERS_EDIT_FIRSTNAME}</div>
            </div>
            <!-- ENDIF -->
            <!-- Экстраполе Extrafield-->
            <!-- IF {USERS_EDIT_LASTNAME} -->
            <div class="row mb-3">
              <label class="col-sm-3 col-form-label fw-semibold">{USERS_EDIT_LASTNAME_TITLE}:</label>
              <div class="col-sm-9 pt-2">{USERS_EDIT_LASTNAME}</div>
            </div>
            <!-- ENDIF -->
            <!-- Экстраполе Extrafield-->
            <!-- IF {USERS_EDIT_MIDDLENAME} -->
            <div class="row mb-3">
              <label class="col-sm-3 col-form-label fw-semibold">{USERS_EDIT_MIDDLENAME_TITLE}:</label>
              <div class="col-sm-9 pt-2">{USERS_EDIT_MIDDLENAME}</div>
            </div>
            <!-- ENDIF -->
			<!-- IF {USERS_EDIT_CAT} -->
            <div class="row mb-3">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.usercategories_specializations}:</label>
              <div class="col-sm-9">
                <div class="operation-checkboxes">
                  <div class="operation-checkboxes-list">{USERS_EDIT_CAT}</div>
                </div>
              </div>
            </div>
            <!-- ENDIF -->
            <div class="row mb-3">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.Groupsmembership}</label>
              <div class="col-sm-9">
                <div class="mb-1">{PHP.L.Maingroup}:</div> {USERS_EDIT_GROUPS}
              </div>
            </div>
			<!-- IF {USERS_EDIT_GROUPSELECT} -->
            <div class="row mb-3">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.usergroupselector_custom_subgroup}:</label>
              <div class="col-sm-9">{USERS_EDIT_GROUPSELECT}</div>
            </div>
            <!-- ENDIF -->
            <!-- IF {USERS_EDIT_MAIN_SKILLS} -->
            <div class="row mb-3">
              <label class="col-sm-3 col-form-label fw-semibold">{USERS_EDIT_MAIN_SKILLS_TITLE}</label>
              <div class="col-sm-9">{USERS_EDIT_MAIN_SKILLS}</div>
            </div>
            <!-- ENDIF -->
			<!-- IF {PHP|cot_plugin_active('locationselector')} -->
            <div class="row mb-3">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.Location}:</label>
              <div class="col-sm-9">{USERS_EDIT_LOCATION}</div>
            </div>
			<!-- ENDIF -->
            <div class="row mb-3">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.Country}</label>
              <div class="col-sm-9">{USERS_EDIT_COUNTRY}</div>
            </div>
            <div class="row mb-3">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.Timezone}</label>
              <div class="col-sm-9">{USERS_EDIT_TIMEZONE}</div>
            </div>
            <div class="row mb-3">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.Theme}</label>
              <div class="col-sm-9">{USERS_EDIT_THEME}</div>
            </div>
            <div class="row mb-3">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.Language}</label>
              <div class="col-sm-9">{USERS_EDIT_LANG}</div>
            </div>
            <!-- IF {USERS_EDIT_AVATAR} -->
            <div class="row mb-3">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.Avatar}</label>
              <div class="col-sm-9">{USERS_EDIT_AVATAR}</div>
            </div>
            <!-- ENDIF -->
            <!-- IF {USERS_EDIT_PHOTO} -->
            <div class="row mb-3">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.Photo}</label>
              <div class="col-sm-9">{USERS_EDIT_PHOTO}</div>
            </div>
            <!-- ENDIF -->
            <div class="row mb-3">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.users_newpass}</label>
              <div class="col-sm-9"> {USERS_EDIT_NEWPASS} <div class="form-text">{PHP.L.users_newpasshint1}</div>
              </div>
            </div>

            <div class="row mb-3">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.Email}</label>
              <div class="col-sm-9">{USERS_EDIT_EMAIL}</div>
            </div>
            <div class="row mb-3">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.users_hideemail}</label>
              <div class="col-sm-9">{USERS_EDIT_HIDEEMAIL}</div>
            </div>

            <!-- IF {PHP|cot_module_active('pm')} -->
            <div class="row mb-3">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.users_pmnotify}</label>
              <div class="col-sm-9"> {USERS_EDIT_PMNOTIFY} <div class="form-text">{PHP.L.users_pmnotifyhint}</div>
              </div>
            </div>
            <!-- ENDIF -->

            <div class="row mb-3">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.Birthdate}</label>
              <div class="col-sm-9">{USERS_EDIT_BIRTHDATE}</div>
            </div>

            <div class="row mb-3">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.Gender}</label>
              <div class="col-sm-9">{USERS_EDIT_GENDER}</div>
            </div>

            <div class="row mb-3">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.Signature}</label>
              <div class="col-sm-9">{USERS_EDIT_TEXT}</div>
            </div>

            <div class="row mb-3">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.Registered}</label>
              <div class="col-sm-9">{USERS_EDIT_REGDATE}</div>
            </div>
            <div class="row mb-3">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.Lastlogged}</label>
              <div class="col-sm-9">{USERS_EDIT_LASTLOG}</div>
            </div>
            <div class="row mb-3">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.users_lastip}</label>
              <div class="col-sm-9">{USERS_EDIT_LASTIP}</div>
            </div>
            <div class="row mb-3">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.users_logcounter}</label>
              <div class="col-sm-9">{USERS_EDIT_LOGCOUNT}</div>
            </div>

            <div class="row mb-3">
              <label class="col-sm-3 col-form-label text-danger fw-semibold">{PHP.L.users_deleteuser}</label>
              <div class="col-sm-9">{USERS_EDIT_DELETE}</div>
            </div>
          </div>
          <div class="card-footer text-end">
            <button type="submit" class="btn btn-outline-primary">
              <i class="fa-solid fa-floppy-disk me-1"></i> {PHP.L.Update} </button>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>
    <!-- IF {PHP.usr.maingrp} == 5 AND {PHP.mskin} -->
    {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/inc/mskin.tpl"}
    <!-- ENDIF -->
<!-- END: MAIN -->
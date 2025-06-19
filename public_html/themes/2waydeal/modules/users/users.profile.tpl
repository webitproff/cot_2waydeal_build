<!-- BEGIN: MAIN -->
<div class="border-bottom border-secondary py-3 px-3">
  <nav aria-label="breadcrumb">
    <div class="ps-container-breadcrumb">
      <ol class="breadcrumb d-flex mb-0">
        {USERS_PROFILE_BREADCRUMBS}
      </ol>
    </div>
  </nav>
</div>
<div class="min-vh-50 px-2 px-md-3 py-5">
  <div class="row justify-content-center">
    <div class="col-12 col-lg-10">
      <div class="card shadow-sm">
        <div class="card-header">
          <h2 class="h5 mb-0">{USERS_PROFILE_TITLE}</h2>
        </div>
        <div class="card-body"> {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"} 
		<form action="{USERS_PROFILE_FORM_SEND}" method="post" enctype="multipart/form-data" name="profile">
            <input type="hidden" name="userid" value="{USERS_PROFILE_ID}" />
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label">{PHP.L.Username}:</label>
              <div class="col-sm-9 pt-2">{USERS_PROFILE_NAME}</div>
            </div>
            <!-- Экстраполе Extrafield-->
            <!-- IF {USERS_PROFILE_FIRSTNAME} -->
            <div class="row mb-3">
              <label class="col-sm-3 col-form-label fw-semibold">{USERS_PROFILE_FIRSTNAME_TITLE}:</label>
              <div class="col-sm-9 pt-2">{USERS_PROFILE_FIRSTNAME}</div>
            </div>
            <!-- ENDIF -->
            <!-- Экстраполе Extrafield-->
            <!-- IF {USERS_PROFILE_LASTNAME} -->
            <div class="row mb-3">
              <label class="col-sm-3 col-form-label fw-semibold">{USERS_PROFILE_LASTNAME_TITLE}:</label>
              <div class="col-sm-9 pt-2">{USERS_PROFILE_LASTNAME}</div>
            </div>
            <!-- ENDIF -->
            <!-- Экстраполе Extrafield-->
            <!-- IF {USERS_PROFILE_MIDDLENAME} -->
            <div class="row mb-3">
              <label class="col-sm-3 col-form-label fw-semibold">{USERS_PROFILE_MIDDLENAME_TITLE}:</label>
              <div class="col-sm-9 pt-2">{USERS_PROFILE_MIDDLENAME}</div>
            </div>
            <!-- ENDIF -->
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label">{PHP.L.Groupsmembership}:</label>
              <div class="col-sm-9" id="usergrouplist">{USERS_PROFILE_GROUPS}</div>
            </div>
            <!-- IF {USERS_PROFILE_GROUPSELECTBOX} -->
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.profile_group} <span class="text-danger">*</span>
              </label>
              <div class="col-sm-9"> {USERS_PROFILE_GROUPSELECTBOX} </div>
            </div>
            <!-- ENDIF -->
			<!-- Экстраполе Extrafield-->
            <!-- IF {USERS_PROFILE_MAIN_SKILLS} -->
            <div class="row mb-3">
              <label class="col-sm-3 col-form-label fw-semibold">{USERS_PROFILE_MAIN_SKILLS_TITLE}</label>
              <div class="col-sm-9">{USERS_PROFILE_MAIN_SKILLS}</div>
            </div>
            <!-- ENDIF -->
            <!-- IF {USERS_PROFILE_CAT} -->
            <div class="row mb-3">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.usercategories_specializations}:</label>
              <div class="col-sm-9">
                <div class="operation-checkboxes">
                  <div class="operation-checkboxes-list">{USERS_PROFILE_CAT}</div>
                </div>
              </div>
            </div>
            <!-- ENDIF -->
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label">{PHP.L.Registered}:</label>
              <div class="col-sm-9 pt-2">{USERS_PROFILE_REGDATE}</div>
            </div>
            <!-- BEGIN: USERS_PROFILE_EMAILCHANGE -->
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label">{PHP.L.Email}:</label>
              <div class="col-sm-9" id="emailtd">
                <div class="mb-2">{USERS_PROFILE_EMAIL}</div>
                <!-- BEGIN: USERS_PROFILE_EMAILPROTECTION -->
                <script>
                  $(document).ready(function() {
                    $("#emailnotes").hide();
                    $("#emailtd").click(function() {
                      $("#emailnotes").slideDown();
                    });
                  });
                </script>
                <div class="mb-2">{PHP.themelang.usersprofile_Emailpassword}: <br />{USERS_PROFILE_EMAILPASS} </div>
                <div class="small text-muted" id="emailnotes">{PHP.themelang.usersprofile_Emailnotes}</div>
                <!-- END: USERS_PROFILE_EMAILPROTECTION -->
              </div>
            </div>
            <!-- END: USERS_PROFILE_EMAILCHANGE -->
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label">{PHP.L.users_hideemail}:</label>
              <div class="col-sm-9 pt-2">{USERS_PROFILE_HIDEEMAIL}</div>
            </div>
            <!-- IF {PHP|cot_module_active('pm')} -->
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label">{PHP.L.users_pmnotify}:</label>
              <div class="col-sm-9"> {USERS_PROFILE_PMNOTIFY} <div class="small text-muted">{PHP.L.users_pmnotifyhint}</div>
              </div>
            </div>
            <!-- ENDIF -->
            <!-- IF !{PHP.cfg.forcedefaulttheme} -->
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label">{PHP.L.Theme}:</label>
              <div class="col-sm-9 pt-2">{USERS_PROFILE_THEME}</div>
            </div>
            <!-- ENDIF -->
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label">{PHP.L.Language}:</label>
              <div class="col-sm-9 pt-2">{USERS_PROFILE_LANG}</div>
            </div>
			<!-- IF {PHP|cot_plugin_active('locationselector')} -->
            <div class="row mb-3">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.Location}:</label>
              <div class="col-sm-9">{USERS_PROFILE_LOCATION}</div>
            </div>
			<!-- ENDIF -->
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label">{PHP.L.Country}:</label>
              <div class="col-sm-9 pt-2">{USERS_PROFILE_COUNTRY}</div>
            </div>
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label">{PHP.L.Timezone}:</label>
              <div class="col-sm-9 pt-2">{USERS_PROFILE_TIMEZONE}</div>
            </div>
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label">{PHP.L.Birthdate}:</label>
              <div class="col-sm-9 pt-2">{USERS_PROFILE_BIRTHDATE}</div>
            </div>
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label">{PHP.L.Gender}:</label>
              <div class="col-sm-9 pt-2">{USERS_PROFILE_GENDER}</div>
            </div>
            <!-- IF {USERS_PROFILE_AVATAR} -->
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label">{PHP.L.Avatar}:</label>
              <div class="col-sm-9">{USERS_PROFILE_AVATAR}</div>
            </div>
            <!-- ENDIF -->
            <!-- IF {USERS_PROFILE_PHOTO} -->
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label">{PHP.L.Photo}:</label>
              <div class="col-sm-9">{USERS_PROFILE_PHOTO}</div>
            </div>
            <!-- ENDIF -->
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label">{PHP.L.Signature}:</label>
              <div class="col-sm-9">{USERS_PROFILE_TEXT}</div>
            </div>
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label">{PHP.L.users_newpass}:</label>
              <div class="col-sm-9">
                <p class="small text-muted mb-1">{PHP.L.users_newpasshint1}</p> {USERS_PROFILE_OLDPASS} <p class="small text-muted mb-1">{PHP.L.users_oldpasshint}</p>
                <div class="d-flex gap-2">{USERS_PROFILE_NEWPASS1} {USERS_PROFILE_NEWPASS2}</div>
                <p class="small text-muted mt-1">{PHP.L.users_newpasshint2}</p>
              </div>
            </div>
            <div class="text-end mt-4">
              <button type="submit" class="btn btn-primary">{PHP.L.Update}</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- END: MAIN -->
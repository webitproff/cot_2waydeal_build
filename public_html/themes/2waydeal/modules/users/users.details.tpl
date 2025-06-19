<!-- BEGIN: MAIN -->
<div class="border-bottom border-secondary py-3 px-3">
  <nav aria-label="breadcrumb">
    <div class="ps-container-breadcrumb">
      <ol class="breadcrumb d-flex mb-0"> {USERS_DETAILS_BREADCRUMBS}</ol>
    </div>
  </nav>
</div>
<div class="min-vh-50 px-2 px-md-3 py-4"> 
<div class="px-0 m-0 row justify-content-center">
<div class="col-12 col-xxl-11">
  <div class="card shadow-sm">
    <div class="card-body">
      <div class="d-flex align-items-center mb-4">
        <!-- IF {PHP|cot_plugin_active('userimages')} -->
        <!-- IF {USERS_DETAILS_AVATAR_SRC} -->
        <img src="{USERS_DETAILS_AVATAR_SRC}" alt="{USERS_DETAILS_NICKNAME}" class="img-fluid rounded-circle overflow-hidden" width="75" height="75">
        <!-- ELSE -->
        <img src="{PHP.R.userimg_default_avatar}" alt="{USERS_DETAILS_NICKNAME}" class="img-fluid rounded-circle overflow-hidden" width="75" height="75">
        <!-- ENDIF -->
        <!-- ENDIF -->
        <div class="ms-4">
          <h2 class="h4 mb-1 d-inline-block">{USERS_DETAILS_TITLE}</h2>
          <!-- BEGIN: USERS_DETAILS_ADMIN -->
          <span class="ms-2 badge bg-secondary">{USERS_DETAILS_ADMIN_EDIT}</span>
          <!-- END: USERS_DETAILS_ADMIN -->
          <div class="text-muted small">{USERS_DETAILS_MAIN_GROUP}</div>
        </div>
      </div>
      <!-- IF {USERS_DETAILS_PHOTO} -->
      <div class="mb-4">
        <strong>{PHP.L.Photo}:</strong>
        <br /> {USERS_DETAILS_PHOTO}
      </div>
      <!-- ENDIF -->
      <div class="row g-3">
        <!-- IF {PHP|cot_module_active('pm')} -->
        <div class="col-md-6">
          <div>
            <strong>{PHP.L.users_sendpm}:</strong>
          </div>
          <div>{USERS_DETAILS_PM}</div>
        </div>
        <!-- ENDIF -->
        <div class="col-md-6">
          <div>
            <strong>{PHP.L.Groupsmembership}:</strong>
          </div>
          <div>{PHP.L.Maingroup}: <br />&nbsp;{PHP.out.img_down} <br />{USERS_DETAILS_GROUPS} </div>
        </div>
        <div class="col-md-6">
          <div>
            <strong>{PHP.L.Country}:</strong>
          </div>
          <div>{USERS_DETAILS_COUNTRY_FLAG} {USERS_DETAILS_COUNTRY}</div>
        </div>
        <div class="col-md-6">
          <div>
            <strong>{PHP.L.Timezone}:</strong>
          </div>
          <div>{USERS_DETAILS_TIMEZONE}</div>
        </div>
        <div class="col-md-6">
          <div>
            <strong>{PHP.L.Birthdate}:</strong>
          </div>
          <div>{USERS_DETAILS_BIRTHDATE}</div>
        </div>
        <div class="col-md-6">
          <div>
            <strong>{PHP.L.Age}:</strong>
          </div>
          <div>{USERS_DETAILS_AGE}</div>
        </div>
        <div class="col-md-6">
          <div>
            <strong>{PHP.L.Gender}:</strong>
          </div>
          <div>{USERS_DETAILS_GENDER}</div>
        </div>
        <div class="col-md-6">
          <div>
            <strong>{PHP.L.Registered}:</strong>
          </div>
          <div>{USERS_DETAILS_REGDATE}</div>
        </div>
        <div class="col-12">
          <div>
            <strong>{PHP.L.Signature}:</strong>
          </div>
          <div>{USERS_DETAILS_TEXT}</div>
        </div>
      </div>
    </div>
  </div>
</div>
       </div>
      </div>
<!-- IF {PHP.usr.maingrp} == 5 AND {PHP.mskin} --> 
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/inc/mskin.tpl"}
<!-- ENDIF -->
<!-- END: MAIN -->
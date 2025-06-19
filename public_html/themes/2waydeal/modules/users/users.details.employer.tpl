
<!-- BEGIN: MAIN -->
<div class="px-2 px-md-3 py-2 border-bottom border-secondary">
  <div class="py-2">
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto">
        <li class="breadcrumb-item">
          <a href="{PHP.cfg.mainurl}">{PHP.L.Home}</a>
        </li>
        <li class="breadcrumb-item">
          <a href="{PHP.cot_groups.7.alias|cot_url('users', 'group=$this')}">
            {PHP.cot_groups.7.name}
          </a>
        </li>
        <li class="breadcrumb-item active" aria-current="page">
          <!-- IF {USERS_DETAILS_FULL_NAME} -->{USERS_DETAILS_FULL_NAME}
          <!-- ELSE -->[{USERS_DETAILS_NICKNAME}]
          <!-- ENDIF -->
        </li>
      </ol>
    </nav>
  </div>
</div>
<div class="py-4">
  <div class="container-xl min-height-50vh">
    <h2 class="h5 mb-4">
      {USERS_DETAILS_TITLE}
      <!-- BEGIN: USERS_DETAILS_ADMIN -->
      [ {USERS_DETAILS_ADMIN_EDIT} ]
      <!-- END: USERS_DETAILS_ADMIN -->
    </h2>

    <div class="tabs">
      <ul class="nav nav-tabs mb-3">
        <li class="nav-item">
          <a class="nav-link<!-- IF !{PHP.tab} --> active<!-- ENDIF -->" href="{USERS_DETAILS_DETAILSLINK}#tab_info" data-bs-toggle="tab" role="tab">{PHP.L.Main}</a>
        </li>
        <!-- IF {PHP|cot_module_active('projects')} -->
        <li class="nav-item">
          <a class="nav-link<!-- IF {PHP.tab} == 'projects' --> active<!-- ENDIF -->" href="{USERS_DETAILS_PROJECTS_URL}#tab_projects" data-bs-toggle="tab" role="tab">{PHP.L.projects} {USERS_DETAILS_PROJECTS_COUNT}</a>
        </li>
        <!-- ENDIF -->

        <!-- IF {PHP|cot_plugin_active('reviews')} -->
        <li class="nav-item">
          <a class="nav-link<!-- IF {PHP.tab} == 'reviews' --> active<!-- ENDIF -->" href="{USERS_DETAILS_REVIEWS_URL}#tab_reviews" data-bs-toggle="tab" role="tab">{PHP.L.reviews_reviews} {USERS_DETAILS_REVIEWS_COUNT}</a>
        </li>
        <!-- ENDIF -->
      </ul>

      <div class="tab-content">
        <div class="tab-pane fade<!-- IF !{PHP.tab} --> show active<!-- ENDIF -->" id="tab_info" role="tabpanel">
          <div class="card">
            <div class="card-body">
              <div class="row">
                <div class="col-12 col-lg-2 text-center text-lg-start mb-4">
              <!-- IF {PHP|cot_plugin_active('userimages')} -->	  
              <!-- IF {USERS_DETAILS_AVATAR_SRC} -->
                <img src="{USERS_DETAILS_AVATAR_SRC}" alt="{USERS_DETAILS_NICKNAME}" class="img-fluid rounded-circle overflow-hidden" width="96" height="96">
              <!-- ELSE -->       
                <img src="{PHP.R.userimg_default_avatar}" alt="{USERS_DETAILS_NICKNAME}" class="img-fluid rounded-circle overflow-hidden" width="96" height="96">
              <!-- ENDIF -->
              <!-- ENDIF -->
                  <div class="text-center text-lg-start">
                    <div class="review-stars">{USERS_DETAILS_REVIEWS_AVG_STARS_HTML}</div>
                  </div>
                </div>
                <div class="col-12 col-lg-8">
                  <!-- IF {USERS_DETAILS_MAIN_SKILLS} -->
                  <h2 class="h6 mb-4 fw-semibold">{USERS_DETAILS_MAIN_SKILLS}</h2>
                  <!-- ENDIF -->
                  <div class="d-flex flex-column flex-md-row justify-content-between align-items-start align-items-md-center">
                    <!-- IF {PHP|cot_plugins_active('usercategories')} -->
                    <p class="mb-0">{USERS_DETAILS_CATS|cot_usercategories_tree($this, '', 'listlev1')}</p>
                    <!-- ENDIF -->
                  </div>
                </div>
                <div class="col-12 col-lg-2">
                  <div class="d-flex justify-content-center gap-2">
                    <!-- IF {PHP.usr.maingrp} == 5 -->
                    <div>
                      <a class="btn btn-danger rounded-2" href="{USERS_DETAILS_ID|cot_url('users','m=edit&id=$this')}" data-bs-toggle="tooltip" data-bs-placement="top" title="Администрирование профиля «{USERS_DETAILS_NICKNAME}»">
                        <i class="fa-solid fa-file-pen fa-lg"></i>
                      </a>
                    </div>
                    <!-- {PHP|cot_plugin_active('loginAsUser')} -->
                    <div>
                      <a class="btn btn-danger rounded-2" href="{USERS_DETAILS_ID|cot_url('loginAsUser', 'uid=$this')}" data-bs-toggle="tooltip" data-bs-placement="top" title="Войти как «{USERS_DETAILS_NICKNAME}»">
                        <i class="fa-solid fa-right-to-bracket fa-lg"></i>
                      </a>
                    </div>
                    <!-- ENDIF -->
					<!-- ENDIF -->
                    <!-- IF {PHP.usr.id} == {USERS_DETAILS_ID} -->
                    <div>
                      <a class="btn btn-danger rounded-2" href="{PHP|cot_url('users', 'm=profile')}" data-bs-toggle="tooltip" data-bs-placement="top" title="">
                        <i class="fa-solid fa-gear fa-lg"></i>
                      </a>
                    </div>
                    <!-- ENDIF -->
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-12 col-lg-10">
                  <div class="d-flex flex-column flex-md-row justify-content-between align-items-start align-items-md-center">
                    <p class="small text-muted">{PHP.L.reviews_reviews}: {USERS_DETAILS_REVIEWS_TOTAL_COUNT} | {PHP.L.2wd_users_avr_reviews} {USERS_DETAILS_REVIEWS_AVG_STARS}/5</p>
                  </div>
                </div>
              </div>
              <dl class="row mb-0">
                <!-- IF {USERS_DETAILS_LASTLOG} -->
                <!-- Дата регистрации -->
                <dt class="col-sm-4 col-md-3">{PHP.L.Lastlogged}:</dt>
                <dd class="col-sm-8 col-md-9">{USERS_DETAILS_LASTLOG}</dd>
                <!-- ENDIF -->
                <!-- IF {USERS_DETAILS_LOGCOUNT} -->
                <!-- Дата регистрации -->
                <dt class="col-sm-4 col-md-3">{PHP.L.users_logcounter}:</dt>
                <dd class="col-sm-8 col-md-9">{USERS_DETAILS_LOGCOUNT}</dd>
                <!-- ENDIF -->
                <!-- IF {PHP|cot_module_active('pm')} -->
                <dt class="col-sm-4 col-md-3">{PHP.L.users_sendpm}:</dt>
                <dd class="col-sm-8 col-md-9">{USERS_DETAILS_PM}</dd>
                <!-- ENDIF -->
                <dt class="col-sm-4 col-md-3">{PHP.L.Maingroup}:</dt>
                <dd class="col-sm-8 col-md-9">{USERS_DETAILS_MAIN_GROUP}</dd>
                <dt class="col-sm-4 col-md-3">{PHP.L.Groupsmembership}:</dt>
                <dd class="col-sm-8 col-md-9">
                  {PHP.L.Maingroup}:<br/>
                  <i class="fa-solid fa-arrow-down d-block my-1"></i>
                  {USERS_DETAILS_GROUPS}
                </dd>
                <!-- IF {USERS_DETAILS_COUNTRY} !== '' -->
                <dt class="col-sm-4 col-md-3">{PHP.L.Country}:</dt>
                <dd class="col-sm-8 col-md-9">{USERS_DETAILS_COUNTRY_FLAG} {USERS_DETAILS_COUNTRY}</dd>
                <!-- ENDIF -->
                <!-- IF {USERS_DETAILS_TIMEZONE} -->
                <dt class="col-sm-4 col-md-3">{PHP.L.Timezone}:</dt>
                <dd class="col-sm-8 col-md-9">{USERS_DETAILS_TIMEZONE}</dd>
                <!-- ENDIF -->
                <!-- IF {USERS_DETAILS_BIRTHDATE} -->
                <dt class="col-sm-4 col-md-3">{PHP.L.Birthdate}:</dt>
                <dd class="col-sm-8 col-md-9">{USERS_DETAILS_BIRTHDATE}</dd>
                <!-- ENDIF -->
                <!-- IF {USERS_DETAILS_AGE} -->
                <dt class="col-sm-4 col-md-3">{PHP.L.Age}:</dt>
                <dd class="col-sm-8 col-md-9">{USERS_DETAILS_AGE}</dd>
                <!-- ENDIF -->
                <!-- IF {USERS_DETAILS_GENDER} -->
                <dt class="col-sm-4 col-md-3">{PHP.L.Gender}:</dt>
                <dd class="col-sm-8 col-md-9">{USERS_DETAILS_GENDER}</dd>
                <!-- ENDIF -->
                <!-- IF {USERS_DETAILS_TEXT} -->
                <dt class="col-sm-4 col-md-3">{PHP.L.Signature}:</dt>
                <dd class="col-sm-8 col-md-9">{USERS_DETAILS_TEXT}</dd>
                <!-- ENDIF -->
                <!-- IF {USERS_DETAILS_REGDATE} -->
                <dt class="col-sm-4 col-md-3">{PHP.L.Registered}:</dt>
                <dd class="col-sm-8 col-md-9">{USERS_DETAILS_REGDATE}</dd>
                <!-- ENDIF -->
              </dl>
            </div>
          </div>	  
        </div>
        <div class="tab-pane fade<!-- IF {PHP.tab} == 'projects' --> show active<!-- ENDIF -->" id="tab_projects" role="tabpanel">
          {PROJECTS}
        </div>
        <div class="tab-pane fade<!-- IF {PHP.tab} == 'reviews' --> show active<!-- ENDIF -->" id="tab_reviews" role="tabpanel">
          {REVIEWS}
        </div>
      </div>
    </div>

    <!-- IF {PHP.usr.maingrp} == 5 AND {PHP.mskin} -->
    {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/inc/mskin.tpl"}
    <!-- ENDIF -->
  </div>
</div>
<!-- END: MAIN -->

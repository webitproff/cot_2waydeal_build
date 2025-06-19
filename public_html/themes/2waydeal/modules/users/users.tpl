
<!-- BEGIN: MAIN -->
<div class="py-2 px-2 px-md-3 border-bottom border-secondary">
 <div class="py-2">
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto">{USERS_TITLE}</ol>
    </nav>
  </div>
</div>
<div class="min-vh-50 px-2 px-md-3 py-4">
  <div class="row justify-content-center">
    <div class="col-12 col-xl-10">
      <div class="card mt-4 mb-4">
        <div class="card-header">
          <h2 class="h5 mb-0">{PHP.L.Filters}</h2>
        </div>
        <div class="card-body">
          <!-- Фильтры -->
          <div class="mb-4">
            <form id="filter-form" action="{USERS_FILTERS_ACTION}" method="GET" class="row g-3 align-items-end"> {USERS_FILTERS_PARAMS} 
				<div class="col-md-4">
					<h3 class="h6 mb-2">{PHP.L.Filter_search}:</h3>
					<div class="d-flex flex-column gap-2"> 
						{USERS_FILTERS_COUNTRY} 
						{USERS_FILTERS_MAIN_GROUP} 
						{USERS_FILTERS_GROUP}
					</div>
				</div>
              <div class="col-md-4">
                <h3 class="h6 mb-2">{PHP.L.Username_search}:</h3> {USERS_FILTERS_SEARCH}
              </div>
              <div class="col-md-4">
                <h3 class="h6 mb-2">{PHP.L.OrderBy}:</h3>
                <div class="d-flex gap-2"> {USERS_FILTERS_SORT} {USERS_FILTERS_SORT_WAY} </div>
              </div>
              <div class="col-12">
                <button type="submit" class="btn btn-outline-secondary">{PHP.L.Submit}</button>
              </div>
            </form>
          </div>
        </div>
      </div>
      <!-- Список пользователей -->
      <div class="list-group mb-5">
        <div class="list-group-item list-group-item-dark">
          <div class="row align-items-center fw-bold">
            <div class="col-12 col-md-4">{USERS_TOP_NAME}</div>
            <div class="col-12 col-md-3">{USERS_TOP_MAIN_GROUP}</div>
            <div class="col-12 col-md-1">{USERS_TOP_GROUP_LEVEL}</div>
            <div class="col-12 col-md-2">{USERS_TOP_COUNTRY}</div>
            <div class="col-12 col-md-2">{USERS_TOP_REGISTRATION_DATE}</div>
          </div>
        </div>
        <!-- BEGIN: USERS_ROW -->
        <div class="list-group-item">
          <div class="row align-items-center">
            <div class="col-12 col-md-4">
              <!-- IF {PHP|cot_plugin_active('userimages')} -->
              <!-- IF {USERS_ROW_AVATAR_SRC} -->
              <img src="{USERS_ROW_AVATAR_SRC}" alt="{USERS_ROW_NICKNAME}" class="rounded" width="50" height="50">
              <!-- ELSE -->
              <img src="{PHP.R.userimg_default_avatar}" alt="{USERS_ROW_NICKNAME}" class="rounded" width="50" height="50">
              <!-- ENDIF -->
              <!-- ENDIF -->
              <span class="mx-3">{USERS_ROW_NAME}</span>
			  <!-- IF {USERS_ROW_FULL_NAME} --><span class="mx-3">{USERS_ROW_FULL_NAME}</span><!-- ENDIF -->
            </div>
            <div class="col-12 col-md-3">{USERS_ROW_MAIN_GROUP}</div>
            <div class="col-12 col-md-1">{USERS_ROW_MAIN_GROUP_STARS}</div>
            <div class="col-12 col-md-2">{USERS_ROW_COUNTRY_FLAG} {USERS_ROW_COUNTRY}</div>
            <div class="col-12 col-md-2">{USERS_ROW_REGDATE}</div>
          </div>
        </div>
        <!-- END: USERS_ROW -->
      </div>
    </div>
  </div>
  <!-- Пагинация -->
  <div class="row justify-content-center">
    <div class="col-12 col-xl-10">
      <div class="d-flex justify-content-between align-items-center mb-4">
        <div>
          <span>{PHP.L.users_usersperpage}: {ENTRIES_PER_PAGE}</span>
          <span class="ms-3">{PHP.L.users_usersinthissection}: {TOTAL_ENTRIES}</span>
        </div>
        <nav aria-label="Users pagination">
          <ul class="pagination mb-0"> {PREVIOUS_PAGE} {PAGINATION} {NEXT_PAGE} </ul>
        </nav>
      </div>
    </div>
  </div>
</div>

      <!-- IF {PHP.usr.maingrp} == 5 --> {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/inc/mskin.tpl"}
	  {PHP.localskin}
      <!-- ENDIF -->
<!-- END: MAIN -->
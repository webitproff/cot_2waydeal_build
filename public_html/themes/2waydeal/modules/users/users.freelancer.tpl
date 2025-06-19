<!-- BEGIN: MAIN -->
<div class="py-2 px-2 px-md-3 border-bottom border-secondary">
  <div class="py-2">
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto">
        <li class="breadcrumb-item">
          <a href="{PHP.cfg.mainurl}">{PHP.L.Home}</a>
        </li>
        <li class="breadcrumb-item">
          <a href="{PHP|cot_url('users')}">
            {PHP.L.Users}
          </a>
        </li>
        <li class="breadcrumb-item active" aria-current="page">
          {PHP.cot_groups.4.name}
        </li>
      </ol>
    </nav>
  </div>
</div>

<div class="min-vh-50 px-2 px-md-3 py-4">
  <div class="row justify-content-center">
    <div class="col-12 col-xxl-10">
  <!-- Заголовок -->
  <h1 class="mb-4">
    <!-- IF {PHP.cat} --> {CATTITLE}
    <!-- ENDIF -->
  </h1>
  <div class="row">
    <!-- Левая колонка: каталог категорий -->
    <div class="col-12 col-md-4 col-lg-3">
      <div class="card mb-4 rounded-3" style="border: 5px var(--bs-dark-border-subtle) solid">
        <div class="card-header" style="background-color: var(--bs-dark-bg-subtle)">
          <h2 class="h5 mb-0">{PHP.L.Categories}</h2>
        </div>
        <div class="card-body px-0"> {USERCATEGORIES_CATALOG} </div>
      </div>
    </div>
    <!-- Правая колонка: фильтры и список -->
    <div class="col-12 col-md-8 col-lg-9">
      <!-- Блок фильтров -->
      <div class="p-3 mb-4 rounded-2" style="border: 5px var(--bs-dark-border-subtle) solid">
        <form action="{USERS_FILTERS_ACTION}" method="GET" class="d-flex flex-column gap-3"> {USERS_FILTERS_PARAMS}
          <!-- Поле поиска -->
          <div class="row align-items-center">
            <label class="col-12 col-sm-3 mb-2 mb-sm-0">{PHP.L.Search}:</label>
            <div class="col-12 col-sm-9"> {USERS_FILTERS_SEARCH|cot_rc_modify($this, 'class="schstring form-control"')} </div>
          </div>
          <!-- IF {PHP|cot_plugin_active('locationselector')} -->
          <!-- Поле локации -->
          <div class="row align-items-center">
            <label class="col-12 col-sm-3 mb-2 mb-sm-0">{PHP.L.Location}:</label>
            <div class="col-12 col-sm-9">{SEARCH_LOCATION}</div>
          </div>
          <!-- ENDIF -->
          <!-- Поле категории -->
          <div class="row align-items-center">
            <label class="col-12 col-sm-3 mb-2 mb-sm-0">{PHP.L.OrderBy}: {USERS_FILTERS_SORT_WAY} </label>
            <div class="col-12 col-sm-9">{USERS_FILTERS_SORT}</div>
          </div>
          <!-- Поле категории -->
          <div class="row align-items-center">
            <label class="col-12 col-sm-3 mb-2 mb-sm-0">{PHP.L.Category}:</label>
            <div class="col-12 col-sm-9">{SEARCH_CAT}</div>
          </div>
          <!-- Кнопка отправки -->
          <div class="row">
            <div class="col-12 col-sm-3 d-none d-sm-block"></div>
            <div class="col-12 col-sm-9">
            <div class="row g-3 justify-content-md-end justify-content-center">
              <div class="col-md-6 col-12 text-center">
                <input type="submit" name="search" class="w-100 w-md-auto btn btn-outline-primary" value="{PHP.L.2wd_StartSearch}" />
              </div>
              <div class="col-md-6 col-12 text-center">
                <a class="btn btn-outline-danger w-100 " href="{PHP.cot_groups.4.alias|cot_url('users', 'group=$this')}">{PHP.L.2wd_ReserFilter}</a>
              </div>
            </div>
            </div>
          </div>
        </form>
      </div>
      <!-- BEGIN: USERS_ROW -->
      <div class="row card mx-1 align-items-center mb-3">
        <div class="card-body shadow rounded">
          <div class="row">
            <!-- Аватар -->
            <div class="col-12 col-lg-2 text-center text-lg-start">
              <!-- IF {PHP|cot_plugin_active('userimages')} -->
              <!-- IF {USERS_ROW_AVATAR_SRC} -->
              <a href="{USERS_ROW_DETAILS_URL}">
                <img src="{USERS_ROW_AVATAR_SRC}" alt="{USERS_ROW_NICKNAME}" class="rounded" width="75" height="75">
              </a>
              <!-- ELSE -->
              <a href="{USERS_ROW_DETAILS_URL}">
                <img src="{PHP.R.userimg_default_avatar}" alt="{USERS_ROW_NICKNAME}" class="rounded" width="75" height="75">
              </a>
              <!-- ENDIF -->
              <!-- ENDIF -->
              <!-- IF {PHP.usr.maingrp} == 5 -->
              <p class="mb-0">
                <a class="text-danger fw-semibold" href="{USERS_ROW_ID|cot_url('users','m=edit&id=$this')}">{PHP.L.Edit}</a>
              </p>
              <!-- ENDIF -->
            </div>
            <!-- Информация -->
            <div class="col-12 col-lg-10">
              <h5 class="mb-0 fs-6 fw-semibold text-primary-emphasis">
                <a class="text-reset" href="{USERS_ROW_DETAILS_URL}">{USERS_ROW_FULL_NAME}</a>
                <!-- IF {USERS_ROW_FOLIO_COUNT} -->
                <span class="badge text-bg-warning">{USERS_ROW_FOLIO_COUNT}</span>
                <!-- ENDIF -->
              </h5>
              <div class="d-flex flex-column flex-md-row justify-content-between align-items-start align-items-md-center">
                <div>
                  <h4 class="h5 text-success-emphasis mb-0">{USERS_ROW_MAIN_SKILLS} {USERS_ROW_USERPOINTS}</h4>
                  <!-- IF {USERS_ROW_ISPRO} -->
                  <span class="badge bg-danger ms-2">PRO</span>
                  <!-- ENDIF -->
                  <p class="mb-0">{USERS_ROW_COUNTRY}</p>
                  <!-- IF {PHP|cot_plugins_active('usercategories')} -->
                  <p class="mb-0">{USERS_ROW_CATS|cot_usercategories_tree($this, '', 'listlev1')}</p>
                  <!-- ENDIF -->
                </div>
              </div>
            </div>
          </div>
          <div class="col-12 text-center text-lg-start">
            <div class="row">
              <div class="col-12 col-md-6">
                <div class="review-stars">
                  <span class="ms-3">{USERS_ROW_REVIEWS_AVG_STARS_HTML}</span>
                </div>
              </div>
              <div class="col-12 col-md-6">
                <div>
                  <span class="ms-3">{PHP.L.reviews_reviews}: {USERS_ROW_REVIEWS_TOTAL_COUNT} | {PHP.L.2wd_users_avr_reviews} {USERS_ROW_REVIEWS_AVG_STARS}/5</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- END: USERS_ROW -->
      <!-- Пагинация -->
      <div class="row">
        <div class="col-12">
          <div class="row align-items-center mb-4">
            <!-- Информация о пользователях -->
            <div class="col-12 col-md-6">
              <div>
                <span>{PHP.L.users_usersperpage}: {ENTRIES_PER_PAGE}</span>
                <span class="ms-3">{PHP.L.users_usersinthissection}: {TOTAL_ENTRIES}</span>
              </div>
            </div>
            <!-- Пагинация -->
            <div class="col-12 col-md-6">
              <nav aria-label="Users pagination" class="d-flex justify-content-md-end">
                <ul class="pagination mb-0"> {PREVIOUS_PAGE} {PAGINATION} {NEXT_PAGE} </ul>
              </nav>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
  </div>
</div>
<!-- IF {PHP.usr.maingrp} == 5 --> {PHP.localskin} {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/inc/mskin.tpl"}
<!-- ENDIF -->
<!-- END: MAIN -->
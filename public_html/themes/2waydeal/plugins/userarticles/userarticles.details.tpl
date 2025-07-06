<!-- 
/********************************************************************************
 * File: userarticles.details.tpl
 * Extention: plugin 'userarticles' https://github.com/webitproff/cot-userarticles
 * Description: HTML template for a list of articles of a specific user that he has published on the site
 * Compatibility: CMF/CMS Cotonti Siena v0.9.26 (https://github.com/Cotonti/Cotonti)
 * Dependencies: Bootstrap 5.3.6 (https://getbootstrap.com/); Font Awesome Free 6.7.2 (https://fontawesome.com/)
 * Theme: 2waydeal  
 * Version: 1.0.3 
 * Created: 07 March 2025 
 * Updated: 06 July 2025 
 * Author: webitproff 
 * Source: https://github.com/webitproff/cot_2waydeal_build
 * Help and support: https://abuyfile.com/ru/forums/cotonti/cot-2wd-build
 * License: MIT  
 ********************************************************************************/
-->
<!-- BEGIN: MAIN -->
<div class="border-bottom border-secondary py-3 px-3">
  <nav aria-label="breadcrumb">
    <div class="ps-container-breadcrumb">
      <ol class="breadcrumb d-flex mb-0">
        <li class="breadcrumb-item">
          <a href="{PHP.cfg.mainurl}">
            <i class="fa-solid fa-house fa-lg"></i>
          </a>
        </li>
        <li class="breadcrumb-item">
          <a href="{PHP|cot_url('userarticles')}" title="{PHP.L.userarticles_title}">{PHP.L.userarticles_title}</a>
        </li>
        <li class="breadcrumb-item active" aria-current="page"> {PHP.L.userarticles_details_title}: <a href="{USER_PROFILE_URL}">{USER_NAME}</a>
        </li>
      </ol>
    </div>
  </nav>
</div>
<div class="min-vh-50 px-2 px-md-3 py-4">
  <div class="row justify-content-center">
    <div class="col-12 container-3xl">
      <h1 class="h5 mb-4">
        <span class="fw-semibold">{USER_NAME}</span> {PHP.L.userarticles_posted_on_website}
      </h1>
      <div class="card shadow-sm rounded mb-5">
        <div class="card-body">
          <!-- Выпадающий список категорий -->
          <form action="{PHP.sys.request_uri}" method="get" class="mb-4">
            <input type="hidden" name="e" value="userarticles" />
            <input type="hidden" name="action" value="details" />
            <input type="hidden" name="uid" value="{USER_ID}" />
            <div class="mb-3">
              <label class="form-label" for="cat">
                <span class="fw-semibold">{PHP.L.userarticles_category_filter_label}</span>
              </label> {CATEGORY_FILTER}
            </div>
          </form>
          <!-- BEGIN: ARTICLE_LIST -->
          <div class="list-group list-striped list-group-flush">
            <!-- BEGIN: ARTICLE -->
            <li class="list-group-item list-group-item-action">
              <div class="row g-3">
                <div class="col-12 col-md-8">
                  <h3 class="mb-0 fs-6 fw-semibold">
                    <a class="text-reset" href="{ARTICLE_URL}">{ARTICLE_TITLE}</a>
                  </h3>
                  <small class="text-body-secondary">{PHP.L.userarticles_category}: {ARTICLE_CATEGORY}</small>
                  <!-- Категория только на мобильных -->
                </div>
                <div class="col-12 col-md-4 text-center">
                  <div>
                    <small class="text-body-secondary">{PHP.L.userarticles_date} {ARTICLE_DATE}</small>
                    <small class="text-body-secondary">{PHP.L.userarticles_updated} {ARTICLE_UPDATED}</small>
                    <small class="text-body-secondary">{PHP.L.userarticles_views} {ARTICLE_VIEWS}</small>
                  </div>
                </div>
              </div>
            </li>
            <!-- END: ARTICLE -->
            <!-- BEGIN: NO_ARTICLES -->
            <div class="list-group-item text-center text-muted py-3">{PHP.L.No_items_found}</div>
            <!-- Если нет статей -->
            <!-- END: NO_ARTICLES -->
          </div>
          <!-- END: ARTICLE_LIST -->
        </div>
      </div>
      <!-- BEGIN: NO_ARTICLES -->
      <div class="alert alert-warning alert-dismissible fade show mt-3 mb-3" role="alert">
        <p class="mb-0">{PHP.L.userarticles_no_articles}</p>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
      </div>
      <!-- END: NO_ARTICLES -->
      <!-- IF {PAGINATION} -->
      <nav aria-label="Article pagination" class="mt-3">
        <ul class="pagination justify-content-center"> {PREVIOUS_PAGE} {PAGINATION} {NEXT_PAGE} </ul>
      </nav>
      <div class="text-center mt-2">
        <p>{PHP.L.userarticles_total_articles}: {TOTAL_ENTRIES}</p>
        <p>{PHP.L.userarticles_articles_on_page}: {ENTRIES_ON_CURRENT_PAGE}</p>
      </div>
      <!-- ENDIF -->
    </div>
  </div>
</div>
<!-- END: MAIN -->

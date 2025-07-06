<!-- 
/********************************************************************************
 * File: userarticles.tpl
 * Extention: plugin 'userarticles' https://github.com/webitproff/cot-userarticles
 * Description: HTML template of the userarticles plugin, which displays a list of users, the number of articles they have published
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
      <ol class="breadcrumb d-flex mb-0">{PHP.L.userarticles_list_title}</ol>
    </div>
  </nav>
</div>
<div class="min-vh-50 px-2 px-md-3 py-4">
  <div class="row justify-content-center">
    <div class="col-12 container-3xl">
      <div class="card shadow-sm rounded mb-5">
        <div class="card-body">
          <!-- Форма поиска -->
          <form action="{PHP|cot_url('plug', 'e=userarticles')}" method="get" class="mb-4">
            <input type="hidden" name="e" value="userarticles" />
            <div class="mb-3">
              <label class="form-label" for="search">{PHP.L.userarticles_search_label}</label>
              <div class="d-flex align-items-center">
                <input class="form-control w-50 me-2" id="search" name="search" type="text" value="{PHP.search}" placeholder="{PHP.L.userarticles_search_placeholder}" />
                <button class="btn btn-primary" type="submit">{PHP.L.userarticles_search_button}</button>
              </div>
            </div>
          </form>
          <!-- BEGIN: USER_LIST -->
          <div class="table-responsive">
            <table class="table table-striped table-hover">
              <thead class="table-dark">
                <tr>
                  <th scope="col">{PHP.L.userarticles_username}</th>
                  <th scope="col">{PHP.L.userarticles_article_count}</th>
                </tr>
              </thead>
              <tbody>
                <!-- BEGIN: USER -->
                <tr>
                  <td>
                    <a href="{USER_URL}">{USER_NAME}</a>
                  </td>
                  <td>{USER_ARTICLE_COUNT}</td>
                </tr>
                <!-- END: USER -->
              </tbody>
            </table>
          </div>
          <!-- END: USER_LIST -->
        </div>
      </div>
      <!-- BEGIN: NO_USERS -->
      <div class="alert alert-warning alert-dismissible fade show mt-3 mb-3" role="alert">
        <p class="mb-0">{PHP.L.userarticles_no_users}</p>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
      </div>
      <!-- END: NO_USERS -->
      <!-- IF {PAGINATION} -->
      <nav aria-label="User pagination" class="mt-3">
        <ul class="pagination justify-content-center"> {PREVIOUS_PAGE} {PAGINATION} {NEXT_PAGE} </ul>
      </nav>
      <div class="text-center mt-2">
        <p>{PHP.L.userarticles_total_users}: {TOTAL_ENTRIES}</p>
        <p>{PHP.L.userarticles_users_on_page}: {ENTRIES_ON_CURRENT_PAGE}</p>
      </div>
      <!-- ENDIF -->
    </div>
  </div>
</div>
<!-- END: MAIN -->

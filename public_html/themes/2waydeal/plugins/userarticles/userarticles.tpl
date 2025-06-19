<!-- 
/********************************************************************************
 * File: userarticles.tpl
 * Extention: plugin 'userarticles' https://github.com/webitproff/cot-userarticles
 * Description: HTML template of the userarticles plugin, which displays a list of users, the number of articles they have published
 * Compatibility: CMF/CMS Cotonti Siena v0.9.26 (https://github.com/Cotonti/Cotonti)
 * Dependencies: Bootstrap 5.3.3 (https://getbootstrap.com/); Font Awesome Free 6.7.2 (https://fontawesome.com/)
 * Theme: CleanCot  
 * Version: 1.0.2 
 * Created: 07 March 2025 
 * Updated: 28 March 2025 
 * Author: webitproff 
 * Source: https://github.com/webitproff/cot-CleanCot  
 * Help and support: https://abuyfile.com/ru/forums/cotonti/original/skins/cleancot
 * License: MIT  
 ********************************************************************************/
-->
<!-- BEGIN: MAIN -->
<div class="bg-white py-2 border-bottom border-secondary">
  <div class="container py-2">
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto">{PHP.L.userarticles_list_title}</ol>
    </nav>
  </div>
</div>
<div class="py-4"> 
  <div class="container-xl min-height-50vh d-flex flex-column"> 
        <div class="card bg-white shadow-sm rounded mb-5">
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
                                <td><a href="{USER_URL}">{USER_NAME}</a></td>
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
            <ul class="pagination justify-content-center">
                {PREVIOUS_PAGE}
                {PAGINATION}
                {NEXT_PAGE}
            </ul>
        </nav>
        <div class="text-center mt-2">
            <p>{PHP.L.userarticles_total_users}: {TOTAL_ENTRIES}</p>
            <p>{PHP.L.userarticles_users_on_page}: {ENTRIES_ON_CURRENT_PAGE}</p>
        </div>
        <!-- ENDIF -->
    </div>
</div>
<!-- This is the name of the template for informing the administrator -->
<!-- IF {PHP.usr.maingrp} == 5 --> <!-- Условие PHP.usr.maingrp == 5 - просмотр info для админов -->
<div class="container-xl">
	<div class="alert alert-warning" role="alert">
	 <strong>{PHP.usr.name}</strong>, This is the HTML template <code>userarticles.tpl</code> <!-- This is the name of the template for informing the administrator -->
	</div>
</div>
<!-- ENDIF --> <!-- Конец условия просмотр info для админов -->
<!-- END: MAIN -->
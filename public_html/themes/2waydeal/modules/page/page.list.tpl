<!-- BEGIN: MAIN -->
<div class="border-bottom border-secondary py-3 px-3">
  <nav aria-label="breadcrumb">
    <div class="ps-container-breadcrumb">
      <ol class="breadcrumb d-flex mb-0"> {LIST_BREADCRUMBS} </ol>
    </div>
  </nav>
</div>
<div class="min-vh-50 px-2 px-md-3 py-4">
  <div class="px-0 m-0 row justify-content-center">
    <div class="col-12 col-xxl-11"> 
	{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"} 
	  <div class="row px-0">
        <div class="col-12 col-lg-8 mx-auto pt-4">
          <!-- BEGIN: LIST_CAT_ROW -->
          <div class="mb-3">
            <h3 class="h5">
              <a href="{LIST_CAT_ROW_URL}" title="{LIST_CAT_ROW_TITLE}">{LIST_CAT_ROW_TITLE}</a> ({LIST_CAT_ROW_COUNT})
            </h3>
            <!-- IF {LIST_CAT_ROW_DESCRIPTION} -->
            <p class="small mb-0">{LIST_CAT_ROW_DESCRIPTION}</p>
            <!-- ENDIF -->
          </div>
          <!-- END: LIST_CAT_ROW -->
          <!-- IF {LIST_CAT_PAGINATION} -->
          <nav aria-label="Category Pagination" class="mb-3">
            <div class="text-center mb-2">{PHP.L.Page} {LIST_CAT_CURRENT_PAGE} {PHP.L.Of} {LIST_CAT_TOTAL_PAGES}</div>
            <ul class="pagination justify-content-center">{LIST_CAT_PREVIOUS_PAGE} {LIST_CAT_PAGINATION} {LIST_CAT_NEXT_PAGE}</ul>
          </nav>
          <!-- ENDIF -->
          <!-- BEGIN: LIST_ROW -->
          <div class="card mb-3">
            <div class="row g-0 align-items-stretch">
              <div class="col-md-5 col-lg-4 d-flex" style="background-color: var(--bs-card-cap-bg)">
                <a href="{LIST_ROW_URL}" class="attacherPicIntList-thumbnail-left-position-pict text-decoration-none flex-grow-1" title="{LIST_ROW_TITLE}">
                  <!-- IF {PHP|cot_plugin_active('attacher')} -->
                  <!-- IF {LIST_ROW_ID|att_count('page', $this, '', 'images')} > 0 --> {LIST_ROW_ID|att_display('page',$this,'','attacher.display.pagelist','images',1)}
                  <!-- ELSE -->
                  <!-- IF {LIST_ROW_LINK_MAIN_IMAGE} -->
                  <img src="{LIST_ROW_LINK_MAIN_IMAGE}" alt="{LIST_ROW_TITLE}" class="img-fluid object-fit-cover h-100 w-100">
                  <!-- ELSE -->
                  <img src="{PHP.R.page_default_image}" alt="{LIST_ROW_TITLE}" class="img-fluid object-fit-cover h-100 w-100">
                  <!-- ENDIF -->
                  <!-- ENDIF -->
                  <!-- ENDIF -->
                </a>
              </div>
              <div class="col-md-7 col-lg-8">
                <div class="card position-relative h-100 border-0">
                  <div class="card-header border-0 rounded-0">
                    <h3 class="card-title mb-0 fs-6">
                      <a href="{LIST_ROW_URL}" class="text-decoration-none" title="{LIST_ROW_TITLE}">{LIST_ROW_TITLE}</a>
                    </h3>
                  </div>
                  <div class="card-body border-top d-flex flex-column justify-content-center">
                    <!-- IF {LIST_ROW_DESCRIPTION} -->
                    <p class="text-muted">{LIST_ROW_DESCRIPTION}</p>
                    <!-- ELSE -->
                    <p class="text-secondary">{LIST_ROW_TEXT_CUT|strip_tags($this)|cot_string_truncate($this, '120')}</p>
                    <!-- ENDIF -->
                    <p class="card-text">
                      <small class="text-body-secondary">{LIST_ROW_CREATED}</small>
                    </p>
                    <!-- IF {LIST_ROW_COMMENTS_COUNT} > 0 -->
                    <div class="position-absolute top-0 end-0 mt-2 me-2" data-bs-toggle="tooltip" data-bs-title="{PHP.L.2wd_Comments}">
                      <span class="badge bg-primary">{LIST_ROW_COMMENTS_COUNT}</span>
                    </div>
                    <!-- ENDIF -->
                  </div>
                  <div class="card-footer text-end border-top rounded-0">
                    <div class="row">
                      <!-- IF {LIST_ROW_ADMIN} -->
                      <div class="col-12 col-md-auto my-1">
                        <p class="my-0 list-row-admin-link">{LIST_ROW_ADMIN}, {LIST_ROW_ADMIN_DELETE}, </p>
                      </div>
                      <!-- ENDIF -->
                      <div class="col-12 col-md-4 d-flex justify-content-end align-items-center">
                        <span class="me-2">({LIST_ROW_HITS})</span>
                        <a href="{LIST_ROW_URL}" class="btn btn-outline-primary btn-sm">{PHP.L.ReadMore}</a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- END: LIST_ROW -->
          <!-- IF {PAGINATION} -->
          <nav aria-label="Page Pagination" class="mt-3">
            <div class="text-center mb-2">{PHP.L.Page} {CURRENT_PAGE} {PHP.L.Of} {TOTAL_PAGES}</div>
            <ul class="pagination justify-content-center">{PREVIOUS_PAGE} {PAGINATION} {NEXT_PAGE}</ul>
          </nav>
          <!-- ENDIF -->
        </div>
        <div class="col-12 col-lg-4 mx-auto">
          <!-- IF {PHP.usr.maingrp} == 5 -->
          <div class="card mt-4 mb-4">
            <div class="card-header">
              <h2 class="h5 mb-0">{PHP.L.2wd_toolsAdmin}</h2>
            </div>
            <div class="card-body">
              <ul class="list-group list-group-flush">
                <!-- IF {PHP.usr.isadmin} -->
                <li class="list-group-item">
                  <a href="{PHP|cot_url('admin')}">{PHP.L.Adminpanel}</a>
                </li>
                <!-- IF {PHP.structure.page.unvalidated.path} -->
                <li class="list-group-item">
                  <a href="{PHP|cot_url('page','c=unvalidated')}" title="{PHP.structure.page.unvalidated.title}">{PHP.structure.page.unvalidated.title}</a>
                </li>
                <!-- ENDIF -->
                <!-- ENDIF -->
                <li class="list-group-item">{LIST_SUBMIT_NEW_PAGE}</li>
              </ul>
            </div>
          </div>
          <!-- ENDIF -->
          <!-- IF {PHP|cot_plugin_active('tags')} -->
          <div class="card mt-4 mb-4">
            <div class="card-header">
              <h2 class="h5 mb-0">{PHP.L.Tags}</h2>
            </div>
            <div class="card-body">{LIST_TAG_CLOUD}</div>
          </div>
          <!-- ENDIF -->
        </div>
      </div>
    </div>
  </div>
</div>
<!-- IF {PHP.usr.maingrp} == 5 AND {PHP.mskin} --> 
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/inc/mskin.tpl"}
<!-- ENDIF -->
<!-- END: MAIN -->
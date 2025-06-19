<!-- BEGIN: MAIN -->
<div class="border-bottom border-secondary py-3 px-3">
  <nav aria-label="breadcrumb">
    <div class="ps-container-breadcrumb">
      <ol class="breadcrumb d-flex mb-0">{LIST_BREADCRUMBS}</ol>
    </div>
  </nav>
</div>
<div class="min-vh-50 px-2 px-md-3 py-4">
  <div class="row justify-content-center">
    <div class="col-12 col-xl-10 col-xxl-9"> 
	{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"} 
	<div class="row">
        <div class="col-12 col-md-8 mx-auto pt-4">
          <!-- BEGIN: LIST_ROW -->
          <div class="card mb-4">
            <div class="card-header bg-secondary-subtle text-dark">
              <h2 class="h5 card-title mb-0">
                <a href="{LIST_ROW_URL}" title="{LIST_ROW_TITLE}">{LIST_ROW_TITLE}</a>
              </h2>
            </div>
            <div class="card-body">
              <p class="mb-1">
                <strong>{PHP.L.Status}:</strong>
                <span class="badge bg-warning">{LIST_ROW_LOCAL_STATUS}</span>
              </p>
              <!-- IF {LIST_ROW_DESCRIPTION} -->
              <p class="card-text text-muted small">{LIST_ROW_DESCRIPTION}</p>
              <!-- ENDIF -->
              <div class="card-text"> {LIST_ROW_TEXT_CUT|strip_tags($this)}
                <!-- IF {LIST_ROW_TEXT_IS_CUT} -->
                <a href="{LIST_ROW_URL}" class="btn btn-outline-primary btn-sm mt-2">{PHP.L.ReadMore}</a>
                <!-- ENDIF -->
                <!-- IF {LIST_ROW_ADMIN} --> {LIST_ROW_ADMIN_EDIT} {LIST_ROW_ADMIN_DELETE} ({LIST_ROW_HITS})
                <!-- ENDIF -->
              </div>
              <!-- IF {LIST_ROW_COMMENTS_COUNT} > 0 -->
              <div class="position-absolute top-0 end-0 mt-2 me-2">
                <span class="badge bg-primary">{LIST_ROW_COMMENTS_COUNT}</span>
              </div>
              <!-- ENDIF -->
            </div>
          </div>
          <!-- END: LIST_ROW -->
          <!-- IF {LIST_PAGINATION} -->
          <nav aria-label="Page Pagination" class="mt-3">
            <div class="text-center mb-2">{PHP.L.Page} {LIST_CURRENT_PAGE} {PHP.L.Of} {LIST_TOTAL_PAGES}</div>
            <ul class="pagination justify-content-center"> {LIST_PREVIOUS_PAGE} {LIST_PAGINATION} {LIST_NEXT_PAGE} </ul>
          </nav>
          <!-- ENDIF -->
        </div>
        <div class="col-12 col-md-4 mx-auto">
          <!-- IF {PHP.usr.maingrp} == 5 -->
          <div class="card mt-4 mb-4">
            <div class="card-header">
              <h2 class="h5 mb-0">{PHP.L.2wd_publicCardAdmin}</h2>
            </div>
            <div class="card-body">
              <ul class="list-unstyled mb-0">
                <!-- IF {PHP.usr.isadmin} -->
                <li>
                  <a href="{PHP|cot_url('admin')}">{PHP.L.Adminpanel}</a>
                </li>
                <!-- ENDIF -->
                <li>{LIST_SUBMIT_NEW_PAGE}</li>
              </ul>
            </div>
          </div>
          <!-- ENDIF -->
        </div>
      </div>
    </div>
  </div>
</div>
<!-- IF {PHP.usr.maingrp} == 5 AND {PHP.mskin} --> {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/inc/mskin.tpl"}
<!-- ENDIF -->
<!-- END: MAIN -->
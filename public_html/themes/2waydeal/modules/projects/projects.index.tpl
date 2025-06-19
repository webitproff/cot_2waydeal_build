<!-- BEGIN: SEARCH -->
<!-- BEGIN: PTYPES -->
<ul class="nav nav-tabs mb-3">
  <li class="nav-item">
    <a class="nav-link active" href="{PTYPE_ALL_URL}">{PHP.L.All}</a>
  </li>
  <!-- BEGIN: PTYPES_ROWS -->
  <li class="nav-item">
    <a class="nav-link
			<!-- IF {PTYPE_ROW_ACT} --> active
			<!-- ENDIF -->" href="{PTYPE_ROW_URL}">{PTYPE_ROW_TITLE} </a>
  </li>
  <!-- END: PTYPES_ROWS -->
  <!-- IF {PHP.usr.auth_write} -->
  <li class="nav-item ms-auto">
    <a rel="nofollow" class="btn btn-success" href="{PHP|cot_url('projects', 'm=add')}" title="{PHP.L.projects_add_to_catalog}">{PHP.L.projects_add_to_catalog}</a>
  </li>
  <!-- ENDIF -->
</ul>
<!-- END: PTYPES -->
<div class="card filter-section p-3 mb-4">
  <form action="{SEARCH_ACTION_URL}" method="get">
    <input type="hidden" name="e" value="projects" />
    <div class="mb-3">
      <label for="searchQuery" class="form-label">{PHP.L.Search}:</label> {SEARCH_SQ}
    </div>
    <!-- IF {PHP|cot_plugin_active('locationselector')} -->
    <div class="mb-3">
      <label for="location" class="form-label">{PHP.L.Location}:</label> {SEARCH_LOCATION}
    </div>
    <!-- ENDIF -->
    <div class="mb-3">
      <label for="category" class="form-label">{PHP.L.Category}:</label> {SEARCH_CAT}
    </div>
    <div class="mb-3">
      <label for="sorter" class="form-label">{PHP.L.Order}:</label> {SEARCH_SORTER}
    </div>
    <button type="submit" name="search" class="btn btn-primary">{PHP.L.Search}</button>
  </form>
</div>
<!-- END: SEARCH -->
<!-- BEGIN: PROJECTS -->
<div id="listprojects">
  <!-- BEGIN: PRJ_ROWS -->
  <div class="card task-card mb-3">
    <div class="card-body">
      <div class="d-flex justify-content-between align-items-start">
        <div>
          <h5 class="card-title">
            <a href="{PRJ_ROW_URL}" class="text-decoration-none">{PRJ_ROW_SHORTTITLE|cot_string_truncate($this, '75')}</a>
          </h5>
          <p class="card-text text-muted">{PRJ_ROW_CATTITLE}
            <!-- IF {PRJ_ROW_TYPE} --> • {PRJ_ROW_TYPE}
            <!-- ENDIF -->
          </p>
          <p class="card-text">{PRJ_ROW_SHORTTEXT|strip_tags($this)|cot_string_truncate($this, '120')}</p>
        </div>
        <div class="text-end">
          <!-- IF {PRJ_ROW_COST} > 0 -->
          <p>
            <span class="h4 text-success fw-bold">{PRJ_ROW_COST} {PHP.cfg.payments.valuta}</span>
          </p>
          <!-- ENDIF -->
          <p class="text-muted small">{PRJ_ROW_DATE}</p>
          <a class="btn btn-outline-primary btn-sm" href="{PRJ_ROW_OFFERS_ADDOFFER_URL}">{PHP.L.offers_add_offer}</a> ({PRJ_ROW_OFFERS_COUNT})
        </div>
      </div>
      <div class="d-flex flex-wrap gap-2 mt-0">
        <p class="text-muted small mb-0">{PRJ_ROW_OWNER_FULL_NAME}</p>
        <p class="text-muted small mb-0">{PRJ_ROW_CITY} {PRJ_ROW_REGION}</p>
        
        <p class="small text-muted mb-0">{PRJ_ROW_ADMIN_EDIT}</p>
        
      </div>
    </div>
  </div>
  <!-- END: PRJ_ROWS -->
</div>
<!-- IF {PAGENAV_PAGES} -->
<div class="pagination">
  <ul class="pagination justify-content-center">{PAGENAV_PAGES}</ul>
</div>
<!-- ENDIF -->
<!-- END: PROJECTS -->
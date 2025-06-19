<!-- BEGIN: MAIN -->
<div class="border-bottom border-secondary py-3 px-3">
  <nav aria-label="breadcrumb">
    <div class="ps-container-breadcrumb">
      <ol class="breadcrumb d-flex mb-0">
        {BREADCRUMBS}
      </ol>
    </div>
  </nav>
</div>
<div class="min-vh-50 px-2 px-md-3 py-4">
  <div class="row justify-content-center">
    <div class="col-12 col-xxl-10">
      <div class="row align-items-center mb-4">
        <div class="col-md-6">
          <h1 class="mb-0 d-flex align-items-center flex-wrap">
            <!-- IF {PHP.c} --> {CATTITLE}
            <!-- ELSE --> {PHP.L.projects}
            <!-- ENDIF -->
            <span class="ms-2">({PAGENAV_COUNT})</span>
          </h1>
        </div>
        <!-- IF {PHP.usr.auth_write} -->
        <div class="col-md-6 d-flex justify-content-center justify-content-md-end mt-3 mt-md-0">
          <a class="btn btn-outline-secondary" href="{PHP|cot_url('projects', 'm=add')}">{PHP.L.projects_add_to_catalog}</a>
        </div>
        <!-- ENDIF -->
      </div>
      <!-- IF {CATDESC} -->
      <div class="card mb-4">
        <div class="card-body">{CATDESC}</div>
      </div>
      <!-- ENDIF -->
      <div class="row">
        <div class="col-12 col-md-4 col-lg-3">
          <!-- IF {CATALOG} -->
          <div class="card mb-4 rounded-3" style="border: 5px var(--bs-dark-border-subtle) solid">
            <div class="card-header" style="background-color: var(--bs-dark-bg-subtle)">
              <h2 class="h5 mb-0">{PHP.L.Categories} </h2>
            </div>
            <div class="card-body px-0">{CATALOG}</div>
          </div>
          <!-- ENDIF -->
        </div>
        <div class="col-12 col-md-8 col-lg-9">
          <!-- BEGIN: PTYPES -->
          <ul class="nav nav-tabs mb-3">
            <li class="nav-item">
              <a class="nav-link active" href="{PTYPE_ALL_URL}">{PHP.L.All}</a>
            </li>
            <!-- BEGIN: PTYPES_ROWS -->
            <li class="nav-item">
              <a class="nav-link <!-- IF {PTYPE_ROW_ACT} --> active <!-- ENDIF -->" href="{PTYPE_ROW_URL}">{PTYPE_ROW_TITLE} </a>
            </li>
            <!-- END: PTYPES_ROWS -->
          </ul>
          <!-- END: PTYPES -->
          <div class="card filter-section p-3 mb-4" style="border: 5px var(--bs-dark-border-subtle) solid">
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
              <div class="row">
                <div class="col-12 col-sm-3 d-none d-sm-block"></div>
                <div class="col-12 col-sm-9">
                  <div class="row g-3 justify-content-md-end justify-content-center">
                    <div class="col-md-6 col-12 text-center">
                      <input type="submit" name="search" class="w-100 w-md-auto btn btn-outline-primary" value="{PHP.L.2wd_StartSearch}" />
                    </div>
                    <div class="col-md-6 col-12 text-center">
                      <a class="btn btn-outline-danger w-100" href="{PHP|cot_url('projects')}">{PHP.L.2wd_ReserFilter}</a>
                    </div>
                  </div>
                </div>
              </div>
            </form>
          </div>
          <div id="listprojects">
            <!-- BEGIN: PRJ_ROWS -->
            <div class="card project-card mb-3">
              <div class="card-body">
                <div class="d-flex justify-content-between align-items-start mb-2">
                  <h4 class="card-title mb-0">
                    <a href="{PRJ_ROW_URL}" class="text-decoration-none">{PRJ_ROW_SHORTTITLE}</a>
                  </h4>
                  <!-- IF {PRJ_ROW_COST} > 0 -->
                  <span class="fw-bold">{PRJ_ROW_COST} {PHP.cfg.payments.valuta}</span>
                  <!-- ENDIF -->
                </div>
                <p class="small text-muted mb-2"> {PRJ_ROW_OWNER_NAME} <span class="date">[{PRJ_ROW_DATE}]</span>
                  <span class="region">{PRJ_ROW_COUNTRY} {PRJ_ROW_REGION} {PRJ_ROW_CITY}</span> {PRJ_ROW_EDIT_URL}
                </p>
                <p class="card-text">{PRJ_ROW_SHORTTEXT}</p>
                <div class="d-flex justify-content-between align-items-center">
                  <div class="type">
                    <!-- IF {PRJ_ROW_TYPE} --> {PRJ_ROW_TYPE} /
                    <!-- ENDIF -->
                    <a href="{PRJ_ROW_CATURL}">{PRJ_ROW_CATTITLE}</a>
                  </div>
                  <div class="offers">
                    <a href="{PRJ_ROW_OFFERS_ADDOFFER_URL}">{PHP.L.offers_add_offer}</a> ({PRJ_ROW_OFFERS_COUNT})
                  </div>
                </div>
              </div>
            </div>
            <!-- END: PRJ_ROWS -->
          </div>
          <!-- IF {PAGENAV_COUNT} > 0 -->
          <div class="pagination">
            <ul>{PAGENAV_PAGES}</ul>
          </div>
          <!-- ELSE -->
          <div class="alert">{PHP.L.projects_notfound}</div>
          <!-- ENDIF -->
        </div>
      </div>
    </div>
  </div>
</div>
<!-- IF {PHP.usr.maingrp} == 5 --> 
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/inc/mskin.tpl"}
<!-- ENDIF -->
<!-- END: MAIN -->
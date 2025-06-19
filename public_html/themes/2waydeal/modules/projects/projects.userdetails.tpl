<!-- BEGIN: MAIN -->
<div class="py-2 px-2 px-md-3 border-bottom border-secondary">
  <div class="py-2 d-flex justify-content-between align-items-center">
    <h1 class="mb-0">{PHP.L.projects_projects}</h1>
    <!-- IF {PHP.usr.id} == {PHP.urr.user_id} AND {ADDPRJ_SHOWBUTTON} -->
    <a href="{PHP|cot_url('projects', 'm=add')}" class="btn btn-outline-primary">{PHP.L.projects_add_to_catalog}</a>
    <!-- ENDIF -->
  </div>
</div>
<div class="min-vh-50 px-2 px-md-3 py-4">
  <div class="row justify-content-center">
    <div class="col-12 col-xxl-10">
      <ul class="nav nav-tabs mb-4">
        <li class="nav-item">
          <a class="nav-link" href="{PHP.urr.user_id|cot_url('users', 'm=details&id=$this&tab=projects')}">{PHP.L.All}</a>
        </li>
        <!-- BEGIN: CAT_ROW -->
        <li class="nav-item">
          <a class="nav-link <!-- IF {PRJ_CAT_ROW_SELECT} --> active <!-- ENDIF -->" href="{PRJ_CAT_ROW_URL}">
            <!-- IF {PRJ_ROW_CAT_ICON} -->
            <img src="{PRJ_CAT_ROW_ICON}" alt="{PRJ_CAT_ROW_TITLE}" class="me-1" style="max-height: 20px;">
            <!-- ENDIF -->
            {PRJ_CAT_ROW_TITLE}
            <span class="badge bg-dark ms-1">{PRJ_CAT_ROW_COUNT_PROJECTS}</span>
          </a>
        </li>
        <!-- END: CAT_ROW -->
      </ul>
      <div id="listprojects">
        <!-- BEGIN: PRJ_ROWS -->
        <div class="card mb-4 <!-- IF {PRJ_ROW_ISBOLD} --> border-primary <!-- ENDIF --><!-- IF {PRJ_ROW_ISTOP} --> shadow-lg <!-- ENDIF -->">
          <div class="card-body">
            <div class="d-flex justify-content-between align-items-start mb-2">
              <h4 class="card-title mb-0">
                <a href="{PRJ_ROW_URL}" class="text-decoration-none">{PRJ_ROW_SHORTTITLE}</a>
                <!-- IF {PRJ_ROW_USER_IS_ADMIN} -->
                <span class="badge bg-info">{PRJ_ROW_LOCALSTATUS}</span>
                <!-- ENDIF -->
              </h4>
              <!-- IF {PRJ_ROW_COST} > 0 -->
              <span class="fw-bold">{PRJ_ROW_COST} {PHP.cfg.payments.valuta}</span>
              <!-- ENDIF -->
            </div>
            <p class="small text-muted mb-2">
              <span class="date">[{PRJ_ROW_DATE}]</span>
              <span class="region">{PRJ_ROW_COUNTRY} {PRJ_ROW_REGION} {PRJ_ROW_CITY}</span>
              {PRJ_ROW_EDIT_URL}
            </p>
            <p class="card-text mb-3">{PRJ_ROW_SHORTTEXT}</p>
            <div class="d-flex justify-content-between align-items-center">
              <div class="type">
                <!-- IF {PRJ_ROW_TYPE} --> {PRJ_ROW_TYPE} / <!-- ENDIF -->
                <a href="{PRJ_ROW_CATURL}">{PRJ_ROW_CATTITLE}</a>
              </div>
              <div class="d-flex gap-2 align-items-center">
                <div class="offers">
                  <a href="{PRJ_ROW_OFFERS_ADDOFFER_URL}">{PHP.L.offers_add_offer}</a> ({PRJ_ROW_OFFERS_COUNT})
                </div>
                <!-- IF {PHP|cot_plugin_active('payprjtop')} AND {PHP.usr.id} == {PHP.urr.user_id} -->
                {PRJ_ROW_PAYTOP}
                <!-- ENDIF -->
                <!-- IF {PHP|cot_plugin_active('payprjbold')} AND {PHP.usr.id} == {PHP.urr.user_id} -->
                {PRJ_ROW_PAYBOLD}
                <!-- ENDIF -->
              </div>
            </div>
          </div>
        </div>
        <!-- END: PRJ_ROWS -->
      </div>
      <!-- IF {PAGENAV_COUNT} > 0 -->
      <div class="pagination">
        <ul class="pagination">{PAGENAV_PAGES}</ul>
      </div>
      <!-- ELSE -->
      <div class="alert alert-info">{PHP.L.projects_empty}</div>
      <!-- ENDIF -->
    </div>
  </div>
</div>
<!-- END: MAIN -->
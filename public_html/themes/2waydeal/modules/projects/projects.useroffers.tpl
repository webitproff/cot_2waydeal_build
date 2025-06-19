<!-- BEGIN: MAIN -->
<div class="py-2 px-2 px-md-3 border-bottom border-secondary">
  <div class="py-2">
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto">{BREADCRUMBS}</ol>
    </nav>
  </div>
</div>
<div class="min-vh-50 px-2 px-md-3 py-4">
  <div class="row justify-content-center">
    <div class="col-12 col-xxl-10">
      <h1 class="mb-4">{PHP.L.offers_useroffers}</h1>
      <ul class="nav nav-tabs mb-4" id="myTab">
        <li class="nav-item">
          <a class="nav-link <!-- IF !{PHP.choise} --> active <!-- ENDIF -->" href="{PHP|cot_url('projects', 'm=useroffers')}">{PHP.L.All}</a>
        </li>
        <li class="nav-item">
          <a class="nav-link <!-- IF {PHP.choise} == 'none' --> active <!-- ENDIF -->" href="{PHP|cot_url('projects', 'm=useroffers&choise=none')}">{PHP.L.offers_useroffers_none}</a>
        </li>
        <li class="nav-item">
          <a class="nav-link <!-- IF {PHP.choise} == 'performer' --> active <!-- ENDIF -->" href="{PHP|cot_url('projects', 'm=useroffers&choise=performer')}">{PHP.L.offers_useroffers_performer}</a>
        </li>
        <li class="nav-item">
          <a class="nav-link <!-- IF {PHP.choise} == 'refuse' --> active <!-- ENDIF -->" href="{PHP|cot_url('projects', 'm=useroffers&choise=refuse')}">{PHP.L.offers_useroffers_refuse}</a>
        </li>
      </ul>
      <!-- BEGIN: OFFER_ROWS -->
      <div class="card project-card mb-4">
        <div class="card-body">
          <div class="d-flex justify-content-between align-items-start mb-2">
            <h4 class="card-title mb-0">
              <a href="{OFFER_ROW_PROJECT_URL}" class="text-decoration-none">{OFFER_ROW_PROJECT_SHORTTITLE}</a>
            </h4>
            <!-- IF {OFFER_ROW_PROJECT_COST} > 0 -->
            <span class="fw-bold">{OFFER_ROW_PROJECT_COST} {PHP.cfg.payments.valuta}</span>
            <!-- ENDIF -->
          </div>
          <p class="small text-muted mb-2">
            {OFFER_ROW_PROJECT_OWNER_NAME} <span class="date">[{OFFER_ROW_PROJECT_DATE}]</span>
            <span class="region">{OFFER_ROW_PROJECT_COUNTRY} {OFFER_ROW_PROJECT_REGION} {OFFER_ROW_PROJECT_CITY}</span>
          </p>
          <p class="card-text mb-3">{OFFER_ROW_PROJECT_SHORTTEXT}</p>
          <div class="d-flex justify-content-between align-items-center mb-3">
            <div class="type">
              <!-- IF {OFFER_ROW_PROJECT_TYPE} --> {OFFER_ROW_PROJECT_TYPE} / <!-- ENDIF -->
              <a href="{OFFER_ROW_PROJECT_CATURL}">{OFFER_ROW_PROJECT_CATTITLE}</a>
            </div>
            <div class="offers">
              <a href="{OFFER_ROW_PROJECT_OFFERS_ADDOFFER_URL}">{PHP.L.offers_add_offer}</a> ({OFFER_ROW_PROJECT_OFFERS_COUNT})
            </div>
          </div>
          <hr>
          <div class="row g-3">
            <div class="col-12 col-md-8">
              <p>{OFFER_ROW_TEXT}</p>
            </div>
            <div class="col-12 col-md-4">
              <p class="mb-2">{PHP.L.Date}: {OFFER_ROW_DATE}</p>
              <p class="mb-2">
                <!-- IF {OFFER_ROW_COSTMAX} > {OFFER_ROW_COSTMIN} AND {OFFER_ROW_COSTMIN} != 0 -->
                {PHP.L.offers_budget}: {PHP.L.offers_ot} {OFFER_ROW_COSTMIN} {PHP.L.offers_do} {OFFER_ROW_COSTMAX} {PHP.cfg.payments.valuta}
                <!-- ENDIF -->
                <!-- IF {OFFER_ROW_COSTMAX} == {OFFER_ROW_COSTMIN} AND {OFFER_ROW_COSTMIN} != 0 OR {OFFER_ROW_COSTMAX} == 0 AND {OFFER_ROW_COSTMIN} != 0 -->
                {PHP.L.offers_budget}: {OFFER_ROW_COSTMIN} {PHP.cfg.payments.valuta}
                <!-- ENDIF -->
              </p>
              <p class="mb-2">
                <!-- IF {OFFER_ROW_TIMEMAX} > {OFFER_ROW_TIMEMIN} AND {OFFER_ROW_TIMEMIN} != 0 -->
                {PHP.L.offers_sroki}: {PHP.L.offers_ot} {OFFER_ROW_TIMEMIN} {PHP.L.offers_do} {OFFER_ROW_TIMEMAX} {OFFER_ROW_TIMETYPE}
                <!-- ENDIF -->
                <!-- IF {OFFER_ROW_TIMEMAX} == {OFFER_ROW_TIMEMIN} AND {OFFER_ROW_TIMEMIN} != 0 OR {OFFER_ROW_TIMEMAX} == 0 AND {OFFER_ROW_TIMEMIN} != 0 -->
                {PHP.L.offers_sroki}: {OFFER_ROW_TIMEMIN} {OFFER_ROW_TIMETYPE}
                <!-- ENDIF -->
              </p>
              <p class="mb-0">
                <!-- IF {OFFER_ROW_CHOISE} -->
                  <!-- IF {OFFER_ROW_CHOISE} == 'performer' -->
                  <span class="badge bg-success">{PHP.L.offers_vibran_ispolnitel}</span>
                  <!-- ELSE -->
                  <span class="badge bg-warning">{PHP.L.offers_otkazali}</span>
                  <!-- ENDIF -->
                <!-- ELSE -->
                  <span class="badge bg-secondary">{PHP.L.offers_useroffers_none}</span>
                <!-- ENDIF -->
              </p>
            </div>
          </div>
        </div>
      </div>
      <!-- END: OFFER_ROWS -->
      <!-- IF {PAGENAV_PAGES} -->
      <div class="pagination">
        <ul class="pagination">{PAGENAV_PAGES}</ul>
      </div>
      <!-- ENDIF -->
    </div>
  </div>
</div>
<!-- END: MAIN -->
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
    <div class="col-12">
      {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
      <!-- IF {PRJ_PERFORMER_ID} > 0 -->
      <h2 class="h4 mb-3">{PHP.L.offers_vibran_ispolnitel}</h2>
      <div class="card mb-4">
        <div class="card-body d-flex align-items-center">
          <div class="flex-shrink-0 me-3">{PRJ_PERFORMER_AVATAR}</div>
          <div>
            <p class="mb-2">{PRJ_PERFORMER_NAME}</p>
          </div>
        </div>
      </div>
      <!-- ENDIF -->
      <div id="offers">
        <h2 class="h4 mb-4">{PHP.L.offers_offers} ({ALLOFFERS_COUNT})</h2>
        <!-- BEGIN: ROWS -->
        <div class="card mb-4">
          <div class="card-body">
            <div class="row g-3">
              <div class="col-12 col-md-6 col-lg-3">{OFFER_ROW_OWNER_AVATAR}</div>
              <div class="col-12 col-md-6 col-lg-9">
                <!-- BEGIN: CHOISE -->
                <div class="d-flex justify-content-end mb-3">
                      <!-- IF {OFFER_ROW_CHOISE} == "refuse" -->
                      <p class="mb-2"><span class="badge text-bg-warning">{PHP.L.offers_otkazali}!</span></p>
                      <!-- ENDIF -->
                      <!-- IF {OFFER_ROW_CHOISE} == "performer" -->
                      <p class="mb-2"><span class="badge text-bg-success">{PHP.L.offers_vibran_ispolnitel}!</span></p>
                      <!-- ENDIF -->
                      <!-- IF {OFFER_ROW_CHOISE} != "refuse" -->
                      <a href="{OFFER_ROW_REFUSE}" class="btn btn-outline-warning w-100 mb-2">{PHP.L.offers_otkazat}</a>
                      <!-- ENDIF -->
                      <!-- IF {OFFER_ROW_CHOISE} != "performer" AND {PERFORMER_USERID} == "" -->
                      <a href="{OFFER_ROW_SETPERFORMER}" class="btn btn-outline-success w-100 mb-2">{PHP.L.offers_ispolnitel}</a>
                      <!-- ENDIF -->
                      <!-- IF {OFFER_ROW_CHOISE} != "refuse" AND {PHP|cot_plugin_active('sbr')} -->
                      <a href="{OFFER_ROW_SBRCREATELINK}" class="btn btn-outline-primary w-100">{PHP.L.sbr_createlink}</a>
                      <!-- ENDIF -->
                </div>
                <!-- END: CHOISE -->
                <p class="small text-muted mb-2">{OFFER_ROW_OWNER_NAME} <span class="date">[{OFFER_ROW_DATE}]</span></p>
                <p class="mb-3">{OFFER_ROW_TEXT}</p>
                <p class="mb-2">
                  <!-- IF {OFFER_ROW_COSTMAX} > {OFFER_ROW_COSTMIN} AND {OFFER_ROW_COSTMIN} != 0 -->
                  {PHP.L.offers_budget}: {PHP.L.offers_ot} {OFFER_ROW_COSTMIN} {PHP.L.offers_do} {OFFER_ROW_COSTMAX} {PHP.cfg.payments.valuta}
                  <!-- ENDIF -->
                  <!-- IF {OFFER_ROW_COSTMAX} == {OFFER_ROW_COSTMIN} AND {OFFER_ROW_COSTMIN} != 0 OR {OFFER_ROW_COSTMAX} == 0 AND {OFFER_ROW_COSTMIN} != 0 -->
                  {PHP.L.offers_budget}: {OFFER_ROW_COSTMIN} {PHP.cfg.payments.valuta}
                  <!-- ENDIF -->
                </p>
                <p class="mb-3">
                  <!-- IF {OFFER_ROW_TIMEMAX} > {OFFER_ROW_TIMEMIN} AND {OFFER_ROW_TIMEMIN} != 0 -->
                  {PHP.L.offers_sroki}: {PHP.L.offers_ot} {OFFER_ROW_TIMEMIN} {PHP.L.offers_do} {OFFER_ROW_TIMEMAX} {OFFER_ROW_TIMETYPE}
                  <!-- ENDIF -->
                  <!-- IF {OFFER_ROW_TIMEMAX} == {OFFER_ROW_TIMEMIN} AND {OFFER_ROW_TIMEMIN} != 0 OR {OFFER_ROW_TIMEMAX} == 0 AND {OFFER_ROW_TIMEMIN} != 0 -->
                  {PHP.L.offers_sroki}: {OFFER_ROW_TIMEMIN} {OFFER_ROW_TIMETYPE}
                  <!-- ENDIF -->
                </p>
                <!-- BEGIN: POSTS -->
                <h5 class="mb-3">{PHP.L.offers_posts_title}</h5>
                <div id="projectsposts">
                  <!-- BEGIN: POSTS_ROWS -->
                  <div class="card mb-3">
                    <div class="card-body d-flex">
                      <div class="flex-shrink-0 me-3">{POST_ROW_OWNER_AVATAR}</div>
                      <div>
                        <p class="small text-muted mb-2">{POST_ROW_OWNER_NAME} <span class="date">[{POST_ROW_DATE}] {POST_ROW_EDIT_URL}</span></p>
                        {POST_ROW_TEXT}
                      </div>
                    </div>
                  </div>
                  <!-- END: POSTS_ROWS -->
                  <!-- BEGIN: POSTFORM -->
                  <div class="mb-3" id="postform{ADDPOST_OFFERID}">
                    <form action="{ADDPOST_ACTION_URL}" method="post" >
                      {ADDPOST_TEXT}
                      <div class="d-flex justify-content-end mt-3">
                        <button type="submit" name="submit" class="btn btn-outline-primary">{PHP.L.Submit}</button>
                      </div>
                    </form>
                  </div>
                  <!-- END: POSTFORM -->
                </div>
                <!-- END: POSTS -->
              </div>
            </div>
          </div>
        </div>
        <!-- END: ROWS -->
      </div>
      <!-- IF {OFFERSNAV_COUNT} > 0 -->
      <div class="pagination">
        <ul class="pagination">{OFFERSNAV_PAGES}</ul>
      </div>
      <!-- ENDIF -->
      <!-- IF {ALLOFFERS_COUNT} == 0 -->
      <div class="alert alert-info">{PHP.L.offers_empty}</div>
      <!-- ENDIF -->
      <!-- BEGIN: ADDOFFERFORM -->
      <h2 class="h4 mb-3">{PHP.L.offers_ostavit_predl}</h2>
      <div class="card mb-4" id="addofferform">
        <form action="{OFFER_FORM_ACTION_URL}" method="post" enctype="multipart/form-data" class="card-body">
          <div class="row g-3">
            <div class="col-12 col-md-6">
              <label class="form-label">{PHP.L.offers_budget}:</label>
              <div class="d-flex align-items-center gap-2 flex-wrap">
                <span>{PHP.L.offers_ot}</span> {OFFER_FORM_COSTMIN}
                <span>{PHP.L.offers_do}</span> {OFFER_FORM_COSTMAX}
                <span>{PHP.cfg.payments.valuta}</span>
              </div>
            </div>
            <div class="col-12 col-md-6">
              <label class="form-label">{PHP.L.offers_sroki}:</label>
              <div class="d-flex align-items-center gap-2 flex-wrap">
                <span>{PHP.L.offers_ot}</span> {OFFER_FORM_TIMEMIN}
                <span>{PHP.L.offers_do}</span> {OFFER_FORM_TIMEMAX}
                {OFFER_FORM_TIMETYPE}
              </div>
            </div>
            <div class="col-12">
              <label class="form-label">{PHP.L.offers_text_predl}:</label>
              {OFFER_FORM_TEXT}
            </div>
          </div>
          <div class="d-flex justify-content-end mt-3">
            {OFFER_FORM_HIDDEN}
            <button type="submit" name="submit" class="btn btn-outline-primary">{PHP.L.offers_add_predl}</button>
          </div>
        </form>
      </div>
      <!-- END: ADDOFFERFORM -->
      <!-- IF {PHP.usr.id} == 0 -->
      <div class="alert alert-warning">{PHP.L.offers_for_guest}</div>
      <!-- ENDIF -->
    </div>
  </div>
</div>
<!-- END: MAIN -->
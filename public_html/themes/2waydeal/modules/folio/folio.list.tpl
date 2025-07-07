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
    <div class="col-12 container-3xl">
      <div class="row align-items-center mb-4">
        <div class="col-md-6">
          <h1 class="mb-0 d-flex align-items-center flex-wrap">
            <!-- IF {PHP.c} --> {CATTITLE}
            <!-- ELSE --> {PHP.L.folio}
            <!-- ENDIF -->
            <span class="ms-2">({PAGENAV_COUNT})</span>
          </h1>
        </div>
        <!-- IF {PHP.usr.auth_write} -->
        <div class="col-md-6 d-flex justify-content-center justify-content-md-end mt-3 mt-md-0">
		<!-- IF {PHP.c} -->
		<a class="btn btn-outline-success" href="{PHP|cot_url('folio', 'm=add', '&c={PHP.c}')}">{PHP.L.folio_add_work}</a>
		<!-- ELSE -->
		<a class="btn btn-outline-secondary" href="{PHP|cot_url('folio', 'm=add')}">{PHP.L.folio_add_work}</a>
		<!-- ENDIF -->
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
          <div class="p-3 mb-4 rounded-2" style="border: 5px var(--bs-dark-border-subtle) solid">
            <form action="{SEARCH_ACTION_URL}" method="get" class="d-flex flex-column gap-3">
              <input type="hidden" name="c" value="{PHP.c}" />
              <input type="hidden" name="type" value="{PHP.type}" />
              <input type="hidden" name="e" value="folio" />
              <input type="hidden" name="l" value="{PHP.lang}" />
              <!-- Поле поиска -->
              <div class="row align-items-center">
                <label class="col-12 col-sm-3 mb-2 mb-sm-0">{PHP.L.Search}:</label>
                <div class="col-12 col-sm-9"> {SEARCH_SQ|cot_rc_modify($this, 'class="form-control"')} </div>
              </div>
              <!-- IF {PHP|cot_plugin_active('locationselector')} -->
              <div class="row align-items-center">
                <label class="col-12 col-sm-3 mb-2 mb-sm-0">{PHP.L.Location}:</label>
                <div class="col-12 col-sm-9">{SEARCH_LOCATION}</div>
              </div>
              <!-- ENDIF -->
              <div class="row align-items-center">
                <label class="col-12 col-sm-3 mb-2 mb-sm-0">{PHP.L.Category}:</label>
                <div class="col-12 col-sm-9">{SEARCH_CAT}</div>
              </div>
              <div class="row align-items-center">
                <label class="col-12 col-sm-3 mb-2 mb-sm-0">{PHP.L.Order}:</label>
                <div class="col-12 col-sm-9">{SEARCH_SORTER}</div>
              </div>
              <div class="row">
                <div class="col-12 col-sm-3 d-none d-sm-block"></div>
                <div class="col-12 col-sm-9">
                  <div class="row g-3 justify-content-md-end justify-content-center">
                    <div class="col-md-6 col-12 text-center">
                      <input type="submit" name="search" class="w-100 w-md-auto btn btn-outline-primary" value="{PHP.L.2wd_StartSearch}" />
                    </div>
                    <div class="col-md-6 col-12 text-center">
                      <a class="btn btn-outline-danger w-100" href="{PHP|cot_url('folio')}">{PHP.L.2wd_ReserFilter}</a>
                    </div>
                  </div>
                </div>
              </div>
            </form>
          </div>
          <div id="listfolio">
            <!-- BEGIN: PRD_ROWS -->
            <div class="card mb-4">
              <div class="row g-0 align-items-stretch">
                <div class="col-md-4 d-flex">
                  <a href="{PRD_ROW_URL}" class="text-decoration-none flex-grow-1" title="{PRD_ROW_SHORTTITLE}">
                    <!-- IF {PHP|cot_plugin_active('attacher')} -->
                    <!-- IF {PRD_ROW_ID|att_count('folio', $this, '', 'images')} > 0 --> {PRD_ROW_ID|att_display('folio',$this,'','attacher.display.foliolist','images',1)}
                    <!-- ELSE -->
                    <img src="{PHP.R.page_default_image}" alt="{PRD_ROW_SHORTTITLE}" class="img-fluid card-image-dynamic object-fit-cover h-100 w-100">
                    <!-- ENDIF -->
                    <!-- ENDIF -->
                  </a>
                </div>
                <div class="col-md-8 ">
                  <div class="card-body position-relative">
                    <h5 class="card-title">
                      <a href="{PRD_ROW_URL}" class="mb-0 fw-semibold" style="color: var(--bs-primary-text-emphasis)" title="{PRD_ROW_SHORTTITLE}">{PRD_ROW_SHORTTITLE} </a>
                    </h5>
                    <p class="mb-0">{PRD_ROW_SHORTTEXT|strip_tags($this)}</p>
                    <div class="row align-items-center">
                      <div class="col-12 col-md-6">
                        <div class="row align-items-center">
                          <div class="col-4 col-md-2 text-center">
                            <!-- IF {PHP|cot_plugin_active('userimages')} -->
                            <!-- IF {PRD_ROW_OWNER_AVATAR_SRC} -->
                            <img src="{PRD_ROW_OWNER_AVATAR_SRC}" alt="{PRD_ROW_OWNER_NICKNAME}" class="rounded-circle" width="36" height="36">
                            <!-- ELSE -->
                            <img src="{PHP.R.userimg_default_avatar}" alt="{PRD_ROW_OWNER_NICKNAME}" class="rounded-circle" width="36" height="36">
                            <!-- ENDIF -->
                            <!-- ENDIF -->
                          </div>
                          <div class="col-8 col-md-10 text-start">
                            <!-- IF {PRD_ROW_OWNER_FULL_NAME} -->
                            <h4 class="h6 mt-2 mb-0 ms-2">
                              <a class="link-success fw-bold link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover" href="{PRD_ROW_OWNER_DETAILS_URL}"> {PRD_ROW_OWNER_FULL_NAME} </a>
                            </h4>
                            <!-- ENDIF -->
                            <!-- IF {PRD_ROW_OWNER_NICKNAME} -->
                            <p class="small mb-0 ms-2">{PRD_ROW_OWNER_NICKNAME}</p>
                            <!-- ENDIF -->
                            <!-- IF {PRD_ROW_OWNER_REVIEWS_AVG_STARS_HTML} -->
                            <div class="review-stars">
                              <span class="ms-3">{PRD_ROW_OWNER_REVIEWS_AVG_STARS_HTML}</span>
                            </div>
                            <!-- ENDIF -->
                          </div>
                        </div>
                      </div>
                      <div class="col-12 col-md-6 text-end">
                        <div>
                          <!-- IF {PRD_ROW_COST} > 0 -->
                          <span class="ms-2 fs-4 text-success fw-bold">{PRD_ROW_COST} {PHP.cfg.payments.valuta}</span>
                          <!-- ENDIF -->
                        </div>
                        <div>
                          <small class="text-body-secondary">
                            <a href="{PRD_ROW_CATURL}">{PRD_ROW_CATTITLE}</a>
                          </small>
                        </div>
                        <div>
                          <small class="text-body-secondary">[{PRD_ROW_DATE}]</small>
                        </div>
                        <!-- IF {PHP.usr.maingrp} == 5 -->
                        <p class="mb-0">
                          <a class="text-danger fw-semibold" href="{PRD_ROW_ID|cot_url('folio', 'm=edit&id=$this')}">{PHP.L.Edit}</a>
                        </p>
                        <!-- ENDIF -->
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- END: PRD_ROWS -->
          </div>
          <!-- Пагинация -->
          <!-- IF {PAGENAV_COUNT} > 0 -->
          <div class="row">
            <div class="col-12">
              <div class="row align-items-center mb-4">
                <div class="col-12 col-md-6">
                  <nav aria-label="Portfolio pagination" class="d-flex justify-content-md-end">
                    <ul class="pagination mb-0">{PREVIOUS_PAGE} {PAGENAV_PAGES} {NEXT_PAGE}</ul>
                  </nav>
                </div>
              </div>
            </div>
          </div>
          <!-- ELSE -->
          <div class="alert alert-warning">{PHP.L.folio_notfound}</div>
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

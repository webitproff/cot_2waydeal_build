<!-- BEGIN: MAIN -->
<div class="border-bottom border-secondary py-3 px-3">
  <nav aria-label="breadcrumb">
    <div class="ps-container-breadcrumb">
      <ol class="breadcrumb d-flex mb-0">
        <li class="breadcrumb-item active">{PHP.L.folio_add_work_title}</li>
      </ol>
    </div>
  </nav>
</div>
<div class="min-vh-50 px-2 px-md-3 py-5">
  <div class="row justify-content-center">
    <div class="col-12 col-lg-10">
      {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}

      <form action="{PRDADD_FORM_SEND}" method="post" name="newwork" enctype="multipart/form-data" class="needs-validation" novalidate>

        <div class="card shadow-sm">
          <div class="card-header">
            <h5 class="mb-0">{PHP.L.folio_add_work_title}</h5>
          </div>

          <div class="card-body">

            
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.Category} <span class="text-danger">*</span></label>
              <div class="col-sm-9">
                {PRDADD_FORM_CAT}
              </div>
            </div>

            
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.Title} <span class="text-danger">*</span></label>
              <div class="col-sm-9">
                {PRDADD_FORM_TITLE}
              </div>
            </div>

            
            <div class="mb-3 row<!-- IF !{PHP.usr.isadmin} --> d-none<!-- ENDIF -->">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.Alias}</label>
              <div class="col-sm-9">
                {PRDADD_FORM_ALIAS}
              </div>
            </div>

            <!-- IF {PHP|cot_plugin_active('locationselector')} -->
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.folio_location}</label>
              <div class="col-sm-9">
                {PRDADD_FORM_LOCATION}
              </div>
            </div>
			<!-- ENDIF -->
			
            
            <div class="mb-3 row<!-- IF !{PHP.usr.isadmin} --> d-none<!-- ENDIF -->">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.Parser}</label>
              <div class="col-sm-9">
                {PRDADD_FORM_PARSER}
              </div>
            </div>

            
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.Text}</label>
              <div class="col-sm-9">
                {PRDADD_FORM_TEXT}
              </div>
            </div>
			
            <!-- IF {PHP|cot_plugin_active('attacher')} -->
			<!-- IF {PHP|cot_auth('plug', 'attacher', 'W')} -->
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.att_add_pict_files}</label>
              <div class="col-sm-9">
                {PHP|att_filebox('folio', 0)}
              </div>
            </div>
			<!-- ENDIF -->
			<!-- ENDIF -->


            
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.folio_price}</label>
              <div class="col-sm-9">
                <div class="input-group">
                  {PRDADD_FORM_COST}
                  <span class="input-group-text">{PHP.cfg.payments.valuta}</span>
                </div>
              </div>
            </div>

          </div>

          <div class="card-footer text-end">
            <button type="submit" class="btn btn-outline-success">
              <i class="fa-solid fa-circle-plus me-1"></i> {PHP.L.Submit}
            </button>
          </div>
        </div>

      </form>
    </div>
  </div>
</div>
<!-- This is the name of the template for informing the administrator -->
<!-- IF {PHP.usr.maingrp} == 5 AND {PHP.mskin} -->
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/inc/mskin.tpl"}
<!-- ENDIF -->
<!-- END: MAIN -->
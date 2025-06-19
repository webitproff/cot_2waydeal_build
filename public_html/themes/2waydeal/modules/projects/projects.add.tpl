<!-- BEGIN: MAIN -->
<div class="border-bottom border-secondary py-3 px-3">
  <nav aria-label="breadcrumb">
    <div class="ps-container-breadcrumb">
      <ol class="breadcrumb d-flex mb-0">
        <li class="breadcrumb-item active">{PHP.L.projects_add_project_title}</li>
      </ol>
    </div>
  </nav>
</div>


<div class="min-vh-50 px-2 px-md-3 py-5">
  <div class="row justify-content-center">
    <div class="col-12 col-lg-10">
      {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}

      <form action="{PRJADD_FORM_SEND}" method="post" name="newproj" enctype="multipart/form-data" class="needs-validation" novalidate>
        <div class="card shadow-sm">
          <div class="card-header">
            <h5 class="mb-0">{PHP.L.projects_add_project_title}</h5>
          </div>

          <div class="card-body">

            <!-- Тип проекта -->
            <!-- IF {PHP.projects_types} -->
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.Type}</label>
              <div class="col-sm-9">
                {PRJADD_FORM_TYPE}
              </div>
            </div>
            <!-- ENDIF -->

            <!-- Категория -->
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.Category} <span class="text-danger">*</span></label>
              <div class="col-sm-9">
                {PRJADD_FORM_CAT}
              </div>
            </div>

            <!-- Локация -->
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.Location}</label>
              <div class="col-sm-9">
                {PRJADD_FORM_LOCATION}
              </div>
            </div>

            <!-- Заголовок -->
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.Title} <span class="text-danger">*</span></label>
              <div class="col-sm-9">
                {PRJADD_FORM_TITLE}
              </div>
            </div>

            <!-- IF {PHP.usr.isadmin} -->
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.Alias}</label>
              <div class="col-sm-9">
                {PRJADD_FORM_ALIAS}
              </div>
            </div>
			
            <!-- Парсер -->
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.Parser}</label>
              <div class="col-sm-9">
                {PRJADD_FORM_PARSER}
              </div>
            </div>
			<!-- ENDIF -->
            <!-- Описание -->
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.Text}</label>
              <div class="col-sm-9">
                {PRJADD_FORM_TEXT}
              </div>
            </div>

            <!-- Цена -->
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.projects_price}</label>
              <div class="col-sm-9">
                <div class="input-group">
                  {PRJADD_FORM_COST}
                  <span class="input-group-text">{PHP.cfg.payments.valuta}</span>
                </div>
              </div>
            </div>
            <!-- IF {PHP|cot_plugin_active('attacher')} -->
			<!-- IF {PHP|cot_auth('plug', 'attacher', 'W')} -->
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.att_add_pict_files}</label>
              <div class="col-sm-9">
                {PHP|att_filebox('projects', 0)}
              </div>
            </div>
			<!-- ENDIF -->
			<!-- ENDIF -->
          </div>

          <div class="card-footer text-end">
            <button type="submit" class="btn btn-outline-success">
              <i class="fa-solid fa-circle-plus me-1"></i> {PHP.L.projects_next}
            </button>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>
<!-- IF {PHP.usr.maingrp} == 5 --> 
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/inc/mskin.tpl"}
<!-- ENDIF -->
<!-- END: MAIN -->
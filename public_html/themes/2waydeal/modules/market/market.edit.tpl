<!-- BEGIN: MAIN -->
<div class="border-bottom border-secondary py-3 px-3">
  <nav aria-label="breadcrumb">
    <div class="ps-container-breadcrumb">
      <ol class="breadcrumb d-flex mb-0">
        <li class="breadcrumb-item active">{PHP.L.market_edit_product_title}</li>
      </ol>
    </div>
  </nav>
</div>


<!-- Форма редактирования -->
<div class="min-vh-50 px-2 px-md-3 py-5">
  <div class="row justify-content-center">
    <div class="col-12 col-lg-10">
      {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
      <form action="{PRDEDIT_FORM_SEND}" method="post" name="edit" enctype="multipart/form-data" class="needs-validation" novalidate>
        <div class="card shadow-sm">
          <div class="card-header">
            <h5 class="mb-0">{PHP.L.market_edit_product_title}</h5>
          </div>
          <div class="card-body">

            <!-- Категория -->
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.Category}</label>
              <div class="col-sm-9">
                <!-- instead of PRDEDIT_FORM_CAT -->  {PRDEDIT_FORM_CAT_SELECT2}
              </div>
            </div>

            <!-- Заголовок -->
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.Title}</label>
              <div class="col-sm-9">
                {PRDEDIT_FORM_TITLE}
              </div>
            </div>

            <!-- Alias -->
            <div class="mb-3 row<!-- IF !{PHP.usr.isadmin} --> d-none<!-- ENDIF -->">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.Alias}</label>
              <div class="col-sm-9">
                {PRDEDIT_FORM_ALIAS}
              </div>
            </div>

            <!-- Локация -->
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.market_location}</label>
              <div class="col-sm-9">
                {PRDEDIT_FORM_LOCATION}
              </div>
            </div>

            <!-- Парсер -->
            <div class="mb-3 row<!-- IF !{PHP.usr.isadmin} --> d-none<!-- ENDIF -->">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.Parser}</label>
              <div class="col-sm-9">
                {PRDEDIT_FORM_PARSER}
              </div>
            </div>

            <!-- Текст -->
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.Text}</label>
              <div class="col-sm-9">
                {PRDEDIT_FORM_TEXT}
              </div>
            </div>
            <!-- IF {PHP|cot_plugin_active('attacher')} -->
			<!-- IF {PHP|cot_auth('plug', 'attacher', 'W')} -->
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.att_add_pict_files}</label>
              <div class="col-sm-9">
                {PRDEDIT_FORM_ID|att_filebox('market', $this)}
              </div>
            </div>
			<!-- ENDIF -->
			<!-- ENDIF -->
            <!-- Теги -->


            <!-- Цена -->
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.market_price}</label>
              <div class="col-sm-9">
                <div class="input-group">
                  {PRDEDIT_FORM_COST}
                  <span class="input-group-text">{PHP.cfg.payments.valuta}</span>
                </div>
              </div>
            </div>

            <!-- Файл -->
            <!-- IF {PHP|cot_plugin_active('marketorders')} -->
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.marketorders_file}</label>
              <div class="col-sm-9">
                {PRDEDIT_FORM_FILE}
              </div>
            </div>
            <!-- ENDIF -->


            <!-- Удалить -->
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.Delete}</label>
              <div class="col-sm-9">
                {PRDEDIT_FORM_DELETE}
              </div>
            </div>
          </div>

          <!-- Кнопка отправки -->
          <div class="card-footer text-end">
            <button type="submit" class="btn btn-outline-primary">
              <i class="fa-solid fa-save me-1"></i> {PHP.L.Submit}
            </button>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>

<!-- END: MAIN -->

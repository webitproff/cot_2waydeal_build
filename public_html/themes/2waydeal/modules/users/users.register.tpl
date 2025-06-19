<!-- BEGIN: MAIN -->
<!-- IF {USERS_REGISTER_BREADCRUMBS} -->
    <div class="px-2 px-md-3 py-2 border-bottom border-secondary">
        <div class="p-2">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb mb-0 small flex-nowrap overflow-x-auto">{USERS_REGISTER_BREADCRUMBS}</ol>
            </nav>
        </div>
    </div>
<!-- ENDIF -->
<div class="min-vh-50 px-2 px-md-3 py-5">
  <!-- Форма -->
  <div class="row justify-content-center">
    <div class="col-12 col-lg-10">
      <form id="user-register" name="register" action="{USERS_REGISTER_SEND}" method="post" enctype="multipart/form-data" class="needs-validation" novalidate>

        <div class="card shadow-sm">
          <div class="card-header">
            <h5 class="mb-0">{USERS_REGISTER_TITLE}</h5>
          </div>
          <div class="card-body">
            {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}

            <!-- GROUP -->
            <!-- IF {USERS_REGISTER_GROUPSELECTBOX} -->
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.profile_group} <span class="text-danger">*</span></label>
              <div class="col-sm-9">
                {USERS_REGISTER_GROUPSELECTBOX}
              </div>
            </div>
            <!-- ENDIF -->

            <!-- USERNAME -->
            <div class="mb-3 row">
              <label for="regUser" class="col-sm-3 col-form-label fw-semibold">{PHP.L.Username} <span class="text-danger">*</span></label>
              <div class="col-sm-9">
                {USERS_REGISTER_USER}
              </div>
            </div>

            <!-- EMAIL -->
            <div class="mb-3 row">
              <label for="regEmail" class="col-sm-3 col-form-label fw-semibold">{PHP.L.users_validemail} <span class="text-danger">*</span></label>
              <div class="col-sm-9">
                {USERS_REGISTER_EMAIL}
                <div class="form-text">{PHP.L.users_validemailhint}</div>
              </div>
            </div>

            <!-- PASSWORD -->
            <div class="mb-3 row">
              <label for="regPassword" class="col-sm-3 col-form-label fw-semibold">{PHP.L.Password} <span class="text-danger">*</span></label>
              <div class="col-sm-9">
                {USERS_REGISTER_PASSWORD}
              </div>
            </div>

            <!-- PASSWORD REPEAT -->
            <div class="mb-3 row">
              <label for="regPasswordRepeat" class="col-sm-3 col-form-label fw-semibold">{PHP.L.users_confirmpass} <span class="text-danger">*</span></label>
              <div class="col-sm-9">
                {USERS_REGISTER_PASSWORDREPEAT}
              </div>
            </div>

            <!-- USER AGREEMENT -->
            <!-- IF {PHP|cot_plugin_active('useragreement')} -->
            <div class="mb-3 row">
              <div class="col-sm-3 fw-semibold">
                {PHP.L.useragreement}
              </div>
              <div class="col-sm-9">
                {PHP|cot_checkbox(0, 'ruseragreement', '')} <a href="{PHP|cot_url('plug', 'e=useragreement')}" target="blank">{PHP.L.useragreement_agree}</a>
              </div>
            </div>
            <!-- ENDIF -->

            <!-- CAPTCHA -->
            <!-- IF {PHP.cfg.captchamain|cot_plugin_active($this)} -->
            <div class="mb-3 row">
              <label class="col-sm-3 col-form-label fw-semibold">{PHP.L.captcha_verification} <span class="text-danger">*</span></label>
              <div class="col-sm-9">
                <div class="row g-2">
                  <div class="col-sm-6">{USERS_REGISTER_VERIFY_IMG}</div>
                  <div class="col-sm-6">{USERS_REGISTER_VERIFY_INPUT}</div>
                </div>
                <div class="invalid-feedback d-block">{PHP.L.captcha_users_verify_required}</div>
              </div>
            </div>
            <!-- ENDIF -->

          </div>

          <!-- Кнопка -->
          <div class="card-footer text-end">
            <button type="submit" class="btn btn-outline-primary">
              <i class="fa-solid fa-user-plus me-1"></i> {PHP.L.Submit}
            </button>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>

<!-- END: MAIN -->

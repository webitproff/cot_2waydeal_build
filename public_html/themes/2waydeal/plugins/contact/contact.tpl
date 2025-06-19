<!-- BEGIN: MAIN -->
<div class="border-bottom border-secondary py-3 px-3">
  <nav aria-label="breadcrumb">
    <div class="ps-container-breadcrumb">
      <ol class="breadcrumb d-flex mb-0">{CONTACT_TITLE}</ol>
    </div>
  </nav>
</div>
<div class="py-5 px-3 min-height-50vh d-flex flex-column justify-content-center">
  <div class="row">
    <!-- IF {PHP.cfg.plugin.contact.about} OR {PHP.cfg.plugin.contact.map} -->
    <div class="col-12 col-xl-6">
      <div class="card mb-4">
        <div class="card-body">
          <!-- IF {PHP.cfg.plugin.contact.about} -->
          <p>{PHP.cfg.plugin.contact.about}</p>
          <!-- ENDIF -->
          <!-- IF {PHP.cfg.plugin.contact.map} -->
          <div class="ratio ratio-4x3"> {PHP.cfg.plugin.contact.map} </div>
          <!-- ENDIF -->
        </div>
      </div>
    </div>
    <!-- ENDIF -->
    <div class="col-12 col-xl-auto"> 
	{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
      <!-- BEGIN: FORM -->
      <div class="card mb-4">
        <div class="card-body">
          <form id="contact-form" name="contact_form" action="{CONTACT_FORM_SEND}" method="post" enctype="multipart/form-data" class="needs-validation" novalidate>
            <div class="row g-3">
              <div class="col-12">
                <label for="contactAuthor" class="form-label">{PHP.L.Username}</label>
                <div class="input-group has-validation"> {CONTACT_FORM_AUTHOR} </div>
              </div>
              <div class="col-12">
                <label for="contactEmail" class="form-label">{PHP.L.Email}</label>
                <div class="input-group has-validation"> {CONTACT_FORM_EMAIL} </div>
              </div>
              <div class="col-12">
                <label for="contactSubject" class="form-label">{PHP.L.Subject}</label>
                <div class="input-group has-validation"> {CONTACT_FORM_SUBJECT} </div>
              </div>
              <div class="col-12">
                <label for="contactText" class="form-label">{PHP.L.Message}</label>
                <div class="input-group has-validation"> {CONTACT_FORM_TEXT} </div>
              </div>
              <!-- BEGIN: EXTRAFLD -->
              <div class="col-12">
                <label for="contactExtrafld" class="form-label">{CONTACT_FORM_EXTRAFLD_TITLE}</label>
                <div class="input-group has-validation"> {CONTACT_FORM_EXTRAFLD} </div>
              </div>
              <!-- END: EXTRAFLD -->
              <!-- BEGIN: CAPTCHA -->
              <div class="col-12">
                <label for="regVerify" class="form-label">{PHP.L.captcha_verification} <span class="text-danger">*</span>
                </label>
                <div class="input-group has-validation">
                  <div class="row g-3">
                    <div class="col-6"> {CONTACT_FORM_VERIFY_IMG} </div>
                    <div class="col-6"> {CONTACT_FORM_VERIFY_INPUT} </div>
                  </div>
                  <div class="invalid-feedback">{PHP.L.captcha_users_verify_required}</div>
                </div>
              </div>
              <!-- END: CAPTCHA -->
            </div>
        </div>
            <div class="card-footer text-end">
              <button type="submit" class="btn btn-outline-primary">
                <i class="fa-solid fa-paper-plane fa-lg me-3"></i> {PHP.L.Submit} </button>
            </div>
        </form>
      </div>
      <!-- END: FORM -->
    </div>
  </div>
</div>
<!-- IF {PHP.usr.maingrp} == 5 AND {PHP.mskin} --> 
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/inc/mskin.tpl"}
<!-- ENDIF -->
<!-- END: MAIN -->
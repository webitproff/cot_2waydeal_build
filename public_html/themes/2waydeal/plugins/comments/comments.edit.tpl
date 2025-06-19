<!-- BEGIN: MAIN -->
<div class="border-bottom border-secondary py-3 px-3">
  <nav aria-label="breadcrumb">
    <div class="ps-container-breadcrumb ">
      <ol class="breadcrumb mb-0 text-truncate">
          <li class="breadcrumb-item"><a href="{BACK_URL}">{PHP.L.Back}</a></li>
          <li class="breadcrumb-item active" aria-current="page">{TITLE}</li>
      </ol>
    </div>
  </nav>
</div>
<div class="min-vh-50 px-2 px-md-3 py-4 d-flex flex-column justify-content-center">
      <div class="row">
        <div class="col-12 col-md-10 mx-auto">
          <div class="card mt-4 mb-4">
            <div class="card-body">
              {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
              <form action="{COMMENT_FORM_ACTION}" method="post" name="comment-form" class="needs-validation" novalidate>
                {COMMENT_FORM_PARAMS}
                <div class="row g-3">

                  <div class="col-12">
                    <label for="commentPoster" class="form-label fw-semibold">{PHP.L.Poster}</label>
                    <div class="input-group has-validation">
                      <div class="comment-form-poster">
                        <!-- IF {AUTHOR_DETAILS_URL} --><a href="{AUTHOR_DETAILS_URL}"><!-- ENDIF -->
                          {AUTHOR_AVATAR}
                        <!-- IF {AUTHOR_DETAILS_URL} --></a><!-- ENDIF -->
                        <!-- IF {AUTHOR_DETAILS_URL} --><a href="{AUTHOR_DETAILS_URL}"><!-- ENDIF -->
                          {AUTHOR}
                        <!-- IF {AUTHOR_DETAILS_URL} --></a><!-- ENDIF -->
                        <!-- IF {AUTHOR_ID} == 0 AND {PHP.usr.id} > 0 -->
                          <span>({PHP.L.Guest})</span>
                        <!-- ENDIF -->
                      </div>
                    </div>
                  </div>

                  <div class="col-12">
                    <label for="commentIp" class="form-label fw-semibold">{PHP.L.Ip}</label>
                    <div class="input-group has-validation">
                      <input type="text" class="form-control" id="commentIp" value="{COMMENT_IP}" readonly>
                    </div>
                  </div>

                  <div class="col-12">
                    <label for="commentDate" class="form-label fw-semibold">{PHP.L.Date}</label>
                    <div class="input-group has-validation">
                      <input type="text" class="form-control" id="commentDate" value="{COMMENT_DATE}" readonly>
                    </div>
                  </div>

                  <!-- BEGIN: EXTRA_FIELD -->
                    <div class="col-12">
                      <label for="extraField" class="form-label fw-semibold">{COMMENT_FORM_EXTRA_FIELD_TITLE}</label>
                      <div class="input-group has-validation">
                        {COMMENT_FORM_EXTRA_FIELD}
                      </div>
                    </div>
                  <!-- END: EXTRA_FIELD -->

                  <div class="col-12">
                    <label for="commentText" class="form-label fw-semibold">{PHP.L.Text}</label>
                    {COMMENT_FORM_TEXT}
                  </div>

                  <!-- IF {PHP|cot_module_active('pfs')} OR {PHP|cot_module_active('files')} -->
                    <div class="col-12">
                      <label for="commentFiles" class="form-label fw-semibold">{PHP.L.2wd_Files}</label>
                      <div class="mt-2">
                        <!-- IF {COMMENT_FORM_PFS} -->{COMMENT_FORM_PFS}<!-- ENDIF -->
                        <!-- IF {COMMENT_FORM_SFS} --><span class="me-2">{PHP.cfg.separator}</span>{COMMENT_FORM_SFS}<!-- ENDIF -->
                      </div>
                    </div>
                  <!-- ENDIF -->

                  <div class="col-12">
                    <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                      <button type="submit" class="btn btn-outline-primary">{PHP.L.Update}</button>
                    </div>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>

  <!-- Подключение mskin.tpl для администраторов -->
  <!-- IF {PHP.usr.maingrp} == 5 AND {PHP.mskin} -->
    {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/inc/mskin.tpl"}
  <!-- ENDIF -->

  <style>
    .comment-form-poster {
      display: flex;
      align-items: center;
      gap: 10px;
    }
    .comment-form-poster img.avatar {
      max-height: 60px;
      border-radius: 50%;
    }
  </style>
<!-- END: MAIN -->
<!-- BEGIN: MAIN -->
<div class="row">
  <div class="col-12 col-md-12 mx-auto">

    <h2 class="h5 mb-4">{PHP.L.comments_comments} ({TOTAL_ENTRIES})</h2>

    {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}

    <!-- IF !{COMMENTS_IS_AJAX} -->
    <!-- IF {COMMENTS_DISPLAY} === 'none' -->
    <div class="mb-3">
      <a href="#" onclick="toggleblock('comments'); return false" style="display: inline-flex; align-items: center; gap: 5px">
        {PHP.R.icon_comments}
        {PHP.L.comments_comments}: {TOTAL_ENTRIES}
      </a>
    </div>
    <!-- ENDIF -->
    <div id="comments" class="comments-container" {COMMENTS_CONTAINER_PARAMS} <!-- IF {COMMENTS_DISPLAY} == 'none' -->style="display:none;"<!-- ENDIF -->>
    <!-- ENDIF -->

    <div id="comments-block" class="comments-block" {COMMENTS_BLOCK_PARAMS}>
      <div class="list-group list-striped list-group-flush mb-5">
        <!-- BEGIN: COMMENTS_ROW -->
        <div id="com{COMMENTS_ROW_ID}" class="list-group-item list-group-item-action">
          <div class="row g-3">
            <div class="col-12 col-md-3">
              <!-- IF {PHP|cot_plugin_active('userimages')} -->
              <!-- IF {COMMENTS_ROW_AUTHOR_AVATAR_SRC} -->
              <img class="rounded" src="{COMMENTS_ROW_AUTHOR_AVATAR_SRC}" alt="{COMMENTS_ROW_AUTHOR_NICKNAME}" width="50" height="50">
              <!-- ELSE -->
              <img class="rounded" src="{PHP.R.userimg_default_avatar}" alt="{COMMENTS_ROW_AUTHOR_NICKNAME}" width="50" height="50">
              <!-- ENDIF -->
              <!-- ENDIF -->
              <p>
                <a href="{COMMENTS_ROW_URL}">{COMMENTS_ROW_ORDER}.</a>
                <!-- IF {COMMENTS_ROW_AUTHOR_DETAILS_URL} --><a href="{COMMENTS_ROW_AUTHOR_DETAILS_URL}"><!-- ENDIF -->
                {COMMENTS_ROW_AUTHOR_FULL_NAME}
                <!-- IF {COMMENTS_ROW_AUTHOR_DETAILS_URL} --></a><!-- ENDIF -->
              </p>
              <p>{COMMENTS_ROW_DATE}</p>
            </div>
            <div class="col-12 col-md-9 comments2">
              {COMMENTS_ROW_TEXT}
              <!-- IF {COMMENTS_ROW_DELETE} OR {COMMENTS_ROW_EDIT} -->
              <div class="margintop10 text-end">
                <!-- IF {COMMENTS_ROW_AUTHOR_IP} -->{PHP.L.Ip}: {COMMENTS_ROW_AUTHOR_IP}<!-- ENDIF -->
                {COMMENTS_ROW_EDIT} {COMMENTS_ROW_DELETE}
              </div>
              <!-- ENDIF -->
            </div>
          </div>
        </div>
        <!-- END: COMMENTS_ROW -->
      </div>

      <!-- IF {PAGINATION} -->
      <nav aria-label="Comments navigation" class="paging clear">
        <ul class="pagination justify-content-center">
          {PREVIOUS_PAGE}
          {PAGINATION}
          {NEXT_PAGE}
        </ul>
        <p class="text-center">
          <span>{PHP.L.Total}: {TOTAL_ENTRIES}, {PHP.L.Onpage}: {ENTRIES_ON_CURRENT_PAGE}</span>
        </p>
      </nav>
      <!-- ENDIF -->

      <!-- IF {TOTAL_ENTRIES} === 0 -->
      <div class="alert alert-warning warning">{PHP.L.comments_noYet}</div>
      <!-- ENDIF -->

      <!-- BEGIN: NEW_COMMENT -->
      <div class="card mb-4">
        <div class="card-body">
          <h2 class="comments h4 mt-4 mb-3">{PHP.L.comments_newComment}</h2>
          <div class="comments-warnings">
            {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
          </div>
          <div class="error comments-error alert alert-danger" style="display: none">
            <h4>{PHP.L.Error}</h4>
            <div class="comments-message"></div>
          </div>
          <div class="done comments-success alert alert-success" style="display: none">
            <h4>{PHP.L.Done}</h4>
            <div class="comments-message"></div>
          </div>
          <form action="{COMMENT_FORM_ACTION}" method="post" name="comment-form" class="needs-validation" novalidate>
            <div class="row g-3">
              <!-- BEGIN: GUEST -->
              <div class="col-12 mb-3">
                <label for="commentAuthor" class="form-label fw-semibold">{PHP.L.Name}</label>
                {COMMENT_FORM_AUTHOR}
              </div>
              <!-- END: GUEST -->

              <!-- BEGIN: EXTRA_FIELD -->
              <div class="col-12 mb-3">
                <label for="extraField" class="form-label fw-semibold">{COMMENT_FORM_EXTRA_FIELD_TITLE}</label>
                {COMMENT_FORM_EXTRA_FIELD}
              </div>
              <!-- END: EXTRA_FIELD -->

              <div class="col-12">
                <label for="commentText" class="form-label fw-semibold">{PHP.L.Text}</label>
                {COMMENT_FORM_TEXT}
              </div>

              <!-- IF {PHP.usr.id} == 0 AND {COMMENT_FORM_VERIFY_IMG} -->
              <div class="col-12 mb-3">
                <label for="commentVerify" class="form-label fw-semibold">{PHP.L.Verification}</label>
                <div class="d-flex align-items-center gap-2">
                  {COMMENT_FORM_VERIFY_IMG}
                  <!-- IF {COMMENT_FORM_VERIFY_INPUT} -->{COMMENT_FORM_VERIFY_INPUT}<!-- ENDIF -->
                </div>
              </div>
              <!-- ENDIF -->

              <!-- IF {COMMENT_FORM_HINT} -->
              <div class="col-12">
                <small class="form-text text-muted help">{COMMENT_FORM_HINT}</small>
              </div>
              <!-- ENDIF -->

              <div class="col-12 mb-3 text-center">
                <button type="submit" class="btn btn-primary">{PHP.L.Submit}</button>
              </div>
            </div>
          </form>
        </div>
      </div>
      <!-- END: NEW_COMMENT -->

      <!-- BEGIN: COMMENTS_CLOSED -->
      <div class="alert alert-danger error">{COMMENTS_CLOSED}</div>
      <!-- END: COMMENTS_CLOSED -->
    </div>

    <!-- IF !{COMMENTS_IS_AJAX} -->
    </div>
    <!-- ENDIF -->

  </div>
</div>

<!-- Уведомление для администратора -->
<!-- IF {PHP.usr.maingrp} == 5 -->
<div class="p-3">
  <div class="alert alert-warning" role="alert">
    <strong>{PHP.usr.name}</strong>, This is the HTML template <code>comments.tpl</code>
  </div>
</div>
<!-- ENDIF -->

<!-- END: MAIN -->
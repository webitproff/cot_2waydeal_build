<!-- BEGIN: MAIN -->
<div class="list-group list-group-striped list-group-flush">
  <!-- BEGIN: TOPICS_ROW -->
  <li class="list-group-item list-group-item-action {FORUM_ROW_ODDEVEN}">
    <div class="row g-3">
      <div class="col-12 col-md-8">
        <h5 class="mb-0 fs-6 fw-semibold"><a href="{FORUM_ROW_LAST_POST_URL}">{FORUM_ROW_TITLE}</a></h5>
		<p class="mb-1 text-muted fw-light">{FORUM_ROW_PREVIEW|strip_tags($this)|mb_substr($this, 0, 90, 'UTF-8')} ...</p>
      </div>
      <div class="col-12 col-md-4 text-center d-none d-lg-block">
        <div> <small class="text-body-secondary">{PHP.L.Lastpost} {FORUM_ROW_LAST_POSTER_NAME}</small></div>
        <small class="text-body-secondary">{FORUM_ROW_UPDATED_STAMP|cot_date('datetime_medium', $this)}</small>
        <small class="text-body-secondary">{FORUM_ROW_PATH_SHORT}</small>
      </div>
    </div>
  </li>
  <!-- END: TOPICS_ROW -->
  <!-- BEGIN: NO_TOPICS_FOUND -->
  <div class="list-group-item text-center text-muted py-3">{PHP.L.recentitems_nonewposts}</div>
  <!-- END: NO_TOPICS_FOUND -->
</div>
<!-- END: MAIN -->

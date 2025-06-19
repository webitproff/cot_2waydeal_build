
<!-- BEGIN: MAIN -->

<div class="card mb-5">
  <div class="card-header" style="background-color: var(--bs-sidebar-bg)">
    <h2 class="h5 mb-0 text-primary-emphasis text-decoration-none">{PHP.L.Forums}</h2>
  </div>
  <div class="card-body p-0">
	<div class="list-group list-group-striped list-group-flush">
	  <!-- BEGIN: TOPICS_ROW -->
	  <li class="list-group-item list-group-item-action {FORUM_ROW_ODDEVEN}">
		<div class="row g-3">
		  <div class="col-12 col-md-8">
			<h5 class="mb-0 fs-6 fw-semibold text-primary-emphasis"><a class="text-reset" href="{FORUM_ROW_LAST_POST_URL}">{FORUM_ROW_TITLE}</a></h5>
			<p class="mb-1">{FORUM_ROW_PREVIEW|strip_tags($this)|mb_substr($this, 0, 90, 'UTF-8')} ...</p>
		  </div>
		  <div class="col-12 col-md-4 text-center">
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
  </div>
</div>


<!-- IF {PHP.usr.maingrp} == 5 -->
	<div class="alert alert-warning" role="alert">
	 <strong>{PHP.usr.name}</strong>, This is the HTML template <code>recentitems.forums.tpl</code>
	</div>
<!-- ENDIF --> 

<!-- END: MAIN -->
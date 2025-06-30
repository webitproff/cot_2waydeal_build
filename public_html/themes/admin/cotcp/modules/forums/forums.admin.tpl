<!-- BEGIN: MAIN -->
<div class="d-flex flex-wrap gap-2 mb-3">
  <a href="{ADMIN_FORUMS_URL_CONFIG}" class="btn btn-outline-secondary">
    <i class="fa-solid fa-gear me-1"></i>{PHP.L.Configuration} </a>
  <a href="{ADMIN_FORUMS_URL_STRUCTURE}" class="btn btn-outline-secondary">
    <i class="fa-solid fa-list-ul me-1"></i>{PHP.L.Categories} </a>
</div>
<div class="card mb-3">
  <div class="card-header">
    <h2 class="h5 mb-0">{PHP.L.Statistics}</h2>
  </div>
  <div class="card-body">
    <div class="row row-cols-1 row-cols-md-3 g-3">
      <div class="col">
        <div class="card h-100">
          <div class="card-body text-center">
            <h5 class="card-title">{PHP.L.forums_topics}</h5>
            <p class="card-text">{ADMIN_FORUMS_TOTALTOPICS}</p>
          </div>
        </div>
      </div>
      <div class="col">
        <div class="card h-100">
          <div class="card-body text-center">
            <h5 class="card-title">{PHP.L.forums_posts}</h5>
            <p class="card-text">{ADMIN_FORUMS_TOTALPOSTS}</p>
          </div>
        </div>
      </div>
      <div class="col">
        <div class="card h-100">
          <div class="card-body text-center">
            <h5 class="card-title">{PHP.L.Views}</h5>
            <p class="card-text">{ADMIN_FORUMS_TOTALVIEWS}</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="card mb-3">
  <div class="card-header">
    <h2 class="h5 mb-0">{PHP.L.home_newtopics}</h2>
  </div>
  <div class="list-group list-group-flush">
    <!-- BEGIN: ADMIN_FORUMS_ROW_USER -->
    <div class="list-group-item list-group-item-action">
      <div class="row align-items-center">
        <div class="col-1 text-center">{ADMIN_FORUMS_ROW_II}.</div>
        <div class="col-md-9"> {ADMIN_FORUMS_ROW_FORUMS} <br>
          <a href="{ADMIN_FORUMS_ROW_URL}">{ADMIN_FORUMS_ROW_TITLE}</a>
        </div>
        <div class="col-md-2 text-center">{ADMIN_FORUMS_ROW_POSTCOUNT}</div>
      </div>
    </div>
    <!-- END: ADMIN_FORUMS_ROW_USER -->
  </div>
</div>
<div class="px-2 py-2">
  <div class="alert alert-info" role="alert"> forums.admin.tpl </div>
</div>
<!-- END: MAIN -->
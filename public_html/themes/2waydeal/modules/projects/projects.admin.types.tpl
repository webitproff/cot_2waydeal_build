<!-- BEGIN: MAIN -->
<div class="py-2 px-2 px-md-3 border-bottom border-secondary">
  <div class="py-2">
    <h1 class="mb-0">{PHP.L.projects_projects}</h1>
  </div>
</div>
<div class="min-vh-50 px-2 px-md-3 py-4">
  <div class="row justify-content-center">
    <div class="col-12 col-xxl-10">
      <div class="card mb-4">
        <div class="card-body">
          <h2 class="h4 mb-4">{PHP.L.projects_types_editor}</h2>
          <form action="{EDITFORM_ACTION_URL}" method="post" name="newcountry">
            <div class="row row-cols-1 row-cols-md-2 g-3 mb-3">
              <!-- BEGIN: ROWS -->
              <div class="col">
                <div class="card h-100">
                  <div class="card-body">
                    <div class="row align-items-center">
                      <div class="col-12 col-md-4">
                        <p class="mb-0"><strong>{PHP.L.Default}:</strong> {TYPE_ROW_DEFAULT}</p>
                      </div>
                      <div class="col-12 col-md-4">
                        <p class="mb-0"><strong>{PHP.L.Title}:</strong> {TYPE_ROW_TITLE}</p>
                      </div>
                      <div class="col-12 col-md-4 text-md-end">
                        <a title="{PHP.L.Delete}" href="{TYPE_ROW_DEL_URL}" class="btn btn-outline-danger btn-sm">
                          <span class="bi bi-trash"></span> {PHP.L.Delete}
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- END: ROWS -->
              <!-- BEGIN: NOROWS -->
              <div class="col">
                <div class="alert alert-info text-center mb-0">{PHP.L.None}</div>
              </div>
              <!-- END: NOROWS -->
            </div>
            <div class="d-flex justify-content-between align-items-center mt-3">
              <div class="pagination">
                <ul class="pagination mb-0">{PAGENAV_PAGES}</ul>
              </div>
              <button type="submit" class="btn btn-outline-primary">{PHP.L.Update}</button>
            </div>
          </form>
        </div>
      </div>
      <!-- BEGIN: ADDFORM -->
      <div class="card mb-4">
        <div class="card-body">
          <h2 class="h4 mb-4">{PHP.L.projects_types_new}</h2>
          <form method="post" action="{ADDFORM_ACTION_URL}">
            <div class="row g-3 mb-3">
              <div class="col-12 col-md-6">
                <label for="addform_title" class="form-label">{PHP.L.Title}:</label>
                {ADDFORM_TITLE}
              </div>
              <div class="col-12 col-md-6">
                <label for="addform_default" class="form-label">{PHP.L.Default}:</label>
                {ADDFORM_DEFAULT}
              </div>
            </div>
            <div class="d-flex justify-content-end mt-3">
              <button type="submit" class="btn btn-outline-primary">{PHP.L.Add}</button>
            </div>
          </form>
        </div>
      </div>
      <!-- END: ADDFORM -->
    </div>
  </div>
</div>
<!-- END: MAIN -->
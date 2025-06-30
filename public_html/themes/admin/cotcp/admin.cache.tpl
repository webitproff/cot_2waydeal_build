<!-- BEGIN: MAIN --> {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"} <div class="py-4">
  <div class="min-height-50vh d-flex flex-column px-2 px-md-3 py-4">
    <div class="row">
      <div class="col-12">
        <div class="row mb-3">
          <div class="col-12 col-md-4">
            <a href="{ADMIN_CACHE_URL_REFRESH}" class="ajax btn btn-primary w-100">{PHP.L.Refresh}</a>
          </div>
          <div class="col-12 col-md-4">
            <a href="{ADMIN_CACHE_URL_PURGE}" class="ajax btn btn-primary w-100">{PHP.L.adm_purgeall}</a>
          </div>
          <div class="col-12 col-md-4">
            <a href="{ADMIN_CACHE_URL_SHOWALL}" class="ajax btn btn-primary w-100">{PHP.L.adm_cache_showall}</a>
          </div>
        </div>
        <!-- BEGIN: ADMIN_CACHE_MEMORY -->
        <div class="mb-3">
          <h2>{ADMIN_CACHE_MEMORY_DRIVER}</h2>
          <div class="progress mb-2">
            <div class="progress-bar" role="progressbar" style="width: {ADMIN_CACHE_MEMORY_PERCENTBAR}%;" aria-valuenow="{ADMIN_CACHE_MEMORY_PERCENTBAR}" aria-valuemin="0" aria-valuemax="100"></div>
          </div>
          <p>{PHP.L.Available}: {ADMIN_CACHE_MEMORY_AVAILABLE} / {ADMIN_CACHE_MEMORY_MAX} {PHP.L.bytes}</p>
        </div>
        <!-- END: ADMIN_CACHE_MEMORY -->
        <h2>{PHP.L.adm_internalcache}</h2>
        <div class="list-group mb-3">
          <div class="list-group-item list-group-item-dark">
            <div class="row align-items-center fw-bold">
              <div class="col-12 col-md-2">{PHP.L.Item}</div>
              <div class="col-12 col-md-2">{PHP.L.Section}</div>
              <div class="col-12 col-md-2">{PHP.L.Expire}</div>
              <div class="col-12 col-md-2">{PHP.L.Size}</div>
              <div class="col-12 col-md-3">{PHP.L.Value}</div>
              <div class="col-12 col-md-1">{PHP.L.Delete}</div>
            </div>
          </div>
          <!-- BEGIN: ADMIN_CACHE_ROW -->
          <div class="list-group-item">
            <div class="row align-items-center">
              <div class="col-12 col-md-2">{ADMIN_CACHE_ITEM_NAME}</div>
              <div class="col-12 col-md-2">{ADMIN_CACHE_REALM}</div>
              <div class="col-12 col-md-2">{ADMIN_CACHE_EXPIRE}</div>
              <div class="col-12 col-md-2">{ADMIN_CACHE_SIZE}</div>
              <div class="col-12 col-md-3">{ADMIN_CACHE_VALUE}</div>
              <div class="col-12 col-md-1">
                <a title="{PHP.L.Delete}" href="{ADMIN_CACHE_ITEM_DEL_URL}" class="ajax btn btn-danger">{PHP.L.Delete}</a>
              </div>
            </div>
          </div>
          <!-- END: ADMIN_CACHE_ROW -->
          <div class="list-group-item list-group-item-secondary">
            <div class="row align-items-center fw-bold">
              <div class="col-12 col-md-8">{PHP.L.Total}:</div>
              <div class="col-12 col-md-4">{ADMIN_CACHE_CACHESIZE}</div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="alert alert-info" role="alert"> admin.cache.tpl </div>
<!-- END: MAIN -->
<!-- BEGIN: MAIN -->
<div class="px-2 px-md-3 py-5">
  <div class="row g-3">
    <!-- BEGIN: ATTACHER_ROW -->
    <div class="col-12">
      <div class="d-flex align-items-center">
        <!-- IF {ATTACHER_ROW_IMG} -->
        <div class="flex-shrink-0 me-3">
          <a href="{ATTACHER_ROW_BIGTHUMB_URL}" title="{ATTACHER_ROW_TITLE}">
            <img src="{ATTACHER_ROW_THUMB_URL}" class="rounded img-fluid" style="width: 100px; height: 100px;" alt="{ATTACHER_ROW_SHORTNAME}">
          </a>
        </div>
        <div class="flex-grow-1">
          <p class="mb-1">{ATTACHER_ROW_TITLE}</p>
          <p class="mb-0">{ATTACHER_ROW_SHORTNAME} {ATTACHER_ROW_FILENAME}</p>
        </div>
        <!-- ELSE -->
        <div class="flex-shrink-0 me-3">
          <img src="{ATTACHER_ROW_EXT|att_icon($this,48)}" class="rounded" style="width: 48px; height: 48px;" alt="{ATTACHER_ROW_EXT}">
        </div>
        <div class="flex-grow-1">
          <p class="mb-1"><a href="{ATTACHER_ROW_URL}" title="{ATTACHER_ROW_TITLE}">{ATTACHER_ROW_FILENAME}</a> {ATTACHER_ROW_SIZE} ({PHP.L.att_downloads}: {ATTACHER_ROW_COUNT})</p>
          <p class="mb-0 small">{ATTACHER_ROW_TITLE}</p>
        </div>
        <!-- ENDIF -->
      </div>
    </div>
    <!-- END: ATTACHER_ROW -->
  </div>
</div>
<!-- END: MAIN -->
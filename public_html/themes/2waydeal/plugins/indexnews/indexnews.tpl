<!-- BEGIN: MAIN -->
<style>
.indexnews-card {
  transition: transform 0.3s, box-shadow 0.3s;
  border: 1px solid #8a888847;
  border-radius: 8px;
  overflow: hidden;
  margin-bottom: 20px;
}

.indexnews-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
}

.indexnews-thumbnail {
  position: relative;
  width: 100%;
  aspect-ratio: 10 / 7;
  overflow: hidden;
  border-radius: 8px 8px 0 0;
  display: flex;
  align-items: center;
  justify-content: center;
}

.indexnews-thumbnail img,
.indexnews-thumbnail .att-image {
  width: 100% !important;
  height: 100% !important;
  object-fit: cover !important;
  object-position: center !important;
  border-radius: 8px 8px 0 0;
  display: block;
}

.indexnews-card-body {
  padding: 15px;
}

.indexnews-title {
  font-size: 16px;
  font-weight: 500;
  margin-bottom: 8px;
  color: #1a73e8;
}

.indexnews-desc {
  font-size: 14px;
  color: #6c757d;
}
</style>

<div class="row">
  <!-- BEGIN: PAGE_ROW -->
  <article class="col-12 col-md-6 col-xl-4">
    <div class="indexnews-card" style="background-color: var(--bs-sidebar-bg)">
      <a class="indexnews-thumbnail" data-fancybox="gallery" href="{PAGE_ROW_URL}" data-caption="{PAGE_ROW_TITLE}">
        <!-- IF {PAGE_ROW_LINK_MAIN_IMAGE} -->
          <img src="{PAGE_ROW_LINK_MAIN_IMAGE}" alt="{PAGE_ROW_TITLE}">
        <!-- ELSE -->
          <!-- IF {PHP|cot_plugin_active('attacher')} -->
            <!-- IF {PAGE_ROW_ID|att_count('page', $this, '', 'images')} > 0 --> 
              <div class="att-image">{PAGE_ROW_ID|att_display('page',$this,'','attacher.display.indexnews','images',1)}</div>
            <!-- ELSE -->
              <img src="{PHP.R.page_default_image}" alt="{PAGE_ROW_TITLE}">
            <!-- ENDIF -->
          <!-- ELSE -->
            <img src="{PHP.R.page_default_image}" alt="{PAGE_ROW_TITLE}">
          <!-- ENDIF -->
        <!-- ENDIF -->
      </a>

      <div class="indexnews-card-body">
        <div class="indexnews-title">
          <a href="{PAGE_ROW_URL}" class="text-decoration-none" title="{PAGE_ROW_TITLE}">{PAGE_ROW_TITLE}</a>
        </div>
        <div class="indexnews-desc">{PAGE_ROW_CAT_PATH}</div>
      </div>
    </div>
  </article>
  <!-- END: PAGE_ROW -->
</div>

<!-- IF {PAGINATION} -->
<div class="col-12">
  <nav aria-label="Page Pagination" class="mt-3">
    <div class="text-center mb-2">{PHP.L.Page} {CURRENT_PAGE} {PHP.L.Of} {TOTAL_PAGES}</div>
    <ul class="pagination justify-content-center">
      {PREVIOUS_PAGE} {PAGINATION} {NEXT_PAGE}
    </ul>
  </nav>
</div>
<!-- ENDIF -->
<!-- END: MAIN -->

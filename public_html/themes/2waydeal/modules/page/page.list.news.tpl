<!-- BEGIN: MAIN -->
<div class="border-bottom border-secondary py-3 px-3">
  <nav aria-label="breadcrumb">
    <div class="ps-container-breadcrumb">
      <ol class="breadcrumb d-flex mb-0"> {LIST_BREADCRUMBS} </ol>
    </div>
  </nav>
</div>
<div class="min-vh-50 px-2 px-md-3 py-4"> 
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
	<div class="col-12">
	  <div class="row align-items-center mb-2">
	    <div class="col-md-8 col-lg-9 col-12 col-auto">
	      <div class="row align-items-center">
	        <div class="col-auto">
			 <div class="position-relative">
	          <!-- IF {LIST_CAT_ICON} -->
	          <img width="27" height="27" alt="{LIST_CAT_TITLE}" src="{LIST_CAT_ICON}">
	          <!-- ELSE -->
	          <img width="27" height="27" alt="{LIST_CAT_TITLE}" src="{PHP.R.cat_icon_mylogo}">
	          <!-- ENDIF -->
			  <!-- IF {PHP.cat.count} > 0 -->
			  <span class="position-absolute top-0 start-100 translate-middle badge text-bg-primary">{PHP.cat.count}</span>
			  <!-- ENDIF -->
			  </div>
	        </div>
	        <div class="col">
	          <h1 class="h4 mb-0"> 
			  {LIST_CAT_TITLE}
	          </h1>
	        </div>
	      </div>
	    </div>
	    <!-- IF {PHP|cot_auth('page', '{PHP.c}', 'W')} -->
	    <div class="col-md-4 col-lg-3 col-12 d-flex justify-content-center justify-content-md-end mt-3 mt-md-0">
	      <a class="btn btn-outline-secondary" href="{PHP|cot_url('page', 'm=add', '&c={PHP.c}')}">{PHP.L.page_addtitle}</a>
	    </div>
	    <!-- ENDIF -->
	  </div>
	  <!-- IF {LIST_CAT_DESCRIPTION} -->
	  <h2 class="h6 text-muted mb-2">{LIST_CAT_DESCRIPTION}</h2>
	  <!-- ENDIF -->
	</div>
	<div class="row">
    <div class="col-12 col-md-8 col-xxl-9 py-4">
      <!-- BEGIN: LIST_CAT_ROW -->
      <div class="mb-3">
        <h3 class="h5">
          <a href="{LIST_CAT_ROW_URL}" title="{LIST_CAT_ROW_TITLE}">{LIST_CAT_ROW_TITLE}</a> ({LIST_CAT_ROW_COUNT})
        </h3>
        <!-- IF {LIST_CAT_ROW_DESCRIPTION} -->
        <p class="small mb-0">{LIST_CAT_ROW_DESCRIPTION}</p>
        <!-- ENDIF -->
      </div>
      <!-- END: LIST_CAT_ROW -->
      <!-- IF {LIST_CAT_PAGINATION} -->
      <nav aria-label="Category Pagination" class="mb-3">
        <div class="text-center mb-2">{PHP.L.Page} {LIST_CAT_CURRENT_PAGE} {PHP.L.Of} {LIST_CAT_TOTAL_PAGES}</div>
        <ul class="pagination justify-content-center">{LIST_CAT_PREVIOUS_PAGE} {LIST_CAT_PAGINATION} {LIST_CAT_NEXT_PAGE}</ul>
      </nav>
      <!-- ENDIF -->
  <div class="row">
    <!-- BEGIN: LIST_ROW  -->
    <div class="col-12 col-lg-6 col-xxl-4">
      <div class="attacherPicIntList-card" style="background-color: var(--bs-sidebar-bg)">
        <a class="attacherPicIntList-thumbnail" data-fancybox="gallery" href="{LIST_ROW_URL}" data-caption="{LIST_ROW_TITLE}">
          <!-- IF {PHP|cot_plugin_active('attacher')} -->
          <!-- IF {LIST_ROW_ID|att_count('page', $this, '', 'images')} > 0 -->
          <div class="att-image">{LIST_ROW_ID|att_display('page',$this,'','attacher.display.pagelist_news','images',1)}</div>
          <!-- ELSE -->
          <img src="{PHP.R.page_default_image}" alt="{LIST_ROW_TITLE}">
          <!-- ENDIF -->
          <!-- ELSE -->
          <img src="{PHP.R.page_default_image}" alt="{LIST_ROW_TITLE}">
          <!-- ENDIF -->
        </a>
        <div class="attacherPicIntList-card-body">
          <div class="attacherPicIntList-title">
            <a href="{LIST_ROW_URL}" class="text-decoration-none" title="{LIST_ROW_TITLE}">{LIST_ROW_TITLE|cot_string_truncate($this, '64')}</a>
          </div>
          <div class="attacherPicIntList-desc">
		  <!-- IF {LIST_ROW_DESCRIPTION} -->
              <p class="text-muted small">{LIST_ROW_DESCRIPTION}</p>
              <!-- ELSE --> 
			  {LIST_ROW_TEXT_CUT|strip_tags($this)|cot_string_truncate($this, '120')}
           <!-- ENDIF -->
          </div>
        </div>
      </div>
    </div>
    <!-- END: LIST_ROW  -->
  </div>

      <!-- IF {PAGINATION} -->
      <nav aria-label="Page Pagination" class="mt-3">
        <div class="text-center mb-2">{PHP.L.Page} {CURRENT_PAGE} {PHP.L.Of} {TOTAL_PAGES}</div>
        <ul class="pagination justify-content-center">{PREVIOUS_PAGE} {PAGINATION} {NEXT_PAGE}</ul>
      </nav>
      <!-- ENDIF -->
    </div>
    <div class="col-12 col-md-4 col-xxl-3 mx-auto">
      <!-- IF {PHP.usr.maingrp} == 5 -->
      <div class="card mt-4 mb-4">
        <div class="card-header">
          <h2 class="h5 mb-0">{PHP.L.2wd_toolsAdmin}</h2>
        </div>
        <div class="card-body">
          <ul class="list-group list-group-flush">
            <!-- IF {PHP.usr.isadmin} -->
            <li class="list-group-item">
              <a href="{PHP|cot_url('admin')}">{PHP.L.Adminpanel}</a>
            </li>
            <!-- IF {PHP.structure.page.unvalidated.path} -->
            <li class="list-group-item">
              <a href="{PHP|cot_url('page','c=unvalidated')}" title="{PHP.structure.page.unvalidated.title}">{PHP.structure.page.unvalidated.title}</a>
            </li>
            <!-- ENDIF -->
            <!-- ENDIF -->
            <li class="list-group-item">{LIST_SUBMIT_NEW_PAGE}</li>
          </ul>
        </div>
      </div>
      <!-- ENDIF -->
	  <!-- IF {PHP|cot_plugin_active('tags')} -->
      <div class="card mt-4 mb-4">
        <div class="card-header">
          <h2 class="h5 mb-0">{PHP.L.Tags}</h2>
        </div>
        <div class="card-body">{LIST_TAG_CLOUD}</div>
      </div>
	  <!-- ENDIF -->
    </div>
  </div>
</div>
<!-- IF {PHP.usr.maingrp} == 5 AND {PHP.mskin} --> 
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/inc/mskin.tpl"}
<!-- ENDIF -->
<!-- END: MAIN -->
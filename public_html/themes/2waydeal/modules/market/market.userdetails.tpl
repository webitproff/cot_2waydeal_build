<!-- BEGIN: MAIN -->
<div class="card mb-4">
  <div class="card-body">
    <h4 class="d-flex align-items-center mb-4">
      {PHP.L.market}
      <!-- IF {PHP.usr.id} == {PHP.urr.user_id} AND {RPD_ADDPRD_SHOWBUTTON} -->
      <a href="{PRD_ADDPRD_URL}" class="btn btn-success ms-auto">
        {PHP.L.market_add_product}
      </a>
      <!-- ENDIF -->
    </h4>
    <ul class="nav nav-tabs mb-4">
      <li class="nav-item">
        <a class="nav-link" href="{PHP.urr.user_id|cot_url('users', 'm=details&id=$this&tab=market')}">
          {PHP.L.All}
        </a>
      </li>
      <!-- BEGIN: CAT_ROW -->
      <li class="nav-item <!-- IF {PRD_CAT_ROW_SELECT} -->active<!-- ENDIF -->">
        <a class="nav-link <!-- IF {PRD_CAT_ROW_SELECT} -->active<!-- ENDIF -->" href="{PRD_CAT_ROW_URL}">
          <!-- IF {PRD_ROW_CAT_ICON} -->
          <img src="{PRD_CAT_ROW_ICON}" alt="{PRD_CAT_ROW_TITLE}" class="me-1">
          <!-- ENDIF -->
          {PRD_CAT_ROW_TITLE}
          <span class="badge bg-dark ms-1">{PRD_CAT_ROW_COUNT_MARKET}</span>
        </a>
      </li>
      <!-- END: CAT_ROW -->
    </ul>
    <hr>
    <div class="row g-4">
      <!-- BEGIN: PRD_ROWS -->
		<div class="col-12 col-md-6 col-xl-4">
		  <div class="attacherPicIntList-card" style="background-color: var(--bs-sidebar-bg)">
			<a class="attacherPicIntList-thumbnail" data-fancybox="gallery" href="{PRD_ROW_URL}" data-caption="{PRD_ROW_SHORTTITLE}">
			  <!-- IF {PHP|cot_plugin_active('attacher')} -->
			  <!-- IF {PRD_ROW_ID|att_count('market', $this, '', 'images')} > 0 -->
			  <div class="att-image">{PRD_ROW_ID|att_display('market',$this,'','attacher.display.indexmarketlist','images',1)}</div>
			  <!-- ELSE -->
			  <img src="{PHP.R.page_default_image}" alt="{PRD_ROW_SHORTTITLE}">
			  <!-- ENDIF -->
			  <!-- ELSE -->
			  <img src="{PHP.R.page_default_image}" alt="{PRD_ROW_SHORTTITLE}">
			  <!-- ENDIF -->
			</a>
			<div class="attacherPicIntList-card-body">
			  <div class="attacherPicIntList-title">
				<a href="{PRD_ROW_URL}" class="text-decoration-none" title="{PRD_ROW_SHORTTITLE}">{PRD_ROW_SHORTTITLE|cot_string_truncate($this, '64')}</a>
			  </div>
			  <div class="attacherPicIntList-desc">{PRD_ROW_CATTITLE}
				<!-- IF {PRD_ROW_COST} > 0 -->
				<span class="ms-2 text-success fw-bold">{PRD_ROW_COST} {PHP.cfg.payments.valuta}</span>
				<!-- ENDIF -->
			  </div>
			</div>
		  </div>
		</div>
      <!-- END: PRD_ROWS -->
    </div>
    <!-- IF {PAGENAV_COUNT} > 0 -->
    <nav aria-label="pagination" class="mt-4">
      <ul class="pagination justify-content-center">
        {PAGENAV_PAGES}
      </ul>
    </nav>
    <!-- ELSE -->
    <div class="alert alert-warning mt-4">
      {PHP.L.market_empty}
    </div>
    <!-- ENDIF -->
  </div>
</div>
<!-- END: MAIN -->
<!-- BEGIN: MARKET -->
<h3 class="text-success mb-4">{PHP.L.market}</h3>
<div id="listmarket">
  <div class="row">
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
</div>
<!-- END: MARKET -->
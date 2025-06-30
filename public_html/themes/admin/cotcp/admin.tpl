<!-- BEGIN: MAIN -->
<div id="ajaxBlock" class=" mx-0">
  <!-- BEGIN: BODY -->
  <div class="border-bottom border-secondary py-3 px-3">
    <nav aria-label="breadcrumb">
      <div class="ps-container-breadcrumb ">
        <ol class="breadcrumb mb-0 text-truncate"> {ADMIN_BREADCRUMBS} </ol>
      </div>
    </nav>
  </div>
  <div class="min-vh-50 mx-0 px-2 px-md-3 py-4">
    <div class="col-12">
      <!-- IF {ADMIN_TITLE} -->
      <div class="row">
        <div class="ps-4 pb-2">
          <h1 class="h6">{ADMIN_TITLE}</h1>
        </div>
      </div>
      <!-- ENDIF --> 
	  {ADMIN_MAIN}
      <!-- IF {ADMIN_HELP} -->
      <div class="row">
        <div class="px-2 pb-2">
          <div class="bd-callout bd-callout-info flex-nowrap overflow-x-auto">
            <h5 class="mb-0"> {PHP.L.Help} </h5>
            <div>
              <p class="mb-0 text-muted small">{ADMIN_HELP}</p>
            </div>
          </div>
        </div>
      </div>
      <!-- ENDIF -->
    </div>
  </div>
  <!-- END: BODY -->
</div>
<!-- END: MAIN -->
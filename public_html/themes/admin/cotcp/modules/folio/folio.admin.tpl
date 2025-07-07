<!-- BEGIN: MAIN -->
<h3>{PHP.L.folio}</h3>

<div class="card filter-section p-3 mb-4" style="border: 5px var(--bs-dark-border-subtle) solid">
	<form action="{SEARCH_ACTION_URL}" method="get" class="mb-3">
		<input type="hidden" name="m" value="{PHP.m}" />
		<input type="hidden" name="p" value="{PHP.p}" />
		<input type="hidden" name="c" value="{PHP.c}" />
		<div class="row g-2 align-items-end">
			<div class="col-12 col-lg-3 d-flex flex-column h-100">
				<label class="form-label">{PHP.L.Search}</label>
				<div class="flex-grow-1">{SEARCH_SQ}</div>
			</div>
			<!-- IF {PHP|cot_plugin_active('locationselector')} -->
			<div class="col-12 col-lg-3 d-flex flex-column h-100">
				<label class="form-label">{PHP.L.Location}</label>
				<div class="flex-grow-1">{SEARCH_LOCATION}</div>
			</div>
			<!-- ENDIF -->
			<div class="col-12 col-lg-3 d-flex flex-column h-100">
				<label class="form-label">{PHP.L.Category}</label>
				<div class="flex-grow-1">{SEARCH_CAT_SELECT2}</div>
			</div>
			<div class="col-12 col-lg-3 d-flex flex-column h-100">
				<label class="form-label">{PHP.L.Order}</label>
				<div class="flex-grow-1">{SEARCH_SORTER}</div>
			</div>
			<div class="col-12 col-lg-3 d-flex flex-column h-100">
				<div class="flex-grow-1">{SEARCH_STATE}</div>
			</div>
			<div class="col-12 col-lg-3 d-flex flex-column h-100">
				<button type="submit" name="search" class="btn btn-outline-primary w-100 mt-auto">
					<i class="fa-solid fa-filter me-1"></i>{PHP.L.Search}
				</button>
			</div>
		</div>
	</form>
</div>

<form action="{PHP|cot_url('admin','m=folio'),'',true}" id="prd_form" method="POST">
	<div class="list-group list-group-flush">
		<div class="list-group-item list-group-item-dark d-none d-lg-block">
			<div class="row align-items-center fw-bold">
				<div class="col-1 text-center"></div>
				<div class="col-md-5">{PHP.L.Title}</div>
				<div class="col-md-2">{PHP.L.Owner}</div>
				<div class="col-md-2">{PHP.L.Category}</div>
				<div class="col-md-2">{PHP.L.Action}</div>
			</div>
		</div>
		<!-- BEGIN: PRD_ROWS -->
		<div class="list-group-item list-group-item-action">
			<div class="row align-items-center">
				<div class="col-1 text-center">
					<input type="checkbox" name="prd_arr[]" value="{PRD_ROW_ID}" class="form-check-input checkbox" /> #{PRD_ROW_ID}
				</div>
				<div class="col-md-5">
					<div class="row align-items-center">
						<div class="col-md-3 text-center text-md-start">
							<!-- IF {PHP|cot_plugin_active('attacher')} -->
							<!-- IF {PRD_ROW_ID|att_count('folio', $this, '', 'images')} > 0 -->
							<div class="att-image">{PRD_ROW_ID|att_display('folio',$this,'','attacher.display.admin.list','images',1)}</div>
							<!-- ELSE -->
							<img src="{PHP.R.page_default_image}" alt="{PRD_ROW_SHORTTITLE}" class="img-thumbnail" style="width: 100px; height: 100px; max-width: none;">
							<!-- ENDIF -->
							<!-- ELSE -->
							<img src="{PHP.R.page_default_image}" alt="{PRD_ROW_SHORTTITLE}" class="img-thumbnail" style="width: 100px; height: 100px; max-width: none;">
							<!-- ENDIF -->
						</div>
						<div class="col-md-9">
							<h4 class="fs-6 mb-1">
								<!-- IF {PRD_ROW_COST} > 0 -->
								<div class="cost float-end">{PRD_ROW_COST} {PHP.cfg.payments.valuta}</div>
								<!-- ENDIF -->
								<a href="{PRD_ROW_URL}" target="_blank">{PRD_ROW_SHORTTITLE}</a>
							</h4>
							<p class="text-secondary small mb-0">{PRD_ROW_SHORTTEXT}</p>
						</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="text-secondary small mb-0">{PRD_ROW_DATE}</div>
					<p class="owner mb-0">{PRD_ROW_OWNER_NAME}</p>
				</div>
				<div class="col-md-2">
					<p class="text-secondary mb-0"><a href="{PRD_ROW_CATURL}">{PRD_ROW_CATTITLE}</a></p>
				</div>
				<div class="col-md-2">
					<div class="float-end d-flex flex-wrap gap-1">
						<!-- IF {PRD_ROW_STATE} == 2 -->
						<a href="{PRD_ROW_VALIDATE_URL}" class="button btn btn-sm btn-outline-success"><i class="fa-solid fa-check me-1"></i>{PHP.L.Validate}</a>
						<!-- ENDIF -->
						<a href="{PRD_ROW_DELETE_URL}" class="button btn btn-sm btn-outline-danger"><i class="fa-solid fa-trash me-1"></i>{PHP.L.Delete}</a> 
						<a href="{PRD_ROW_ADMIN_EDIT_URL}" target="_blank" class="button btn btn-sm btn-outline-warning"><i class="fa-solid fa-pen me-1"></i>{PHP.L.Edit}</a>
					</div>
				</div>
			</div>
		</div>
		<!-- END: PRD_ROWS -->
		<div class="list-group-item mt-4">
			<div class="row">
				<div class="col-md-3">
					<select name="prd_action" id="prd_action" class="form-select w-auto">
						<option value="0">---</option>
						<option value="delete">{PHP.L.Delete}</option>
						<option value="validate">{PHP.L.Validate}</option>
					</select>
				</div>
				<div class="col-md-9">
					<button type="submit" class="btn btn-outline-primary">{PHP.L.Confirm}</button>
				</div>
			</div>
		</div>
	</div>
	<hr>
  <!-- IF {PAGENAV_COUNT} > 0 -->
	<nav aria-label="Page Pagination" class="mt-3">
	  <ul class="pagination justify-content-center">{PAGENAV_PREV} {PAGENAV_PAGES} {PAGENAV_NEXT}</ul>
	</nav>
  <!-- ELSE -->
	<div class="alert alert-info" role="alert">
	  {PHP.L.folio_notfound}
	</div>  
  <!-- ENDIF -->
</form>

<style scoped>
	.filterSelect select {
	width: 100%;
	}
</style>

<div class="alert alert-info" role="alert">
	{PHP.mskin}
</div>
<!-- END: MAIN -->

<!-- BEGIN: MAIN -->

<div class="min-vh-50 px-2 px-md-3 py-4">
  <div class="row justify-content-center">
    <div class="col-12 col-xxl-10">
     
      <ul class="nav nav-tabs mb-3">
	   <!-- BEGIN: TYPES -->
        <li class="nav-item">
          <a class="nav-link" href="{TYPE_ALL_URL}">{PHP.L.All}</a>
        </li>
        <!-- BEGIN: TYPES_ROWS -->
        <li class="nav-item">
          <a class="nav-link {TYPE_ALL_ACT}" href="{TYPE_ROW_URL}">{TYPE_ROW_TITLE}</a>
        </li>
        <!-- END: TYPES_ROWS -->
		<!-- END: TYPES -->
        <li class="nav-item">
          <a class="nav-link" href="{TYPES_EDIT}">{PHP.L.projects_types_edit}</a>
        </li>
      </ul>
      <div class="card filter-section p-3 mb-4" style="border: 5px var(--bs-dark-border-subtle) solid">
        <form action="{SEARCH_ACTION_URL}" method="get">
          <input type="hidden" name="m" value="{PHP.m}" />
          <input type="hidden" name="p" value="{PHP.p}" />
          <input type="hidden" name="c" value="{PHP.c}" />
          <input type="hidden" name="type" value="{PHP.type}" />
          <div class="mb-3">
            <label for="searchQuery" class="form-label">{PHP.L.Search}:</label>
            {SEARCH_SQ}
          </div>
          <div class="mb-3">
            <label for="location" class="form-label">{PHP.L.Location}:</label>
            {SEARCH_LOCATION}
          </div>
          <div class="mb-3">
            <label for="category" class="form-label">{PHP.L.Category}:</label>
            {SEARCH_CAT}
          </div>
          <div class="mb-3">
            <label for="sorter" class="form-label">{PHP.L.Order}:</label>
            {SEARCH_SORTER}
          </div>
          <div class="mb-3">
            <label for="state" class="form-label">{PHP.L.State}:</label>
            {SEARCH_STATE}
          </div>
          <div class="row">
            <div class="col-12 col-sm-9">
              <div class="row g-3 justify-content-md-end justify-content-center">
                <div class="col-md-6 col-12 text-center">
                  <input type="submit" name="search" class="w-100 w-md-auto btn btn-outline-primary" value="{PHP.L.Search}" />
                </div>
              </div>
            </div>
          </div>
        </form>
      </div>
      <form action="{PHP|cot_url('admin','m=projects'),'',true}" id="prj_form" method="POST">
        <div id="listprojects">
          <!-- BEGIN: PRJ_ROWS -->
          <div class="card project-card mb-3">
            <div class="card-body">
              <div class="d-flex justify-content-between align-items-start mb-2">
                <h4 class="card-title mb-0">
                  <label class="form-check-label">
                    <input type="checkbox" name="prj_arr[]" value="{PRJ_ROW_ID}" class="form-check-input me-2">
                    <a href="{PRJ_ROW_URL}" class="text-decoration-none">{PRJ_ROW_SHORTTITLE}</a>
                  </label>
                </h4>
                <!-- IF {PRJ_ROW_COST} > 0 -->
                <span class="fw-bold">{PRJ_ROW_COST} {PHP.cfg.payments.valuta}</span>
                <!-- ENDIF -->
              </div>
              <p class="small text-muted mb-2">
                {PRJ_ROW_OWNER_NAME} <span class="date">[{PRJ_ROW_DATE}]</span>
              </p>
              <p class="card-text">{PRJ_ROW_SHORTTEXT}</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="type">
                  <!-- IF {PRJ_ROW_TYPE} --> {PRJ_ROW_TYPE} / <!-- ENDIF -->
                  <a href="{PRJ_ROW_CATURL}">{PRJ_ROW_CATTITLE}</a>
                </div>
                <div class="actions">
                  <a href="{PRJ_ROW_EDIT_URL}" class="btn btn-outline-secondary btn-sm" target="_blank">{PHP.L.Edit}</a>
                  <!-- IF {PRJ_ROW_STATE} == 2 -->
                  <a href="{PRJ_ROW_VALIDATE_URL}" class="btn btn-outline-success btn-sm">{PHP.L.Validate}</a>
                  <!-- ENDIF -->
                  <a href="{PRJ_ROW_DELETE_URL}" class="btn btn-outline-danger btn-sm">{PHP.L.Delete}</a>
                </div>
              </div>
            </div>
          </div>
          <!-- END: PRJ_ROWS -->
          <div class="card mb-4">
            <div class="card-body">
              <div class="d-flex justify-content-between align-items-center">
                <select name="prj_action" id="prj_action" class="form-select w-auto">
                  <option value="0">---</option>
                  <option value="delete">{PHP.L.Delete}</option>
                  <option value="validate">{PHP.L.Validate}</option>
                </select>
                <button type="submit" class="btn btn-outline-primary">{PHP.L.Confirm}</button>
              </div>
            </div>
          </div>

          <div class="pagination">
            <ul class="pagination">{PAGENAV_PAGES}</ul>
          </div>

        </div>
      </form>
    </div>
  </div>
</div>
<!-- END: MAIN -->

<h3>{PHP.L.projects_projects}</h3>

<div class="nav nav-tabs">
	<!-- BEGIN: TYPES -->
	<li<!-- IF {PHP.p} != 'types' --> class="active"<!-- ENDIF -->><a href="{TYPE_ALL_URL}">{PHP.L.All}</a></li>
	<!-- BEGIN: TYPES_ROWS -->
	<li class="{TYPE_ALL_ACT}"><a href="{TYPE_ROW_URL}">{TYPE_ROW_TITLE}</a></li>
	<!-- END: TYPES_ROWS -->
	<!-- END: TYPES -->
	<li><a href="{TYPES_EDIT}">{PHP.L.projects_types_edit}</a></li>	
</div>

<div class="well" id="schform">
	<form action="{SEARCH_ACTION_URL}" method="get">
		<input type="hidden" name="m" value="{PHP.m}" />
		<input type="hidden" name="p" value="{PHP.p}" />
		<input type="hidden" name="c" value="{PHP.c}" />
		<input type="hidden" name="type" value="{PHP.type}" />
		<table width="100%" cellpadding="5" cellspacing="0">
			<tr>
				<td width="100">{PHP.L.Search}:</td>
				<td>{SEARCH_SQ}</td>
			</tr>
			<tr>
				<td >{PHP.L.Location}:</td>
				<td>{SEARCH_LOCATION}</td>
			</tr>
			<tr>
				<td >{PHP.L.Category}:</td>
				<td>{SEARCH_CAT}</td>
			</tr>
			<tr>
				<td>{PHP.L.Order}:</td>
				<td>{SEARCH_SORTER}</td>
			</tr>
			<tr>
				<td></td>
				<td>{SEARCH_STATE}<br/></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" name="search" class="btn btn-success" value="{PHP.L.Search}" /></td>
			</tr>
		</table>		
	</form>
</div>

<form action="{PHP|cot_url('admin','m=projects'),'',true}" id="prj_form" method="POST">
<div class="block" id="listprojects">
	<table class="table">
		<thead>
		<tr class="prjitem">
			<th class="coltop">{PHP.L.Date}</th>
			<th class="coltop">{PHP.L.Title}</th>
			<th class="coltop">{PHP.L.projects_price}</th>
			<th class="coltop">{PHP.L.Owner}</th>
			<th class="coltop">{PHP.L.Text}</th>
			<th class="coltop">{PHP.L.Type}</th>
			<th class="coltop">{PHP.L.Category}</th>
			<th class="coltop">{PHP.L.Actions}</th>
		</tr>
		</thead>
		<tbody>
		<!-- BEGIN: PRJ_ROWS -->
		<tr class="prjitem">
			<td><label><input type="checkbox" name="prj_arr[]" value="{PRJ_ROW_ID}">{PRJ_ROW_DATE}</label></td>
			<td><a href="{PRJ_ROW_URL}" target="_blank">{PRJ_ROW_SHORTTITLE}</a></td>
			<td><!-- IF {PRJ_ROW_COST} > 0 --><div class="cost">{PRJ_ROW_COST} {PHP.cfg.payments.valuta}</div><!-- ENDIF --></td>
			<td>{PRJ_ROW_OWNER_NAME}</td>
			<td>{PRJ_ROW_SHORTTEXT}</td>
			<td>{PRJ_ROW_TYPE}</td>
			<td>{PRJ_ROW_CATTITLE}</td>
			<td>
				<a href="{PRJ_ROW_EDIT_URL}" class="button btn" target="blank">{PHP.L.Edit}</a>
				<!-- IF {PRJ_ROW_STATE} == 2 -->
				<a href="{PRJ_ROW_VALIDATE_URL}" class="button btn">{PHP.L.Validate}</a>
				<!-- ENDIF -->
				<a href="{PRJ_ROW_DELETE_URL}" class="button btn">{PHP.L.Delete}</a>
			</td>
		</tr>
		<!-- END: PRJ_ROWS -->
		<tr class="prjitem">
				<td colspan="2">
					<select name="prj_action" id="prj_action">
						<option value="0">---</option>
						<option value="delete">{PHP.L.Delete}</option>
						<option value="validate">{PHP.L.Validate}</option>
					</select>
				</td>
				<td colspan="6">
					<button type="submit" class="btn btn-default">{PHP.L.Confirm}</button>
				</td>		
			</tr>
		</tbody>
	</table>
	<div class="action_bar valid">
		<div class="pagination">
			<ul>{PAGENAV_PAGES}</ul>
		</div>
	</div>
	</form>		
</div>



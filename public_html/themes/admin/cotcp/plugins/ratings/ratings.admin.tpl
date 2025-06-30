<!-- BEGIN: MAIN -->
<div class="mb-3">
	<a href="{ADMIN_RATINGS_URL_CONFIG}" class="btn btn-secondary">{PHP.L.Configuration}</a>
</div>

{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}

<div class="card">
	<div class="card-body p-0">
		<div class="table-responsive">
			<table class="table table-bordered table-hover mb-0">
				<thead class="table-light">
					<tr>
						<th class="text-center w-10">{PHP.L.adm_area}</th>
						<th class="text-center w-10">{PHP.L.Code}</th>
						<th class="text-center w-20">{PHP.L.Date} (GMT)</th>
						<th class="text-center w-20">{PHP.L.Votes}</th>
						<th class="text-center w-20">{PHP.L.Rating}</th>
						<th class="text-center w-20">{PHP.L.Action}</th>
					</tr>
				</thead>
				<tbody>
					<!-- BEGIN: RATINGS_ROW -->
					<tr>
						<td class="text-center">{ADMIN_RATINGS_ROW_RATING_AREA}</td>
						<td class="text-center">{ADMIN_RATINGS_ROW_RATING_CODE}</td>
						<td class="text-center">{ADMIN_RATINGS_ROW_CREATIONDATE}</td>
						<td class="text-center">{ADMIN_RATINGS_ROW_VOTES}</td>
						<td class="text-center">{ADMIN_RATINGS_ROW_RATING_AVERAGE}</td>
						<td class="text-center">
							<a href="{ADMIN_RATINGS_ROW_URL_DEL}" class="btn btn-sm btn-outline-danger me-1">{PHP.L.Delete}</a>
							<a href="{ADMIN_RATINGS_ROW_RAT_URL}" class="btn btn-sm btn-outline-primary">{PHP.L.Open}</a>
						</td>
					</tr>
					<!-- END: RATINGS_ROW -->

					<!-- IF !{TOTAL_ENTRIES} -->
					<tr>
						<td class="text-center" colspan="6">{PHP.L.None}</td>
					</tr>
					<!-- ENDIF -->
				</tbody>
			</table>
		</div>
	</div>
</div>

<!-- IF {TOTAL_ENTRIES} -->
<nav aria-label="Page Pagination" class="mt-3">
	<div>
		<span class="me-3">{PHP.L.Total}: {TOTAL_ENTRIES}, {PHP.L.Onpage}: {ENTRIES_ON_CURRENT_PAGE}</span>
		<span>{PHP.L.adm_ratings_totalvotes}: {ADMIN_RATINGS_TOTALVOTES}</span>
	</div>
    <ul class="pagination justify-content-center">{PREVIOUS_PAGE} {PAGINATION} {NEXT_PAGE}</ul>
</nav>
<!-- ENDIF -->

<div class="alert alert-info mt-4" role="alert">
	ratings.admin.tpl
</div>
<!-- END: MAIN -->

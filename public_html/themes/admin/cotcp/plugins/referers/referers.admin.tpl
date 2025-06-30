<!-- BEGIN: MAIN -->
<!-- IF {PHP.usr.isadmin} -->
<div class="d-flex gap-2 mb-3">
	<a href="{ADMIN_REFERERS_URL_PRUNE}" class="btn btn-danger btn-sm">{PHP.L.adm_purgeall}</a>
	<a href="{ADMIN_REFERERS_URL_PRUNELOWHITS}" class="btn btn-warning btn-sm">{PHP.L.adm_ref_prunelowhits}</a>
</div>
<!-- ENDIF -->

{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}

<div class="table-responsive">
	<table class="table table-striped table-bordered align-middle">
		<thead class="table-light">
			<tr>
				<th>{PHP.L.Referer}</th>
				<th>{PHP.L.Hits}</th>
			</tr>
		</thead>
		<tbody>
			<!-- BEGIN: REFERERS_ROW -->
			<tr style="background-color: var(--bs-sidebar-bg)">
				<td>
					<a href="//{ADMIN_REFERERS_REFERER}" target="_blank" rel="noopener noreferrer">
						{ADMIN_REFERERS_REFERER}
					</a>
				</td>
			</tr>
				<!-- BEGIN: REFERERS_URI -->
				<tr>
					<td class="ps-4">
						<a href="{ADMIN_REFERERS_URI}" target="_blank" rel="noopener noreferrer">
							{ADMIN_REFERERS_URI}
						</a>
					</td>
					<td class="text-end">{ADMIN_REFERERS_COUNT}</td>
				</tr>
				<!-- END: REFERERS_URI -->
			<!-- END: REFERERS_ROW -->

			<!-- IF !{TOTAL_ENTRIES} -->
			<tr>
				<td>{PHP.L.None}</td>
			</tr>
			<!-- ENDIF -->
		</tbody>
	</table>
</div>

<!-- IF {TOTAL_ENTRIES} -->
<nav aria-label="Page Pagination" class="mt-4">
	<ul class="pagination justify-content-center mb-0">
		{PREVIOUS_PAGE}
		{PAGINATION}
		{NEXT_PAGE}
	</ul>
	<p class="text-center mt-2 small text-muted">
		{PHP.L.Total}: {TOTAL_ENTRIES}, {PHP.L.Onpage}: {ENTRIES_ON_CURRENT_PAGE}
	</p>
</nav>
<!-- ENDIF -->

<div class="alert alert-info mt-4" role="alert">
	referers.admin.tpl
</div>
<!-- END: MAIN -->

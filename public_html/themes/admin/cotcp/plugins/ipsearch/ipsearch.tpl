<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}

<div class="row g-4">
	<div class="col-lg-8">
		<div class="card">
			<div class="card-header">
				<h2 class="h5 mb-0">{PHP.L.ipsearch_dnsrecord}: {IPSEARCH_RES_DNS}</h2>
			</div>
			<div class="card-body">
				<!-- BEGIN: IPSEARCH_RESULTS -->
				<p>{PHP.L.ipsearch_found1} {IPSEARCH_TOTALMATCHES1} {PHP.L.ipsearch_found2} {IPSEARCH_IPMASK1}:</p>
				<ul class="mb-3">
					<!-- BEGIN: IPSEARCH_IPMASK1 -->
					<li>{IPSEARCH_USER_IPMASK1}: {IPSEARCH_USER_LASTIP_IPMASK1}</li>
					<!-- END: IPSEARCH_IPMASK1 -->
				</ul>

				<p>{PHP.L.ipsearch_found1} {IPSEARCH_TOTALMATCHES2} {PHP.L.ipsearch_found2} {IPSEARCH_IPMASK2}.*:</p>
				<ul class="mb-3">
					<!-- BEGIN: IPSEARCH_IPMASK2 -->
					<li>{IPSEARCH_USER_IPMASK2}: {IPSEARCH_USER_LASTIP_IPMASK2}</li>
					<!-- END: IPSEARCH_IPMASK2 -->
				</ul>

				<p>{PHP.L.ipsearch_found1} {IPSEARCH_TOTALMATCHES3} {PHP.L.ipsearch_found2} {IPSEARCH_IPMASK3}.*.*:</p>
				<ul>
					<!-- BEGIN: IPSEARCH_IPMASK3 -->
					<li>{IPSEARCH_USER_IPMASK3}: {IPSEARCH_USER_LASTIP_IPMASK3}</li>
					<!-- END: IPSEARCH_IPMASK3 -->
				</ul>
				<!-- END: IPSEARCH_RESULTS -->
			</div>
		</div>
	</div>

	<div class="col-lg-4">
		<div class="card h-100">
			<div class="card-header">
				<h2 class="h6 mb-0">{PHP.L.ipsearch_searchthisuser}:</h2>
			</div>
			<div class="card-body">
				<form id="search" action="{IPSEARCH_FORM_URL}" method="post" class="d-flex gap-2">
					<input type="text" class="form-control" name="id" value="{IPSEARCH_ID}" maxlength="16" />
					<button type="submit" class="btn btn-primary">{PHP.L.Search}</button>
				</form>
			</div>
		</div>
	</div>
</div>

<div class="alert alert-info mt-4" role="alert">
	ipsearch.tpl
</div>
<!-- END: MAIN -->

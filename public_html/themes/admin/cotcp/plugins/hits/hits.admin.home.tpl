<!-- BEGIN: MAIN -->

<!-- BEGIN: STAT -->
<div class="mb-5">
	<h2 class="h5">{HITS_STAT_HEADER}</h2>
	<div class="table-responsive">
		<table class="table table-sm align-middle">
			<!-- BEGIN: ADMIN_HOME_ROW -->
			<tr>
				<td class="w-15">{ADMIN_HOME_DAY}</td>
				<td class="w-40">
					<div class="progress" style="height: 1rem;">
						<div class="progress-bar" style="width:{ADMIN_HOME_PERCENTBAR}%;"></div>
					</div>
				</td>
				<td class="w-25">{PHP.L.Hits}: {ADMIN_HOME_HITS}</td>
				<td class="w-20 text-center">{ADMIN_HOME_PERCENTBAR}%</td>
			</tr>
			<!-- END: ADMIN_HOME_ROW -->
		</table>
		<p class="mb-0"><a href="{ADMIN_HOME_MORE_HITS_URL}">{PHP.L.ReadMore}</a></p>
	</div>
</div>
<!-- END: STAT -->

<!-- BEGIN: ACTIVITY -->
<div class="mb-5">
	<h2 class="h5">{ACTIVITY_STAT_HEADER}</h2>
	<div class="table-responsive">
		<table class="table table-sm align-middle">
			<tr>
				<td class="w-80"><a href="{ADMIN_HOME_NEWUSERS_URL}">{PHP.L.home_newusers}</a></td>
				<td class="w-20 text-center">{ADMIN_HOME_NEWUSERS}</td>
			</tr>
			<tr>
				<td><a href="{ADMIN_HOME_NEWPAGES_URL}">{PHP.L.home_newpages}</a></td>
				<td class="text-center">{ADMIN_HOME_NEWPAGES}</td>
			</tr>
			<!-- IF {PHP|cot_module_active('forums')} -->
			<tr>
				<td><a href="{ADMIN_HOME_NEWTOPICS_URL}">{PHP.L.home_newtopics}</a></td>
				<td class="text-center">{ADMIN_HOME_NEWTOPICS}</td>
			</tr>
			<tr>
				<td><a href="{ADMIN_HOME_NEWPOSTS_URL}">{PHP.L.home_newposts}</a></td>
				<td class="text-center">{ADMIN_HOME_NEWPOSTS}</td>
			</tr>
			<!-- ENDIF -->
			<!-- IF {PHP|cot_module_active('pm')} -->
			<tr>
				<td>{PHP.L.home_newpms}</td>
				<td class="text-center">{ADMIN_HOME_NEWPMS}</td>
			</tr>
			<!-- ENDIF -->
		</table>
	</div>
</div>
<!-- END: ACTIVITY -->

<!-- END: MAIN -->

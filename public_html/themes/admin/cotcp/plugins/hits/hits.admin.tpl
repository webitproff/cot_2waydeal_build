<!-- BEGIN: MAIN -->
<div class="mb-4">
    <a href="{PHP|cot_url('admin', 'm=config&n=edit&o=plug&p=hits')}" class="btn btn-primary">
        {PHP.L.Configuration}
    </a>
</div>

<p class="fw-semibold text-muted">{ADMIN_HITS_MAXHITS}</p>

<!-- BEGIN: YEAR_OR_MONTH -->
<div class="mb-5">
    <h2 class="h5">{PHP.v}:</h2>
    <div class="table-responsive">
        <table class="table table-sm align-middle">
            <!-- BEGIN: ROW -->
            <tr>
                <td class="w-15">{ADMIN_HITS_ROW_DAY}</td>
                <td class="w-15">{PHP.L.Hits}: {ADMIN_HITS_ROW_HITS}</td>
                <td class="w-10">{ADMIN_HITS_ROW_PERCENTBAR}%</td>
                <td class="w-60">
                    <div class="progress" style="height: 1rem;">
                        <div class="progress-bar" style="width: {ADMIN_HITS_ROW_PERCENTBAR}%;">
                        </div>
                    </div>
                </td>
            </tr>
            <!-- END: ROW -->
        </table>
    </div>
</div>
<!-- END: YEAR_OR_MONTH -->

<!-- BEGIN: DEFAULT -->

<div class="mb-5">
    <h2 class="h5">{PHP.L.hits_byyear}:</h2>
    <div class="table-responsive">
        <table class="table table-sm align-middle">
            <!-- BEGIN: ROW_YEAR -->
            <tr>
                <td class="w-10"><a href="{ADMIN_HITS_ROW_YEAR_URL}">{ADMIN_HITS_ROW_YEAR}</a></td>
                <td class="w-20">{PHP.L.Hits}: {ADMIN_HITS_ROW_YEAR_HITS}</td>
                <td class="w-10">{ADMIN_HITS_ROW_YEAR_PERCENTBAR}%</td>
                <td class="w-60">
                    <div class="progress" style="height: 1rem;">
                        <div class="progress-bar" style="width: {ADMIN_HITS_ROW_YEAR_PERCENTBAR}%;">
                        </div>
                    </div>
                </td>
            </tr>
            <!-- END: ROW_YEAR -->
        </table>
    </div>
</div>

<div class="mb-5">
    <h2 class="h5">{PHP.L.hits_bymonth}:</h2>
    <div class="table-responsive">
        <table class="table table-sm align-middle">
            <!-- BEGIN: ROW_MONTH -->
            <tr>
                <td class="w-10"><a href="{ADMIN_HITS_ROW_MONTH_URL}">{ADMIN_HITS_ROW_MONTH}</a></td>
                <td class="w-20">{PHP.L.Hits}: {ADMIN_HITS_ROW_MONTH_HITS}</td>
                <td class="w-10">{ADMIN_HITS_ROW_MONTH_PERCENTBAR}%</td>
                <td class="w-60">
                    <div class="progress" style="height: 1rem;">
                        <div class="progress-bar" style="width: {ADMIN_HITS_ROW_MONTH_PERCENTBAR}%;">
                        </div>
                    </div>
                </td>
            </tr>
            <!-- END: ROW_MONTH -->
        </table>
    </div>
</div>

<div class="mb-5">
    <h2 class="h5">{PHP.L.hits_byweek}:</h2>
    <div class="table-responsive">
        <table class="table table-sm align-middle">
            <!-- BEGIN: ROW_WEEK -->
            <tr>
                <td class="w-10">{ADMIN_HITS_ROW_WEEK}</td>
                <td class="w-20">{PHP.L.Hits}: {ADMIN_HITS_ROW_WEEK_HITS}</td>
                <td class="w-10">{ADMIN_HITS_ROW_WEEK_PERCENTBAR}%</td>
                <td class="w-60">
                    <div class="progress" style="height: 1rem;">
                        <div class="progress-bar" style="width: {ADMIN_HITS_ROW_WEEK_PERCENTBAR}%;">
                        </div>
                    </div>
                </td>
            </tr>
            <!-- END: ROW_WEEK -->
        </table>
    </div>
</div>
<!-- END: DEFAULT -->

<div class="alert alert-info mt-4" role="alert">
    hits.admin.tpl
</div>
<!-- END: MAIN -->

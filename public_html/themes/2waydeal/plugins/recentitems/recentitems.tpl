<!-- BEGIN: MAIN -->
<div class="px-3 py-5 min-height-50vh">
    <div class="card mb-4">
        <div class="card-header" style="background-color: var(--bs-sidebar-bg)">
            <h2 class="h5 mb-0">{PHP.L.2wd_recentitems_title}</h2>
        </div>
        <div class="card-body">
            <!-- Фильтр по времени -->
            <p class="small mb-2">
                <strong>{PHP.L.recentitems_shownew}:</strong>
                <span class="d-flex flex-wrap gap-2 mt-1">
                    <!-- Сегодня -->
                    <a href="{PHP.modeUrl|cot_url('recentitems', $this)}" class="btn btn-sm <!-- IF {PHP.days} == 0 -->btn-primary<!-- ELSE -->btn-outline-secondary<!-- ENDIF -->" rel="nofollow">{PHP.L.Today}</a>
                    <!-- С последнего визита (для авторизованных) -->
                    <!-- IF {PHP.usr.id} > 0 -->
                    <a href="{PHP.modeUrl|cot_url('recentitems','days=-1&$this')}" class="btn btn-sm <!-- IF {PHP.days} == -1 -->btn-primary<!-- ELSE -->btn-outline-secondary<!-- ENDIF -->" rel="nofollow">{PHP.L.recentitems_fromlastvisit}</a>
                    <!-- ENDIF -->
                    <!-- 1 день -->
                    <a href="{PHP.modeUrl|cot_url('recentitems','days=1&$this')}" class="btn btn-sm <!-- IF {PHP.days} == 1 -->btn-primary<!-- ELSE -->btn-outline-secondary<!-- ENDIF -->" rel="nofollow">{PHP.L.recentitems_1day}</a>
                    <!-- 2 дня -->
                    <a href="{PHP.modeUrl|cot_url('recentitems','days=2&$this')}" class="btn btn-sm <!-- IF {PHP.days} == 2 -->btn-primary<!-- ELSE -->btn-outline-secondary<!-- ENDIF -->" rel="nofollow">{PHP.L.recentitems_2days}</a>
                    <!-- 3 дня -->
                    <a href="{PHP.modeUrl|cot_url('recentitems','days=3&$this')}" class="btn btn-sm <!-- IF {PHP.days} == 3 -->btn-primary<!-- ELSE -->btn-outline-secondary<!-- ENDIF -->" rel="nofollow">{PHP.L.recentitems_3days}</a>
                    <!-- 1 неделя -->
                    <a href="{PHP.modeUrl|cot_url('recentitems','days=1w&$this')}" class="btn btn-sm <!-- IF {PHP.days} == '1w' -->btn-primary<!-- ELSE -->btn-outline-secondary<!-- ENDIF -->" rel="nofollow">{PHP.L.recentitems_1week}</a>
                    <!-- 2 недели -->
                    <a href="{PHP.modeUrl|cot_url('recentitems','days=2w&$this')}" class="btn btn-sm <!-- IF {PHP.days} == '2w' -->btn-primary<!-- ELSE -->btn-outline-secondary<!-- ENDIF -->" rel="nofollow">{PHP.L.recentitems_2weeks}</a>
                    <!-- 1 месяц -->
                    <a href="{PHP.modeUrl|cot_url('recentitems','days=1m&$this')}" class="btn btn-sm <!-- IF {PHP.days} == '1m' -->btn-primary<!-- ELSE -->btn-outline-secondary<!-- ENDIF -->" rel="nofollow">{PHP.L.recentitems_1month}</a>
                </span>
            </p>

            <!-- Фильтр по типу -->
            <p class="small mb-3">
                <strong>{PHP.L.Show}:</strong>
                <span class="d-flex flex-wrap gap-2 mt-1">
                    <!-- Все -->
                    <a href="{PHP.daysUrl|cot_url('recentitems', $this)}" class="btn btn-sm <!-- IF {PHP.mode} == '' -->btn-primary<!-- ELSE -->btn-outline-secondary<!-- ENDIF -->" rel="nofollow">{PHP.L.All}</a>
                    <!-- Страницы -->
                    <a href="{PHP.daysUrl|cot_url('recentitems','$this&mode=pages')}" class="btn btn-sm <!-- IF {PHP.mode} == 'pages' -->btn-primary<!-- ELSE -->btn-outline-secondary<!-- ENDIF -->" rel="nofollow">{PHP.L.Pages}</a>
                    <!-- Форумы -->
                    <a href="{PHP.daysUrl|cot_url('recentitems','$this&mode=forums')}" class="btn btn-sm <!-- IF {PHP.mode} == 'forums' -->btn-primary<!-- ELSE -->btn-outline-secondary<!-- ENDIF -->" rel="nofollow">{PHP.L.Forums}</a>
                </span>
            </p>
		</div>
	</div>
<!-- This is the name of the template for informing the administrator -->
<!-- IF {PHP.usr.maingrp} == 5 --> <!-- Условие PHP.usr.maingrp == 5 - просмотр info для админов -->
	<div class="alert alert-warning" role="alert">
	 <strong>{PHP.usr.name}</strong>, This is the HTML template <code>recentitems.tpl</code> <!-- This is the name of the template for informing the administrator -->
	</div>
<!-- ENDIF --> <!-- Конец условия просмотр info для админов -->

            <!-- Контент -->
            {RECENT_PAGES} <!-- тут шаблон recentitems.pages.tpl -->
            {RECENT_FORUMS} <!-- тут шаблон recentitems.forums.tpl -->

            <!-- Пагинация -->
            <!-- IF {PAGINATION} -->
            <nav aria-label="Recent items pagination" class="mt-3">
                <ul class="pagination justify-content-center">
                    {PREVIOUS_PAGE}
                    {PAGINATION}
                    {NEXT_PAGE}
                </ul>
            </nav>
            <!-- ENDIF -->
</div>

<!-- END: MAIN -->
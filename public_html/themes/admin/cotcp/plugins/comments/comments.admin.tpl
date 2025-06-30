<!-- BEGIN: MAIN -->
<div class="mb-3">
    <div class="row g-2">
        <div class="col-12 col-lg-3">
            <a href="{COMMENTS_CONFIG_URL}" class="btn btn-outline-secondary w-100">
                <i class="fa-solid fa-gear me-1"></i>{PHP.L.Configuration}
            </a>
        </div>
    </div>
</div>

{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}

<!-- IF {TOTAL_ENTRIES} === 0 OR {ENTRIES_ON_CURRENT_PAGE} === 0 -->
<div class="mb-3">
    <div class="list-group list-group-flush">
        <div class="list-group-item text-center text-secondary">{PHP.L.comments_noYet}</div>
    </div>
</div>
<!-- ENDIF -->

<div class="mb-3">
    <div class="list-group list-group-flush">
        <!-- BEGIN: COMMENTS_ROW -->
        <div id="com{COMMENTS_ROW_ID}" class="list-group-item list-group-item-action">
            <div class="row align-items-start">
                <div class="col-12 col-md-1">
				  <!-- IF {PHP|cot_plugin_active('userimages')} -->
				  <!-- IF {COMMENTS_ROW_AUTHOR_AVATAR_SRC} -->
				  <a href="{COMMENTS_ROW_AUTHOR_DETAILS_URL}">
					<img src="{COMMENTS_ROW_AUTHOR_AVATAR_SRC}" alt="{COMMENTS_ROW_AUTHOR_NICKNAME}" class="rounded" width="75" height="75">
				  </a>
				  <!-- ELSE -->
				  <a href="{COMMENTS_ROW_AUTHOR_DETAILS_URL}">
					<img src="{PHP.R.userimg_default_avatar}" alt="{COMMENTS_ROW_AUTHOR_NICKNAME}" class="rounded" width="75" height="75">
				  </a>
				  <!-- ENDIF -->
				  <!-- ENDIF -->
				</div>
                <div class="col-12 col-md-8">
                    <h6 class="mb-1">#{COMMENTS_ROW_ID}. {COMMENTS_ROW_TITLE}</h6>
                    <div class="mb-2">
                        <!-- IF {COMMENTS_ROW_AUTHOR_DETAILS_URL} -->
                        <a href="{COMMENTS_ROW_AUTHOR_DETAILS_URL}">{COMMENTS_ROW_AUTHOR_FULL_NAME}</a>
                        <!-- ELSE -->
                        {COMMENTS_ROW_AUTHOR_FULL_NAME}
                        <!-- ENDIF -->
                        <small class="text-muted">• {COMMENTS_ROW_DATE}</small>
                    </div>
                    <div class="comment-text closed mb-2">{COMMENTS_ROW_TEXT}</div>
                </div>
                <div class="col-12 col-md-3">
                    <div class="d-flex flex-wrap gap-1">
                        <!-- IF {COMMENTS_ROW_URL} -->
                        <a href="{COMMENTS_ROW_URL}" class="btn btn-sm btn-primary">
                            <i class="fa-solid fa-eye me-1"></i>{PHP.L.Open}
                        </a>
                        <!-- ENDIF -->
                        <a href="{COMMENTS_ROW_EDIT_URL}" class="btn btn-sm btn-outline-secondary">
                            <i class="fa-solid fa-pen me-1"></i>{PHP.L.Edit}
                        </a>
                        <a href="{COMMENTS_ROW_DELETE_URL}" class="btn btn-sm btn-outline-danger confirmLink">
                            <i class="fa-solid fa-trash me-1"></i>{PHP.L.Delete}
                        </a>
                        <!-- IF {COMMENTS_ROW_AUTHOR_IP} -->
                        <small class="mt-2">{PHP.L.Ip}: {COMMENTS_ROW_AUTHOR_IP}</small>
                        <!-- ENDIF -->
                        <a href="#" class="comment-text-toggle btn btn-sm btn-outline-secondary ms-2" style="display: none" title="{PHP.L.Unfold}">{PHP.R.icon_down}</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- END: COMMENTS_ROW -->
    </div>
</div>

<!-- IF {TOTAL_ENTRIES} > 0 -->
<nav aria-label="Page Pagination" class="mt-3">
    <div class="text-center mb-2">{PHP.L.Total}: {TOTAL_ENTRIES}, {PHP.L.Onpage}: {ENTRIES_ON_CURRENT_PAGE}</div>
    <ul class="pagination justify-content-center">{PREVIOUS_PAGE} {PAGINATION} {NEXT_PAGE}</ul>
</nav>
<!-- ENDIF -->

<style>
    .comment-text {
        max-height: 1200px;
        transition: height ease-in-out 0.2s, max-height ease-in-out 0.2s;
        height: auto;
        overflow-y: hidden;
    }
    .comment-text.closed {
        max-height: 110px;
    }
    .comment-text p:last-child {
        margin-bottom: 0;
    }
</style>
<script>
    setTimeout(function () {
        const toggles = document.querySelectorAll('.comment-text-toggle');
        for (let elem of toggles) {
            const textContainer = elem.closest('.list-group-item').querySelector('.comment-text');
            if (textContainer.clientHeight < 110) {
                elem.remove();
                continue;
            }

            elem.style.display = '';

            elem.addEventListener('click', (e) => {
                e.preventDefault();
                const target = e.target.closest('.comment-text-toggle');
                if (textContainer.classList.contains('closed')) {
                    target.innerHTML = '{PHP.R.icon_up_active}';
                    target.title = '{PHP.L.Fold}'
                } else {
                    target.innerHTML = '{PHP.R.icon_down}';
                    target.title = '{PHP.L.Unfold}'
                }
                textContainer.classList.toggle('closed');
            });
        }
    }, 500);
</script>

<div class="alert alert-info" role="alert">
    comments.admin.tpl
</div>
<!-- END: MAIN -->
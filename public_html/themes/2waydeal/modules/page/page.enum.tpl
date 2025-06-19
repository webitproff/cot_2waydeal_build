<!-- BEGIN: MAIN -->

    <!-- BEGIN: PAGE_ROW -->
    <div class="card mb-4">
        <div class="card-body">
            <h3 class="card-title fs-6 mb-3">
                <a href="{PAGE_ROW_URL}" title="{PAGE_ROW_TITLE}">{PAGE_ROW_TITLE}</a>
            </h3>

            <!-- Page description (if exists) -->
            <!-- IF {PAGE_ROW_DESCRIPTION} -->
            <p class="card-text small text-muted">{PAGE_ROW_DESCRIPTION}</p>
            <!-- ENDIF -->

            <!-- Page text preview -->
            <div class="card-text">
                {LIST_ROW_TEXT_CUT}
            </div>
        </div>
    </div>
    <!-- END: PAGE_ROW -->

    <!-- Pagination (if exists) -->
    <!-- IF {PAGINATION} -->
    <nav aria-label="Page navigation" class="mt-4">
        <ul class="pagination justify-content-center">
            {PREVIOUS_PAGE}
            {PAGINATION}
            {NEXT_PAGE}
        </ul>
    </nav>
    <!-- ENDIF -->

<!-- END: MAIN -->
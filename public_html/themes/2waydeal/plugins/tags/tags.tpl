<!-- BEGIN: MAIN -->
<div class="border-bottom border-secondary py-3 px-3">
  <nav aria-label="breadcrumb">
    <div class="ps-container-breadcrumb ">
      <ol class="breadcrumb mb-0">
        {TAGS_BREADCRUMBS}
      </ol>
    </div>
  </nav>
</div>

    <div class="px-3 d-flex flex-column justify-content-center pb-5">
        <div class="row">
            <div class="col-12 col-md-8 mx-auto">
                <div class="card mt-4 mb-4">
                    <div class="card-header" style="background-color: var(--bs-sidebar-bg)">
                        <h2 class="h5 mb-0">{TAGS_TITLE}</h2>
                    </div>
                    <div class="card-body">
                        <form id="tags-search-form" action="{TAGS_FORM_ACTION}" method="GET" class="mb-3">
                            {TAGS_FORM_PARAMS}
                            <div class="input-group">
                                <input type="text" name="t" value="{TAGS_QUERY}" class="form-control" placeholder="{PHP.L.Search}" />
                                <button type="submit" class="btn btn-primary">{PHP.L.Search}</button>
                            </div>
                            <div class="mt-2">{TAGS_FORM_ORDER}</div>
                        </form>

                        <!-- IF {PHP|count({PHP.tagAreas})} > 1 -->
                            <p class="mb-3">
                                <a href="{PHP.urlParams.t|cot_url('tags', 't=$this')}"<!-- IF {PHP.area} === 'all' --> class="active btn btn-outline-primary mx-2"<!-- ENDIF -->>{PHP.L.tags_All}</a>
                                <!-- FOR {AREA}, {TITLE} IN {PHP.tagAreas} -->
                                     <a href="{PHP.urlParams.t|cot_url('tags','a={AREA}&t=$this')}"<!-- IF {PHP.area} === {AREA} --> class="active btn btn-outline-primary mx-2"<!-- ENDIF -->>{PHP|htmlspecialchars({TITLE})}</a>
                                <!-- ENDFOR -->
                            </p>
                        <!-- ENDIF -->

                        <!-- BEGIN: TAGS_CLOUD -->
                            <h3 class="border-bottom pb-2 text-primary mb-3">{PHP.L.tags_All}</h3>
                            <div class="mb-3">{TAGS_CLOUD_BODY}</div>
                        <!-- END: TAGS_CLOUD -->

                        <!-- BEGIN: TAGS_RESULT -->
                            <div class="p-3 mb-2 <!-- IF {TAGS_RESULT_ROW_ITEM_TYPE} == 'page' -->bg-info text-dark <!-- ELSE--> bg-primary-subtle text-primary-emphasis <!-- ENDIF -->border-bottom">{TAGS_RESULT_TITLE}</div>
                            <div class="list-group list-group-striped list-group-flush">
                                <!-- BEGIN: TAGS_RESULT_ROW -->
                                    <li class="list-group-item list-group-item-action">
                                        <a class="fw-semibold text-primary-emphasis text-decoration-none" href="{TAGS_RESULT_ROW_URL}">{TAGS_RESULT_ROW_TITLE}</a><br/>
                                        <span class="small text-muted">{PHP.L.Sections}: {TAGS_RESULT_ROW_PATH}<br/>
                                        {PHP.L.Tags}: {TAGS_RESULT_ROW_TAGS}</span>
                                        <!-- IF {TAGS_RESULT_ROW_PREVIEW} -->
                                            <p class="mt-1">{TAGS_RESULT_ROW_PREVIEW|strip_tags($this)|mb_substr($this, 0, 120, 'UTF-8')} ...</p>
                                        <!-- ENDIF -->
                                    </li>
                                <!-- END: TAGS_RESULT_ROW -->
                            </div>
                            <!-- BEGIN: TAGS_RESULT_NONE -->
                                <div class="alert alert-warning" role="alert">
                                    {PHP.L.Noitemsfound}
                                </div>
                            <!-- END: TAGS_RESULT_NONE -->
                        <!-- END: TAGS_RESULT -->

                        <!-- IF {PAGINATION} -->
                            <nav aria-label="Pagination" class="mt-3">
                                <ul class="pagination justify-content-center">
                                    {PREVIOUS_PAGE}
                                    {PAGINATION}
                                    {NEXT_PAGE}
                                </ul>
                            </nav>
                        <!-- ENDIF -->
                    </div>
                </div>
            </div>

            <div class="col-12 col-md-4 mx-auto">
                <div class="card mt-4 mb-4">
                    <div class="card-header" style="background-color: var(--bs-sidebar-bg)">
                        <h2 class="h5 mb-0">{PHP.L.Tags}</h2>
                    </div>
                    <div class="card-body">
                        {TAGS_HINT}
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- This is the name of the template for informing the administrator -->
    <!-- IF {PHP.usr.maingrp} == 5 -->
        <div class="px-3 py-2">
            <div class="alert alert-warning" role="alert">
                <strong>{PHP.usr.name}</strong>, This is the HTML template <code>tags.tpl</code>
            </div>
        </div>
    <!-- ENDIF -->
<!-- END: MAIN -->
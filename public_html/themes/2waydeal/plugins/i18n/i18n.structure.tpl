<!-- BEGIN: MAIN -->
    <div id="ajaxBlock">
        <div class="px-3 py-5 min-height-50vh">
            {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
            <h2 class="mb-4">{PHP.L.i18n_structure}</h2>
            <div class="col-12 mb-5">
                <div class="row">
                    <div class="col-6">
                        <div class="p-3 mb-2 bg-success text-white">{I18N_ORIGINAL_LANG}</div>
                    </div>
                    <div class="col-6">
                        <div class="p-3 mb-2 bg-warning text-dark">{I18N_TARGET_LANG}</div>
                    </div>
                </div>
            </div>
            <form action="{I18N_ACTION}" method="post">
                <div class="row">
                    <!-- BEGIN: I18N_CATEGORY_ROW -->
                        <div class="col-12">
                            <div class="card border-0 mb-5" style="border-radius: 0;">
                                <div class="card-body p-0">
                                    <div class="row">
                                        <div class="col-12 col-md-6 bg-success-subtle text-success-emphasis">
                                            <h4 class="card-title mt-3">{I18N_CATEGORY_ROW_TITLE}</h4>
                                            <p class="card-text text-muted"><em>{I18N_CATEGORY_ROW_DESC}</em></p>
                                            <input type="hidden" name="{I18N_CATEGORY_ROW_CODE_NAME}" value="{I18N_CATEGORY_ROW_CODE_VALUE}" />
                                        </div>
                                        <div class="col-12 col-md-6 bg-warning-subtle text-warning-emphasis">
                                            <div class="py-2">
                                                <input type="text" class="form-control" name="{I18N_CATEGORY_ROW_ITITLE_NAME}" value="{I18N_CATEGORY_ROW_ITITLE_VALUE}" maxlength="128" />
                                            </div>
                                            <div class="py-2">
                                                <textarea class="form-control" name="{I18N_CATEGORY_ROW_IDESC_NAME}" rows="4">{I18N_CATEGORY_ROW_IDESC_VALUE}</textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <!-- END: I18N_CATEGORY_ROW -->
                    <div class="col-12 text-center mt-4">
                        <button type="submit" class="btn btn-primary">{PHP.L.Update}</button>
                    </div>
                </div>
            </form>
            <nav aria-label="Pagination" class="mt-4 text-center">
                {I18N_PAGINATION_PREV}{I18N_PAGNAV}{I18N_PAGINATION_NEXT}
            </nav>
        </div>
    </div>
    <!-- This is the name of the template for informing the administrator -->
    <!-- IF {PHP.usr.maingrp} == 5 -->
        <div class="px-3 py-4">
            <div class="alert alert-warning" role="alert">
                <strong>{PHP.usr.name}</strong>, This is the HTML template <code>i18n.structure.tpl</code>
            </div>
        </div>
    <!-- ENDIF -->
<!-- END: MAIN -->
<!-- BEGIN: MAIN -->
    <div class="py-4 px-4 min-height-50vh">
        <h2 class="mb-4">{I18N_TITLE}</h2>

        {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
        <form action="{I18N_ACTION}" method="post">
            <div class="row">
                <div class="col-12 mb-5">
                    <div class="row">
                        <div class="col-6">
                            <div class="p-3 mb-2 bg-success text-white">{PHP.L.i18n_original} ({I18N_ORIGINAL_LANG})</div>
                        </div>
                        <div class="col-6">
                            <div class="p-3 mb-2 bg-warning text-dark">
                                <div class="row">
                                    <div class="col-6">{PHP.L.i18n_localized}</div>
                                    <div class="col-6">{I18N_LOCALIZED_LANG}</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12">
                    <div class="card border-0 mb-5" style="border-radius: 0;">
                        <div class="card-body p-0">
                            <div class="row">
                                <div class="col-12 col-md-6 bg-success-subtle">
                                    <p class="fw-semibold mt-2">{PHP.L.Title}</p>
                                    <div class="mb-3 border rounded border-secondary p-2"><span class="fw-semibold">{I18N_PAGE_TITLE}</span></div>
                                    <p class="fw-semibold">{PHP.L.Description}</p>
                                    <div class="mb-3 border rounded border-secondary p-2">{I18N_PAGE_DESC}</div>
                                    <p class="fw-semibold">{PHP.L.Tags}</p>
                                    <div class="mb-3 border rounded border-secondary p-2">{I18N_PAGE_TAGS}</div>
                                    <p class="fw-semibold">{PHP.L.Text}</p>
                                    <div class="mb-3 border rounded border-secondary p-2">{I18N_PAGE_TEXT}</div>
                                </div>
                                <div class="col-12 col-md-6 bg-warning-subtle">
                                    <div class="py-2">
                                        <label class="form-label"><span class="fw-semibold">{PHP.L.Title}</span></label>
                                        <input type="text" class="form-control" name="title" value="{I18N_IPAGE_TITLE}" maxlength="128" />
                                    </div>
                                    <div class="py-2">
                                        <label class="form-label"><span class="fw-semibold">{PHP.L.Description}</span></label>
                                        <textarea class="form-control" name="desc" maxlength="255" rows="4">{I18N_IPAGE_DESC}</textarea>
                                    </div>
                                    <!-- BEGIN: TAGS -->
                                        <div class="py-2">
                                            <label class="form-label"><span class="fw-semibold">{PHP.L.Tags}</span></label>
                                            {I18N_IPAGE_TAGS}
                                            <small class="text-muted">({PHP.L.tags_comma_separated})</small>
                                        </div>
                                    <!-- END: TAGS -->
                                    <div class="py-2">
                                        <label class="form-label"><span class="fw-semibold">{PHP.L.Text}</span></label>
                                        {I18N_IPAGE_TEXT}
                                    </div>
                                    <div class="col-12 text-center py-4">
                                        <button type="submit" class="btn btn-primary col-6">{PHP.L.Submit}</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
    <!-- This is the name of the template for informing the administrator -->
    <!-- IF {PHP.usr.maingrp} == 5 -->
        
            <div class="alert alert-warning" role="alert">
                <strong>{PHP.usr.name}</strong>, This is the HTML template <code>i18n.page.tpl</code>
            </div>
        
    <!-- ENDIF -->
<!-- END: MAIN -->
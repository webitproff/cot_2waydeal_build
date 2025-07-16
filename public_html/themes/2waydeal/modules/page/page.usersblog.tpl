<!-- BEGIN: MAIN -->
<div class="border-bottom border-secondary py-3 px-3">
    <nav aria-label="breadcrumb">
        <div class="ps-container-breadcrumb">
            <ol class="breadcrumb d-flex mb-0">
                {PAGE_BREADCRUMBS}
            </ol>
        </div>
    </nav>
</div>
<div class="min-vh-50 px-2 px-md-3 py-4">
    <div class="row justify-content-center">
        <div class="col-12 container-3xl">
            {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
            <div class="row align-items-center mb-4">
                <div class="col-md-8 col-lg-9 col-12 col-auto">
                    <h1 class="h4 mb-3">{PAGE_TITLE}</h1>
                </div>
                <!-- IF {PHP|cot_auth('page', '{PHP.c}', 'W')} -->
                <div class="col-md-4 col-lg-3 col-12 d-flex justify-content-center justify-content-md-end mt-3 mt-md-0">
                    <a class="btn btn-outline-secondary" href="{PHP|cot_url('page', 'm=add', '&c={PHP.c}')}">{PHP.L.page_addtitle}</a>
                </div>
                <!-- ENDIF -->
            </div>
            <!-- IF {PHP.usr.isadmin} OR {PHP.usr.id} == {PAGE_OWNER_ID} -->
            <p class="mb-1">
                <strong>{PHP.L.Status}:</strong>
                <span class="badge bg-warning text-black">{PAGE_LOCAL_STATUS}</span>
            </p>
            <!-- ENDIF -->
            <!-- IF {PAGE_DESCRIPTION} -->
            <h2 class="fs-6 mb-4">{PAGE_DESCRIPTION}</h2>
            <!-- ENDIF -->
            <div class="row pt-5">
                <div class="col-12 col-md-8 mx-auto pb-5">
                    <!-- IF {PHP|cot_plugin_active('attacher')} -->
                    <!-- IF {PAGE_ID|att_count('page', $this, '', 'images')} > 0 -->
                    <div class="mb-5">{PAGE_ID|att_display('page', $this, '', 'attacher.gallery.fancybox.page')}</div>
                    <!-- ELSE -->
                    <div class="mb-5">
                        <div class="position-relative overflow-hidden rounded-5 shadow-bottom" style="aspect-ratio: 2 / 1; background-image: url('{PHP.R.page_default_image}'); background-size: cover; background-position: center;"></div>
                    </div>
                    <!-- ENDIF -->
                    <!-- ELSE -->
                    <div class="position-relative overflow-hidden rounded-5 shadow-bottom" style="aspect-ratio: 2 / 1;">
                        <!-- IF {PAGE_LINK_MAIN_IMAGE} -->
                        <img src="{PAGE_LINK_MAIN_IMAGE}" alt="{PAGE_TITLE}" class="img-fluid object-fit-cover" />
                        <!-- ELSE -->
                        <div class="position-relative overflow-hidden rounded-5 shadow-bottom" style="aspect-ratio: 2 / 1; background-image: url('{PHP.R.page_default_image}'); background-size: cover; background-position: center;"></div>
                        <!-- ENDIF -->
                    </div>
                    <!-- ENDIF -->
                    <div class="card mb-4">
                        <div class="card-body">
                            <div class="row g-3 mb-3">
                                <div class="col-4 col-md-6">
                                    <!-- IF {PHP|cot_plugin_active('pagereviews')} -->
                                    <div><span class="small">{PHP.L.pagereviews_pageRatingValue}:</span> <span class="review-stars">{PAGE_REVIEWS_AVG_STARS_HTML}</span></div>
                                    <div><span class="small">{PHP.L.pagereviews_pageCountStarsTotalValue}:</span> {PAGE_REVIEWS_STARS_SUMM}</div>
                                    <div><span class="small">{PHP.L.pagereviews_pageCountReviewsTotalValue}:</span> {PAGE_REVIEWS_TOTAL_COUNT}</div>
                                    <div><span class="small">{PHP.L.pagereviews_pageAverageRatingValue}:</span> {PAGE_REVIEWS_AVG_STARS}</div>
                                    <!-- ENDIF -->
                                    <!-- IF {PAGE_COMMENTS_COUNT} > 0 -->
                                    <div class="mb-3">{PHP.L.2wd_Comments}: {PAGE_COMMENTS_COUNT}</div>
                                    <!-- ENDIF -->
                                </div>
                                <div class="col-12 col-md-6 text-md-end"><strong>{PHP.L.Filedunder}:</strong> {PAGE_CAT_PATH_SHORT}</div>
                            </div>
                            <div class="mb-3">
                                {PAGE_TEXT}
                            </div>
                            <!-- IF {PHP|cot_plugin_active('tags')} -->
                            <strong>{PHP.L.Tags}:</strong>
                            <!-- BEGIN: PAGE_TAGS_ROW -->
                            <!-- IF {PHP.tag_i} > 0 -->,
                            <!-- ENDIF -->
                            <a href="{PAGE_TAGS_ROW_URL}" title="{PAGE_TAGS_ROW_TAG}" rel="nofollow">{PAGE_TAGS_ROW_TAG}</a>
                            <!-- END: PAGE_TAGS_ROW -->
                            <!-- BEGIN: PAGE_NO_TAGS -->
                            {PAGE_NO_TAGS}
                            <!-- END: PAGE_NO_TAGS -->
                            <!-- ENDIF -->
                        </div>
                    </div>
                    <!-- IF {PHP|cot_plugin_active('attacher')} -->
                    <!-- IF {PAGE_ID|att_count('page',$this,'','files')} > 0 -->
                    <div class="mb-4" data-att-downloads="download">
                        <h5>{PHP.L.att_attachments} {PHP.L.att_downloads}</h5>
                        {PAGE_ID|att_downloads('page',$this)}
                    </div>
                    <!-- ENDIF -->
                    <!-- IF {PHP|cot_plugin_active('pagereviews')} -->
                    {PAGE_REVIEWS}
                    <hr />
                    <!-- ENDIF -->
                    <!-- ENDIF -->
                    <!-- IF {PHP|cot_plugin_active('comments')} -->
                    {PAGE_COMMENTS}
                    <!-- ENDIF -->
                </div>
                <div class="col-12 col-md-4 mx-auto">
                    <!-- BEGIN: PAGE_MULTI -->
                    <div class="card mb-4">
                        <div class="card-header">
                            <h2 class="h5 mb-0">{PHP.L.Summary}</h2>
                        </div>
                        <div class="card-body">
                            {PAGE_MULTI_TABTITLES}
                            <p class="mb-0">{PAGE_MULTI_TABNAV}</p>
                        </div>
                    </div>
                    <!-- END: PAGE_MULTI -->
                    <!-- IF {PHP.usr.maingrp} == 5 -->
                    <!-- BEGIN: PAGE_ADMIN -->
                    <div class="card mb-4">
                        <div class="card-header">
                            <h2 class="h5 mb-0">{PHP.L.Adminpanel}</h2>
                        </div>
                        <div class="card-body p-0">
                            <ul class="list-group list-group-flush">
                                <!-- IF {PHP.usr.isadmin} -->
                                <li class="list-group-item">
                                    <a href="{PHP|cot_url('admin')}">{PHP.L.Adminpanel}</a>
                                </li>
                                <!-- IF {PHP.structure.page.unvalidated.path} -->
                                <li class="list-group-item">
                                    <a href="{PHP|cot_url('page','c=unvalidated')}" title="{PHP.structure.page.unvalidated.title}">{PHP.structure.page.unvalidated.title}</a>
                                </li>
                                <!-- ENDIF -->
                                <!-- ENDIF -->
                                <li class="list-group-item">
                                    <a href="{PAGE_CAT|cot_url('page','m=add')}">{PHP.L.page_addtitle}</a>
                                </li>
                                <li class="list-group-item">{PAGE_ADMIN_UNVALIDATE}</li>
                                <li class="list-group-item">{PAGE_ADMIN_EDIT}</li>
                                <!-- IF {I18N_LANG_ROW_CLASS} == "selected" -->
                                <li class="list-group-item">
                                    <a href="{PAGE_ADMIN_EDIT_URL}" class="btn btn-warning">{PHP.L.i18n_editing}</a>
                                </li>
                                <!-- ENDIF -->
                                <li class="list-group-item">{PAGE_ADMIN_CLONE}</li>
                                <li class="list-group-item">{PAGE_ADMIN_DELETE}</li>
                                <!-- IF {PAGE_I18N_TRANSLATE} -->
                                <li class="list-group-item">{PAGE_I18N_TRANSLATE}</li>
                                <!-- ENDIF -->
                                <!-- IF {PAGE_I18N_DELETE} -->
                                <li class="list-group-item">{PAGE_I18N_DELETE}</li>
                                <!-- ENDIF -->
                            </ul>
                        </div>
                    </div>
                    <!-- END: PAGE_ADMIN -->
                    <!-- ENDIF -->
                    <div class="card mb-4">
                        <h2 class="h5 card-header">{PHP.L.2wd_contentAuthor}</h2>
                        <div class="card-body">
                            <div class="row justify-content-between">
                                <div class="col-md-auto text-center text-md-start">
                                    <!-- IF {PHP|cot_plugin_active('userimages')} -->
                                    <!-- IF {PAGE_OWNER_AVATAR_SRC} -->
                                    <img src="{PAGE_OWNER_AVATAR_SRC}" alt="{PAGE_OWNER_NICKNAME}" class="rounded-circle" width="50" height="50" />
                                    <!-- ELSE -->
                                    <img src="{PHP.R.userimg_default_avatar}" alt="{PAGE_OWNER_NICKNAME}" class="rounded-circle" width="50" height="50" />
                                    <!-- ENDIF -->
                                    <!-- ENDIF -->
                                    <!-- IF {PHP|cot_plugin_active('whosonline')} -->
                                    <!-- IF {PAGE_OWNER_ONLINE} -->
                                    <p class="mb-3">
                                        <span class="badge text-bg-success">{PHP.L.Online}</span>
                                    </p>
                                    <!-- ELSE -->
                                    <p class="mb-3">
                                        <span class="badge text-bg-secondary">{PHP.L.Offline}</span>
                                    </p>
                                    <!-- ENDIF -->
                                    <!-- ENDIF -->
                                </div>
                                <div class="col-md-auto text-center text-md-end">
                                    <h4 class="h5 mb-0">
                                        <!-- IF !{PAGE_AUTHOR} OR {PAGE_AUTHOR} == {OWNER_NAME} -->
                                        {PAGE_OWNER}
                                        <!-- ELSE -->
                                        {PAGE_AUTHOR}
                                        <!-- ENDIF -->
                                    </h4>
                                    <p class="small">{PHP.L.Lastlogged}: {PAGE_OWNER_LASTLOG}</p>
                                </div>
                            </div>
                            <ul class="list-group list-group-flush">
                                <!-- IF {PHP|cot_module_active('pm')} AND {PHP.usr.id} > 0 AND {PHP.usr.id} != {PAGE_OWNER_ID} -->
                                <li class="list-group-item px-0">
                                    <a href="{PHP.pag.user_id|cot_url('pm','m=send&to=$this', '', 1)}">{PHP.L.users_sendpm}</a>
                                </li>
                                <!-- ENDIF -->
                                <!-- IF {PHP.usr.id|cot_auth('page', '', 'W')} -->
                                <!-- IF {PHP.usr.auth_write} -->
                                <li class="list-group-item px-0">
                                    <a href="{PAGE_CAT|cot_url('page','m=add&c=$this')}">{PHP.L.page_addtitle}</a>
                                </li>
                                <!-- ENDIF -->
                                <!-- IF {PHP.usr.id} == {PAGE_OWNER_ID} -->
                                <li class="list-group-item px-0">
                                    <a href="{PAGE_ID|cot_url('page','m=edit&id=$this')}">{PHP.L.Edit}</a>
                                </li>
                                <!-- ENDIF -->
                                <!-- IF {I18N_LANG_ROW_CLASS} == "selected" -->
                                <li class="list-group-item">
                                    <a href="{PAGE_ADMIN_EDIT_URL}" class="btn btn-warning">{PHP.L.i18n_editing}</a>
                                </li>
                                <!-- ENDIF -->
                                <!-- IF {PAGE_I18N_TRANSLATE} -->
                                <li class="list-group-item px-0">
                                    <a href="{PHP.url_i18n}">{PHP.L.i18n_translate}</a>
                                </li>
                                <!-- ENDIF -->
                                <!-- ENDIF -->
                                <!-- IF {PAGE_CREATED} -->
                                <li class="list-group-item px-0"><strong>{PHP.L.2wd_page_published}</strong> {PAGE_CREATED}</li>
                                <!-- ENDIF -->
                                <!-- IF {PAGE_UPDATED} -->
                                <li class="list-group-item px-0"><strong>{PHP.L.2wd_page_latest_update}</strong> {PAGE_UPDATED}</li>
                                <!-- ENDIF -->
                                <!-- IF {PHP.pag_i18n_locales} > 1 -->
                                <!-- BEGIN: I18N_LANG -->
                                <li class="list-group-item px-0">
                                    <strong>{PHP.L.Language}:</strong>
                                    <ul class="list-inline mt-1">
                                        <!-- BEGIN: I18N_LANG_ROW -->
                                        <!-- IF {PHP.i18n_locale} != {I18N_LANG_ROW_CODE} -->
                                        <li class="list-inline-item">
                                            <a href="{I18N_LANG_ROW_URL}">
                                                <!-- IF {I18N_LANG_ROW_CODE|is_file('images/flags/$this.png')} -->
                                                <img src="images/flags/{I18N_LANG_ROW_CODE}.png" alt="{I18N_LANG_ROW_CODE}" class="me-1" style="width: 16px;" />
                                                <!-- ENDIF -->
                                                {I18N_LANG_ROW_TITLE}
                                            </a>
                                        </li>
                                        <!-- ENDIF -->
                                        <!-- END: I18N_LANG_ROW -->
                                    </ul>
                                </li>
                                <!-- END: I18N_LANG -->
                                <!-- ENDIF -->
                                <!-- BEGIN: PAGE_FILE -->
                                <li class="list-group-item px-0">
                                    <!-- BEGIN: MEMBERSONLY -->
                                    <p>{PAGE_TITLE}</p>
                                    <!-- END: MEMBERSONLY -->
                                    <p class="small">{PHP.L.2wd_page_HasAttachment}</p>
                                    <!-- BEGIN: DOWNLOAD -->
                                    <p class="small">
                                        <a href="{PAGE_FILE_URL}" class="btn btn-info btn-sm me-2" data-bs-toggle="tooltip" data-bs-title="{PAGE_FILE_NAME}">{PHP.L.2wd_page_DownloadFile}</a>
                                    </p>
                                    <!-- END: DOWNLOAD -->
                                    <p class="small">{PHP.L.Downloaded}: {PAGE_FILE_COUNTTIMES}</p>
                                </li>
                                <!-- END: PAGE_FILE -->
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- IF {PHP.usr.maingrp} == 5 AND {PHP.mskin} -->
{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/inc/mskin.tpl"}
<!-- ENDIF -->
<!-- END: MAIN -->

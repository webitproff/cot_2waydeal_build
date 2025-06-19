<!--
/********************************************************************************
 * File: reviews.tpl
 * Extention: plugin 'reviews'
 * Description: HTML template of reviews on public user page.
 * Compatibility: CMF/CMS Cotonti Siena v0.9.26 (https://github.com/Cotonti/Cotonti)
 * Dependencies: Bootstrap 5.3.3 (https://getbootstrap.com/); Font Awesome Free 6.7.2 (https://fontawesome.com/)
 * Theme: CleanCot  
 * Version: 1.0.2 
 * Created: 07 March 2025 
 * Updated: 14 April 2025 
 * Author: webitproff 
 * Source: https://github.com/webitproff/cot-CleanCot  
 * Help and support: https://abuyfile.com/ru/forums/cotonti/original/skins/cleancot
 * License: MIT  
 ********************************************************************************/
-->


<!-- BEGIN: MAIN -->
<style>
.review-stars {
    white-space: nowrap;
    display: inline-flex;
    align-items: center;
}
.review-stars .fa-star {
    color: #ffc107;
    font-size: 16px;
    margin-right: 2px;
}
</style> 
<div class="container my-4">
    <h4 class="mb-4">{PHP.L.reviews_reviews}</h4>
    
    <!-- BEGIN: REVIEWS_ROWS -->
    <div class="row mb-3 border-bottom pb-3 align-items-start">
        <div class="col-12 col-md-1 text-center text-lg-start">
            <!-- IF {PHP|cot_module_active('files')} AND !{PHP|cot_plugin_active('userimages')} -->
            <!-- IF {REVIEW_ROW_AVATAR_ID} > 0 -->
            <img class="rounded img-fluid" src="{REVIEW_ROW_AVATAR_URL}" width="75" height="75" alt="{REVIEW_ROW_NICKNAME}">
            <!-- ELSE -->
            <img class="rounded img-fluid" width="75" height="75" alt="{REVIEW_ROW_NICKNAME}" src="{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/user-noavatar.webp">
            <!-- ENDIF -->
            <!-- ENDIF -->
			<div class="text-primary-emphasis text-decoration-none">{REVIEW_ROW_OWNER}</div>
        </div>
        <div class="col-12 col-md-11">
            <div class="d-flex justify-content-between align-items-start">
                <div class="review-stars">{REVIEW_ROW_STARS}</div>
            </div>
            <h6 class="mt-1 fw-bold text-success">{REVIEW_ROW_TITLE}</h6>
            <!-- IF {REVIEW_ROW_AREA} == 'projects' -->
            <p class="small text-muted mt-1">
                {PHP.L.reviews_reviewforproject}: <a href="{REVIEW_ROW_PRJ_URL}">{REVIEW_ROW_PRJ_SHORTTITLE}</a>
            </p>
            <!-- ENDIF -->
            <p class="mt-2">{REVIEW_ROW_TEXT}</p>
            <p class="small text-muted">{REVIEW_ROW_DATE|date('d.m.Y H:i', $this)}</p>
            <div class="d-flex gap-2">
                <!-- IF {REVIEW_ROW_DELETE_URL} -->
                <a href="{REVIEW_ROW_DELETE_URL}" class="btn btn-sm btn-outline-danger">{PHP.L.Delete}</a>
                <!-- ENDIF -->
                <!-- IF {PHP.usr.id} > 0 AND ({PHP.usr.id} == {REVIEW_ROW_OWNERID} OR {PHP.usr.isadmin}) -->
                <button class="btn btn-sm btn-outline-primary" data-bs-toggle="modal" data-bs-target="#ReviewEditModal{REVIEW_ROW_ID}">
                    {PHP.L.Edit}
                </button>
                <!-- ENDIF -->
            </div>
        </div>
    </div>

    <!-- BEGIN: EDIT_FORM -->
    <div class="modal fade" id="ReviewEditModal{EDIT_FORM_ID}" tabindex="-1" aria-labelledby="ReviewEditModalLabel{EDIT_FORM_ID}" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="ReviewEditModalLabel{EDIT_FORM_ID}">{PHP.L.reviews_edit_review}</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="{EDIT_FORM_SEND}" method="post" name="editreview{EDIT_FORM_ID}" enctype="multipart/form-data">
                        <!-- IF {PHP.usr.isadmin} -->
                        <div>{PHP.L.Registered}:{EDIT_FORM_OWNER_REGDATE} / {PHP.L.Lastlogged}:{EDIT_FORM_OWNER_LASTLOG}</div>
                        <!-- ENDIF -->
                        <!-- IF {PHP.usr.isadmin} AND {EDIT_FORM_USERID} -->
                        <div class="mb-3">
                            <label for="ruserid_{EDIT_FORM_ID}" class="form-label">{PHP.L.reviews_user}</label>
                            {EDIT_FORM_USERID}
                        </div>
                        <!-- ENDIF -->
                        <!-- IF {PHP.usr.isadmin} AND {EDIT_FORM_DATE} -->
                        <div class="mb-3">
                            <label for="rdate_{EDIT_FORM_ID}" class="form-label">{PHP.L.reviews_date}</label>
                            <div>{EDIT_FORM_DATE}</div>
                        </div>
                        <!-- ENDIF -->
                        <div class="mb-3">
                            <label for="rtitle_{EDIT_FORM_ID}" class="form-label">{PHP.L.reviews_maintitle}</label>
                            {EDIT_FORM_TITLE}
                        </div>
                        <div class="mb-3">
                            <label for="rtext_{EDIT_FORM_ID}" class="form-label">{PHP.L.reviews_text}</label>
                            {EDIT_FORM_TEXT}
                        </div>
                        <div class="mb-3">
                            <label class="form-label">{PHP.L.reviews_score}</label>
                            <div>{EDIT_FORM_SCORE}</div>
                        </div>
                        <div class="d-flex gap-2">
                            <button type="submit" class="btn btn-success">{PHP.L.Edit}</button>
                            <a href="{EDIT_FORM_DELETE_URL}" class="btn btn-warning">{PHP.L.Delete}</a>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">{PHP.L.Close}</button>
                </div>
            </div>
        </div>
    </div>
    <!-- END: EDIT_FORM -->
    <!-- END: REVIEWS_ROWS -->
</div>

{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}

<!-- BEGIN: ADD_FORM -->
<div class="container my-4">
    <h5 class="mb-4">{PHP.L.reviews_add_review}</h5>
    <div class="card">
        <div class="card-body">
            <form action="{ADD_FORM_SEND}" method="post" name="newreview" enctype="multipart/form-data">
                <!-- IF {ADD_FORM_PROJECTS} -->
                <div class="alert alert-info" role="alert">
                    {PHP.L.reviews_projectsonly}
                </div>
                <div class="mb-3">
                    <label for="code" class="form-label">{PHP.L.reviews_chooseprj}</label>
                    {ADD_FORM_PROJECTS}
                </div>
                <!-- ENDIF -->
                <!-- IF {PHP.usr.isadmin} AND {ADD_FORM_USERID} -->
                <div class="mb-3">
                    <label for="ruserid" class="form-label">{PHP.L.reviews_user}</label>
                    {ADD_FORM_USERID}
                </div>
                <!-- ENDIF -->
                <!-- IF {PHP.usr.isadmin} AND {ADD_FORM_DATE} -->
                <div class="mb-3">
                    <label for="rdate" class="form-label">{PHP.L.reviews_date}</label>
                    <div>{ADD_FORM_DATE}</div>
                </div>
                <!-- ENDIF -->
                <div class="mb-3">
                    <label for="rtitle" class="form-label">{PHP.L.reviews_maintitle}</label>
                    {ADD_FORM_TITLE}
                </div>
                <div class="mb-3">
                    <label for="rtext" class="form-label">{PHP.L.reviews_text}</label>
                    {ADD_FORM_TEXT}
                </div>
                <div class="mb-3">
                    <label class="form-label">{PHP.L.reviews_score}</label>
                    <div>{ADD_FORM_SCORE}</div>
                </div>
                <div class="d-flex gap-2">
                    <button type="submit" class="btn btn-primary">{PHP.L.Add}</button>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- END: ADD_FORM -->
<!-- END: MAIN -->
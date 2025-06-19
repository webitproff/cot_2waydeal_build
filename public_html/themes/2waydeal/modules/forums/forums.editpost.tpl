<!-- BEGIN: MAIN -->
<div class="border-bottom border-secondary py-3 px-3">
  <nav aria-label="breadcrumb">
    <div class="ps-container-breadcrumb">
      <ol class="breadcrumb d-flex mb-0">
        {FORUMS_EDITPOST_BREADCRUMBS}
      </ol>
    </div>
  </nav>
</div>
	<div class="min-vh-50 px-2 px-md-3 py-4">

	  <div class="row justify-content-center">
		<div class="col-12 col-xl-10">
                <!-- IF {FORUMS_EDITPOST_SUBTITLE} -->
                    <p class="text-muted mb-3">{FORUMS_EDITPOST_SUBTITLE}</p>
                <!-- ENDIF -->
                <div class="card">
                    <div class="card-body">
                        {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
                        <form action="{FORUMS_EDITPOST_FORM_ACTION}" method="POST" name="editpost" class="needs-validation" novalidate>
                            <div class="row g-3">
                                <!-- BEGIN: FORUMS_EDITPOST_FIRSTPOST -->
                                    <div class="col-12">
                                        <label for="topicTitle" class="form-label fw-semibold">{PHP.L.forums_topic}:</label>
                                        <div class="input-group has-validation">
                                            {FORUMS_EDITPOST_FORM_TOPIC_TITTLE}
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <label for="topicDesc" class="form-label fw-semibold">{PHP.L.Description}:</label>
                                        <div class="input-group has-validation">
                                            {FORUMS_EDITPOST_FORM_TOPIC_DESCRIPTION}
                                        </div>
                                    </div>
                                    <!-- IF {FORUMS_EDITPOST_FORM_TOPIC_XTR_FLD_YOUTUBE} -->
                                        <div class="col-12">
                                            <label for="youtubeField" class="form-label fw-semibold">{FORUMS_EDITPOST_FORM_TOPIC_XTR_FLD_YOUTUBE_TITLE}:</label>
                                            <div class="input-group has-validation">
                                                {FORUMS_EDITPOST_FORM_TOPIC_XTR_FLD_YOUTUBE}
                                            </div>
                                        </div>
                                    <!-- ENDIF -->
                                <!-- END: FORUMS_EDITPOST_FIRSTPOST -->
                                <div class="col-12">
                                    <label for="postText" class="form-label fw-semibold d-none">{PHP.L.Message}:</label>
                                    <div class="input-group has-validation">
                                        {FORUMS_EDITPOST_FORM_TEXT}
                                    </div>
                                </div>
                                <!-- IF {PHP|cot_module_active('pfs')} AND !{PHP|cot_module_active('files')} -->
                                    <div class="col-12">
                                        <label for="postFiles" class="form-label fw-semibold">{PHP.L.Files}:</label>
                                        <div class="d-flex flex-wrap gap-2">
                                            <!-- IF {FORUMS_EDITPOST_PFS} -->
                                                <span class="me-2">{FORUMS_EDITPOST_PFS}</span>
                                            <!-- ENDIF -->
                                            <!-- IF {FORUMS_EDITPOST_SFS} -->
                                                {FORUMS_EDITPOST_SFS}
                                            <!-- ENDIF -->
                                        </div>
                                    </div>
                                <!-- ENDIF -->
                                <!-- IF {FORUMS_EDITPOST_EDIT_TIMEOUT} -->
                                    <div class="col-12">
                                        <p class="small text-muted">{PHP.L.forums_edittimeoutnote} {FORUMS_EDITPOST_EDIT_TIMEOUT}</p>
                                    </div>
                                <!-- ENDIF -->
                                <!-- BEGIN: POLL -->
                                    <div class="col-12">
                                        <div class="row g-3">
                                            <div class="col-lg-3 col-12">
                                                <label class="form-label d-inline-flex align-items-center">
                                                    <button class="btn btn-outline-danger" type="button" data-bs-toggle="collapse" data-bs-target="#toggle-usage">{PHP.L.Poll}</button>
                                                    <span class="ms-2 text-primary" data-bs-toggle="tooltip" title="{PHP.L.Poll}">
                                                        <i class="fa-solid fa-circle-question fa-lg"></i>
                                                    </span>
                                                </label>
                                            </div>
                                            <div class="col-lg-9 col-12">
                                                <div id="toggle-usage" class="collapse">
                                                    <script type="text/javascript" src="{PHP.cfg.modules_dir}/polls/js/polls.js"></script>
                                                    <script type="text/javascript">
                                                        var ansMax = {PHP.cfg.polls.max_options_polls};
                                                    </script>
                                                    <div class="form-group mb-3">{EDIT_POLL_IDFIELD}</div>
                                                    <div class="mb-3">
                                                        <span class="small text-muted">{PHP.L.poll}:</span>
                                                    </div>
                                                    <div class="mb-3">{EDIT_POLL_TEXT}</div>
                                                    <hr class="my-3">
                                                    <div class="mb-3">{PHP.L.Options}:</div>
                                                    <!-- BEGIN: OPTIONS -->
                                                        <div class="mb-3">
                                                            <div class="polloptiondiv position-relative">
                                                                {EDIT_POLL_OPTION_TEXT}
                                                                <button name="deloption" value="x" type="button" class="deloption btn btn-warning btn-sm position-absolute top-50 end-0 translate-middle-y me-2" style="display:none;">
                                                                    <i class="fa-solid fa-trash"></i>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    <!-- END: OPTIONS -->
                                                    <div class="mb-3">
                                                        <input id="addoption" name="addoption" value="{PHP.L.Add}" type="button" class="btn btn-outline-secondary shadow-sm" style="display:none;" />
                                                    </div>
                                                    <div>{EDIT_POLL_MULTIPLE}</div>
                                                </div>
                                                <!-- BEGIN: EDIT -->
                                                    <div class="col-lg-3 col-12">
                                                    </div>
                                                    <div class="col-lg-9 col-12">
                                                        <div class="form-group">{EDIT_POLL_LOCKED} {EDIT_POLL_RESET} {EDIT_POLL_DELETE}</div>
                                                    </div>
                                                <!-- END: EDIT -->
                                            </div>
                                        </div>
                                    </div>
                                <!-- END: POLL -->
                                <!-- BEGIN: FORUMS_EDITPOST_TAGS -->
                                    <div class="col-12">
                                        <label for="tags" class="form-label fw-semibold">{PHP.L.Tags}:</label>
                                        <div class="input-group has-validation">
                                            {FORUMS_EDITPOST_FORM_TAGS}
                                        </div>
                                        <small class="form-text text-muted">{FORUMS_EDITPOST_TOP_TAGS_HINT}</small>
                                    </div>
                                <!-- END: FORUMS_EDITPOST_TAGS -->
                                <div class="col-12">
                                    <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                                        <button type="submit" class="btn btn-primary">{PHP.L.Update}</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- This is the name of the template for informing the administrator -->
    <!-- IF {PHP.usr.maingrp} == 5 -->
        <div class=" px-2 px-md-3 py-4">
            <div class="alert alert-warning" role="alert">
                <strong>{PHP.usr.name}</strong>, This is the HTML template
                <code>forums.editpost.tpl</code>
            </div>
        </div>
    <!-- ENDIF -->
<!-- END: MAIN -->
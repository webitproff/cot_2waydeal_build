<!-- BEGIN: MAIN -->
<div class="border-bottom border-secondary py-3 px-3">
  <nav aria-label="breadcrumb">
    <div class="ps-container-breadcrumb ">
      <ol class="breadcrumb mb-0 text-truncate">
        {FORUMS_POSTS_BREADCRUMBS}
      </ol>
    </div>
  </nav>
</div>
<div class="min-vh-50 px-2 px-md-3 py-4">
	<div class="col-12 col-xxl-10 mx-auto">
            <h1 class="h4">{FORUMS_POSTS_TITLE}</h1>
            <!-- IF {FORUMS_POSTS_TOPICDESC} -->
                <h2 class="h6 mb-4">{FORUMS_POSTS_TOPICDESC}</h2>
            <!-- ENDIF -->
            <!-- BEGIN: FORUMS_POSTS_TOPICPRIVATE -->
                <div class="alert alert-danger mb-3">{PHP.L.forums_privatetopic}</div>
            <!-- END: FORUMS_POSTS_TOPICPRIVATE -->

            <!-- BEGIN: POLLS_VIEW -->
                <div class="card mb-4">
                    <div class="card-body">
                        <h2 class="polls h5 mb-3">{POLLS_TITLE}</h2>
                        {POLLS_FORM}
                    </div>
                </div>
            <!-- END: POLLS_VIEW -->

            <!-- BEGIN: FORUMS_POSTS_ADMIN -->
                <div class="card mb-4">
                    <div class="card-body">
                        <div class="row g-3 align-items-center">
                            <div class="col-md-3 col-12">
                                <label class="form-label fw-semibold">{PHP.L.forums_topicoptions}:</label>
                            </div>
                            <div class="col-md-9 col-12">
                                <div class="d-flex flex-wrap gap-2 small">
                                    <a href="{FORUMS_POSTS_BUMP_URL}" title="{PHP.L.forums_explainbump}">{PHP.L.forums_bump}</a>
                                    <span>{PHP.cfg.separator}</span>
                                    <a href="{FORUMS_POSTS_LOCK_URL}" title="{PHP.L.forums_explainlock}">{PHP.L.Lock}</a>
                                    <span>{PHP.cfg.separator}</span>
                                    <a href="{FORUMS_POSTS_STICKY_URL}" title="{PHP.L.forums_explainsticky}">{PHP.L.forums_makesticky}</a>
                                    <span>{PHP.cfg.separator}</span>
                                    <a href="{FORUMS_POSTS_ANNOUNCE_URL}" title="{PHP.L.forums_explainannounce}">{PHP.L.forums_announcement}</a>
                                    <span>{PHP.cfg.separator}</span>
                                    <a href="{FORUMS_POSTS_PRIVATE_URL}" title="{PHP.L.forums_explainprivate}">{PHP.L.forums_private} (#)</a>
                                    <span>{PHP.cfg.separator}</span>
                                    <a href="{FORUMS_POSTS_CLEAR_URL}" title="{PHP.L.forums_explaindefault}">{PHP.L.Default}</a>
                                    <span>{PHP.cfg.separator}</span>
                                    <a href="{FORUMS_POSTS_DELETE_URL}" title="{PHP.L.forums_explaindelete}" class="confirmLink">{PHP.L.Delete}</a>
                                </div>
                            </div>
                            <div class="col-md-3 col-12">
                                <label class="form-label fw-semibold">{PHP.L.Move}:</label>
                            </div>
                            <div class="col-md-9 col-12">
                                <form id="movetopic" action="{FORUMS_POSTS_MOVE_URL}" method="post" class="d-flex flex-wrap gap-2 align-items-center">
                                    {FORUMS_POSTS_MOVEBOX_SELECT}
                                    <span class="small text-muted">{FORUMS_POSTS_MOVEBOX_KEEP} {PHP.L.forums_keepmovedlink}</span>
                                    <button type="submit" class="btn btn-outline-primary btn-sm">{PHP.L.Move}</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            <!-- END: FORUMS_POSTS_ADMIN -->

            {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}

            <div class="row">
                <!-- IF {FORUMS_POSTS_TOPIC_XTR_FLD_YOUTUBE} -->
                    <div class="col-md-6 col-12 mb-2 mb-md-0">
                        <button type="button" class="video-btn btn btn-danger mb-3" id="programmaticBtn">
                            {FORUMS_POSTS_TOPIC_XTR_FLD_YOUTUBE_TITLE}
                        </button>
                    </div>
                <!-- ENDIF -->
                <!-- IF {FORUMS_POSTS_TAGS} -->
                    <div class="col-md-6 mb-3 col-12">
                        {FORUMS_POSTS_TAGS}
                    </div>
                <!-- ENDIF -->
            </div>

            <!-- BEGIN: FORUMS_POSTS_ROW -->
                <div class="card mb-4">
                    <div class="card-header" style="background-color: var(--bs-sidebar-bg)">
                        <div class="row g-2 align-items-center">
                            <div class="col-auto d-none d-lg-block">
                                {PHP.L.Author}
                            </div>
                            <div class="col">
                                <div class="d-flex flex-wrap justify-content-lg-end gap-2 small text-muted">
                                    <a class="text-primary-emphasis text-decoration-none" name="{FORUMS_POSTS_ROW_ID}" id="{FORUMS_POSTS_ROW_POSTID}" href="{FORUMS_POSTS_ROW_IDURL}" rel="nofollow">#{FORUMS_POSTS_ROW_ORDER} {PHP.L.Message}</a>
                                    <span>{PHP.cfg.separator}</span>
                                    {FORUMS_POSTS_ROW_CREATION}
                                    <!-- IF {FORUMS_POSTS_ROW_POSTERIP} -->
                                        <span>{PHP.cfg.separator}</span>
                                        {FORUMS_POSTS_ROW_POSTERIP}
                                    <!-- ENDIF -->
                                    <!-- IF {FORUMS_POSTS_ROW_QUOTE} -->
                                        <span>{PHP.cfg.separator}</span>
                                        {FORUMS_POSTS_ROW_QUOTE}
                                    <!-- ENDIF -->
                                    <!-- IF {FORUMS_POSTS_ROW_EDIT} -->
                                        <span>{PHP.cfg.separator}</span>
                                        {FORUMS_POSTS_ROW_EDIT}
                                    <!-- ENDIF -->
                                    <!-- IF {FORUMS_POSTS_ROW_DELETE} -->
                                        <span>{PHP.cfg.separator}</span>
                                        {FORUMS_POSTS_ROW_DELETE}
                                    <!-- ENDIF -->
                                    {FORUMS_POSTS_ROW_BOTTOM}
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-body {FORUMS_POSTS_ROW_ODDEVEN}">
                        <div class="row align-items-start py-3">
                            <div class="col-md-3 col-12 mb-3 mb-md-0">
                                {FORUMS_POSTS_ROW_ANCHORLINK}
                                <div class="d-inline-flex align-items-center">
                                    <div class="my-2">
                                        <!-- IF {PHP|cot_plugin_active('userimages')} -->
                                            <!-- IF {FORUMS_POSTS_ROW_USER_AVATAR_SRC} -->
                                                <img src="{FORUMS_POSTS_ROW_USER_AVATAR_SRC}" alt="{PAGE_OWNER_NICKNAME}" class="rounded-circle" width="50" height="50">
                                            <!-- ELSE -->
                                                <img src="{PHP.R.userimg_default_avatar}" alt="{FORUMS_POSTS_ROW_USER_NICKNAME}" class="rounded-circle" width="50" height="50">
                                            <!-- ENDIF -->
                                        <!-- ENDIF -->
                                    </div>
                                    <div>
                                        <h4 class="h6 mt-2 mb-2 ms-2">{FORUMS_POSTS_ROW_USER_NAME}</h4>
                                        <p class="small ms-2">{FORUMS_POSTS_ROW_USER_MAIN_GROUP_TITLE}</p>
                                    </div>
                                </div>
                                <!-- IF {PHP|cot_plugin_active('whosonline')} -->
                                    <!-- IF {FORUMS_POSTS_ROW_USER_ONLINE} -->
                                        <p class="mb-3">
                                            <span class="badge text-bg-success">{PHP.L.Online}</span>
                                        </p>
                                    <!-- ELSE -->
                                        <p class="mb-3">
                                            <span class="badge text-bg-secondary">{PHP.L.Offline}</span>
                                        </p>
                                    <!-- ENDIF -->
                                <!-- ENDIF -->
                                <p class="small">{PHP.L.forums_posts}: {FORUMS_POSTS_ROW_USER_POSTCOUNT}</p>
                            </div>
                            <div class="col-md-9 col-12">
                                <div>{FORUMS_POSTS_ROW_TEXT}</div>
                                <!-- IF {FORUMS_POSTS_ROW_UPDATEDBY} -->
                                    <div class="text-muted fst-italic mt-2 small">{FORUMS_POSTS_ROW_UPDATEDBY}</div>
                                <!-- ENDIF -->
                                <div class="small text-muted mt-2">{FORUMS_POSTS_ROW_USER_TEXT}</div>
							<!-- IF {PHP|cot_plugin_active('attacher')} -->
                            <div class="col-12 mb-3">
							<!-- IF {FORUMS_POSTS_ROW_ID|att_count('forums',$this)} > 0 -->
							{FORUMS_POSTS_ROW_ID|att_count('forums',$this)}/{FORUMS_POSTS_ROW_ID|att_count('forums',$this,'','images')}/{FORUMS_POSTS_ROW_ID|att_count('forums',$this,'','files')}
							<div class="col-12 mb-3">
							<!-- IF {FORUMS_POSTS_ROW_ID|att_count('forums', $this, '', 'images')} > 0 -->
							{FORUMS_POSTS_ROW_ID|att_display('forums',$this,'','attacher.display.forums.postsrow','images')}
							<!-- ENDIF -->
							<!-- IF {FORUMS_POSTS_ROW_ID|att_count('forums', $this, '', 'files')} > 0 -->
							{FORUMS_POSTS_ROW_ID|att_downloads('forums',$this)}
							<!-- ENDIF -->
							</div>
							<!-- ENDIF -->
							<!-- IF {PHP|cot_auth('plug', 'attacher', 'W')} AND {FORUMS_POSTS_ROW_USER_ID} == {PHP.usr.id} -->
							<div class="col-12 mb-3">
							<label class="col-form-label fw-semibold">{PHP.L.att_add_pict_files}</label>
							  <div class="input-group">
								{FORUMS_POSTS_ROW_ID|att_filebox('forums', $this)}
							  </div>
							</div>
							<!-- ENDIF -->
                            </div>
							<!-- ENDIF -->
                            </div>
                        </div>
                    </div>
                </div>
            <!-- END: FORUMS_POSTS_ROW -->

            <!-- IF {PAGINATION} -->
                <nav aria-label="Pagination" class="mt-4">
                    <ul class="pagination justify-content-center">
                        {PREVIOUS_PAGE}{PAGINATION}{NEXT_PAGE}
                    </ul>
                </nav>
            <!-- ENDIF -->

            <!-- BEGIN: FORUMS_POSTS_TOPICLOCKED -->
                <div class="alert alert-warning mt-3">{FORUMS_POSTS_TOPICLOCKED_BODY}</div>
            <!-- END: FORUMS_POSTS_TOPICLOCKED -->

            <!-- BEGIN: FORUMS_POSTS_ANTIBUMP -->
                <div class="alert alert-info mt-3">{FORUMS_POSTS_ANTIBUMP_BODY}</div>
            <!-- END: FORUMS_POSTS_ANTIBUMP -->

            <!-- BEGIN: FORUMS_POSTS_NEWPOST -->
                <div class="card mt-4">
                    <div class="card-body">
                        <form action="{FORUMS_POSTS_NEWPOST_SEND}" method="post" name="newpost">
                            <div class="row g-3">
                                <div class="col-12">
                                    {FORUMS_POSTS_NEWPOST_TEXT}
                                    <!-- IF {PHP|cot_module_active('pfs')} AND !{PHP|cot_module_active('files')} -->
                                        <!-- IF {FORUMS_POSTS_NEWPOST_PFS} -->
                                            {FORUMS_POSTS_NEWPOST_PFS}
                                        <!-- ENDIF -->
                                        <!-- IF {FORUMS_POSTS_NEWPOST_SFS} -->
                                            <span class="spaced">{PHP.cfg.separator}</span>
                                            {FORUMS_POSTS_NEWPOST_SFS}
                                        <!-- ENDIF -->
                                    <!-- ENDIF -->
                                    <!-- IF {PHP.cfg.forums.edittimeout} != 0 -->
                                        <p class="small text-muted mt-3">{PHP.L.forums_edittimeoutnote} {FORUMS_POSTS_NEWPOST_EDITTIMEOUT}</p>
                                    <!-- ENDIF -->
                                </div>
                                <div class="col-12">
                                    <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                                        <button type="submit" class="btn btn-primary">{PHP.L.Reply}</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            <!-- END: FORUMS_POSTS_NEWPOST -->
        </div>
    </div>



    <!-- This is the name of the template for informing the administrator -->
    <!-- IF {PHP.usr.maingrp} == 5 AND {PHP.mskin} -->
	<div class="col-12 col-md-10 mx-auto">
        {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/inc/mskin.tpl"}
	</div>
    <!-- ENDIF -->
    <script>
        document.addEventListener('DOMContentLoaded', () => {
            // Проверка загрузки Fancybox
            if (typeof Fancybox === 'undefined') {
                document.getElementById('fancybox-error').style.display = 'block';
                return;
            }
            // Программный подход: открытие видео по кнопке
            document.getElementById('programmaticBtn').addEventListener('click', () => {
                Fancybox.show([{
                    src: 'https://www.youtube.com/watch?v={FORUMS_POSTS_TOPIC_XTR_FLD_YOUTUBE}',
                    width: 640,
                    height: 360,
                    caption: ''
                }], {
                    Carousel: {
                        Video: {
                            autoplay: true
                        }
                    },
                    Toolbar: {
                        display: {
                            left: ['infobar'],
                            right: ['close']
                        }
                    },
                    Thumbs: false
                });
            });
        });
    </script>
<!-- END: MAIN -->

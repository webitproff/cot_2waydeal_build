<!-- BEGIN: MAIN -->
<div class="border-bottom border-secondary py-3 px-3">
  <nav aria-label="breadcrumb">
    <div class="ps-container-breadcrumb">
      <ol class="breadcrumb d-flex mb-0">
        {FORUMS_TOPICS_PAGETITLE}
      </ol>
    </div>
  </nav>
</div>
<div class="min-vh-50 px-2 px-md-3 py-4">
	<div class="col-12 col-xxl-10 mx-auto">
            {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
            <h1 class="h3 mb-3">{FORUMS_TOPICS_SHORTTITLE}</h1>
            <!-- IF {FORUMS_TOPICS_SUBTITLE} -->
                <h2 class="fs-6 mb-4">{FORUMS_TOPICS_SUBTITLE}</h2>
            <!-- ENDIF -->

            <!-- BEGIN: FORUMS_SECTIONS -->
                <div class="card mb-5">
                    <div class="card-header" style="background-color: var(--bs-sidebar-bg)">
                        <h2 class="h5 mb-0 text-decoration-none">{PHP.L.Subforums}</h2>
                    </div>
                    <div class="card-body p-0">
                        <div class="list-group list-group-striped list-group-flush">
                            <!-- BEGIN: FORUMS_SECTIONS_ROW_SECTION -->
                                <div class="list-group-item list-group-item-action {FORUMS_SECTIONS_ROW_ODDEVEN}">
                                    <div class="row g-3">
                                        <div class="col-12 col-md-8">
                                            <h5 class="mb-0 fs-6 fw-semibold text-primary-emphasis">
                                                <span class="text-muted small me-1">{PHP.R.icon_subfolder}</span>
                                                <a class="text-reset text-decoration-none" href="{FORUMS_SECTIONS_ROW_URL}" title="{FORUMS_SECTIONS_ROW_TITLE}">{FORUMS_SECTIONS_ROW_TITLE}</a>
                                            </h5>
                                            <!-- IF {FORUMS_SECTIONS_ROW_DESC} -->
                                                <p class="mb-1 text-muted">{FORUMS_SECTIONS_ROW_DESC}</p>
                                            <!-- ENDIF -->
                                        </div>
                                        <div class="col-12 col-md-4 text-center">
                                            <small class="text-body-secondary">{PHP.L.forums_topics}: {FORUMS_SECTIONS_ROW_TOPICCOUNT}</small>
                                            <small class="text-body-secondary">{PHP.L.forums_posts}: {FORUMS_SECTIONS_ROW_POSTCOUNT}</small><br>
                                            <small class="text-body-secondary">{PHP.L.Lastpost}: {FORUMS_SECTIONS_ROW_LASTPOSTER}</small><br>
                                            <small class="text-body-secondary">{FORUMS_SECTIONS_ROW_TIMEAGO}</small>
                                        </div>
                                    </div>
                                </div>
                            <!-- END: FORUMS_SECTIONS_ROW_SECTION -->
                        </div>
                    </div>
                </div>
            <!-- END: FORUMS_SECTIONS -->

            <!-- IF {PHP.usr.id} > 0 -->
                <div class="mobile-menu-wrapper my-3 my-md-4">
                    <ul class="nav nav-pills pills-menu dataset-pills">
                        <!-- IF {PHP|cot_auth('forums', 'a', 'W')} -->
                            <li class="nav-item">
                                <a class="btn btn-outline-primary" href="{FORUMS_TOPICS_NEWTOPICURL}" rel="nofollow">{PHP.L.forums_newtopic}</a>
                            </li>
                        <!-- ENDIF -->
                    </ul>
                </div>
            <!-- ENDIF -->

            <div class="card mb-5">
                <div class="card-header" style="background-color: var(--bs-sidebar-bg)">
                    <div class="row g-2 align-items-center">
                        <div class="col-auto" data-bs-toggle="tooltip" data-bs-title="{PHP.L.2wd_forums_info_icons}">
                            <a class="btn" data-bs-toggle="modal" data-bs-target="#info_icons" role="button" aria-expanded="false" aria-controls="info_icons">
                                <i class="fa-solid fa-circle-question fa-xl"></i>
                            </a>
                        </div>
                        <div class="col">
                            <h2 class="h5 mb-0 text-primary-emphasis text-decoration-none">
                                <span data-bs-toggle="tooltip" data-bs-title="{PHP.L.2wd_forums_sort_topics}">{FORUMS_TOPICS_TITLE_TOPICS} / {FORUMS_TOPICS_TITLE_STARTED}</span>
                            </h2>
                        </div>
                    </div>
                </div>
                <div class="card-body p-0">
                    <div class="list-group list-group-striped list-group-flush">
                        <!-- BEGIN: FORUMS_TOPICS_ROW -->
                            <div class="list-group-item list-group-item-action {FORUMS_TOPICS_ROW_ODDEVEN}">
                                <div class="row g-3">
                                    <div class="col-12 col-md-8">
                                        <h5 class="mb-0 fs-6 fw-semibold text-primary-emphasis">
                                            <span class="text-muted small me-1">{FORUMS_TOPICS_ROW_ICON}</span>
                                            <a class="text-reset text-decoration-none" href="{FORUMS_TOPICS_ROW_URL}" title="{FORUMS_TOPICS_ROW_PREVIEW}">{FORUMS_TOPICS_ROW_TITLE}</a>
                                        </h5>
                                        <!-- IF {FORUMS_TOPICS_ROW_DESC} -->
                                            <p class="mb-1 text-muted">{FORUMS_TOPICS_ROW_DESC}</p>
                                        <!-- ENDIF -->
                                        <p class="mb-1 text-muted small">
                                            {FORUMS_TOPICS_ROW_CREATIONDATE} {PHP.L.2wd_forums_Topic_Starter}: {FORUMS_TOPICS_ROW_FIRSTPOSTER} {FORUMS_TOPICS_ROW_PAGES}
                                            <!-- IF {FORUMS_TOPICS_ROW_TAGS} -->
                                                <br>{FORUMS_TOPICS_ROW_TAGS}
                                            <!-- ENDIF -->
                                        </p>
                                    </div>
                                    <div class="col-12 col-md-4 text-center">
                                        <small class="text-body-secondary">{PHP.L.forums_posts}: {FORUMS_TOPICS_ROW_POSTCOUNT}</small>
                                        <small class="text-body-secondary">{PHP.L.2wd_forums_Views_Topic}: {FORUMS_TOPICS_ROW_VIEWCOUNT}</small><br>
                                        <small class="text-body-secondary">{PHP.L.Lastpost}: {FORUMS_TOPICS_ROW_LASTPOSTER}</small><br>
                                        <small class="text-body-secondary">{FORUMS_TOPICS_ROW_TIMEAGO}</small>
                                    </div>
                                </div>
                            </div>
                        <!-- END: FORUMS_TOPICS_ROW -->
                    </div>
                </div>
            </div>

            <div class="d-flex flex-wrap gap-3 justify-content-center mt-3">
                <!-- BEGIN: FORUMS_SECTIONS_VIEWERS -->
                    <span>{PHP.L.forums_viewers}: {FORUMS_TOPICS_VIEWERS} {FORUMS_TOPICS_VIEWER_NAMES}</span>
                <!-- END: FORUMS_SECTIONS_VIEWERS -->
                <span>{PREVIOUS_PAGE}{PAGINATION}{NEXT_PAGE}</span>
            </div>
        </div>
    </div>

    <div class="modal fade" id="info_icons" tabindex="-1" aria-labelledby="infoiconsLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="infoiconsLabel">{PHP.L.2wd_forums_info_icons}</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="row row-cols-1 row-cols-md-2 g-3 small">
                        <div class="col">
                            <span class="me-1">{PHP.R.forums_icon_posts}</span>{PHP.L.forums_nonewposts}
                        </div>
                        <div class="col">
                            <span class="me-1">{PHP.R.forums_icon_posts_new}</span>{PHP.L.forums_newposts}
                        </div>
                        <div class="col">
                            <span class="me-1">{PHP.R.forums_icon_posts_hot}</span>{PHP.L.forums_nonewpostspopular}
                        </div>
                        <div class="col">
                            <span class="me-1">{PHP.R.forums_icon_posts_new_hot}</span>{PHP.L.forums_newpostspopular}
                        </div>
                        <div class="col">
                            <span class="me-1">{PHP.R.forums_icon_posts_sticky}</span>{PHP.L.forums_sticky}
                        </div>
                        <div class="col">
                            <span class="me-1">{PHP.R.forums_icon_posts_new_sticky}</span>{PHP.L.forums_newpostssticky}
                        </div>
                        <div class="col">
                            <span class="me-1">{PHP.R.forums_icon_posts_locked}</span>{PHP.L.forums_locked}
                        </div>
                        <div class="col">
                            <span class="me-1">{PHP.R.forums_icon_posts_new_locked}</span>{PHP.L.forums_newpostslocked}
                        </div>
                        <div class="col">
                            <span class="me-1">{PHP.R.forums_icon_posts_sticky_locked}</span>{PHP.L.forums_announcment}
                        </div>
                        <div class="col">
                            <span class="me-1">{PHP.R.forums_icon_posts_new_sticky_locked}</span>{PHP.L.forums_newannouncment}
                        </div>
                        <div class="col">
                            <span class="me-1">{PHP.R.forums_icon_posts_moved}</span>{PHP.L.forums_movedoutofthissection}
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <!-- This is the name of the template for informing the administrator -->
    <!-- IF {PHP.usr.maingrp} == 5 -->
        <div class="container py-5">
            <div class="alert alert-warning" role="alert">
                <strong>{PHP.usr.name}</strong>, This is the HTML template
                <code>forums.topics.tpl</code>
            </div>
        </div>
    <!-- ENDIF -->
<!-- END: MAIN -->
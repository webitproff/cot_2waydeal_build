<!-- BEGIN: MAIN -->
<div class="border-bottom border-secondary py-3 px-3">
  <nav aria-label="breadcrumb">
    <div class="ps-container-breadcrumb">
      <ol class="breadcrumb d-flex mb-0"> {FORUMS_SECTIONS_PAGETITLE} </ol>
    </div>
  </nav>
</div>
<div class="min-vh-50 px-2 px-md-3 py-4">
  <div class="row justify-content-center">
    <div class="col-12 container-3xl">
	<!-- IF {PHP|cot_plugin_active('forumtuning')} -->
      <div class="p-3 mb-4 rounded-2" style="border: 5px var(--bs-sidebar-border) solid">
        <form action="{SEARCH_ACTION_URL}" method="get" class="d-flex flex-column gap-3">
          <input type="hidden" name="e" value="forums" />
          <input type="hidden" name="l" value="{PHP.lang}" />
          <div class="row align-items-center">
            <label class="col-12 col-sm-3 mb-2 mb-sm-0">{PHP.L.Category}:</label>
            <div class="col-12 col-sm-9">{SEARCH_CAT}</div>
          </div>
          <div class="row align-items-center">
            <label class="col-12 col-sm-3 mb-2 mb-sm-0">{PHP.L.Search}:</label>
            <div class="col-12 col-sm-9">{SEARCH_SQ} <span class="small">{PHP.L.forumtuning_note}</span>
            </div>
          </div>
          <div class="row">
            <div class="col-12 col-sm-3 d-none d-sm-block"></div>
            <div class="col-12 col-sm-9">
              <div class="row g-3 justify-content-md-end justify-content-center">
                <div class="col-md-6 col-12 text-center">
                  <input type="submit" name="search" class="w-100 w-md-auto btn btn-primary" value="{PHP.L.forumtuning_StartSearch}" />
                </div>
                <div class="col-md-6 col-12 text-center">
                  <a class="btn btn-danger w-100 " href="{PHP|cot_url('forums')}">{PHP.L.forumtuning_ReserFilter}</a>
                </div>
              </div>
            </div>
          </div>
        </form>
      </div>
      <div class="row">
        <div class="col-md-8">
          <div id="latest-topics">
            <!-- BEGIN: LATEST_TOPICS -->
            <div class="list-group list-group-striped list-group-flush mb-4">
              <!-- BEGIN: LATEST_TOPICS_ROW -->
              <li class="list-group-item list-group-item-action {FORUMS_ROW_ODDEVEN}">
                <div class="row g-3">
                  <div class="col-12 col-md-8">
                    <h5 class="mb-0 fs-6 fw-semibold">
                      <a class="text-reset" href="{URL}">{TITLE}</a>
                    </h5>
                    <small class="text-body-secondary">({COUNT} {PHP.L.forumtuning_messages})</small>
                  </div>
                  <div class="col-12 col-md-4 text-center">
                    <div>
                      <small class="text-body-secondary">{PHP.L.Author} {AUTHOR}</small>
                    </div>
                    <small class="text-body-secondary">{DATE}</small>
                  </div>
                </div>
              </li>
              <!-- END: LATEST_TOPICS_ROW -->
            </div>
            <div class="pagination">{PREVIOUS_PAGE}{PAGINATION}{NEXT_PAGE}</div>
            <!-- END: LATEST_TOPICS -->
          </div>
        </div>
        <div class="col-md-4">{PHP|cot_build_structure_forums_tree('', '')}</div>
      </div>
	  <!-- ENDIF -->
        <div class="mobile-menu-wrapper my-3 my-md-4">
          <ul class="nav nav-pills pills-menu dataset-pills">
            <li class="nav-item">
              <a class="nav-link" href="{PHP|cot_url('forums','c=fold#top')}" rel="nofollow" onclick="return toggleAll('hide')">{PHP.L.forums_foldall}</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="{PHP|cot_url('forums','c=unfold#top')}" rel="nofollow" onclick="return toggleAll('show')">{PHP.L.forums_unfoldall}</a>
            </li>
          </ul>
        </div>
        <!-- BEGIN: FORUMS_SECTIONS -->
        <div class="card mb-5">
          <!-- BEGIN: CAT -->
          <div class="card-header" style="background-color: var(--bs-sidebar-bg)">
            <h2 class="h5 mb-0 text-decoration-none">
              <i class="fa-solid fa-folder me-2"></i>
              <a href="{FORUMS_SECTIONS_ROW_SECTIONSURL}" onclick="return toggleblock('blk_{FORUMS_SECTIONS_ROW_CAT}')" title="{FORUMS_SECTIONS_ROW_TITLE}"> {FORUMS_SECTIONS_ROW_TITLE} </a>
            </h2>
          </div>
          <div class="card-body p-0" id="blk_{FORUMS_SECTIONS_ROW_CAT}" <!-- IF {FORUMS_SECTIONS_ROW_FOLD} --> style="display:none;"
            <!-- ENDIF -->> <div class="list-group list-striped list-group-flush">
              <!-- BEGIN: SECTION -->
              <div class="list-group-item list-group-item-action">
                <div class="row g-3">
                  <div class="col-12 col-md-8">
                    <h5 class="mb-1 fs-6 fw-semibold text-primary-emphasis">
                      <!-- IF {FORUMS_SECTIONS_ROW_ICON} -->
                      <span class="text-muted small m-0 me-1">{FORUMS_SECTIONS_ROW_ICON}</span>
                      <!-- ELSE -->
                      <span class="text-primary me-1">
                        <i class="fa-solid fa-comments"></i>
                      </span>
                      <!-- ENDIF -->
                      <a href="{FORUMS_SECTIONS_ROW_URL}" title="{FORUMS_SECTIONS_ROW_TITLE}">{FORUMS_SECTIONS_ROW_TITLE}</a>
                    </h5>
                    <!-- IF {FORUMS_SECTIONS_ROW_DESC} -->
                    <p class="mb-1 text-muted fw-light">{FORUMS_SECTIONS_ROW_DESC}</p>
                    <!-- ENDIF -->
                    <!-- IF {FORUMS_SECTIONS_ROW_SUBSECTION} -->
                    <div class="subforums text-muted">
                      <div class="font-weight-bold my-2">
                        <i class="fa-solid fa-level-down-alt me-2"></i> {PHP.L.2wd_Subsections}:
                      </div>
                      <!-- BEGIN: SUBSECTION -->
                      <div class="small mb-1">
                        <i class="fa-solid fa-comment me-2"></i>
                        <a href="{FORUMS_SECTIONS_ROW_URL}" class="text-muted" title="{FORUMS_SECTIONS_ROW_TITLE}">{FORUMS_SECTIONS_ROW_TITLE}</a>
                      </div>
                      <!-- END: SUBSECTION -->
                    </div>
                    <!-- ENDIF -->
                  </div>
                  <div class="col-12 col-md-4 text-center d-none d-lg-block">
                    <div>
                      <small class="text-body-secondary">{PHP.L.forums_topics}: {FORUMS_SECTIONS_ROW_TOPICCOUNT}</small>
                      <small class="text-body-secondary">{PHP.L.forums_posts}: {FORUMS_SECTIONS_ROW_POSTCOUNT}</small>
                      <br>
                      <!-- IF {FORUMS_SECTIONS_ROW_LASTPOST} -->
                      <small class="text-body-secondary">{FORUMS_SECTIONS_ROW_LASTPOST}: {FORUMS_SECTIONS_ROW_LASTPOSTER} - {FORUMS_SECTIONS_ROW_LASTPOSTDATE}</small>
                      <!-- ENDIF -->
                    </div>
                  </div>
                </div>
              </div>
              <!-- END: SECTION -->
            </div>
          </div>
          <!-- END: CAT -->
        </div>
        <!-- END: FORUMS_SECTIONS -->
        <div class="d-flex flex-wrap gap-3 justify-content-center mt-3">
          <!-- IF {PHP|cot_plugin_active('search')} -->
          <span>
            <a href="{PHP|cot_url('plug','e=search&tab=frm')}">{PHP.L.forums_searchinforums}</a>
          </span>
          <!-- ENDIF -->
          <!-- IF {PHP|cot_plugin_active('forumstats')} -->
          <span>
            <a href="{PHP|cot_url('plug','e=forumstats')}">{PHP.L.Statistics}</a>
          </span>
          <!-- ENDIF -->
          <span>
            <a href="{FORUMS_SECTIONS_MARKALL_URL}" rel="nofollow">{PHP.L.forums_markasread}</a>
          </span>
        </div>
      <!-- IF {PHP|cot_plugin_active('tags')} -->
      <div class="mt-4">
        <div class="card">
          <div class="card-body">
            <h2 class="tags h5 mb-3">{PHP.L.Tags}</h2> {FORUMS_SECTIONS_TAG_CLOUD}
          </div>
        </div>
      </div>
      <!-- ENDIF -->
    </div>
    <!-- IF {PHP.usr.maingrp} == 5 -->
    <code>{PHP.mskin}</code>
    <!-- ENDIF -->
  </div>
</div>
<!-- END: MAIN -->

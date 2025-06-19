<!-- BEGIN: MAIN -->
<div class="border-bottom border-secondary py-3 px-3">
  <nav aria-label="breadcrumb">
    <div class="ps-container-breadcrumb ">
      <ol class="breadcrumb mb-0">
        {PHP.L.plu_title}
      </ol>
    </div>
  </nav>
</div>
<div class="py-4">
  <div class="px-3 min-height-50vh d-flex flex-column">
    <div class="row">
      <div class="col-12">
        <div class="card mt-4 mb-4">
          <div class="card-body">
            <h3>{PHP.L.Main}:</h3>
            <div class="list-group mb-3">
              <div class="list-group-item">
                <div class="row align-items-center">
                  <div class="col-12 col-md-8">{PHP.L.plu_maxwasreached} {STATISTICS_MAX_DATE}, {STATISTICS_MAX_HITS} {PHP.L.plu_pagesdisplayedthisday}</div>
                  <div class="col-12 col-md-4"></div>
                </div>
              </div>
              <div class="list-group-item">
                <div class="row align-items-center">
                  <div class="col-12 col-md-8">{PHP.L.plu_totalpagessince} {STATISTICS_SINCE}</div>
                  <div class="col-12 col-md-4 text-md-end">{STATISTICS_TOTALPAGES}</div>
                </div>
              </div>
              <div class="list-group-item">
                <div class="row align-items-center">
                  <div class="col-12 col-md-8">{PHP.L.plu_registeredusers}</div>
                  <div class="col-12 col-md-4 text-md-end">{STATISTICS_TOTALDBUSERS}</div>
                </div>
              </div>
              <div class="list-group-item">
                <div class="row align-items-center">
                  <div class="col-12 col-md-8">{PHP.L.Pages}</div>
                  <div class="col-12 col-md-4 text-md-end">{STATISTICS_TOTALDBPAGES}</div>
                </div>
              </div>
              <div class="list-group-item">
                <div class="row align-items-center">
                  <div class="col-12 col-md-8">{PHP.L.plu_totalmails}</div>
                  <div class="col-12 col-md-4 text-md-end">{STATISTICS_TOTALMAILSENT}</div>
                </div>
              </div>
              <div class="list-group-item">
                <div class="row align-items-center">
                  <div class="col-12 col-md-8">{PHP.L.comments_comments}</div>
                  <div class="col-12 col-md-4 text-md-end">{STATISTICS_TOTALDBCOMMENTS}</div>
                </div>
              </div>
            </div>

            <h3>{PHP.L.Private_Messages}:</h3>
            <div class="list-group mb-3">
              <div class="list-group-item">
                <div class="row align-items-center">
                  <div class="col-12 col-md-8">{PHP.L.plu_totalpms}</div>
                  <div class="col-12 col-md-4 text-md-end">{STATISTICS_TOTALPMSENT}</div>
                </div>
              </div>
              <div class="list-group-item">
                <div class="row align-items-center">
                  <div class="col-12 col-md-8">{PHP.L.plu_totalactivepms}</div>
                  <div class="col-12 col-md-4 text-md-end">{STATISTICS_TOTALPMACTIVE}</div>
                </div>
              </div>
              <div class="list-group-item">
                <div class="row align-items-center">
                  <div class="col-12 col-md-8">{PHP.L.plu_totalarchivedpms}</div>
                  <div class="col-12 col-md-4 text-md-end">{STATISTICS_TOTALPMARCHIVED}</div>
                </div>
              </div>
            </div>

            <h3>{PHP.L.Forums}:</h3>
            <div class="list-group mb-3">
              <div class="list-group-item">
                <div class="row align-items-center">
                  <div class="col-12 col-md-8">{PHP.L.plu_viewsforums}</div>
                  <div class="col-12 col-md-4 text-md-end">{STATISTICS_TOTALDBVIEWS}</div>
                </div>
              </div>
              <div class="list-group-item">
                <div class="row align-items-center">
                  <div class="col-12 col-md-8">{PHP.L.plu_postsforums}</div>
                  <div class="col-12 col-md-4 text-md-end">{STATISTICS_TOTALDBPOSTS}</div>
                </div>
              </div>
              <div class="list-group-item">
                <div class="row align-items-center">
                  <div class="col-12 col-md-8">{PHP.L.plu_topicsforums}</div>
                  <div class="col-12 col-md-4 text-md-end">{STATISTICS_TOTALDBTOPICS}</div>
                </div>
              </div>
            </div>

            <h3>{PHP.L.plu_pollsratings}:</h3>
            <div class="list-group mb-3">
              <div class="list-group-item">
                <div class="row align-items-center">
                  <div class="col-12 col-md-8">{PHP.L.plu_pagesrated}</div>
                  <div class="col-12 col-md-4 text-md-end">{STATISTICS_TOTALDBRATINGS}</div>
                </div>
              </div>
              <div class="list-group-item">
                <div class="row align-items-center">
                  <div class="col-12 col-md-8">{PHP.L.plu_votesratings}</div>
                  <div class="col-12 col-md-4 text-md-end">{STATISTICS_TOTALDBRATINGSVOTES}</div>
                </div>
              </div>
              <div class="list-group-item">
                <div class="row align-items-center">
                  <div class="col-12 col-md-8">{PHP.L.plu_polls}</div>
                  <div class="col-12 col-md-4 text-md-end">{STATISTICS_TOTALDBPOLLS}</div>
                </div>
              </div>
              <div class="list-group-item">
                <div class="row align-items-center">
                  <div class="col-12 col-md-8">{PHP.L.plu_votespolls}</div>
                  <div class="col-12 col-md-4 text-md-end">{STATISTICS_TOTALDBPOLLSVOTES}</div>
                </div>
              </div>
            </div>

            <h3>{PHP.L.PFS}:</h3>
            <div class="list-group mb-3">
              <div class="list-group-item">
                <div class="row align-items-center">
                  <div class="col-12 col-md-8">{PHP.L.plu_pfsspace}</div>
                  <div class="col-12 col-md-4 text-md-end">{STATISTICS_TOTALDBFILES}</div>
                </div>
              </div>
              <div class="list-group-item">
                <div class="row align-items-center">
                  <div class="col-12 col-md-8">{PHP.L.plu_pfssize}, {PHP.L.kb}</div>
                  <div class="col-12 col-md-4 text-md-end">{STATISTICS_TOTALDBFILESIZE}</div>
                </div>
              </div>
            </div>

            <h3>{PHP.L.plu_contributions}:</h3>
            <div class="list-group mb-3">
              <!-- BEGIN: IS_USER -->
              <div class="list-group-item">
                <div class="row align-items-center">
                  <div class="col-12 col-md-8">{PHP.L.forums_posts}</div>
                  <div class="col-12 col-md-4 text-md-end">{STATISTICS_USER_POSTSCOUNT}</div>
                </div>
              </div>
              <div class="list-group-item">
                <div class="row align-items-center">
                  <div class="col-12 col-md-8">{PHP.L.forums_topics}</div>
                  <div class="col-12 col-md-4 text-md-end">{STATISTICS_USER_TOPICSCOUNT}</div>
                </div>
              </div>
              <div class="list-group-item">
                <div class="row align-items-center">
                  <div class="col-12 col-md-8">{PHP.L.comments_comments}</div>
                  <div class="col-12 col-md-4 text-md-end">{STATISTICS_USER_COMMENTS}</div>
                </div>
              </div>
              <!-- END: IS_USER -->
              <!-- BEGIN: IS_NOT_USER -->
              <div class="list-group-item">
                <div class="row align-items-center">
                  <div class="col-12">{PHP.L.plu_notloggedin}</div>
                </div>
              </div>
              <!-- END: IS_NOT_USER -->
            </div>

            <h3>{PHP.L.plu_membersbycountry}:</h3>
            <div class="list-group mb-3">
              <div class="list-group-item list-group-item-dark">
                <div class="row align-items-center fw-bold">
                  <div class="col-12 col-md-1">{PHP.L.plu_flag}</div>
                  <div class="col-12 col-md-8"><a href="{STATISTICS_PLU_URL}">{PHP.cot_img_down}</a> {PHP.L.Country}</div>
                  <div class="col-12 col-md-3 text-md-end"><a href="{STATISTICS_SORT_BY_USERCOUNT}" rel="nofollow">{PHP.cot_img_down}</a> {PHP.L.Users}</div>
                </div>
              </div>
              <!-- BEGIN: ROW_COUNTRY -->
              <div class="list-group-item">
                <div class="row align-items-center">
                  <div class="col-12 col-md-1">{STATISTICS_COUNTRY_FLAG}</div>
                  <div class="col-12 col-md-8">{STATISTICS_COUNTRY_NAME}</div>
                  <div class="col-12 col-md-3 text-md-end">{STATISTICS_COUNTRY_COUNT}</div>
                </div>
              </div>
              <!-- END: ROW_COUNTRY -->
              <div class="list-group-item">
                <div class="row align-items-center">
                  <div class="col-12 col-md-1"><img src="images/flags/f-00.png" alt="" /></div>
                  <div class="col-12 col-md-8">{PHP.L.plu_unknown}</div>
                  <div class="col-12 col-md-3 text-md-end">{STATISTICS_UNKNOWN_COUNT}</div>
                </div>
              </div>
              <div class="list-group-item">
                <div class="row align-items-center fw-bold">
                  <div class="col-12 col-md-9 text-md-end">{PHP.L.Total}:</div>
                  <div class="col-12 col-md-3 text-md-end">{STATISTICS_TOTALUSERS}</div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- This is the name of the template for informing the administrator -->
<!-- IF {PHP.usr.maingrp} == 5 -->
<div class="px-3">
	<div class="alert alert-warning" role="alert">
	 <strong>{PHP.usr.name}</strong>, This is the HTML template <code>statistics.tpl</code>
	</div>
</div>
<!-- ENDIF -->

<!-- END: MAIN -->
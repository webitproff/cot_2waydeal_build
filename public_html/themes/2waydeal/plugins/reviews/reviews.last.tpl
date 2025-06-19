<!-- BEGIN: MAIN -->
<h3 class="h5 mb-3">{PHP.L.reviews_last_index}</h3>
<div class="list-group list-group-striped list-group-flush">
    <!-- BEGIN: REVIEW_ROW -->
    <li class="list-group-item list-group-item-action {PAGE_ROW_ODDEVEN}">
    <div class="row g-3 mb-3">
      <div class="col-12 col-md-6 text-center">
              <div class="row align-items-center">

                <div class="col text-end">
                  <h4 class="h6 mt-2 mb-1 ms-2">
                    <a class="link-success fw-bold link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover" href="{REVIEW_ROW_OWNER_DETAILS_URL}">
                      {REVIEW_ROW_OWNER_FULL_NAME}
                    </a>
                  </h4>
				  <span class="text-muted small">{REVIEW_ROW_DATE|date('d.m.Y H:i', $this)}</span>
                </div>
                <div class="col-auto text-center">
        <!-- IF {PHP|cot_plugin_active('userimages')} -->
        <!-- IF {REVIEW_ROW_OWNER_AVATAR_SRC} -->
        <img class="rounded-circle img-fluid" src="{REVIEW_ROW_OWNER_AVATAR_SRC}" width="52" height="52" alt="{REVIEW_ROW_OWNER_NICKNAME}">
        <!-- ELSE -->
        <img src="{PHP.R.userimg_default_avatar}" alt="{PRD_OWNER_NICKNAME}" class="rounded-circle img-fluid" width="52" height="52">
        <!-- ENDIF -->
        <!-- ENDIF -->
		<span class="mx-2"><i class="fa-solid fa-comment-dots fa-xl"></i></span>
                </div>
				
              </div>
			  
      </div>
      <div class="col-12 col-md-6">
              <div class="row align-items-center">
                <div class="col-auto text-center">
                  <!-- IF {PHP|cot_plugin_active('userimages')} -->
                  <!-- IF {REVIEW_ROW_TO_AVATAR_SRC} -->
                  <img class="rounded-circle img-fluid" src="{REVIEW_ROW_TO_AVATAR_SRC}" width="52" height="52" alt="{REVIEW_ROW_TO_NICKNAME}">
                  <!-- ELSE -->
                  <img src="{PHP.R.userimg_default_avatar}" alt="{PRD_OWNER_NICKNAME}" class="rounded-circle img-fluid" width="52" height="52">
                  <!-- ENDIF -->
                  <!-- ENDIF -->
                </div>
                <div class="col text-start">
                  <h4 class="h6 mt-2 mb-1 ms-2">
                    <a class="link-success fw-bold link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover" href="{REVIEW_ROW_TO_DETAILS_URL}&tab=reviews#tab_reviews"> 
					  {REVIEW_ROW_TO_FULL_NAME}    
                    </a>
                  </h4>
                  <div class="review-stars my-2">{REVIEW_ROW_STARS}</div>
                </div>
              </div>
      </div>
    </div>
    <h6 class="mt-1 fw-bold text-success">{REVIEW_ROW_TITLE}</h6>
    <p class="mb-0 fs-6">{REVIEW_ROW_TEXT|mb_substr($this, 0, 120, 'UTF-8')} ...</p>
    
    </li>
	 <!-- END: REVIEW_ROW -->
</div>







<!-- END: MAIN -->
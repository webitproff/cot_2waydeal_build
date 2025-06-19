<!-- BEGIN: MAIN -->
<div class="border-bottom border-secondary py-3 px-3">
  <nav aria-label="breadcrumb">
    <div class="ps-container-breadcrumb">
      <ol class="breadcrumb d-flex mb-0">
        {PRD_TITLE}
      </ol>
    </div>
  </nav>
</div>

<div class="min-vh-50 px-2 px-md-3 py-4">
  <div class="row justify-content-center">
    <div class="col-12 col-xxl-10">
      <div class="d-flex align-items-center mb-3">
        <h1 class="h3 mb-0">{PRD_SHORTTITLE}</h1>
        <!-- IF {PRD_COST} > 0 -->
        <span class="ms-auto text-success fw-bold">{PRD_COST} {PHP.cfg.payments.valuta}</span>
        <!-- ENDIF -->
      </div>
      <!-- Статусы -->
      <!-- IF {PRD_STATE} == 2 -->
      <div class="alert alert-warning">{PHP.L.folio_forreview}</div>
      <!-- ENDIF -->
      <!-- IF {PRD_STATE} == 1 -->
      <div class="alert alert-warning">{PHP.L.folio_hidden}</div>
      <!-- ENDIF -->
      <div class="row">
        <div class="col-12 col-md-8 mx-auto pb-5">
          <div class="mb-4">
            <!-- IF {PHP|cot_plugin_active('attacher')} -->
            <!-- IF {PRD_ID|att_count('folio', $this, '', 'images')} > 0 -->
            <div class="mb-5"> 
				{PRD_ID|att_display('folio', $this, '', 'attacher.gallery.fancybox.folio')} 
			</div>
            <!-- ELSE -->
            <div class="position-relative overflow-hidden rounded-5 shadow-bottom" style="aspect-ratio: 2 / 1; background-image: url('{PHP.R.page_default_image}'); background-size: cover; background-position: center;"></div>
            <!-- ENDIF -->
            <!-- ENDIF -->
          </div>
          <div class="card mb-4">
            <div class="card-body">
              <p class="date mb-2">
                <strong>{PHP.L.Date}:</strong> [{PRD_DATE}]
              </p>
              <div class="text">{PRD_TEXT}</div>
            </div>
          </div>
        </div>
        <div class="col-12 col-md-4 mx-auto">
          <div class="card mb-4 rounded-3" style="border: 5px var(--bs-dark-border-subtle) solid">
            <div class="card-header" style="background-color: var(--bs-dark-bg-subtle)">
              <h2 class="h5 mb-0">{PHP.L.2wd_usrSeller}</h2>
            </div>
            <div class="card-body">
              <div class="row align-items-center">
                <div class="col-auto text-center">
                  <!-- IF {PHP|cot_plugin_active('userimages')} -->
                  <!-- IF {PRD_OWNER_AVATAR_SRC} -->
                  <img src="{PRD_OWNER_AVATAR_SRC}" alt="{PRD_OWNER_NICKNAME}" class="rounded-circle img-fluid" width="76" height="76">
                  <!-- ELSE -->
                  <img src="{PHP.R.userimg_default_avatar}" alt="{PRD_OWNER_NICKNAME}" class="rounded-circle img-fluid" width="76" height="76">
                  <!-- ENDIF -->
                  <!-- ENDIF -->
                  <!-- IF {PHP|cot_plugin_active('whosonline')} -->
                  <!-- IF {PRD_OWNER_ONLINE} -->
                  <p class="my-2">
                    <span class="badge text-bg-success">{PHP.L.Online}</span>
                  </p>
                  <!-- ELSE -->
                  <p class="my-2">
                    <span class="badge text-bg-secondary">{PHP.L.Offline}</span>
                  </p>
                  <!-- ENDIF -->
                  <!-- ENDIF -->
                </div>
                <div class="col text-end">
                  <!-- IF {PRD_OWNER_FULL_NAME} -->
                  <h4 class="h6 mt-2 mb-1 ms-2">
                    <a class="link-success fw-bold link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover" href="{PRD_OWNER_DETAILS_URL}"> {PRD_OWNER_FULL_NAME} </a>
                  </h4>
                  <!-- ENDIF -->
                  <!-- IF {PRD_OWNER_NICKNAME} -->
                  <p class="small mb-1 ms-2">[{PRD_OWNER_NICKNAME}]</p>
                  <!-- ENDIF -->
                  <!-- IF {PRD_OWNER_USERPOINTS} -->
                  <div class="mb-2">
                    <span class="badge bg-info">{PRD_OWNER_USERPOINTS}</span>
                  </div>
                  <!-- ENDIF -->
                  <!-- IF {PRD_OWNER_REVIEWS_AVG_STARS_HTML} -->
                  <div class="review-stars">
                    <span class="ms-3">{PRD_OWNER_REVIEWS_AVG_STARS_HTML}</span>
                  </div>
                  <!-- ENDIF -->
                </div>
              </div>
            </div>
          </div>
          
          <!-- IF {PRD_USER_IS_ADMIN} -->
          <div class="card mb-4">
            <div class="card-header">
              <h2 class="h5 mb-0">{PHP.L.2wd_publicCardAdmin}</h2>
            </div>
            <div class="card-body p-0">
              <ul class="list-group list-group-flush">
                <li class="list-group-item">{PRD_ADMIN_EDIT}</li>
                <!-- IF {PRD_STATE} != 2 -->
                <li class="list-group-item">
                  <a href="{PRD_HIDEPRODUCT_URL}">{PRD_HIDEPRODUCT_TITLE}</a>
                </li>
                <!-- ENDIF -->
              </ul>
            </div>
          </div>
          <!-- ENDIF -->
        </div>
      </div>
    </div>
  </div>
</div>
<!-- IF {PHP.usr.maingrp} == 5 --> 
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/inc/mskin.tpl"}
<!-- ENDIF -->
<!-- END: MAIN -->
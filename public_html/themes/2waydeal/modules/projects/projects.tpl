<!-- BEGIN: MAIN -->
<div class="border-bottom border-secondary py-3 px-3">
  <nav aria-label="breadcrumb">
    <div class="ps-container-breadcrumb">
      <ol class="breadcrumb d-flex align-items-center mb-0">
        {PRJ_TITLE}
      </ol>
    </div>
  </nav>
</div>


<div class="py-4 px-3">
  <div class="row justify-content-center">
    <div class="col-12 col-xxl-10">
      <div class="d-flex align-items-center mb-4">
        <h1 class="h3 mb-0">{PRJ_SHORTTITLE}</h1>
        <!-- IF {PRJ_REALIZED} -->
        <span class="ms-auto badge bg-info">{PHP.L.projects_isrealized}</span>
        <!-- ENDIF -->
        <!-- IF {PHP|cot_plugin_active('paypro')} AND {PRJ_FORPRO} -->
        <span class="ms-2 badge bg-danger">{PHP.L.paypro_forpro}</span>
        <!-- ENDIF -->
      </div>

      <!-- Статусы -->
      <!-- IF {PRJ_STATE} == 2 -->
      <div class="alert alert-warning mb-4" role="alert">{PHP.L.projects_forreview}</div>
      <!-- ENDIF -->
      <!-- IF {PRJ_STATE} == 1 -->
      <div class="alert alert-warning mb-4" role="alert">{PHP.L.projects_hidden}</div>
      <!-- ENDIF -->

      <div class="row">
        <!-- Основной контент -->
        <div class="col-12 col-md-8 mb-4">
          <div class="card mb-4">
            <div class="card-body">
              <div class="text">{PRJ_TEXT}</div>
            </div>
          </div>
			<!-- IF {PHP|cot_plugin_active('attacher')} -->
			<!-- IF {PRJ_ID|att_count('projects', $this, '', 'all')} > 0 -->
			<div class="mb-4" data-att-display="all">
				<h5>{PHP.L.att_attachments} {PHP.L.att_downloads}</h5>
				{PRJ_ID|att_display('projects',$this,'','attacher.display','all')}
			</div>
			<!-- ENDIF -->
			<!-- ENDIF -->
        </div>

        <!-- Сайдбар -->
        <div class="col-12 col-md-4 mb-4">
          <!-- Карточка владельца -->
          <div class="card border-dark-subtle mb-4">
            <div class="card-header bg-dark-subtle">
              <h2 class="h5 mb-0">{PHP.L.2wd_usrEmployer}</h2>
            </div>
            <div class="card-body">
              <div class="row align-items-center">
                <div class="col-auto text-center">
                  <!-- IF {PHP|cot_plugin_active('userimages')} -->
                  <!-- IF {PRJ_OWNER_AVATAR_SRC} -->
                  <img src="{PRJ_OWNER_AVATAR_SRC}" alt="{PRJ_OWNER_NICKNAME}" class="rounded-circle img-fluid" width="76" height="76">
                  <!-- ELSE -->
                  <img src="{PHP.R.userimg_default_avatar}" alt="{PRJ_OWNER_NICKNAME}" class="rounded-circle img-fluid" width="76" height="76">
                  <!-- ENDIF -->
                  <!-- ENDIF -->
                  <!-- IF {PHP|cot_plugin_active('whosonline')} -->
                  <!-- IF {PRJ_OWNER_ONLINE} -->
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
					<!-- IF {PRJ_OWNER_FULL_NAME} -->
                    <h4 class="h6 mt-2 mb-1 ms-2">
                      <a class="link-success fw-bold link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover" href="{PRJ_OWNER_DETAILS_URL}">
                        {PRJ_OWNER_FULL_NAME}
                      </a>
                    </h4>
					<!-- ENDIF -->
					<!-- IF {PRJ_OWNER_NICKNAME} -->
					<p class="small mb-1 ms-2">[{PRJ_OWNER_NICKNAME}]</p>
					<!-- ENDIF -->
                </div>
              </div>
            </div>
          </div>

          
          <div class="card mb-4">
            <div class="card-body">
              <!-- IF {PRJ_COST} > 0 -->
              <p class="mb-2">{PHP.L.offers_budget}: {PRJ_COST} {PHP.cfg.payments.valuta}</p>
              <!-- ENDIF -->
              <p class="mb-2">{PHP.L.Category}: <a href="{PRJ_CAT|cot_url('projects', 'c=$this')}" class="text-decoration-none">{PRJ_CATTITLE}</a></p>
              <p class="text-muted mb-2">{PRJ_COUNTRY} {PRJ_REGION} {PRJ_CITY}</p>
              <p class="text-muted mb-2">{PHP.L.Date}: {PRJ_DATE}</p>
            </div>
          </div>

          
          <!-- IF {PRJ_USER_IS_ADMIN} -->
          <div class="card mb-4">
            <div class="card-header">
              <h2 class="h5 mb-0">{PHP.L.2wd_publicCardAdmin}</h2>
            </div>
            <div class="card-body p-0">
              <ul class="list-group list-group-flush">
                <li class="list-group-item">{PRJ_ADMIN_EDIT}</li>
                <!-- IF {PRJ_STATE} != 2 -->
                <li class="list-group-item">
                  <a href="{PRJ_HIDEPROJECT_URL}" class="text-decoration-none">{PRJ_HIDEPROJECT_TITLE}</a>
                </li>
                <!-- IF {PRJ_PERFORMER} -->
                <li class="list-group-item">
                  <a href="{PRJ_REALIZEDPROJECT_URL}" class="text-decoration-none">{PRJ_REALIZEDPROJECT_TITLE}</a>
                </li>
                <!-- ENDIF -->
                <!-- ENDIF -->
              </ul>
            </div>
          </div>
          <!-- ENDIF -->
        </div>
      </div>

      <!-- Предложения -->
      <div class="row">
        <div class="col-12">
          <div class="card">
            <div class="card-body">
              {OFFERS}
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- END: MAIN -->
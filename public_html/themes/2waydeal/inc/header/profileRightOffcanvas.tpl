    <div class="offcanvas offcanvas-end" tabindex="-1" id="profileRightOffcanvas" aria-labelledby="profileRightOffcanvasLabel">
      <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="rightOffcanvasLabel">
                 <!-- IF {PHP.usr.profile.user_firstname} -->
                <span class="h6 mt-2 mb-1 ms-2"> {PHP.usr.profile.user_firstname} {PHP.usr.profile.user_lastname} </span>
                <!-- ELSE -->
                <span class="mb-1 ms-2">{PHP.usr.profile.user_name}</span>
                <!-- ENDIF -->
        </h5>
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
      </div>
      <div class="offcanvas-body">
        <ul class="nav flex-column">
          <!-- IF {PHP.usr.id} != 0 -->
          <!-- IF {PHP.usr.maingrp} == 5 -->
          <li class="nav-item">
            <a class="nav-link" href="{PHP|cot_url('admin')}">
              <i class="fa-solid fa-user-shield me-1"></i> {PHP.L.Adminpanel} </a>
          </li>
          <hr class="my-2">
          <!-- ENDIF -->
		<li class="nav-item"> 
			<a class="nav-link" href="{PHP.usr.name|cot_url('users', 'm=details&u=$this')}">
				<i class="fa-solid fa-universal-access fa-lg me-1"></i>{PHP.L.2wd_public_profile_page}
			</a>
		</li> 
		<li class="nav-item"> 
			<a class="nav-link" href="{PHP|cot_url('users','m=profile')}">
				<i class="fa-solid fa-sliders fa-lg me-1"></i> {PHP.L.2wd_public_profile_set_data}
			</a>
		</li> 
          <!-- IF {PHP|cot_module_active('payments')} AND {PHP.cfg.payments.balance_enabled} -->
          <li class="nav-item">
            <a class="nav-link" href="{HEADER_USER_BALANCE_URL}">
              <i class="fa-solid fa-wallet"></i> {PHP.L.payments_mybalance}: {HEADER_USER_BALANCE|number_format($this, '2', '.', ' ')} {PHP.cfg.payments.valuta} </a>
          </li>
          <!-- ENDIF -->
          <!-- IF {PHP|cot_module_active('projects')} -->
          <hr class="my-2">
          <li class="nav-item">
            <a class="nav-link d-flex align-items-center" data-bs-toggle="collapse" href="#collapse-projects" role="button" aria-expanded="false">
              <span class="me-2">
                <i class="fa-solid fa-project-diagram"></i>
              </span>
              <span>{PHP.L.projects_projects}</span>
              <i class="fas fa-angle-down ms-auto"></i>
            </a>
            <div class="collapse" id="collapse-projects">
              <ul class="nav flex-column ps-2">
                <!-- IF {PHP|cot_auth('projects', 'any', 'W')} -->
                <li class="nav-item">
                  <a href="{PHP.usr.id|cot_url('users', 'm=details&id=$this&tab=projects')}" class="nav-link">
                    <span class="me-2">
                      <i class="fa-solid fa-note-sticky"></i>
                    </span>{PHP.L.projects_myprojects} </a>
                </li>
                <!-- ENDIF -->
                <!-- IF {PHP|cot_plugin_active('sbr')} -->
                <li class="nav-item">
                  <a href="{PHP|cot_url('sbr')}" class="nav-link">
                    <span class="me-2">
                      <i class="fa-solid fa-shield-halved"></i>
                    </span>{PHP.L.sbr_mydeals} </a>
                </li>
                <!-- ENDIF -->
                <!-- IF {PHP|cot_auth('projects', 'any', '1')} -->
                <li class="nav-item">
                  <a href="{PHP|cot_url('projects', 'm=useroffers')}" class="nav-link">
                    <span class="me-2">
                      <i class="fa-solid fa-pen-nib"></i>
                    </span>{PHP.L.offers_useroffers} </a>
                </li>
                <!-- ENDIF -->
              </ul>
            </div>
          </li>
          <!-- ENDIF -->
          <!-- IF {PHP|cot_module_active('market')} -->
          <hr class="my-2">
          <li class="nav-item">
            <a class="nav-link d-flex align-items-center" data-bs-toggle="collapse" href="#collapse-market" role="button" aria-expanded="false">
              <span class="me-2">
                <i class="fa-solid fa-store"></i>
              </span>
              <span>{PHP.L.market}</span>
              <i class="fas fa-angle-down ms-auto"></i>
            </a>
            <div class="collapse" id="collapse-market">
              <ul class="nav flex-column ps-2">
                <!-- IF {PHP|cot_auth('market', 'any', 'W')} -->
                <li class="nav-item">
                  <a href="{PHP.usr.id|cot_url('users', 'm=details&id=$this&tab=market')}" class="nav-link">
                    <span class="me-2">
                      <i class="fa-solid fa-basket-shopping"></i>
                    </span>{PHP.L.market_myproducts} </a>
                </li>
                <!-- ENDIF -->
                <!-- IF {PHP|cot_plugin_active('marketorders')} -->
                <li class="nav-item">
                  <a href="{PHP|cot_url('marketorders', 'm=sales')}" class="nav-link">
                    <span class="me-2">
                      <i class="fa-solid fa-pen-nib"></i>
                    </span>{PHP.L.marketorders_mysales} </a>
                </li>
                <li class="nav-item">
                  <a href="{PHP|cot_url('marketorders', 'm=purchases')}" class="nav-link">
                    <span class="me-2">
                      <i class="fa-solid fa-pen-nib"></i>
                    </span>{PHP.L.marketorders_mypurchases} </a>
                </li>
                <!-- ENDIF -->
              </ul>
            </div>
          </li>
          <!-- ENDIF -->
          <!-- IF {PHP|cot_plugin_active('paypro')} -->
          <li class="nav-item">
            <!-- IF {HEADER_USER_PROEXPIRE} -->
            <a class="nav-link" href="{PHP|cot_url('plug', 'e=paypro')}" title="{PHP.L.paypro_header_extend}">
              <i class="fa-solid fa-star"></i> {PHP.L.paypro_header_expire_short} {HEADER_USER_PROEXPIRE|cot_date('d.m.Y', $this)} </a>
            <!-- ELSE -->
            <a class="nav-link" href="{PHP|cot_url('plug', 'e=paypro')}" title="{PHP.L.paypro_header_buy}">
              <i class="fa-solid fa-star"></i> {PHP.L.paypro_header_buy} </a>
            <!-- ENDIF -->
          </li>
          <!-- ENDIF -->
          <!-- IF {HEADER_NOTICES} -->
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="noticesOffcanvasMenu" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              <i class="fa-solid fa-bell"></i> {PHP.L.header_notice} <i class="fa-solid fa-caret-down"></i>
            </a>
            <ul class="dropdown-menu" aria-labelledby="noticesOffcanvasMenu"> {HEADER_NOTICES} </ul>
          </li>
          <!-- ENDIF -->
          <hr class="my-2">
          <li class="nav-item">
            <a class="nav-link" href="{HEADER_USER_LOGINOUT_URL}">
              <i class="fa-solid fa-right-from-bracket me-1"></i> {PHP.L.Logout} </a>
          </li>
          <!-- ENDIF -->
        </ul>
      </div>
    </div>
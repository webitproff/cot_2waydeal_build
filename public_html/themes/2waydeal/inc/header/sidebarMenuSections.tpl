      <nav id="sidebar" class="sidebar d-lg-block">
        <div class="sidebar-content ps-container"> 
          <div class="py-2 border-bottom border-secondary">
		  <div class="py-2">
            <span class="mx-2 mb-0">
              <i class="fa-solid fa-list"></i>
            </span><span class="mb-0"> {PHP.L.2wd_menu_sections}</span>
          </div>
		  </div>
          <ul class="nav flex-column px-0 py-2">
            <ul class="nav flex-column">
              <li class="nav-item">
                <a class="nav-link" href="{PHP|cot_url('index')}">
                  <i class="fa-solid fa-house"></i> {PHP.L.Home} </a>
              </li>
              <!-- IF {PHP|cot_module_active('projects')} -->
              <li class="nav-item">
                <a class="nav-link" href="{PHP|cot_url('projects')}">
                  <span class="me-2">
                    <i class="fa-solid fa-project-diagram"></i>
                  </span>{PHP.L.projects_projects} </a>
              </li>
              <!-- ENDIF -->
              <!-- IF {PHP|cot_module_active('market')} -->
              <li class="nav-item">
                <a class="nav-link" href="{PHP|cot_url('market')}">
                  <span class="me-2">
                    <i class="fa-solid fa-store"></i>
                  </span>{PHP.L.market} </a>
              </li>
              <!-- ENDIF -->
              <!-- IF {PHP|cot_module_active('folio')} -->
              <li class="nav-item">
                <a class="nav-link" href="{PHP|cot_url('folio')}">
                  <span class="me-2">
                    <i class="fa-solid fa-camera-retro"></i>
                  </span>{PHP.L.folio} </a>
              </li>
              <!-- ENDIF -->
              <li class="nav-item">
                <a class="nav-link" href="{PHP.cot_groups.4.alias|cot_url('users', 'group=$this')}">
                  <span class="me-2">
                    <i class="fa-solid fa-users-gear"></i>
                  </span>{PHP.cot_groups.4.name} </a>
              </li>
              <!-- IF {PHP.cot_groups.7} -->
              <li class="nav-item">
                <a class="nav-link" href="{PHP.cot_groups.7.alias|cot_url('users', 'group=$this')}">
                  <span class="me-2">
                    <i class="fa-solid fa-users-between-lines"></i>
                  </span>{PHP.cot_groups.7.name} </a>
              </li>
              <!-- ENDIF -->
              <!-- IF {PHP|cot_module_active('page')} -->
              <hr class="my-2">
              <li class="nav-item">
                <a class="nav-link d-flex align-items-center" data-bs-toggle="collapse" href="#collapse-page" role="button" aria-expanded="false">
                  <i class="fa-regular fa-newspaper me-2"></i>
                  <span>{PHP.L.2wd_Publications}</span>
                  <i class="fas fa-angle-down ms-auto"></i>
                </a>
                <div class="collapse" id="collapse-page">
                  <ul class="nav flex-column ps-2">
                    <!-- IF {PHP.structure.page.news} -->
                    <!-- IF {PHP.structure.page.news.path} -->
                    <li class="nav-item">
                      <a href="{PHP|cot_url('page','c=news')}" class="nav-link" title="{PHP.L.2wd_cat_title_news}">
                        <span class="me-2">
                          <i class="fa-solid fa-pen-nib"></i>
                        </span>{PHP.L.2wd_cat_title_news} </a>
                    </li>
                    <!-- ENDIF -->
                    <!-- ENDIF -->
                    <!-- IF {PHP.structure.page.articles} -->
                    <!-- IF {PHP.structure.page.articles.path} -->
                    <li class="nav-item">
                      <a href="{PHP|cot_url('page','c=articles')}" class="nav-link" title="{PHP.L.2wd_cat_title_articles}">
                        <span class="me-2">
                          <i class="fa-solid fa-pen-nib"></i>
                        </span>{PHP.L.2wd_cat_title_articles} </a>
                    </li>
                    <!-- ENDIF -->
                    <!-- ENDIF -->
                    <!-- IF {PHP.structure.page.usersblog} -->
                    <!-- IF {PHP.structure.page.usersblog.path} -->
                    <li class="nav-item">
                      <a href="{PHP|cot_url('page','c=usersblog')}" class="nav-link" title="{PHP.L.2wd_cat_title_usersblog}">
                        <span class="me-2">
                          <i class="fa-solid fa-pen-nib"></i>
                        </span>{PHP.L.2wd_cat_title_usersblog} </a>
                    </li>
                    <!-- ENDIF -->
                    <!-- ENDIF -->
                    <!-- IF {PHP.structure.page.events} -->
                    <!-- IF {PHP.structure.page.events.path} -->
                    <li class="nav-item">
                      <a href="{PHP|cot_url('page','c=events')}" class="nav-link" title="{PHP.L.2wd_cat_title_events}">
                        <span class="me-2">
                          <i class="fa-solid fa-pen-nib"></i>
                        </span>{PHP.L.2wd_cat_title_events} </a>
                    </li>
                    <!-- ENDIF -->
                    <!-- ENDIF -->
                  </ul>
                </div>
              </li>
              <!-- ENDIF -->
              <!-- IF {PHP|cot_module_active('forums')} -->
              <li class="nav-item">
                <a class="nav-link" href="{PHP|cot_url('forums')}" title="{PHP.L.Forums}">
                  <span class="me-2">
                    <i class="fa-solid fa-comments me-1"></i>
                  </span>{PHP.L.Forums} </a>
              </li>
              <!-- ENDIF -->
			<!-- IF {PHP|cot_plugin_active('search')} -->
              <li class="nav-item">
                <a class="nav-link" href="{PHP|cot_url('plug','e=search')}">
                  <span class="me-2">
                    <i class="fa-solid fa-magnifying-glass me-1"></i>
                  </span>{PHP.L.Search}</a>
              </li>
			<!-- ENDIF -->
			<!-- IF {PHP|cot_plugin_active('contact')} -->
              <li class="nav-item">
                <a class="nav-link" href="{PHP|cot_url('contact')}">
                  <span class="me-2">
                    <i class="fa-solid fa-house-flag me-1"></i>
                  </span>{PHP.L.2wd_Contact}</a>
              </li>
			<!-- ENDIF -->
              <li class="nav-item mt-auto border-top">
                <a class="nav-link" type="button" data-bs-toggle="offcanvas" data-bs-target="#infoLeftOffcanvas" aria-controls="infoLeftOffcanvas">
                  <span class="me-2">
                    <i class="fa-solid fa-circle-question"></i>
                  </span>{PHP.L.2wd_info_and_support} </a>
              </li>
			  <li class="nav-item mt-auto border-top">
				<a class="nav-link d-flex align-items-center" type="button" onclick="toggleTheme()"
				   data-dark="{PHP.L.2wd_darkMode}"
				   data-light="{PHP.L.2wd_lightMode}">
				  <span id="wave" class="me-2 fa-lg"><i class="theme-icon fa-solid fa-moon"></i></span>
				  <span class="theme-text">{PHP.L.2wd_darkMode}</span>
				</a>
			  </li>
            </ul>
          </ul>
		  <!-- BEGIN: I18N_LANG -->
          <div class="py-2 border-bottom border-top border-secondary">
				<div class="px-3">
				<!-- BEGIN: I18N_LANG_ROW -->
					<a href="{I18N_LANG_ROW_URL}" class="{I18N_LANG_ROW_CLASS} mx-2"><img src="images/flags/{I18N_LANG_ROW_FLAG}.png" alt="{I18N_LANG_ROW_FLAG}" /></a>
				<!-- END: I18N_LANG_ROW -->
				</div>
		  </div>
		  <!-- END: I18N_LANG --> 
          <div class="py-2 border-bottom border-top border-secondary">

            <p class="mx-2 mb-0 text-muted small">
			{PHP.cfg.subtitle}
            </p>

		  </div>
        </div>
      </nav>

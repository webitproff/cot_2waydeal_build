      <nav id="sidebar" class="sidebar d-lg-block">
        <div class="sidebar-content ps-container" style="overflow-y: auto; max-height: 100vh;">
          <div class="py-2 border-bottom border-secondary">
            <div class="py-2 px-4">
              <a href="{PHP|cot_url('admin')}">
                <i class="fa-solid fa-house"></i> {PHP.L.Home} </a>
            </div>
          </div>
          <ul class="nav flex-column px-0 py-2">
            <ul class="nav flex-column">
              <li class="nav-item">
                <a class="nav-link d-flex align-items-center" href="{PHP|cot_url('admin', 'm=config')}" title="{PHP.L.Configuration}">
                  <i class="fa-solid fa-gear me-2"></i> {PHP.L.Configuration} </a>
              </li>
              <li class="nav-item">
                <a class="nav-link d-flex align-items-center" href="{PHP|cot_url('admin', 'm=structure')}" title="{PHP.L.Structure}">
                  <i class="fa-solid fa-list-ol me-2"></i> {PHP.L.Structure} </a>
              </li>
              <li class="nav-item">
                <a class="nav-link d-flex align-items-center" href="{PHP|cot_url('admin', 'm=extensions')}" title="{PHP.L.Extensions}">
                  <i class="fa-solid fa-puzzle-piece me-2"></i> {PHP.L.Extensions} </a>
              </li>
              <li class="nav-item">
                <a class="nav-link d-flex align-items-center" href="{PHP|cot_url('admin', 'm=users')}" title="{PHP.L.Users}">
                  <i class="fa-solid fa-users me-2"></i> {PHP.L.Users} </a>
              </li>
              <li class="nav-item d-flex align-items-center">
                <a class="nav-link" href="{PHP|cot_url('admin','m=extrafields')}" title="{PHP.L.Users}">
                  <i class="fa-solid fa-table-list me-2"></i>{PHP.L.Extrafields} </a>
              </li>
              <li class="nav-item">
                <a class="nav-link d-flex align-items-center" href="{PHP|cot_url('admin', 'm=other')}" title="{PHP.L.Other}">
                  <i class="fa-solid fa-ellipsis me-2"></i> {PHP.L.Other} </a>
              </li>
              <li class="nav-item">
                <a class="nav-link d-flex align-items-center" data-bs-toggle="collapse" href="#collapse-siteProps" role="button" aria-expanded="false">
                  <i class="fa-solid fa-screwdriver-wrench me-2"></i>
                  <span>{PHP.L.home_site_props}</span>
                  <i class="fas fa-angle-down ms-auto"></i>
                </a>
                <div class="collapse" id="collapse-siteProps">
                  <ul class="nav flex-column ps-3">
                    <li class="nav-item">
                      <a class="nav-link" href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=menus')}">{PHP.L.core_menus}</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=main')}">{PHP.L.core_main}</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=title')}">{PHP.L.core_title}</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=theme')}">{PHP.L.core_theme}</a>
                    </li>
                    <li>
                    <li class="nav-item">
                      <a class="nav-link" href="{PHP|cot_url('admin','m=config&n=edit&o=other&p=locale')}">{PHP.L.core_locale}</a>
                    </li>
                  </ul>
                </div>
              </li>
              <!-- IF {PHP|cot_module_active('page')} -->
              <li class="nav-item">
                <a class="nav-link d-flex align-items-center" href="{PHP|cot_url('admin', 'm=page')}">
                  <i class="fa-regular fa-newspaper me-2"></i> {PHP.L.Pages} </a>
              </li>
              <!-- ENDIF -->
              <!-- IF {PHP|cot_module_active('forums')} -->
              <li class="nav-item">
                <a class="nav-link" href="{PHP|cot_url('admin', 'm=forums')}" title="{PHP.L.Forums}">
                  <span class="me-2">
                    <i class="fa-solid fa-comments me-1"></i>
                  </span>{PHP.L.Forums} </a>
              </li>
              <!-- ENDIF -->
            </ul>
          </ul>
          <ul class="nav flex-column ps-2 border-top">
            <li class="nav-item">
              <a class="nav-link d-flex align-items-center" type="button" onclick="toggleTheme()" data-dark="{PHP.L.cotcp_darkMode}" data-light="{PHP.L.cotcp_lightMode}">
                <span id="wave" class="me-2 fa-lg">
                  <i class="theme-icon fa-solid fa-moon"></i>
                </span>
                <span class="theme-text">{PHP.L.cotcp_darkMode}</span>
              </a>
            </li>
          </ul>
          <!-- BEGIN: I18N_LANG -->
          <div class="py-2 border-bottom border-top border-secondary">
            <div class="px-3">
              <!-- BEGIN: I18N_LANG_ROW -->
              <a href="{I18N_LANG_ROW_URL}" class="{I18N_LANG_ROW_CLASS} mx-2">
                <img src="images/flags/{I18N_LANG_ROW_FLAG}.png" alt="{I18N_LANG_ROW_FLAG}" />
              </a>
              <!-- END: I18N_LANG_ROW -->
            </div>
          </div>
          <!-- END: I18N_LANG -->
          <div class="py-2 border-bottom border-secondary">
            <a type="button" data-bs-toggle="offcanvas" data-bs-target="#infoLeftOffcanvas" aria-controls="infoLeftOffcanvas">
              <span class="mx-2">
                <i class="fa-solid fa-circle-question"></i>
              </span>
              <span class="text-muted">{PHP.L.cotcp_info_and_support} </span>
            </a>
          </div>
        </div>
      </nav>
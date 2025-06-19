      <div class="offcanvas offcanvas-start" tabindex="-1" id="infoLeftOffcanvas" aria-labelledby="infoLeftOffcanvasLabel">
        <div class="offcanvas-header">
          <h5 class="offcanvas-title" id="infoLeftOffcanvasLabel">
            <span class="me-2">
              <i class="fa-solid fa-circle-question"></i>
            </span>{PHP.L.2wd_info_and_support}
          </h5>
          <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <div class="offcanvas-body">
          <ul class="nav flex-column">
            <li class="nav-item">
              <a class="nav-link" href="{PHP|cot_url('index')}">
                <i class="fa-solid fa-house"></i> Home </a>
            </li>
            <!-- IF {PHP.cot_modules.projects} -->
            <li class="nav-item">
              <a class="nav-link" href="{PHP|cot_url('projects')}">{PHP.L.projects_projects}</a>
            </li>
            <!-- ENDIF -->
            <li class="nav-item">
              <a class="nav-link" href="{PHP.cot_groups.4.alias|cot_url('users', 'group=$this')}">{PHP.cot_groups.4.name}</a>
            </li>
            <!-- IF {PHP.cot_groups.7} -->
            <li class="nav-item">
              <a class="nav-link" href="{PHP.cot_groups.7.alias|cot_url('users', 'group=$this')}">{PHP.cot_groups.7.name}</a>
            </li>
            <!-- ENDIF -->
            <!-- IF {PHP|cot_modules('market')} -->
            <li class="nav-item">
              <a class="nav-link" href="{PHP|cot_url('market')}">{PHP.L.market}</a>
            </li>
            <!-- ENDIF -->
          </ul>
        </div>
      </div>
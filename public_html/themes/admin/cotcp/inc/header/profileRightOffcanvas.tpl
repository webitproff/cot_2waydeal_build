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
          <li class="nav-item">
            <a class="nav-link" href="{PHP.usr.name|cot_url('users', 'm=details&u=$this')}">
              <i class="fa-solid fa-universal-access fa-lg me-1"></i>{PHP.L.cotcp_public_profile_page} </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{PHP|cot_url('users','m=profile')}">
              <i class="fa-solid fa-sliders fa-lg me-1"></i> {PHP.L.cotcp_public_profile_set_data} </a>
          </li>
          <hr class="my-2">
          <li class="nav-item">
            <a class="nav-link" href="{HEADER_USER_LOGINOUT_URL}">
              <i class="fa-solid fa-right-from-bracket me-1"></i> {PHP.L.Logout} </a>
          </li>
        </ul>
      </div>
    </div>
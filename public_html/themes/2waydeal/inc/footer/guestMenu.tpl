	<div class="offcanvas offcanvas-end" tabindex="-1" id="guestOffCanvas" aria-labelledby="guestOffCanvasLabel">
	  <div class="offcanvas-header">
		<h5 class="offcanvas-title" id="guestOffCanvasLabel">{PHP.L.Account}</h5>
		<button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
	  </div>
	  <div class="offcanvas-body">
		<ul class="navbar-nav">
		  <li class="nav-item">
			<a class="nav-link" href="{PHP|cot_url('login')}" data-bs-toggle="modal" data-bs-target="#authModal">
			  <i class="fa-solid fa-right-to-bracket me-1"></i>{PHP.L.Login}
			</a>
		  </li>
		  <li class="nav-item">
			<a class="nav-link" href="{PHP|cot_url('users','m=register')}">
			  <i class="fa-solid fa-user-plus me-1"></i>{PHP.L.Register}
			</a>
		  </li>
		  <li class="nav-item">
			<a class="nav-link" href="{PHP|cot_url('users','m=passrecover')}">
			  <i class="fa-solid fa-key me-1"></i>{PHP.L.users_lostpass}
			</a>
		  </li>
		</ul>
	  </div>
	</div>
    <div class="modal fade" id="authModal" tabindex="-1" aria-labelledby="authModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="authModalLabel">{PHP.L.Login}</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="{PHP|cot_url('login','a=check')}" method="post">
                        <div class="mb-3">
                            <label for="inputEmail" class="form-label">{PHP.L.users_nameormail}</label>
                            <input type="text" class="form-control" name="rusername" id="inputEmail" />
                        </div>
                        <div class="mb-3">
                            <label for="inputPassword" class="form-label">{PHP.L.Password}</label>
                            <input type="password" class="form-control" name="rpassword" id="inputPassword" />
                            <a href="{PHP|cot_url('users', 'm=passrecover')}" class="small text-decoration-none">{PHP.L.users_lostpass}</a>
                        </div>
                        <div class="mb-3 form-check">
                            <input type="checkbox" class="form-check-input" id="rememberMe" name="rremember">
                            <label class="form-check-label" for="rememberMe">{PHP.L.users_rememberme}</label>
                        </div>
                        <button type="submit" class="btn btn-primary">{PHP.L.Login}</button>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">{PHP.L.Close}</button>
                </div>
            </div>
        </div>
    </div>
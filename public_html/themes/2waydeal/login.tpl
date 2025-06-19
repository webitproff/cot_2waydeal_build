<!-- BEGIN: MAIN -->

<!-- BEGIN: USERS_AUTH_MAINTENANCE -->
<div class="alert alert-warning text-center" role="alert">
  <h5 class="mb-1">{PHP.L.users_maintenance1}</h5>
  <p class="mb-0">{PHP.L.users_maintenance2}</p>
</div>
<!-- END: USERS_AUTH_MAINTENANCE -->

<div class="min-vh-50 px-2 px-md-3 py-5">
  <div class="row justify-content-center">
    <div class="col-12 col-md-10 col-lg-8 col-xl-6">
      <form name="login" action="{USERS_AUTH_SEND}" method="post" class="needs-validation" novalidate>
        <div class="card shadow-sm">
          <div class="card-header">
            <h5 class="mb-0">{USERS_AUTH_TITLE}</h5>
          </div>
          <div class="card-body">
            
            <!-- Username or Email -->
            <div class="mb-3 row">
              <label for="loginuser" class="col-sm-4 col-form-label fw-semibold">
                {PHP.L.users_nameormail}
              </label>
              <div class="col-sm-8">
                {USERS_AUTH_USER}
              </div>
            </div>

            <!-- Password -->
            <div class="mb-3 row">
              <label for="loginpassword" class="col-sm-4 col-form-label fw-semibold">
                {PHP.L.Password}
              </label>
              <div class="col-sm-8">
                {USERS_AUTH_PASSWORD}
              </div>
            </div>

            <!-- Remember me -->
            <div class="mb-3 row">
              <div class="col-sm-4 fw-semibold">
                &nbsp;
              </div>
              <div class="col-sm-8">
                <div class="form-check">
                  {USERS_AUTH_REMEMBER}
                  <label class="form-check-label">{PHP.L.users_rememberme}</label>
                </div>
              </div>
            </div>

            <!-- Lost Password -->
            <div class="mb-3 row">
              <div class="col-sm-4 fw-semibold">
                &nbsp;
              </div>
              <div class="col-sm-8">
                <a href="{PHP|cot_url('users', 'm=passrecover')}">{PHP.L.users_lostpass}</a>
              </div>
            </div>

          </div>

          <div class="card-footer text-end">
            <button type="submit" name="rlogin" value="0" class="btn btn-outline-primary">
              <i class="fa-solid fa-right-to-bracket me-1"></i> {PHP.L.Login}
            </button>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>

<!-- END: MAIN -->

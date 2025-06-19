<!-- BEGIN: MAIN -->
<div class="px-2 px-md-3 py-2 border-bottom border-secondary">
  <div class="p-2">
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb mb-0 small flex-nowrap overflow-x-auto">
        <li class="breadcrumb-item active" aria-current="page">{PASSRECOVER_BREADCRUMBS}</li>
      </ol>
    </nav>
  </div>
</div>
<div class="min-vh-50 px-2 px-md-3 my-4">

    <h2 class="mb-3">{PASSRECOVER_TITLE}</h2>
    <!-- IF {PHP.msg} == 'request' -->
    <div class="alert alert-success" role="alert">{PHP.L.pasrec_mailsent}</div>
    <!-- ENDIF -->
    <!-- IF {PHP.msg} == 'auth' -->
    <div class="alert alert-success" role="alert">{PHP.L.pasrec_mailsent2}</div>
    <!-- ENDIF -->
    <!-- IF !{PHP.msg} -->
    <ol class="list-group list-group-numbered mb-3">
        <li class="list-group-item">{PHP.L.pasrec_explain1}</li>
        <li class="list-group-item">{PHP.L.pasrec_explain2}</li>
        <li class="list-group-item">{PHP.L.pasrec_explain3}</li>
    </ol>
    <form id="password-recover" name="reqauth" action="{PASSRECOVER_URL_FORM}" method="post" class="mb-3">
        <div class="mb-3">
            <label for="email" class="form-label">{PHP.L.pasrec_youremail}</label>
            <input type="email" class="form-control" id="email" name="email" value="" maxlength="64" required>
        </div>
        <button type="submit" class="btn btn-primary">{PHP.L.pasrec_request}</button>
    </form>
    <p>{PHP.L.pasrec_explain4}</p>
    <!-- ENDIF -->
</div>
<!-- END: MAIN -->

<!-- BEGIN: MAIN -->

<div class="border-bottom border-secondary py-3 px-3">
  <nav aria-label="breadcrumb">
    <div class="ps-container-breadcrumb ">
      <ol class="breadcrumb mb-0">
        {PHP.L.WhosOnline}
      </ol>
    </div>
  </nav>
</div>

    <div class="py-4">
        <div class="min-height-50vh d-flex flex-column px-2 px-md-3 py-4">
            <div class="row">
                <div class="col-12">
                    <div class="list-group mb-3">
                        <div class="list-group-item list-group-item-dark">
                            <div class="row align-items-center fw-bold">
                                <div class="col-12 col-md-2">{PHP.L.User}</div>
                                <div class="col-12 col-md-2">{PHP.L.Group}</div>
                                <div class="col-12 col-md-1">{PHP.L.Type}</div>
                                <div class="col-12 col-md-3">{PHP.L.Location}</div>
                                <div class="col-12 col-md-2">{PHP.L.LastSeen}</div>
                                <!-- IF {PHP.usr.isadmin} -->
                                    <div class="col-12 col-md-2">{PHP.L.Ip}</div>
                                <!-- ENDIF -->
                            </div>
                        </div>

                        <!-- BEGIN: USERS -->
                            <div class="list-group-item">
                                <div class="row align-items-center">
                                    <div class="col-12 col-md-2">{USER_LINK}</div>
                                    <div class="col-12 col-md-2">{USER_MAIN_GROUP}</div>
                                    <div class="col-12 col-md-1">
                                        <!-- IF {PHP.usr.isadmin} AND {USER_URL} != '' --><a href="{USER_URL}"><!-- ENDIF -->
                                            {USER_LOCATION}
                                        <!-- IF {PHP.usr.isadmin} AND {USER_URL} != '' --></a><!-- ENDIF -->
                                    </div>
                                    <div class="col-12 col-md-3">
                                        <!-- IF {USER_SUBLOCATION} -->
                                            <!-- IF {PHP.usr.isadmin} AND {USER_URL} != '' --><a href="{USER_URL}"><!-- ENDIF -->
                                                {USER_SUBLOCATION}
                                            <!-- IF {PHP.usr.isadmin} AND {USER_URL} != '' --></a><!-- ENDIF -->
                                        <!-- ENDIF -->
                                    </div>
                                    <div class="col-12 col-md-2">{USER_LASTSEEN} {PHP.L.Ago}</div>
                                    <!-- IF {PHP.usr.isadmin} -->
                                        <div class="col-12 col-md-2">{USER_IP}</div>
                                    <!-- ENDIF -->
                                </div>
                            </div>
                        <!-- END: USERS -->

                        <!-- BEGIN: GUESTS -->
                            <div class="list-group-item">
                                <div class="row align-items-center">
                                    <div class="col-12 col-md-2">{PHP.L.Guest} #{GUEST_NUMBER}</div>
                                    <div class="col-12 col-md-2"></div>
                                    <div class="col-12 col-md-1">
                                        <!-- IF {PHP.usr.isadmin} AND {GUEST_URL} != '' --><a href="{GUEST_URL}"><!-- ENDIF -->
                                            {GUEST_LOCATION}
                                        <!-- IF {PHP.usr.isadmin} AND {GUEST_URL} != '' --></a><!-- ENDIF -->
                                    </div>
                                    <div class="col-12 col-md-3">
                                        <!-- IF {GUEST_SUBLOCATION} -->
                                            <!-- IF {PHP.usr.isadmin} AND {GUEST_URL} != '' --><a href="{GUEST_URL}"><!-- ENDIF -->
                                                {GUEST_SUBLOCATION}
                                            <!-- IF {PHP.usr.isadmin} AND {GUEST_URL} != '' --></a><!-- ENDIF -->
                                        <!-- ENDIF -->
                                    </div>
                                    <div class="col-12 col-md-2">{GUEST_LASTSEEN} {PHP.L.Ago}</div>
                                    <!-- IF {PHP.usr.isadmin} -->
                                        <div class="col-12 col-md-2">{GUEST_IP}</div>
                                    <!-- ENDIF -->
                                </div>
                            </div>
                        <!-- END: GUESTS -->
                    </div>

                    <!-- IF {TOTAL_PAGES} > 1 -->
                        <nav aria-label="Pagination" class="mb-3">
                            <div class="text-center mb-2">{PHP.L.Page} {CURRENT_PAGE} {PHP.L.Of} {TOTAL_PAGES}</div>
                            <ul class="pagination justify-content-center">
                                {PREVIOUS_PAGE}
                                {PAGINATION}
                                {NEXT_PAGE}
                            </ul>
                        </nav>
                    <!-- ENDIF -->

                    <p class="mb-2">
                        <strong>{PHP.L.NowOnline}:</strong> {STAT_COUNT_USERS} {USERS}
                        <!-- IF !{PHP.cfg.plugin.whosonline.disable_guests} -->, {STAT_COUNT_GUESTS} {GUESTS}<!-- ENDIF -->
                    </p>
                    <!-- IF {STAT_MAXUSERS} -->
                        <p class="mb-0">
                            <strong>{PHP.L.MostOnline}:</strong> {STAT_MAXUSERS}
                        </p>
                    <!-- ENDIF -->
                </div>
            </div>
        </div>
    </div>
    <!-- This is the name of the template for informing the administrator -->
    <!-- IF {PHP.usr.maingrp} == 5 -->
	<div class="px-2">
            <div class="alert alert-warning" role="alert">
                <strong>{PHP.usr.name}</strong>, This is the HTML template <code>whosonline.tpl</code>
            </div>
	</div>
    <!-- ENDIF -->
<!-- END: MAIN -->
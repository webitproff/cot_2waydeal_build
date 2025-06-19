<!--
/********************************************************************************
 * File: support.list.tpl
 * Extention: module 'support'
 * Description: HTML template of a .....
 * Compatibility: CMF/CMS Cotonti Siena v0.9.26 (https://github.com/Cotonti/Cotonti)
 * Dependencies: Bootstrap 5.3.3 (https://getbootstrap.com/); Font Awesome Free 6.7.2 (https://fontawesome.com/)
 * Theme: CleanCot
 * Version: 1.0.2
 * Created: 07 March 2025
 * Updated: 03 May 2025
 * Author: webitproff
 * Source: https://github.com/webitproff/cot-CleanCot
 * Help and support: https://abuyfile.com/ru/forums/cotonti/original/skins/cleancot
 * License: MIT
 ********************************************************************************/
-->
<!-- BEGIN: MAIN -->
<div class="bg-light py-3 border-bottom">
  <nav class="navbar navbar-expand navbar-light">
    <div class="container-lg px-3">
      <div class="d-flex align-items-center w-100">
        <div class="d-flex">
          <ul class="nav">
            <!-- IF {PHP|cot_plugin_active('support')} AND {PHP.usr.id} > 0 -->
            <li class="nav-item">
              <a href="{PHP|cot_url('support')}" title="{PHP.L.support_navlink_title} - {PHP.L.support_nav_Descr}" class="nav-link text-muted shadow-sm">
                <i class="fas fa-hands-holding-child fa-2x"></i>
              </a>
            </li>
            <!-- ENDIF -->
            <!-- IF {PHP|cot_plugin_active('search')} -->
            <li class="nav-item">
              <a href="{PHP.cfg.mainurl}/search?tab=pag" title="{PHP.L.Search}" class="nav-link text-muted shadow-sm">
                <i class="fas fa-magnifying-glass-arrow-right fa-2x"></i>
              </a>
            </li>
            <!-- ENDIF -->
            <li class="nav-item">
              <a href="{PHP.cfg.mainurl}/index.php?e=page&c=user-guide" title="{PHP.L.User_Manual}" class="nav-link text-muted shadow-sm">
                <i class="far fa-circle-question fa-2x"></i>
              </a>
            </li>
          </ul>
        </div>
        <div class="ms-auto"></div>
      </div>
    </div>
  </nav>
</div>
<div class="py-4 bg-light">
  <div class="container-lg">
    <h1 class="h4 mt-3">
      <span class="text-muted me-2">
        <i class="fas fa-bolt fa-2x"></i>
      </span>{SUPPORT_TITLE}
    </h1>
    <div class="row g-3">
      <div class="col-lg-9">
        <div class="card shadow-sm rounded-3 mb-4">
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-sm table-bordered align-middle">
                <thead class="bg-primary text-white">
                  <tr>
                    <th class="text-center fw-bold">ID</th>
                    <th class="fw-bold">Заголовок обращения</th>
                    <!-- IF {PHP.usr.isadmin} -->
                    <th class="fw-bold">Автор</th>
                    <!-- ENDIF -->
                    <th class="fw-bold">Статус</th>
                  </tr>
                </thead>
                <tbody>
                  <!-- BEGIN: TICKET_ROW -->
                  <tr>
                    <td class="col-1">#{TICKET_ROW_ID}</td>
                    <td>
                      <div class="fw-normal">
                        <a href="{TICKET_ROW_URL}">{TICKET_ROW_TITLE} ({TICKET_ROW_COUNT})</a>
                      </div>
                      <div class="small">{TICKET_ROW_DATE|cot_date('d.m H:i:s', $this)}</div>
                    </td>
                    <!-- IF {PHP.usr.isadmin} -->
                    <td class="col-2">
                      <!-- IF {TICKET_ROW_USER_ID} -->{TICKET_ROW_USER_NAME}
                      <!-- ELSE -->{PHP.L.Guest}
                      <!-- ENDIF -->
                    </td>
                    <!-- ENDIF -->
                    <td class="col-3">
                      <!-- IF {TICKET_ROW_STATUS} == 'open' -->
                      <!-- IF {PHP.usr.id} == {TICKET_ROW_USER_ID} -->
                      <!-- IF {TICKET_ROW_COUNT} == 0 -->
                      <b class="text-warning">{PHP.L.support_tickets_new}</b>
                      <div class="small">{TICKET_ROW_UPDATE|cot_build_timeago($this)}</div>
                      <!-- ELSE -->
                      <!-- IF {TICKET_ROW_USER_ID} == {TICKET_ROW_LASTPOSTER_ID} -->
                      <b class="text-warning">{PHP.L.support_tickets_notanswered}</b>
                      <div class="small">{PHP.L.support_tickets_lastpost_from}: {TICKET_ROW_LASTPOSTER_NAME}, {PHP.L.support_tickets_lastpost_when}: {TICKET_ROW_UPDATE|cot_build_timeago($this)}</div>
                      <!-- ELSE -->
                      <b class="text-success">{PHP.L.support_tickets_answer}</b>
                      <div class="small">{PHP.L.support_tickets_lastpost_from}: {TICKET_ROW_LASTPOSTER_NAME}, {PHP.L.support_tickets_lastpost_when}: {TICKET_ROW_UPDATE|cot_build_timeago($this)}</div>
                      <!-- ENDIF -->
                      <!-- ENDIF -->
                      <!-- ELSE -->
                      <!-- IF {TICKET_ROW_COUNT} == 0 -->
                      <b class="text-warning">{PHP.L.support_tickets_new}</b>
                      <div class="small">{TICKET_ROW_UPDATE|cot_build_timeago($this)}</div>
                      <!-- ELSE -->
                      <!-- IF {TICKET_ROW_USER_ID} == {TICKET_ROW_LASTPOSTER_ID} -->
                      <b class="text-warning">{PHP.L.support_tickets_waiting_answer}</b>
                      <div class="small">{PHP.L.support_tickets_lastpost_from}: {TICKET_ROW_LASTPOSTER_NAME}, {PHP.L.support_tickets_lastpost_when}: {TICKET_ROW_UPDATE|cot_build_timeago($this)}</div>
                      <!-- ELSE -->
                      <b class="text-success">{PHP.L.support_tickets_answered}</b>
                      <div class="small">{PHP.L.support_tickets_lastpost_from}: {TICKET_ROW_LASTPOSTER_NAME}, {PHP.L.support_tickets_lastpost_when}: {TICKET_ROW_UPDATE|cot_build_timeago($this)}</div>
                      <!-- ENDIF -->
                      <!-- ENDIF -->
                      <!-- ENDIF -->
                      <!-- ELSE -->
                      <b>{PHP.L.support_tickets_closed}</b>
                      <div class="small">{TICKET_ROW_UPDATE|cot_build_timeago($this)}</div>
                      <!-- ENDIF -->
                    </td>
                  </tr>
                  <!-- END: TICKET_ROW -->
                </tbody>
              </table>
            </div>
          </div>
        </div>
        <!-- IF {PHP.tickets_open} == 0 OR !{PHP.cfg.support.onlyoneticket} -->
        <div class="text-center mb-4">
          <a class="btn btn-success" href="{PHP|cot_url('support', 'm=newticket')}">{PHP.L.support_tickets_add_button}</a>
        </div>
        <!-- ENDIF -->
        <!-- IF {PAGENAV_COUNT} > 0 -->
        <nav aria-label="Pagination">{PAGENAV_PREV}{PAGENAV_PAGES}{PAGENAV_NEXT}</nav>
        <!-- ELSE -->
        <div class="card mb-4 shadow-sm rounded-3 bg-warning-subtle">
          <div class="card-body">
            <div class="fw-bold text-warning">{PHP.L.None}</div>
          </div>
        </div>
        <!-- ENDIF -->
      </div>
      <div class="col-lg-3 d-none d-lg-block">
        <div class="card shadow-sm rounded-3 sticky-top" style="top: 1rem;">
          <div class="card-body">
            <ul class="list-group list-group-flush">
              <li class="list-group-item">
                <a class="link-dark fw-bold" href="{PHP|cot_url('support', 'status=all')}">{PHP.L.All} {PHP.L.support_tickets}</a>
              </li>
              <li class="list-group-item">
                <a class="link-dark" href="{PHP|cot_url('support','status=open')}">{PHP.L.support_tickets_open}</a>
              </li>
              <li class="list-group-item">
                <a class="link-dark" href="{PHP|cot_url('support','status=closed')}">{PHP.L.support_tickets_closed}</a>
              </li>
              <!-- IF {PHP.tickets_open} == 0 OR !{PHP.cfg.support.onlyoneticket} -->
              <li class="list-group-item">
                <a class="link-dark" href="{PHP|cot_url('support', 'm=newticket')}">{PHP.L.support_tickets_add_button}</a>
              </li>
              <!-- ENDIF -->
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- END: MAIN -->
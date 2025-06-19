<!--
/********************************************************************************
 * File: support.newticket.tpl
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
    {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
    <div class="row g-3">
      <div class="col-lg-9">
        <h2 class="h4 mt-3">
          <span class="text-danger me-2">
            <i class="fas fa-bolt fa-2x"></i>
          </span>{TICKETADD_SUBTITLE}
        </h2>
        <div class="card mb-4 shadow-sm rounded-3">
          <div class="card-body">
            <form class="row g-3" action="{TICKETADD_FORM_SEND}" enctype="multipart/form-data" method="post" name="ticketform" id="ticketform">
              <div class="mb-3">
                <label class="form-label text-primary">{PHP.L.support_newticket_title}:</label>
                <div>{TICKETADD_FORM_TITLE}</div>
              </div>
              <div class="mb-3">
                <label class="form-label text-primary">{PHP.L.support_newticket_text}:</label>
                <div>{TICKETADD_FORM_TEXT}</div>
              </div>
              <div class="mb-3">
                <div>{TICKETADD_FORM_MYPFS}</div>
              </div>
              <!-- IF {PHP.usr.id} == 0 -->
              <div class="mb-3">
                <label class="form-label">{PHP.L.support_newticket_name}:</label>
                <div>{TICKETADD_FORM_NAME}</div>
              </div>
              <div class="mb-3">
                <label class="form-label">{PHP.L.support_newticket_email}:</label>
                <div>{TICKETADD_FORM_EMAIL}</div>
              </div>
              <!-- ENDIF -->
              <div class="mb-3 text-center">
                <button type="submit" name="rsbrsubmit" value="send" class="btn btn-success">{PHP.L.Submit}</button>
              </div>
            </form>
          </div>
        </div>
      </div>
      <div class="col-lg-3 d-none d-lg-block">
        <div class="card mb-4 shadow-sm rounded-3 sticky-top" style="top: 1rem;">
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
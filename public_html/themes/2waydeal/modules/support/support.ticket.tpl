<!--
/********************************************************************************
 * File: support.ticket.tpl
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
<div class="py-4 bg-light">
  <div class="container-lg">
    <div class="row g-3">
      <div class="col-lg-9">
        <!-- BEGIN: CLOSED -->
        <div class="card mb-4 shadow-sm rounded-3 bg-light">
          <div class="card-body">
            <div class="text-muted">{PHP.L.support_tickets_closed_alert}</div>
          </div>
        </div>
        <!-- END: CLOSED -->
        <div class="row g-3 align-items-center mb-4">
          <div class="col-auto">
            <!-- IF {TICKET_STATUS} == 'open' -->
            <div class="mb-3">
              <a class="btn btn-primary shadow-sm" href="{TICKET_CLOSE_URL}">{PHP.L.support_tickets_close_button}</a>
            </div>
            <!-- ENDIF -->
          </div>
          <div class="col">
            <h3 class="h5 mt-3">{PHP.L.support_tickets_number} #{TICKET_ID} | {TICKET_DATE|date('d.m.Y H:i:s', $this)}</h3>
            <p>
              <span class="text-muted me-2">
                <i class="fas fa-bolt fa-lg"></i>
              </span>
              <span class="text-muted fw-bold">{TICKET_TITLE}</span>
            </p>
          </div>
        </div>
        <div class="card shadow-sm rounded-3 mb-4">
          <div class="card-body">
            <ul class="list-group list-group-flush">
              <!-- BEGIN: MSG_ROW -->
              <li class="list-group-item">
                <div id="msg{MSG_ROW_ID}">
                  <div class="row g-3 align-items-center">
                    <div class="col-auto">
                      <a href="{MSG_ROW_USER_DETAILS_URL}">
                        <!-- IF {MSG_ROW_USER_AVATAR_SRC} -->
                        <img class="rounded-circle" src="{MSG_ROW_USER_AVATAR_SRC}" width="50" height="50" alt="Avatar">
                        <!-- ELSE -->
                        <img class="rounded-circle" width="50" height="50" src="{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/user-noavatar.webp" alt="No Avatar">
                        <!-- ENDIF -->
                      </a>
                    </div>
                    <div class="col">
                      <h4 class="fw-normal">
                        <!-- IF {MSG_ROW_USER_ID} -->{MSG_ROW_USER_NAME}
                        <!-- ELSE -->{PHP.L.Guest}
                        <!-- ENDIF -->
                      </h4>
                      <span>{MSG_ROW_DATE|cot_date('d.m.Y H:i:s', $this)}</span>
                    </div>
                  </div>
                  <p class="mt-2">{MSG_ROW_TEXT}</p>
                </div>
              </li>
              <!-- END: MSG_ROW -->
            </ul>
          </div>
        </div>
        <!-- BEGIN: MSGWAIT -->
        <div class="card mb-4 shadow-sm rounded-3 bg-warning-subtle">
          <div class="card-body">
            <div class="fw-bold text-warning">{PHP.L.support_tickets_wait_alert}</div>
          </div>
        </div>
        <!-- END: MSGWAIT -->
        <!-- BEGIN: MSGFORM -->
        <div class="card mb-4 shadow-sm rounded-3">
          <div class="card-body">
            {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
            <form class="row g-3" action="{MSG_FORM_SEND}" enctype="multipart/form-data" method="post" name="msgform" id="msgform">
              <div class="mb-3">
                <label class="form-label text-primary">{PHP.L.support_tickets_add_newmsg}</label>
                <div>{MSG_FORM_TEXT}</div>
              </div>
              <div class="mb-3">
                <div>{MSG_FORM_MYPFS}</div>
              </div>
              <div class="mb-3 text-center">
                <button type="submit" name="submit" class="btn btn-success" value="send">{PHP.L.Submit}</button>
              </div>
            </form>
          </div>
        </div>
        <!-- END: MSGFORM -->
      </div>
      <div class="col-lg-3 d-none d-lg-block">
        <div class="card shadow-sm rounded-3 sticky-top" style="top: 1rem;">
          <div class="card-body">
            <ul class="list-group list-group-flush">
              <li class="list-group-item">
                <a class="link-dark fw-bold" href="{PHP|cot_url('support', 'status=all')}">{PHP.L.All}</a>
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
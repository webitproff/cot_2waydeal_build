<!-- BEGIN: MAIN -->
<!-- IF !{AJAX_MODE} -->
<div class="px-4 py-4">
    <h1 class="mb-3">{MESSAGE_TITLE}</h1>
<!-- ENDIF -->
    <div class="alert alert-warning">
        <p class="mb-0">{MESSAGE_BODY}</p>
        <!-- BEGIN: MESSAGE_CONFIRM -->
        <ul id="yesno" class="list-inline mt-3 mb-0">
            <li class="list-inline-item">
                <a id="confirmYes" href="{MESSAGE_CONFIRM_YES}" class="confirmButton btn btn-primary">{PHP.L.Yes}</a>
            </li>
            <li class="list-inline-item">
                <a id="confirmNo" href="{MESSAGE_CONFIRM_NO}" class="confirmButton btn btn-secondary">{PHP.L.No}</a>
            </li>
        </ul>
        <!-- END: MESSAGE_CONFIRM -->
    </div>
<!-- IF !{AJAX_MODE} -->
</div>
<!-- ENDIF -->
<!-- END: MAIN -->
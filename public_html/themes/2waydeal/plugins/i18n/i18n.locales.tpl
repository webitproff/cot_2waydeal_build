<!-- BEGIN: MAIN -->
    <div class="py-5 min-height-50vh">
        <h2 class="mb-4">{PHP.L.i18n_locale_selection}</h2>
        <ul class="list-group">
            <!-- BEGIN: I18N_LOCALE_ROW -->
                <li class="list-group-item">
                    <a href="{I18N_LOCALE_ROW_URL}" class="text-decoration-none">{I18N_LOCALE_ROW_TITLE}</a>
                </li>
            <!-- END: I18N_LOCALE_ROW -->
        </ul>
    </div>

    
    <!-- IF {PHP.usr.maingrp} == 5 -->
            <div class="alert alert-warning" role="alert">
                <strong>{PHP.usr.name}</strong>, This is the HTML template <code>i18n.locales.tpl</code>
            </div>
    <!-- ENDIF -->
<!-- END: MAIN -->
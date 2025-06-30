<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}

<!-- BEGIN: TABLELIST -->
<div class="min-height-50vh d-flex flex-column px-2 px-md-3 py-4">
    <div class="row">
        <div class="col-12">
            <h6>{PHP.L.adm_extrafields}</h6>
            <div class="list-group mb-3">
                <!-- BEGIN: ROW -->
                <div class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-12 d-flex align-items-center">
                            <span class="me-2">{ADMIN_EXTRAFIELDS_ROW_ICON}</span>
                            <a href="{ADMIN_EXTRAFIELDS_ROW_TABLEURL}"> {ADMIN_EXTRAFIELDS_ROW_TABLENAME}</a>
                        </div>
                    </div>
                </div>
                <!-- END: ROW -->
            </div>
            <div class="text-end">
                <a href="{ADMIN_EXTRAFIELDS_ALLTABLES}" class="btn btn-primary">{PHP.L.adm_extrafields_all}</a>
            </div>
        </div>
    </div>
</div>
<!-- END: TABLELIST -->

<!-- BEGIN: TABLE -->
<div class="py-4">
    <div class="min-height-50vh d-flex flex-column px-2 px-md-3 py-4">
        <div class="row">
            <div class="col-12">
                <form action="{ADMIN_EXTRAFIELDS_URL_FORM_EDIT}" method="post">
                    <div class="list-group mb-3">
                        <div class="list-group-item list-group-item-dark">
                            <div class="row align-items-center fw-bold">
                                <div class="col-12 col-md-1"></div>
                                <div class="col-12 col-md-4">{PHP.L.extf_Name}</div>
                                <div class="col-12 col-md-2">{PHP.L.extf_Type}</div>
                                <div class="col-12 col-md-4">{PHP.L.adm_extrafield_params}</div>
                                <div class="col-12 col-md-1">{PHP.L.Action}</div>
                            </div>
                        </div>
                        <!-- BEGIN: EXTRAFIELDS_ROW -->
                        <div class="list-group-item" id="ex{ADMIN_EXTRAFIELDS_ROW_ID}">
                            <div class="row align-items-center">
                                <div class="col-12 col-md-1 text-center {ADMIN_EXTRAFIELDS_ROW_ODDEVEN}">
                                    {ADMIN_EXTRAFIELDS_ROW_ENABLED}
                                </div>
                                <div class="col-12 col-md-4 {ADMIN_EXTRAFIELDS_ROW_ODDEVEN}">
                                    {ADMIN_EXTRAFIELDS_ROW_NAME}
                                    <label class="small d-block mt-2">{PHP.L.extf_Description}</label>
                                    {ADMIN_EXTRAFIELDS_ROW_DESCRIPTION}
                                    <label class="small d-block mt-2">{PHP.L.extf_Base_HTML}</label>
                                    {ADMIN_EXTRAFIELDS_ROW_HTML}
                                </div>
                                <div class="col-12 col-md-2 {ADMIN_EXTRAFIELDS_ROW_ODDEVEN}">
                                    {ADMIN_EXTRAFIELDS_ROW_SELECT}
                                    <p class="small">{PHP.L.adm_extrafield_parse}</p>
                                    {ADMIN_EXTRAFIELDS_ROW_PARSE}
                                    <p class="small">{ADMIN_EXTRAFIELDS_ROW_REQUIRED}</p>
                                </div>
                                <div class="col-12 col-md-4 {ADMIN_EXTRAFIELDS_ROW_ODDEVEN}">
                                    {ADMIN_EXTRAFIELDS_ROW_PARAMS}
                                    <label class="small d-block mt-2">{PHP.L.adm_extrafield_selectable_values}</label>
                                    {ADMIN_EXTRAFIELDS_ROW_VARIANTS}
                                    <label class="small d-block mt-2">{PHP.L.adm_extrafield_default}</label>
                                    {ADMIN_EXTRAFIELDS_ROW_DEFAULT}
                                </div>
                                <div class="col-12 col-md-1 text-center {ADMIN_EXTRAFIELDS_ROW_ODDEVEN}">
                                    <a href="{ADMIN_EXTRAFIELDS_ROW_DELETE_CONFIRM_URL}" class="confirmLink btn btn-outline-danger btn-sm">{PHP.L.Delete}</a>
                                </div>
                            </div>
                        </div>
                        <!-- END: EXTRAFIELDS_ROW -->
                        <!-- IF {ADMIN_EXTRAFIELDS_ON_PAGE_ITEMS} > 0 -->
                        <div class="list-group-item">
                            <div class="row align-items-center">
                                <div class="col-12 text-end">
                                    <input type="submit" value="{PHP.L.Update}" onclick="location.href='{ADMIN_EXTRAFIELDS_ROW_FORM_URL}'" class="btn btn-outline-warning btn-sm" />
                                </div>
                            </div>
                        </div>
                        <!-- ENDIF -->
                        <!-- IF !{ADMIN_EXTRAFIELDS_TOTALITEMS} -->
                        <div class="list-group-item">
                            <div class="row align-items-center">
                                <div class="col-12 text-center">{PHP.L.None}</div>
                            </div>
                        </div>
                        <!-- ENDIF -->
                    </div>
                </form>
                <!-- IF {ADMIN_EXTRAFIELDS_TOTALITEMS} -->
                <nav aria-label="Pagination" class="mb-3">
                    <div class="text-center mb-2">{PHP.L.Total}: {ADMIN_EXTRAFIELDS_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_EXTRAFIELDS_ON_PAGE_ITEMS}</div>
                    <ul class="pagination justify-content-center">
                        {ADMIN_EXTRAFIELDS_PAGINATION_PREV}
                        {ADMIN_EXTRAFIELDS_PAGNAV}
                        {ADMIN_EXTRAFIELDS_PAGINATION_NEXT}
                    </ul>
                </nav>
                <!-- ENDIF -->
            </div>
        </div>
    </div>
</div>

<div class="py-4">
    <div class="min-height-50vh d-flex flex-column px-2 px-md-3 py-4">
        <div class="row">
            <div class="col-12">
                <h2>{PHP.L.adm_extrafield_new}:</h2>
                <form action="{ADMIN_EXTRAFIELDS_URL_FORM_ADD}" method="post">
                    <div class="list-group mb-3">
                        <div class="list-group-item list-group-item-dark">
                            <div class="row align-items-center fw-bold">
                                <div class="col-12 col-md-5">{PHP.L.extf_Name}</div>
                                <div class="col-12 col-md-2">{PHP.L.extf_Type}</div>
                                <div class="col-12 col-md-5">{PHP.L.adm_extrafield_params}</div>
                            </div>
                        </div>
                        <div class="list-group-item" id="exnew">
                            <div class="row align-items-center">
                                <div class="col-12 col-md-5">
                                    {ADMIN_EXTRAFIELDS_NAME}
                                    <label class="small d-block mt-2">{PHP.L.extf_Description}</label>
                                    {ADMIN_EXTRAFIELDS_DESCRIPTION}
                                    <label class="small d-block mt-2">{PHP.L.extf_Base_HTML}</label>
                                    {ADMIN_EXTRAFIELDS_HTML}
                                </div>
                                <div class="col-12 col-md-2">
                                    {ADMIN_EXTRAFIELDS_SELECT}
                                    <p class="small">{PHP.L.adm_extrafield_parse}</p>
                                    {ADMIN_EXTRAFIELDS_PARSE}
                                    <p class="small">{ADMIN_EXTRAFIELD_REQUIRED}</p>
                                </div>
                                <div class="col-12 col-md-5">
                                    {ADMIN_EXTRAFIELDS_PARAMS}
                                    <label class="small d-block mt-2">{PHP.L.adm_extrafield_selectable_values}</label>
                                    {ADMIN_EXTRAFIELDS_VARIANTS}
                                    <label class="small d-block mt-2">{PHP.L.adm_extrafield_default}</label>
                                    {ADMIN_EXTRAFIELDS_DEFAULT}
                                </div>
                            </div>
                        </div>
                        <div class="list-group-item">
                            <div class="row align-items-center">
                                <div class="col-12 text-end">
                                    <div class="form-check d-inline-block me-2">
                                        <input type="checkbox" name="field_noalter" class="form-check-input" />
                                        <label class="form-check-label">{PHP.L.adm_extrafield_noalter}</label>
                                    </div>
                                    <input type="submit" class="btn btn-outline-success btn-sm" value="{PHP.L.Add}" />
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- END: TABLE -->

<script type="text/javascript">
    //<![CDATA[
    var exFLDHELPERS = "{ADMIN_EXTRAFIELDS_TAGS}";
    var exnovars = "{PHP.L.adm_extrafields_help_notused}";
    var exvariants = "{PHP.L.adm_extrafields_help_variants}";
    var exrange = "{PHP.L.adm_extrafields_help_range}";
    var exdata = "{PHP.L.adm_extrafields_help_data}";
    var exregex = "{PHP.L.adm_extrafields_help_regex}";
    var exfile = "{PHP.L.adm_extrafields_help_file}";
    var exseparator = "{PHP.L.adm_extrafields_help_separator}";

    $(document).ready(function(){
        $('body').on("change", '.list-group-item select[name$="[type]"], .list-group-item select[name="field_type"]', function(){
            var exParent = $(this).closest('.list-group-item');
            var exvalid = $(this).val();
            var isNewField = exParent.attr('id') === 'exnew';

            // Поля для редактирования (EXTRAFIELDS_ROW) или добавления
            var variantsField = isNewField 
                ? exParent.find('input[name="field_variants"], textarea[name="field_variants"]')
                : exParent.find('input[name$="[variants]"], textarea[name$="[variants]"]');
            var paramsField = isNewField 
                ? exParent.find('input[name="field_params"], textarea[name="field_params"]')
                : exParent.find('input[name$="[params]"], textarea[name$="[params]"]');
            var nameField = isNewField 
                ? exParent.find('input[name="field_name"], textarea[name="field_name"]')
                : exParent.find('input[name$="[name]"], textarea[name$="[name]"]');
            var descField = isNewField 
                ? exParent.find('input[name="field_description"], textarea[name="field_description"]')
                : exParent.find('input[name$="[description]"], textarea[name$="[description]"]');

            // Обработка variants
            if(exvalid === 'select' || exvalid === 'radio' || exvalid === 'checklistbox' || exvalid === 'file') {
                if (exvalid === 'file') {
                    variantsField.attr('title', 'jpg, png, pdf, zip,..');
                } else {
                    variantsField.attr('title', exvariants);
                }
                variantsField.removeAttr("disabled");
            } else {
                variantsField.attr('title', exnovars);
                variantsField.attr('disabled', 'disabled');
            }

            // Обработка params
            switch(exvalid) {
                case 'input':
                    paramsField.attr('title', exregex);
                    paramsField.removeAttr("disabled");
                    break;
                case 'inputint':
                    paramsField.attr('title', exrange);
                    paramsField.removeAttr("disabled");
                    break;
                case 'currency':
                    paramsField.attr('title', exrange);
                    paramsField.removeAttr("disabled");
                    break;
                case 'double':
                    paramsField.attr('title', exrange);
                    paramsField.removeAttr("disabled");
                    break;
                case 'textarea':
                    paramsField.attr('title', exnovars);
                    paramsField.attr('disabled', 'disabled');
                    break;
                case 'select':
                    paramsField.attr('title', exnovars);
                    paramsField.attr('disabled', 'disabled');
                    break;
                case 'checkbox':
                    paramsField.attr('title', exnovars);
                    paramsField.attr('disabled', 'disabled');
                    break;
                case 'radio':
                    paramsField.attr('title', exnovars);
                    paramsField.attr('disabled', 'disabled');
                    break;
                case 'datetime':
                    paramsField.attr('title', exdata);
                    paramsField.removeAttr("disabled");
                    break;
                case 'file':
                    paramsField.attr('title', exfile);
                    paramsField.removeAttr("disabled");
                    break;
                case 'country':
                    paramsField.attr('title', exnovars);
                    paramsField.attr('disabled', 'disabled');
                    break;
                case 'range':
                    paramsField.attr('title', exrange);
                    paramsField.removeAttr("disabled");
                    break;
                case 'checklistbox':
                    paramsField.attr('title', exseparator);
                    paramsField.removeAttr("disabled");
                    break;
            }

            // Обработка name и description
            if(nameField.val() !== '') {
                var exhelper = nameField.val().toUpperCase();
                exhelper = exFLDHELPERS.replace(/XXXXX/g, exhelper);
                nameField.attr('title', exhelper);
                descField.attr('title', exhelper);
            } else {
                nameField.removeAttr("title");
                descField.removeAttr("title");
            }
        });
        $('.list-group-item select[name$="[type]"], .list-group-item select[name="field_type"]').trigger('change');
    });
    //]]>
</script>
<div class="alert alert-info" role="alert">
  admin.extrafields.tpl
</div>

<!-- END: MAIN -->
<!-- BEGIN: MAIN -->
<div class="mb-3">
    <div class="row g-2">
        <div class="col-12 col-lg-3">
            <a href="{PHP|cot_url('admin', 'm=config&n=edit&o=plug&p=urleditor')}" class="btn btn-outline-secondary w-100">
                <i class="fa-solid fa-gear me-1"></i>{PHP.L.Configuration}
            </a>
        </div>
    </div>
</div>

{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}

<!-- BEGIN: HTA -->
<div class="mb-3">
    <h3>{PHP.L.adm_urls_your} {ADMIN_URLS_CONF_NAME}</h3>
    <pre class="code">{ADMIN_URLS_HTA}</pre>
</div>
<!-- END: HTA -->

<style type="text/css">tr.tDnD_whileDrag td{background-color:yellow;}</style>

<div class="mb-3">
    <form name="add_url" id="add_url" action="{ADMIN_URLS_FORM_URL}" method="post" class="ajax">
        <div class="list-group list-group-flush" id="rules">
            <div class="list-group-item list-group-item-dark" id="rules_top">
                <div class="row align-items-center fw-bold">
                    <div class="col-12 col-md-3">{PHP.L.adm_urls_area}</div>
                    <div class="col-12 col-md-4">{PHP.L.adm_urls_parameters}</div>
                    <div class="col-12 col-md-4">{PHP.L.adm_urls_format}</div>
                    <div class="col-12 col-md-1">{PHP.L.Delete}</div>
                </div>
            </div>
            <!-- BEGIN: ROW -->
            <div id="rule_{ADMIN_URLS_ROW_I}" class="list-group-item list-group-item-action">
                <div class="row align-items-center">
                    <div class="col-12 col-md-3 text-center">{ADMIN_URLS_ROW_AREAS}</div>
                    <div class="col-12 col-md-4 text-center">{ADMIN_URLS_ROW_PARTS1}</div>
                    <div class="col-12 col-md-4 text-center">{ADMIN_URLS_ROW_PARTS2}</div>
                    <div class="col-12 col-md-1 text-center">
                        <a href="#" onclick="$(this).closest('.list-group-item').remove();return false;" class="btn btn-outline-danger btn-sm">
                            <i class="fa-solid fa-trash me-1"></i>{PHP.L.Delete}
                        </a>
                    </div>
                </div>
            </div>
            <!-- END: ROW -->
            <div id="rule_new" class="list-group-item list-group-item-action" style="display:none">
                <div class="row align-items-center">
                    <div class="col-12 col-md-3 text-center">{ADMIN_URLS_ROW_AREAS}</div>
                    <div class="col-12 col-md-4 text-center">{ADMIN_URLS_ROW_PARTS1}</div>
                    <div class="col-12 col-md-4 text-center">{ADMIN_URLS_ROW_PARTS2}</div>
                    <div class="col-12 col-md-1 text-center">
                        <a href="#" onclick="$(this).closest('.list-group-item').remove();return false;" class="btn btn-outline-danger btn-sm">
                            <i class="fa-solid fa-trash me-1"></i>{PHP.L.Delete}
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div id="add_rule" class="mt-3" style="display:none">
            <script type="text/javascript">
                ruleCount = {ADMIN_URLS_II};
            </script>
            <a href="#" onclick="return addRule()" class="btn btn-outline-primary">
                <i class="fa-solid fa-plus me-1"></i>{PHP.L.adm_urls_new}
            </a>
        </div>
        <!-- IF {PHP.htaccess} -->
        <div class="card mt-3">
            <div class="card-body">
                <div class="row g-2">
                    <div class="col-12 col-md-3">
                        <div class="form-check">
                            <input type="checkbox" name="htaccess" class="form-check-input" />
                            <label class="form-check-label"><strong>{PHP.L.adm_urls_htaccess}</strong></label>
                        </div>
                    </div>
                    <div class="col-12 col-md-3">{PHP.L.adm_urls_custom_htaccess}:</div>
                    <div class="col-12 col-md-6">
                        <textarea name="custom_htaccess" rows="8" class="form-control">{ADMIN_URLS_CUSTOM_HTACCESS}</textarea>
                    </div>
                </div>
            </div>
        </div>
        <!-- ENDIF -->
        <div class="mt-3">
            <button type="submit" class="btn btn-primary">{PHP.L.adm_urls_save}</button>
        </div>
    </form>
</div>

<!-- IF {PHP.cfg.jquery} -->
<script type="text/javascript" src="js/jquery.tablednd.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $("#rules").tableDnD({
            onDragClass: "tDnD_whileDrag"
        });
        $("#rule_new").hide();
        $("#add_rule").show();
    });
    var ruleCount = 0;
    function addRule()
    {
        var object = $('#rule_new').clone().attr("id", 'rule_'+ruleCount).show();
        $('#rules_top').after(object);
        $("#rules").tableDnDUpdate();
        ruleCount++;
        return false;
    }
</script>
<!-- ENDIF -->

<div class="alert alert-info mt-4" role="alert">
    urleditor.admin.tpl
</div>
<!-- END: MAIN -->
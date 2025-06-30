<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}

<div class="mb-3">
    <div class="list-group list-group-flush">
        <div class="list-group-item list-group-item-dark">
            <div class="row align-items-center fw-bold">
                <div class="col-12 col-md-3">{PHP.L.Code}</div>
                <div class="col-12 col-md-2">{PHP.L.userimages_width}</div>
                <div class="col-12 col-md-2">{PHP.L.userimages_height}</div>
                <div class="col-12 col-md-3">{PHP.L.userimages_cropratio}</div>
                <div class="col-12 col-md-2">{PHP.L.Action}</div>
            </div>
        </div>
        <!-- BEGIN: USERIMG_LIST -->
        <form action="{EDIT_URL}" method="post">
            <div class="list-group-item list-group-item-action">
                <div class="row g-2 align-items-center">
                    <div class="col-12 col-md-3">{CODE}</div>
                    <div class="col-12 col-md-2">
                        <div class="input-group">
                            <input type="text" name="userimg_width" size="10" value="{WIDTH}" class="form-control" />
                            <span class="input-group-text">px</span>
                        </div>
                    </div>
                    <div class="col-12 col-md-2">
                        <div class="input-group">
                            <input type="text" name="userimg_height" size="10" value="{HEIGHT}" class="form-control" />
                            <span class="input-group-text">px</span>
                        </div>
                    </div>
                    <div class="col-12 col-md-3">
                        <select name="userimg_crop" class="form-select">
                            <option value="">{PHP.L.userimages_cropnone}</option>
                            <option<!-- IF {CROP} == 'fit' --> selected="selected"<!-- ENDIF --> value="fit">{PHP.L.userimages_cropfit}</option>
                            <option<!-- IF {CROP} == '1:1' --> selected="selected"<!-- ENDIF --> value="1:1">1:1</option>
                            <option<!-- IF {CROP} == '1:2' --> selected="selected"<!-- ENDIF --> value="1:2">1:2</option>
                            <option<!-- IF {CROP} == '2:3' --> selected="selected"<!-- ENDIF --> value="2:3">2:3</option>
                            <option<!-- IF {CROP} == '3:4' --> selected="selected"<!-- ENDIF --> value="3:4">3:4</option>
                            <option<!-- IF {CROP} == '4:5' --> selected="selected"<!-- ENDIF --> value="4:5">4:5</option>
                            <option<!-- IF {CROP} == '5:6' --> selected="selected"<!-- ENDIF --> value="5:6">5:6</option>
                            <option<!-- IF {CROP} == '2:1' --> selected="selected"<!-- ENDIF --> value="2:1">2:1</option>
                            <option<!-- IF {CROP} == '3:2' --> selected="selected"<!-- ENDIF --> value="3:2">3:2</option>
                            <option<!-- IF {CROP} == '4:3' --> selected="selected"<!-- ENDIF --> value="4:3">4:3</option>
                            <option<!-- IF {CROP} == '5:4' --> selected="selected"<!-- ENDIF --> value="5:4">5:4</option>
                            <option<!-- IF {CROP} == '6:5' --> selected="selected"<!-- ENDIF --> value="6:5">6:5</option>
                            <option<!-- IF {CROP} == '16:9' --> selected="selected"<!-- ENDIF --> value="16:9">16:9</option>
                            <option<!-- IF {CROP} == '16:10' --> selected="selected"<!-- ENDIF --> value="16:10">16:10</option>
                        </select>
                    </div>
                    <div class="col-12 col-md-2">
                        <div class="d-flex gap-1">
                            <button type="submit" class="btn btn-outline-primary btn-sm">
                                <i class="fa-solid fa-pen me-1"></i>{PHP.L.Update}
                            </button>
                            {REMOVE}
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <!-- END: USERIMG_LIST -->
        <form action="{PHP|cot_url('admin','m=other&p=userimages&a=add')}" method="post">
            <div class="list-group-item list-group-item-action">
                <div class="row g-2 align-items-center">
                    <div class="col-12 col-md-3">
                        <div class="input-group">
                            <span class="input-group-text"><strong>{PHP.L.userimages_addnew}</strong></span>
                            <input type="text" name="userimg_code" size="30" class="form-control" />
                        </div>
                    </div>
                    <div class="col-12 col-md-2">
                        <div class="input-group">
                            <input type="text" name="userimg_width" size="10" class="form-control" />
                            <span class="input-group-text">px</span>
                        </div>
                    </div>
                    <div class="col-12 col-md-2">
                        <div class="input-group">
                            <input type="text" name="userimg_height" size="10" class="form-control" />
                            <span class="input-group-text">px</span>
                        </div>
                    </div>
                    <div class="col-12 col-md-3">
                        <select name="userimg_crop" class="form-select">
                            <option value="">{PHP.L.userimages_cropnone}</option>
                            <option value="fit">{PHP.L.userimages_cropfit}</option>
                            <option value="1:1">1:1</option>
                            <option value="1:2">1:2</option>
                            <option value="2:3">2:3</option>
                            <option value="3:4">3:4</option>
                            <option value="4:5">4:5</option>
                            <option value="5:6">5:6</option>
                            <option value="2:1">2:1</option>
                            <option value="3:2">3:2</option>
                            <option value="4:3">4:3</option>
                            <option value="5:4">5:4</option>
                            <option value="6:5">6:5</option>
                            <option value="16:9">16:9</option>
                            <option value="16:10">16:10</option>
                        </select>
                    </div>
                    <div class="col-12 col-md-2">
                        <button type="submit" class="btn btn-outline-primary btn-sm">
                            <i class="fa-solid fa-plus me-1"></i>{PHP.L.Add}
                        </button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>

<div class="alert alert-info mt-4" role="alert">
    userimages.admin.tpl
</div>
<!-- END: MAIN -->
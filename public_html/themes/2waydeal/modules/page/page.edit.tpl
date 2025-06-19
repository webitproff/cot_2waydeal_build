<!-- BEGIN: MAIN -->
<div class="border-bottom border-secondary py-3 px-3">
  <nav aria-label="breadcrumb">
    <div class="ps-container-breadcrumb">
      <ol class="breadcrumb d-flex mb-0"> {PAGEEDIT_BREADCRUMBS} </ol>
    </div>
  </nav>
</div>

  <div class="min-vh-50 px-2 px-md-3 py-5">
    <!-- IF !{PHP.usr_can_publish} -->
    <div class="mb-3 mt-3">
      <div class="alert alert-info" role="alert"> {PHP.L.page_formhint} </div>
    </div>
    <!-- ENDIF -->
    <div class="row justify-content-center">
      <div class="col-12 col-md-10 mx-auto">
        <div class="card mt-4 mb-4">
          <div class="card-header">
            <h2 class="h5 mb-0">{PAGEEDIT_PAGETITLE} #{PAGEEDIT_FORM_ID}</h2>
          </div>
          <div class="card-body"> 
		  {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"} 
		  <form action="{PAGEEDIT_FORM_SEND}" enctype="multipart/form-data" method="post" name="pageform" class="needs-validation" novalidate>
              <div class="row g-3">
                <div class="col-12">
                  <label for="pageCat" class="form-label fw-semibold">{PHP.L.Category}</label>
                  <div class="input-group has-validation"> {PAGEEDIT_FORM_CAT} </div>
                </div>
                <div class="col-12">
                  <label for="pageTitle" class="form-label fw-semibold">{PHP.L.Title}</label>
                  <div class="input-group has-validation"> {PAGEEDIT_FORM_TITLE} </div>
                </div>
                <div class="col-12">
                  <label for="pageDesc" class="form-label fw-semibold">{PHP.L.Description}</label>
                  <div class="input-group has-validation"> {PAGEEDIT_FORM_DESCRIPTION} </div>
                </div>
                <div class="col-12">
                  <label for="pageAuthor" class="form-label fw-semibold">{PHP.L.Author}</label>
                  <div class="input-group has-validation"> {PAGEEDIT_FORM_AUTHOR} </div>
                </div>
                <div class="col-12">
                  <label for="pageDate" class="form-label fw-semibold">{PHP.L.Date}</label>
                  <div> {PAGEEDIT_FORM_DATE} </div>
                  <small class="form-text text-muted mt-1">{PAGEEDIT_FORM_DATENOW} {PHP.L.page_date_now}</small>
                </div>
                <div class="col-12">
                  <label for="pageBegin" class="form-label fw-semibold">{PHP.L.Begin}</label>
                  <div> {PAGEEDIT_FORM_BEGIN} </div>
                </div>
                <div class="col-12">
                  <label for="pageExpire" class="form-label fw-semibold">{PHP.L.Expire}</label>
                  <div> {PAGEEDIT_FORM_EXPIRE} </div>
                </div>
                <div class="col-12">
                  <label for="pageStatus" class="form-label fw-semibold">{PHP.L.Status}</label>
                  <div class="input-group has-validation"> {PAGEEDIT_FORM_LOCAL_STATUS} </div>
                </div>
                <div class="col-12">
                  <label for="pageAlias" class="form-label fw-semibold">{PHP.L.Alias}</label>
                  <div class="input-group has-validation"> {PAGEEDIT_FORM_ALIAS} </div>
                </div>
                <div class="col-12">
                  <label for="pageKeywords" class="form-label fw-semibold">{PHP.L.page_metakeywords}</label>
                  <div class="input-group has-validation"> {PAGEEDIT_FORM_KEYWORDS} </div>
                </div>
                <div class="col-12">
                  <label for="pageMetaTitle" class="form-label fw-semibold">{PHP.L.page_metatitle}</label>
                  <div class="input-group has-validation"> {PAGEEDIT_FORM_METATITLE} </div>
                </div>
                <div class="col-12">
                  <label for="pageMetaDesc" class="form-label fw-semibold">{PHP.L.page_metadesc}</label>
                  <div class="input-group has-validation"> {PAGEEDIT_FORM_METADESC} </div>
                </div>
                <!-- BEGIN: TAGS -->
                <div class="col-12">
                  <label for="pageTags" class="form-label fw-semibold">{PAGEEDIT_TOP_TAGS}</label>
                  <div class="input-group has-validation"> {PAGEEDIT_FORM_TAGS} </div>
                  <small class="form-text text-muted">{PAGEEDIT_TOP_TAGS_HINT}</small>
                </div>
                <!-- END: TAGS -->
                <!-- BEGIN: ADMIN -->
                <div class="col-12">
                  <label for="pageOwner" class="form-label fw-semibold">{PHP.L.Owner}</label>
                  <div class="input-group has-validation"> {PAGEEDIT_FORM_OWNER_ID} </div>
                </div>
                <div class="col-12">
                  <label for="pageHits" class="form-label fw-semibold">{PHP.L.Hits}</label>
                  <div class="input-group has-validation"> {PAGEEDIT_FORM_HITS} </div>
                </div>
                <!-- END: ADMIN -->
                <div class="col-12">
                  <label for="pageParser" class="form-label fw-semibold">{PHP.L.Parser}</label>
                  <div class="input-group has-validation"> {PAGEEDIT_FORM_PARSER} </div>
                </div>
                <div class="col-12">
                  <label for="pageText" class="form-label fw-semibold">{PHP.L.Text}</label> {PAGEEDIT_FORM_TEXT}
                </div>
                <!-- IF {PAGEEDIT_FORM_LINK_MAIN_IMAGE} -->
                <div class="col-12">
                  <label for="pageLinkMainImage" class="form-label fw-semibold">{PAGEEDIT_FORM_LINK_MAIN_IMAGE_TITLE}</label>
                  <div class="input-group has-validation"> {PAGEEDIT_FORM_LINK_MAIN_IMAGE} </div>
                  <small class="form-text text-muted">{PHP.L.2wd_page_LinkMainImage_hint}</small>
                </div>
                <!-- ENDIF -->
                <!-- IF {PHP|cot_module_active('pfs')} -->
                <div class="col-12">
                  <label for="pageText" class="form-label fw-semibold">{PHP.L.2wd_PFS}</label>
                  <div class="mt-2">
                    <!-- IF {PAGEEDIT_FORM_PFS} -->{PAGEEDIT_FORM_PFS}
                    <!-- ENDIF -->
                    <!-- IF {PAGEEDIT_FORM_SFS} -->
                    <span class="me-2">{PHP.cfg.separator}</span>{PAGEEDIT_FORM_SFS}
                    <!-- ENDIF -->
                  </div>
                </div>
                <div class="col-12">
                  <label for="pageFile" class="form-label fw-semibold">{PHP.L.page_file}</label>
                  <div class="input-group has-validation"> {PAGEEDIT_FORM_FILE} </div>
                  <small class="form-text text-muted">{PHP.themelang.pageadd.Filehint}</small>
                </div>
                <div class="col-12">
                  <label for="pageUrl" class="form-label fw-semibold">{PHP.L.URL}</label>
                  <div class="input-group has-validation"> {PAGEEDIT_FORM_URL} </div>
                  <div class="mt-2"> {PAGEEDIT_FORM_URL_PFS}   {PAGEEDIT_FORM_URL_SFS} </div>
                  <small class="form-text text-muted">{PHP.L.page_urlhint}</small>
                </div>
                <div class="col-12">
                  <label for="pageSize" class="form-label fw-semibold">{PHP.L.page_filesize}</label>
                  <div class="input-group has-validation"> {PAGEEDIT_FORM_SIZE} </div>
                  <small class="form-text text-muted">{PHP.L.page_filesizehint}</small>
                </div>
                <div class="col-12">
                  <label for="pageDownloads" class="form-label fw-semibold">{PHP.L.page_filehitcount}</label>
                  <div class="input-group has-validation"> {PAGEEDIT_FORM_FILE_DOWNLOADS} </div>
                  <small class="form-text text-muted">{PHP.L.page_filehitcounthint}</small>
                </div>
                <!-- ENDIF -->
				<!-- IF {PHP|cot_plugin_active('attacher')} -->
				<!-- IF {PHP|cot_auth('plug', 'attacher', 'W')} -->
				<div class="col-12">
				  <label class="form-label fw-semibold">{PHP.L.att_add_pict_files}</label>
				  <div>
					{PAGEEDIT_FORM_ID|att_filebox('page', $this)}
				  </div>
				</div>
				<!-- ENDIF -->
				<!-- ENDIF -->
                <div class="col-12">
                  <label for="pageDelete" class="form-label fw-semibold">{PHP.L.page_deletepage}</label>
                  <div class="input-group has-validation"> {PAGEEDIT_FORM_DELETE} </div>
                </div>
                <div class="col-12">
                  <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                    <!-- IF {PHP.usr_can_publish} -->
                    <button type="submit" name="rpagestate" value="0" class="btn btn-success">{PHP.L.Publish}</button>
                    <!-- ENDIF -->
                    <button type="submit" name="rpagestate" value="2" class="btn btn-secondary">{PHP.L.Saveasdraft}</button>
                    <button type="submit" name="rpagestate" value="1" class="btn btn-warning">{PHP.L.Submitforapproval}</button>
                  </div>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- This is the name of the template for informing the administrator -->
  <!-- IF {PHP.usr.maingrp} == 5 AND {PHP.mskin} --> {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/inc/mskin.tpl"}
  <!-- ENDIF -->
  <!-- END: MAIN -->
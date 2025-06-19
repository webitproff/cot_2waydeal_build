
<!-- BEGIN: MAIN -->
    <!-- BEGIN: STANDALONE_HEADER -->
        <!DOCTYPE html>
        <html lang="{PHP.usr.lang}">
            <head>
                <title>{PHP.L.pfs_title} - {PHP.cfg.maintitle}</title>
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1" />
                <base href="{PHP.cfg.mainurl}/" />
                {PFS_HEAD}
                <link href="{PHP.cfg.themes_dir}/{PHP.theme}/css/{PHP.scheme}.css" type="text/css" rel="stylesheet" />
            </head>
            <body>
    <!-- END: STANDALONE_HEADER -->
				<div class="border-bottom border-secondary py-3 px-3">
				  <nav aria-label="breadcrumb">
					<div class="ps-container-breadcrumb">
					  <ol class="breadcrumb d-flex mb-0">
						{PFS_BREADCRUMBS}
					  </ol>
					</div>
				  </nav>
				</div>
        <div class="min-vh-50 px-2 px-md-3 py-4">
            <p class="small">{PFS_SUBTITLE}</p>
            {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
            <form id="editfolder" action="{PFS_ACTION}" method="post">
                <div class="list-group list-group-flush">
                    <div class="list-group-item d-flex justify-content-between">
                        <div class="w-33">{PHP.L.Folder}:</div>
                        <div class="w-66">{PFF_TITLE}</div>
                    </div>
                    <div class="list-group-item d-flex justify-content-between">
                        <div class="w-33">{PHP.L.Description}:</div>
                        <div class="w-66">{PFF_DESC}</div>
                    </div>
                    <div class="list-group-item d-flex justify-content-between">
                        <div class="w-33">{PHP.L.Date}:</div>
                        <div class="w-66">{PFF_DATE}</div>
                    </div>
                    <div class="list-group-item d-flex justify-content-between">
                        <div class="w-33">{PHP.L.Updated}:</div>
                        <div class="w-66">{PFF_UPDATED}</div>
                    </div>
                    <div class="list-group-item d-flex justify-content-between">
                        <div class="w-33">{PHP.L.pfs_ispublic}</div>
                        <div class="w-66">{PFF_ISPUBLIC}</div>
                    </div>
                    <div class="list-group-item d-flex justify-content-between">
                        <div class="w-33">{PHP.L.pfs_isgallery}</div>
                        <div class="w-66">{PFF_ISGALLERY}</div>
                    </div>
                    <div class="list-group-item valid text-center">
                        <button type="submit" class="btn btn-primary">{PHP.L.Update}</button>
                    </div>
                </div>
            </form>
        </div>
    <!-- BEGIN: STANDALONE_FOOTER -->
            </body>
        </html>
    <!-- END: STANDALONE_FOOTER -->
    <!-- This is the name of the template for informing the administrator -->
    <!-- IF {PHP.usr.maingrp} == 5 -->
        <div class="container py-5">
            <div class="alert alert-warning" role="alert">
                <strong>{PHP.usr.name}</strong>, This is the HTML template
                <code>pfs.editfolder.tpl</code>
            </div>
        </div>
    <!-- ENDIF -->
<!-- END: MAIN -->
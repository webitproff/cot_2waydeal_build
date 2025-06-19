<!-- BEGIN: FOLIO -->
<h3 class="text-success mb-4">{PHP.L.folio}</h3>
<div id="listfolio">
	<div class="row">
		<!-- BEGIN: PRD_ROWS -->          
		<div class="col-12 col-md-6 col-xl-4"> 
			<div class="card mb-3 border-0 shadow-none bg-transparent"> 
				<a href="{PRD_ROW_URL}" class="text-decoration-none"> 
					<div class="position-relative overflow-hidden rounded-5 shadow-bottom" style="aspect-ratio: 2 / 1;">
					<!-- IF {PHP|cot_plugin_active('attacher')} -->
					<!-- IF {PRD_ROW_ID|att_count('folio', $this, '', 'images')} > 0 --> {PRD_ROW_ID|att_display('folio',$this,'','attacher.display.foliolist','images',1)}
					<!-- ELSE -->
					<img src="{PHP.R.page_default_image}" alt="{PRD_ROW_SHORTTITLE}" class="img-fluid card-image-dynamic object-fit-cover h-100 w-100">
					<!-- ENDIF -->
					<!-- ENDIF -->
					</div> 
				</a> 
				
				<div class="card-body px-0"> 
					<h3 class="card-title h5"> 
						<a href="{PRD_ROW_URL}" class="text-decoration-none" title="{PRD_ROW_SHORTTITLE}">{PRD_ROW_SHORTTITLE}</a>
					</h3>
					<div class="card-text"> 
						<ul class="list-unstyled d-flex flex-wrap gap-2 small text-muted"> 
							<li>{PRD_ROW_CATTITLE} 
							<!-- IF {PRD_ROW_COST} > 0 --> <span class="ms-2 text-success fw-bold">{PRD_ROW_COST} {PHP.cfg.payments.valuta}</span>
							<!-- ENDIF -->
							</li> 
							<li>
								<time>{PRD_ROW_DATE}</time>
							</li>
							<li>
							<!-- IF {PRD_ROW_OWNER_FULL_NAME} -->
							<span class="me-2 text-reset fw-bold">{PRD_ROW_OWNER_FULL_NAME}</span>
							<!-- ELSE -->
								<a href="{PRD_ROW_OWNER_DETAILS_URL}" class="badge text-bg-primary text-decoration-none">{PRD_ROW_OWNER_NICKNAME}</a> 
							<!-- ENDIF -->
							</li>
						</ul> 
					</div> 
							<!-- IF {PHP.usr.maingrp} == 5 -->
								<p class="my-0"><a class="text-danger fw-semibold" href="{PRD_ROW_ID|cot_url('folio', 'm=edit&id=$this')}">{PHP.L.Edit}</a></p>
							<!-- ENDIF -->
				</div> 
			</div> 	
		</div> 
		<!-- END: PRD_ROWS -->
	</div>
</div>
<!-- END: FOLIO -->
 
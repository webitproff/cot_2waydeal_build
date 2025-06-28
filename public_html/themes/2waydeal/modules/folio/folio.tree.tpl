<!-- BEGIN: MAIN -->
<ul<!-- IF {LEVEL} == 0 --> class="nav flex-column"<!-- ELSE --> class="nav flex-column ps-3"<!-- ENDIF -->>
	<!-- IF {LEVEL} == 0 -->
	<li class="nav-item">
		<a href="{HREF}" class="nav-link d-flex align-items-center" title="{PHP.L.All}">
			<i class="fa-regular fa-folder me-2"></i>
			<span>{PHP.L.All}</span>
			<span class="ms-auto">({ROW_COUNT})</span>
		</a>
	</li>
	<hr class="my-2">
	<!-- ENDIF -->
	<!-- BEGIN: CATS -->
	<li class="nav-item">
		<!-- IF {ROW_SUBCAT} -->
		<a class="nav-link d-flex align-items-center" data-bs-toggle="collapse" href="#collapse-{ROW_ID}" role="button" aria-expanded="false">
			<i class="fa-regular fa-folder me-2"></i>
			<span>{ROW_TITLE}</span>
			<span class="ms-auto">({ROW_COUNT})</span>
			<i class="fas fa-angle-down ms-2"></i>
		</a>
		<div class="collapse" id="collapse-{ROW_ID}">
			{ROW_SUBCAT}
		</div>
		<!-- ELSE -->
		<a href="{ROW_HREF}" class="nav-link d-flex align-items-center<!-- IF {ROW_SELECTED} --> active<!-- ENDIF -->" title="{ROW_TITLE}">
			<i class="fa-solid fa-file me-2"></i>
			<span>{ROW_TITLE}</span>
			<span class="ms-auto">({ROW_COUNT})</span>
		</a>
		<!-- ENDIF -->
	</li>
	<!-- END: CATS -->
</ul>
<!-- END: MAIN -->

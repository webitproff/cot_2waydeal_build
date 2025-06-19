<!-- BEGIN: MAIN -->
<ul<!-- IF {LEVEL} == 0 --> class="list-group list-group-flush"<!-- ENDIF -->>
	<!-- IF {LEVEL} == 0 -->
	<li class="list-group-item bg-transparent"><a href="{HREF}">{PHP.L.All}</a></li>		
	<!-- ENDIF -->
	<!-- BEGIN: CATS -->
	<li class="list-group-item bg-transparent"><a <!-- IF {ROW_SELECTED} --> class="active"<!-- ELSE --> class="text-decoration-none"<!-- ENDIF --> href="{ROW_HREF}">{ROW_TITLE} ({ROW_COUNT})</a>
		<!-- IF {ROW_SUBCAT} -->
		{ROW_SUBCAT}
		<!-- ENDIF -->
	</li>
	<!-- END: CATS -->
</ul>
<!-- END: MAIN -->
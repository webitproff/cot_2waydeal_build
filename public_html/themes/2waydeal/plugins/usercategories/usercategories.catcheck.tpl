<!-- BEGIN: MAIN -->
<!-- IF {CAT_LEVEL} == 1 -->
<script src="{PHP.cfg.plugins_dir}/usercategories/js/usercategories.js" type="text/javascript"></script>	
<!-- ENDIF -->
<ul<!-- IF {CAT_LEVEL} == 1 --> id="ucats_check" class="list-group list-group-flush"<!-- ENDIF -->>
	<!-- BEGIN: CAT_ROW -->
	<li class="list-group-item bg-transparent"> {CAT_ROW_CHECKBOX}
		<!-- IF {CAT_ROW_SUBCAT} -->
		{CAT_ROW_SUBCAT}
		<!-- ENDIF -->
	</li>
	<!-- END: CAT_ROW -->
</ul>
<!-- END: MAIN -->
<!-- BEGIN: MAIN -->
<table class="att-downloads">
	<!-- BEGIN: ATTACHER_ROW -->
	<tr>
		<td>
			<a href="{ATTACHER_ROW_URL}" title="{ATTACHER_ROW_TITLE}">
				<img src="{ATTACHER_ROW_EXT|att_icon($this,48)}" alt="{ATTACHER_ROW_EXT}">
			</a>
		</td>
		<td>
			<a href="{ATTACHER_ROW_URL}" title="{ATTACHER_ROW_TITLE}" download>{ATTACHER_ROW_FILENAME}</a>
			<p><small>{ATTACHER_ROW_SIZE}<!-- IF {PHP.usr.maingrp} == 5 --> ({PHP.L.att_downloads}: {ATTACHER_ROW_COUNT}) <!-- ENDIF --></small></p>
		</td>
	</tr>
	<!-- END: ATTACHER_ROW -->
</table>
<!-- IF {PHP.usr.maingrp} == 5 -->
/themes/2waydeal/plugins/attacher/attacher.downloads.tpl
<!-- ENDIF -->
<!-- END: MAIN -->

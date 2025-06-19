<!-- BEGIN: MAIN -->
<style>
#ucats_tree ul {
    padding-left: 0.5rem;
}

#ucats_tree .list-group-item {
    border: none;
}
</style>
<ul<!-- IF {CAT_LEVEL} == 1 --> id="ucats_tree" class="list-group list-group-flush"<!-- ENDIF -->>
	<!-- IF {CAT_LEVEL} == 1 -->
	<li class="list-group-item bg-transparent"><a href="{CAT_URL}">{PHP.L.All}</a></li>		
	<!-- ENDIF -->
	<!-- BEGIN: CAT_ROW -->
	<li class="list-group-item bg-transparent">
		<div class="d-flex align-items-center">
			<!-- Кнопка для подкатегорий -->
			<!-- IF {CAT_ROW_SUBCAT} -->
			<button class="btn btn-link text-decoration-none p-0 me-2" type="button" data-bs-toggle="collapse" data-bs-target="#subcat-{CAT_ROW_ID}" aria-expanded="false" aria-controls="subcat-{CAT_ROW_ID}">
				<i class="fas fa-chevron-right"></i>
			</button>
			<!-- ELSE -->
			<span class="p-0 me-2" style="width: 0.5rem;"></span> <!-- Заполнитель для выравнивания -->
			<!-- ENDIF -->
			<a <!-- IF {CAT_ROW_SELECTED} --> class="active" aria-current="page"<!-- ELSE --> class=" text-decoration-none"<!-- ENDIF --> href="{CAT_ROW_URL}">{CAT_ROW_TITLE} ({CAT_ROW_COUNT})</a>
		</div>
		<!-- Подкатегории -->
		<!-- IF {CAT_ROW_SUBCAT} -->
		<div class="collapse" id="subcat-{CAT_ROW_ID}">
			{CAT_ROW_SUBCAT}
		</div>
		<!-- ENDIF -->
	</li>
	<!-- END: CAT_ROW -->
</ul>
<script>
document.addEventListener('DOMContentLoaded', () => {
    document.querySelectorAll('#ucats_tree [data-bs-toggle="collapse"]').forEach(button => {
        button.addEventListener('click', () => {
            const icon = button.querySelector('i');
            const isExpanded = button.getAttribute('aria-expanded') === 'true';
            icon.classList.toggle('fa-chevron-right', isExpanded);
            icon.classList.toggle('fa-chevron-down', !isExpanded);
        });
    });
});
</script>
<!-- END: MAIN -->
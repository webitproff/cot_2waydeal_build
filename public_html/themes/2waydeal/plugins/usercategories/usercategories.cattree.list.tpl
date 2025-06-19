<!-- BEGIN: MAIN -->
<!-- Список категорий; если уровень 0, добавляем id и классы Bootstrap для вертикальной навигации -->
<ul<!-- IF {CAT_LEVEL} == 0 --> id="ucats_list" class="list-group list-group-flush"<!-- ENDIF -->>
    <!-- BEGIN: CAT_ROW -->
    <!-- Если категория выбрана, выводим её -->
    <!-- IF {CAT_ROW_SELECTED} -->
    <li class="list-group-item bg-transparent"> 
        <!-- Заголовок категории с классом nav-link; добавляем active, если категория выбрана -->
        <span class="nav-link<!-- IF {CAT_ROW_SELECTED} --> active<!-- ENDIF -->">{CAT_ROW_TITLE}</span>
        <!-- Если есть подкатегории, выводим их -->
        <!-- IF {CAT_ROW_SUBCAT} -->
        {CAT_ROW_SUBCAT}
        <!-- ENDIF -->
    </li>
    <!-- ENDIF -->
    <!-- END: CAT_ROW -->
</ul>
<!-- END: MAIN -->
/**
 * market module DB installation
 */
-- Market table
INSERT INTO `cot_auth` (`auth_groupid`, `auth_code`, `auth_option`, `auth_rights`, `auth_rights_lock`, `auth_setbyuserid`) VALUES
(5, 'market', 'cotonti', 255, 255, 1),
(6, 'market', 'cotonti', 3, 0, 1),
(2, 'market', 'cotonti', 1, 128, 1),
(3, 'market', 'cotonti', 0, 255, 1),
(4, 'market', 'cotonti', 3, 0, 1),
(1, 'market', 'cotonti', 1, 128, 1),
(5, 'market', 'mods', 255, 255, 1),
(6, 'market', 'mods', 3, 0, 1),
(2, 'market', 'mods', 1, 128, 1),
(3, 'market', 'mods', 0, 255, 1),
(4, 'market', 'mods', 3, 0, 1),
(1, 'market', 'mods', 1, 128, 1),
(5, 'market', 'plugs', 255, 255, 1),
(6, 'market', 'plugs', 3, 0, 1),
(2, 'market', 'plugs', 1, 128, 1),
(3, 'market', 'plugs', 0, 255, 1),
(4, 'market', 'plugs', 3, 0, 1),
(1, 'market', 'plugs', 1, 128, 1),
(5, 'market', 'themes', 255, 255, 1),
(6, 'market', 'themes', 3, 0, 1),
(2, 'market', 'themes', 1, 128, 1),
(3, 'market', 'themes', 0, 255, 1),
(4, 'market', 'themes', 3, 0, 1),
(1, 'market', 'themes', 1, 128, 1),
(5, 'market', 'scripts', 255, 255, 1),
(6, 'market', 'scripts', 3, 0, 1),
(2, 'market', 'scripts', 1, 128, 1),
(3, 'market', 'scripts', 0, 255, 1),
(4, 'market', 'scripts', 3, 0, 1),
(1, 'market', 'scripts', 1, 128, 1),
(5, 'market', 'builds', 255, 255, 1),
(6, 'market', 'builds', 3, 0, 1),
(2, 'market', 'builds', 1, 128, 1),
(3, 'market', 'builds', 0, 255, 1),
(4, 'market', 'builds', 3, 0, 1),
(1, 'market', 'builds', 1, 128, 1),
(5, 'market', 'template-cms', 255, 255, 1),
(6, 'market', 'template-cms', 3, 0, 1),
(2, 'market', 'template-cms', 1, 128, 1),
(3, 'market', 'template-cms', 0, 255, 1),
(4, 'market', 'template-cms', 3, 0, 1),
(1, 'market', 'template-cms', 1, 128, 1),
(5, 'market', 'wp-themes', 255, 255, 1),
(6, 'market', 'wp-themes', 3, 0, 1),
(2, 'market', 'wp-themes', 1, 128, 1),
(3, 'market', 'wp-themes', 0, 255, 1),
(4, 'market', 'wp-themes', 3, 0, 1),
(1, 'market', 'wp-themes', 1, 128, 1),
(5, 'market', 'osclass', 255, 255, 1),
(6, 'market', 'osclass', 3, 0, 1),
(2, 'market', 'osclass', 1, 128, 1),
(3, 'market', 'osclass', 0, 255, 1),
(4, 'market', 'osclass', 3, 0, 1),
(1, 'market', 'osclass', 1, 128, 1);


CREATE TABLE IF NOT EXISTS `cot_market` (
  `item_id` int UNSIGNED NOT NULL,
  `item_userid` int UNSIGNED NOT NULL DEFAULT '0',
  `item_date` int UNSIGNED NOT NULL DEFAULT '0',
  `item_update` int UNSIGNED NOT NULL DEFAULT '0',
  `item_parser` varchar(64) DEFAULT '',
  `item_cat` varchar(255) NOT NULL DEFAULT '',
  `item_title` varchar(255) NOT NULL,
  `item_alias` varchar(255) DEFAULT '',
  `item_desc` varchar(255) DEFAULT '',
  `item_keywords` varchar(255) DEFAULT '',
  `item_metatitle` varchar(255) DEFAULT '',
  `item_metadesc` varchar(255) DEFAULT '',
  `item_text` mediumtext,
  `item_cost` decimal(10,2) NOT NULL DEFAULT '0.00',
  `item_count` int UNSIGNED NOT NULL DEFAULT '0',
  `item_sort` int UNSIGNED NOT NULL DEFAULT '0',
  `item_state` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `item_country` char(3) DEFAULT '',
  `item_region` int UNSIGNED NOT NULL DEFAULT '0',
  `item_city` int UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_id`),
  KEY `item_userid` (`item_userid`),
  KEY `item_cat` (`item_cat`),
  KEY `item_title` (`item_title`),
  KEY `item_alias` (`item_alias`),
  KEY `item_date` (`item_date`),
  KEY `item_cost` (`item_cost`),
  KEY `item_state` (`item_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `cot_market` (`item_id`, `item_userid`, `item_date`, `item_update`, `item_parser`, `item_cat`, `item_title`, `item_alias`, `item_desc`, `item_keywords`, `item_metatitle`, `item_metadesc`, `item_text`, `item_cost`, `item_count`, `item_sort`, `item_state`, `item_country`, `item_region`, `item_city`) VALUES
(1, 1, 1751728167, 0, 'html', 'builds', 'Скрипт торговой площадки фриланс услуг', 'skript-freelance', '', '', '', '', '<h5>Скрипт торговой площадки фриланс услуг</h5><h5>Обновленная стартовая сборка фриланс-биржи на Cotonti CMF v.0.9.26, совместимая с PHP 8.2, от 27.06.2025</h5><p><a target=\"_blank\" href=\"https://2waydeal.previewit.work/\" rel=\"nofollow noreferrer noopener\"><strong>Демонстрация сайта</strong></a></p><hr><h5>Freelance Marketplace Script</h5><h5>Updated starter build of a freelance exchange platform on Cotonti CMF v0.9.26, compatible with PHP 8.2 (as of June 27, 2025)</h5><p><a target=\"_blank\" href=\"https://2waydeal.previewit.work/\" rel=\"nofollow noreferrer noopener\"><strong>Live Demo</strong></a></p><p> </p><p>⭐ Freelance MarketPlace script ⭐ by webitproff</p><p> </p><h2 class=\"heading-element\">Installation Guide</h2><h3 class=\"heading-element\">1. Create the Database</h3><p>Set up a new database for your site using your hosting control panel or any preferred method.</p><h3 class=\"heading-element\">2. Upload the Cotonti Engine</h3><p>Download the <a target=\"_blank\" href=\"https://github.com/Cotonti/Cotonti\" rel=\"nofollow noreferrer noopener\">Cotonti engine</a> and upload it into an empty folder for your future website.<br><strong>Recommended:</strong> use FTP so you can detect any file transfer errors or missing files. Re-upload any failed files. Repeat this step for every upload phase.</p><h3 class=\"heading-element\">3. Upload the Freelance Build <a target=\"_blank\" href=\"https://github.com/webitproff/cot_2waydeal_build\" rel=\"nofollow noreferrer noopener\"><strong>(cot_2waydeal_build)</strong></a></h3><p>Now upload the contents of the <code>public_html</code> folder from the freelance build package <code>cot_2waydeal_build</code> into the same folder where you uploaded the Cotonti engine.<br>When asked about file conflicts — choose “replace all.”<br><i>Note for beginners:</i> Core system files will not be overwritten. It might replace files like <code>/plugins/index.html</code> which are just used to prevent directory listing.</p><h3 class=\"heading-element\">4. Start the Installation Wizard</h3><p>Open the following URL in your browser:<br><code>https://2waydeal.ltd/install.php</code><br>You should see the installation screen with a \"Step 0.\"<br>From the dropdown list, select the setup profile: <strong>flance</strong></p><h3 class=\"heading-element\">5. Follow Installation Steps</h3><p>Proceed through the installation wizard:</p><ul><li>Enter the database connection info.</li><li>On the next screen, just fill out the admin credentials.<br><strong>Do not change anything else</strong> — all other values are preconfigured in the installer.</li></ul><h3 class=\"heading-element\">6. Extension List</h3><p>You will then see a list of extensions with checkboxes.<br><strong>Do not change anything.</strong><br>Scroll to the bottom and click <strong>\"Finish\"</strong>.</p><h3 class=\"heading-element\">7. Installation Complete!</h3><hr><h2 class=\"heading-element\">Important: First Steps After Installation</h2><h3 class=\"heading-element\">1. Enable Custom Functions</h3><p>Open <code>/datas/config.php</code>,<br>Find the line around 89:</p><pre><code class=\"language-plaintext\">$cfg[\'customfuncs\'] = false;</code></pre><p>Change it to:</p><pre><code class=\"language-plaintext\">$cfg[\'customfuncs\'] = true;</code></pre><p>This enables the file <code>/system/functions.custom.php</code>, which contains custom functions like <code>cot_load_structure_custom()</code> that are <strong>required for working with nested categories</strong>.</p><h3 class=\"heading-element\">2. Configure Country in Location Selector</h3><p>Go to:<br><strong>Admin Panel → Extensions → Location Selector → Configuration</strong><br>In the first field labeled “Display Countries”, enter your country code.<br>Only <strong>one</strong> code, no commas. For example:</p><pre><code class=\"language-plaintext\">ru</code></pre><p><i>(without quotes, for Russia)</i><br>Then <strong>Save</strong> the settings.</p><p>If you need to display <strong>more than one country</strong>, edit this file:</p><pre><code class=\"language-plaintext\">/themes/2waydeal/2waydeal.resources.php</code></pre><p>Find this line:</p><pre><code class=\"language-plaintext\">$R[\'input_location\'] = \'&lt;div style=\"display: none;\"&gt;{$country}&lt;/div&gt;\';</code></pre><p>And replace it with:</p><pre><code class=\"language-plaintext\">$R[\'input_location\'] = \'&lt;div&gt;{$country}&lt;/div&gt;\';</code></pre><hr><h2 class=\"heading-element\">Need Help?</h2><p>For any further configuration help:</p><ul><li>Use <a target=\"_blank\" href=\"https://abuyfile.com/ru/search\" rel=\"noreferrer noopener\">search on the site</a></li><li>Or post a question on the <a target=\"_blank\" href=\"https://abuyfile.com/ru/forums/cotonti/cot-2wd-build\" rel=\"noreferrer noopener\">support forum</a></li></ul><hr><p><strong>Last updated: 27.06.2025</strong></p><hr><h1 class=\"heading-element\">Инструкция по установке</h1><h3 class=\"heading-element\">1. Создание базы данных</h3><p>Создайте новую базу данных для сайта через панель управления хостингом или другим удобным способом.</p><h3 class=\"heading-element\">2. Загрузка движка Cotonti</h3><p>Скачайте <a target=\"_blank\" href=\"https://github.com/Cotonti/Cotonti\" rel=\"nofollow noreferrer noopener\">движок Cotonti</a> и загрузите его в пустую папку будущего сайта.<br><strong>Рекомендуется использовать FTP</strong>, чтобы сразу видеть ошибки передачи и потерянные файлы. Повторно загружайте все повреждённые файлы. Эти действия выполняйте на каждом этапе загрузки.</p><h3 class=\"heading-element\">3. Загрузка сборки фриланса <a target=\"_blank\" href=\"https://github.com/webitproff/cot_2waydeal_build\" rel=\"nofollow noreferrer noopener\">(cot_2waydeal_build)</a></h3><p>Загрузите содержимое папки <code>public_html</code> из сборки <code>cot_2waydeal_build</code> в ту же папку, где уже лежит движок Cotonti.<br>При запросе на замену файлов — выбирайте «перезаписать всё».<br><strong>Примечание для новичков:</strong> файлы ядра не будут затронуты. Заменятся только незначительные, например, <code>/plugins/index.html</code> — он используется для запрета листинга.</p><h3 class=\"heading-element\">4. Запуск установщика</h3><p>Откройте в браузере: <code>https://2waydeal.ltd/install.php</code></p><p>Появится установочная страница с «нулевым шагом». В выпадающем списке выберите <strong>flance</strong>.</p><h3 class=\"heading-element\">5. Следуйте шагам установки</h3><ul><li>Введите данные подключения к БД.</li><li>На следующем этапе заполните только данные администратора.<br><strong>Остальные поля не меняйте</strong> — все значения уже заданы в профиле установки.</li></ul><h3 class=\"heading-element\">6. Список расширений</h3><p>Вы увидите список расширений с чекбоксами.<br><strong>Ничего не меняйте.</strong><br>Промотайте в самый низ и нажмите <strong>«Завершить»</strong>.</p><h3 class=\"heading-element\">7. Установка завершена!</h3><hr><h2 class=\"heading-element\">Важно: Первые действия после установки</h2><h3 class=\"heading-element\">1. Включение пользовательских функций</h3><p>Откройте файл <code>/datas/config.php</code><br>Найдите строку примерно на 89-й строке:</p><pre><code class=\"language-plaintext\">$cfg[\'customfuncs\'] = false;</code></pre><p>Замените на:</p><pre><code class=\"language-plaintext\">$cfg[\'customfuncs\'] = true;</code></pre><p>Это подключит файл <code>/system/functions.custom.php</code>, где находятся функции, необходимые для работы с вложенными категориями, включая <code>cot_load_structure_custom()</code>.</p><h3 class=\"heading-element\">2. Настройка страны в Location Selector</h3><p>Перейдите: <strong>Управление сайтом → Расширения → Location Selector → Конфигурация</strong></p><p>В первом поле справа от «Отображать страны» введите код своей страны.<br>Только <strong>один</strong> код, без запятых. Пример:</p><pre><code class=\"language-plaintext\">ru</code></pre><p><i>(без кавычек, для России)</i><br>Сохраните настройки.</p><p>Если у вас более одной страны — откройте файл:</p><pre><code class=\"language-plaintext\">/themes/2waydeal/2waydeal.resources.php</code></pre><p>Найдите строку:</p><pre><code class=\"language-plaintext\">$R[\'input_location\'] = \'&lt;div style=\"display: none;\"&gt;{$country}&lt;/div&gt;\';</code></pre><p>И замените её на:</p><pre><code class=\"language-plaintext\">$R[\'input_location\'] = \'&lt;div&gt;{$country}&lt;/div&gt;\';</code></pre><hr><h2 class=\"heading-element\">Нужна помощь?</h2><ul><li>Ищите ответы через <a target=\"_blank\" href=\"https://abuyfile.com/ru/search\" rel=\"noreferrer noopener\">поиск по сайту</a></li><li>Или задавайте вопросы на <a target=\"_blank\" href=\"https://abuyfile.com/ru/forums/cotonti/cot-2wd-build\" rel=\"noreferrer noopener\">форуме поддержки</a></li></ul><hr><p><strong>Последнее обновление: 27.06.2025</strong></p><hr>', '0.00', 0, 0, 0, '', 0, 0);



INSERT INTO `cot_structure` (`structure_area`, `structure_code`, `structure_path`, `structure_tpl`, `structure_title`, `structure_desc`, `structure_icon`, `structure_locked`, `structure_count`) VALUES
('market', 'cotonti', '001', '', 'Cotonti CMF', 'Все для CMF Cotonti Siena', '', 0, 1),
('market', 'mods', '001.001', '', 'Модули для Cotonti', 'Магазин Модулей для Cotonti', '', 0, 0),
('market', 'plugs', '001.002', '', 'Плагины для Cotonti', 'Магазин плагинов для Cotonti', '', 0, 0),
('market', 'themes', '001.003', '', 'Темы и шаблоны для Cotonti', 'Темы и шаблоны Cotonti', '', 0, 0),
('market', 'scripts', '001.005', '', 'Скрипты для Cotonti', '', '', 0, 0),
('market', 'builds', '001.006', '', 'Сборки сайтов на Cotonti', '', '', 0, 1),
('market', 'template-cms', '002', '', 'Шаблоны сайтов для CMS', '', '', 0, 0),
('market', 'wp-themes', '002.001', '', 'WordPress Темы и шаблоны', 'Каталог шаблонов и тем для WordPress', '', 0, 0),
('market', 'osclass', '002.002', '', 'Osclass Темы и шаблоны', 'Каталог шаблонов и тем для Osclass', '', 0, 0);


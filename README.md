# Installation Guide

### 1. Create the Database

Set up a new database for your site using your hosting control panel or any preferred method.

### 2. Upload the Cotonti Engine

Download the [Cotonti engine](https://github.com/Cotonti/Cotonti) and upload it into an empty folder for your future website.\
**Recommended:** use FTP so you can detect any file transfer errors or missing files. Re-upload any failed files. Repeat this step for every upload phase.

### 3. Upload the Freelance Build (cot\_2waydeal\_build)

Now upload the contents of the `public_html` folder from the freelance build package `cot_2waydeal_build` into the same folder where you uploaded the Cotonti engine.\
When asked about file conflicts — choose “replace all.”\
*Note for beginners:* Core system files will not be overwritten. It might replace files like `/plugins/index.html` which are just used to prevent directory listing.

### 4. Start the Installation Wizard

Open the following URL in your browser:\
`https://2waydeal.ltd/install.php`\
You should see the installation screen with a "Step 0."\
From the dropdown list, select the setup profile: **flance**

### 5. Follow Installation Steps

Proceed through the installation wizard:

- Enter the database connection info.
- On the next screen, just fill out the admin credentials.\
  **Do not change anything else** — all other values are preconfigured in the installer.

### 6. Extension List

You will then see a list of extensions with checkboxes.\
**Do not change anything.**\
Scroll to the bottom and click **"Finish"**.

### 7. Installation Complete!

---

## Important: First Steps After Installation

### 1. Enable Custom Functions

Open `/datas/config.php`,\
Find the line around 89:

```php
$cfg['customfuncs'] = false;
```

Change it to:

```php
$cfg['customfuncs'] = true;
```

This enables the file `/system/functions.custom.php`, which contains custom functions like `cot_load_structure_custom()` that are **required for working with nested categories**.

### 2. Configure Country in Location Selector

Go to:\
**Admin Panel → Extensions → Location Selector → Configuration**\
In the first field labeled “Display Countries”, enter your country code.\
Only **one** code, no commas. For example:

```
ru
```

*(without quotes, for Russia)*\
Then **Save** the settings.

If you need to display **more than one country**, edit this file:

```
/themes/2waydeal/2waydeal.resources.php
```

Find this line:

```php
$R['input_location'] = '<div style="display: none;">{$country}</div>';
```

And replace it with:

```php
$R['input_location'] = '<div>{$country}</div>';
```

---

## Need Help?

For any further configuration help:

- Use [search on the site](https://abuyfile.com/ru/search)
- Or post a question on the [support forum](https://abuyfile.com/ru/forums/cotonti/cot-2wd-build)

---

**Last updated: 27.06.2025**

____

# Инструкция по установке

### 1. Создание базы данных

Создайте новую базу данных для сайта через панель управления хостингом или другим удобным способом.

### 2. Загрузка движка Cotonti

Скачайте [движок Cotonti](https://github.com/Cotonti/Cotonti) и загрузите его в пустую папку будущего сайта.\
**Рекомендуется использовать FTP**, чтобы сразу видеть ошибки передачи и потерянные файлы. Повторно загружайте все повреждённые файлы. Эти действия выполняйте на каждом этапе загрузки.

### 3. Загрузка сборки фриланса (cot\_2waydeal\_build)

Загрузите содержимое папки `public_html` из сборки `cot_2waydeal_build` в ту же папку, где уже лежит движок Cotonti.\
При запросе на замену файлов — выбирайте «перезаписать всё».\
**Примечание для новичков:** файлы ядра не будут затронуты. Заменятся только незначительные, например, `/plugins/index.html` — он используется для запрета листинга.

### 4. Запуск установщика

Откройте в браузере: `https://2waydeal.ltd/install.php`

Появится установочная страница с «нулевым шагом». В выпадающем списке выберите **flance**.

### 5. Следуйте шагам установки

- Введите данные подключения к БД.
- На следующем этапе заполните только данные администратора.\
  **Остальные поля не меняйте** — все значения уже заданы в профиле установки.

### 6. Список расширений

Вы увидите список расширений с чекбоксами.\
**Ничего не меняйте.**\
Промотайте в самый низ и нажмите **«Завершить»**.

### 7. Установка завершена!

---

## Важно: Первые действия после установки

### 1. Включение пользовательских функций

Откройте файл `/datas/config.php`\
Найдите строку примерно на 89-й строке:

```php
$cfg['customfuncs'] = false;
```

Замените на:

```php
$cfg['customfuncs'] = true;
```

Это подключит файл `/system/functions.custom.php`, где находятся функции, необходимые для работы с вложенными категориями, включая `cot_load_structure_custom()`.

### 2. Настройка страны в Location Selector

Перейдите: **Управление сайтом → Расширения → Location Selector → Конфигурация**

В первом поле справа от «Отображать страны» введите код своей страны.\
Только **один** код, без запятых. Пример:

```
ru
```

*(без кавычек, для России)*\
Сохраните настройки.

Если у вас более одной страны — откройте файл:

```
/themes/2waydeal/2waydeal.resources.php
```

Найдите строку:

```php
$R['input_location'] = '<div style="display: none;">{$country}</div>';
```

И замените её на:

```php
$R['input_location'] = '<div>{$country}</div>';
```

---

## Нужна помощь?

- Воспользуйтесь [поиском на сайте](https://abuyfile.com/ru/search)
- Или задайте вопрос на [форуме поддержки](https://abuyfile.com/ru/forums/cotonti/cot-2wd-build)

---

**Дата обновления: 27.06.2025**


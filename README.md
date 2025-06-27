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


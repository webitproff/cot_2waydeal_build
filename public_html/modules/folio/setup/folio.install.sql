/**
 * folio module DB installation with updated categories
 */


-- Вставка новых записей в cot_auth для новых категорий
INSERT INTO `cot_auth` (`auth_groupid`, `auth_code`, `auth_option`, `auth_rights`, `auth_rights_lock`, `auth_setbyuserid`) VALUES

(5, 'folio', 'siteadmin', 255, 255, 1),
(6, 'folio', 'siteadmin', 3, 0, 1),
(2, 'folio', 'siteadmin', 1, 128, 1),
(3, 'folio', 'siteadmin', 0, 255, 1),
(4, 'folio', 'siteadmin', 3, 0, 1),
(1, 'folio', 'siteadmin', 1, 128, 1),
(5, 'folio', 'sitecontent', 255, 255, 1),
(6, 'folio', 'sitecontent', 3, 0, 1),
(2, 'folio', 'sitecontent', 1, 128, 1),
(3, 'folio', 'sitecontent', 0, 255, 1),
(4, 'folio', 'sitecontent', 3, 0, 1),
(1, 'folio', 'sitecontent', 1, 128, 1),
(5, 'folio', 'sysadmin', 255, 255, 1),
(6, 'folio', 'sysadmin', 3, 0, 1),
(2, 'folio', 'sysadmin', 1, 128, 1),
(3, 'folio', 'sysadmin', 0, 255, 1),
(4, 'folio', 'sysadmin', 3, 0, 1),
(1, 'folio', 'sysadmin', 1, 128, 1),
(5, 'folio', 'support', 255, 255, 1),
(6, 'folio', 'support', 3, 0, 1),
(2, 'folio', 'support', 1, 128, 1),
(3, 'folio', 'support', 0, 255, 1),
(4, 'folio', 'support', 3, 0, 1),
(1, 'folio', 'support', 1, 128, 1),
(5, 'folio', 'architecture', 255, 255, 1),
(6, 'folio', 'architecture', 3, 0, 1),
(2, 'folio', 'architecture', 1, 128, 1),
(3, 'folio', 'architecture', 0, 255, 1),
(4, 'folio', 'architecture', 3, 0, 1),
(1, 'folio', 'architecture', 1, 128, 1),
(5, 'folio', 'interiors', 255, 255, 1),
(6, 'folio', 'interiors', 3, 0, 1),
(2, 'folio', 'interiors', 1, 128, 1),
(3, 'folio', 'interiors', 0, 255, 1),
(4, 'folio', 'interiors', 3, 0, 1),
(1, 'folio', 'interiors', 1, 128, 1),
(5, 'folio', 'landscape', 255, 255, 1),
(6, 'folio', 'landscape', 3, 0, 1),
(2, 'folio', 'landscape', 1, 128, 1),
(3, 'folio', 'landscape', 0, 255, 1),
(4, 'folio', 'landscape', 3, 0, 1),
(1, 'folio', 'landscape', 1, 128, 1),
(5, 'folio', 'blueprints', 255, 255, 1),
(6, 'folio', 'price', 3, 0, 1),
(2, 'folio', 'blueprints', 1, 128, 1),
(3, 'folio', 'blueprints', 0, 255, 1),
(4, 'folio', 'blueprints', 3, 0, 1),
(1, 'folio', 'blueprints', 1, 128, 1),
(5, 'folio', 'audiovideo', 255, 255, 1),
(6, 'folio', 'audiovideo', 3, 0, 1),
(2, 'folio', 'audiovideo', 1, 128, 1),
(3, 'folio', 'audiovideo', 0, 255, 1),
(4, 'folio', 'audiovideo', 3, 0, 1),
(1, 'folio', 'audiovideo', 1, 128, 1),
(5, 'folio', 'animation', 255, 255, 1),
(6, 'folio', 'animation', 3, 0, 1),
(2, 'folio', 'animation', 1, 128, 1),
(3, 'folio', 'animation', 0, 255, 1),
(4, 'folio', 'animation', 3, 0, 1),
(1, 'folio', 'animation', 1, 128, 1),
(5, 'folio', 'audiomontage', 255, 255, 1),
(6, 'folio', 'audiomontage', 3, 0, 1),
(2, 'folio', 'audiomontage', 1, 128, 1),
(3, 'folio', 'audiomontage', 0, 255, 1),
(4, 'folio', 'audiomontage', 3, 0, 1),
(1, 'folio', 'audiomontage', 1, 128, 1),
(5, 'folio', 'videomontage', 255, 255, 1),
(6, 'folio', 'videomontage', 3, 0, 1),
(2, 'folio', 'videomontage', 1, 128, 1),
(3, 'folio', 'videomontage', 0, 255, 1),
(4, 'folio', 'videomontage', 3, 0, 1),
(1, 'folio', 'videomontage', 1, 128, 1),
(5, 'folio', 'music', 255, 255, 1),
(6, 'folio', 'music', 3, 0, 1),
(2, 'folio', 'music', 1, 128, 1),
(3, 'folio', 'music', 0, 255, 1),
(4, 'folio', 'music', 3, 0, 1),
(1, 'folio', 'music', 1, 128, 1),
(5, 'folio', 'voicing', 255, 255, 1),
(6, 'folio', 'voicing', 3, 0, 1),
(2, 'folio', 'voicing', 1, 128, 1),
(3, 'folio', 'voicing', 0, 255, 1),
(4, 'folio', 'voicing', 3, 0, 1),
(1, 'folio', 'voicing', 1, 128, 1),
(5, 'folio', 'presentations', 255, 255, 1),
(6, 'folio', 'presentations', 3, 0, 1),
(2, 'folio', 'presentations', 1, 128, 1),
(3, 'folio', 'presentations', 0, 255, 1),
(4, 'folio', 'presentations', 3, 0, 1),
(1, 'folio', 'presentations', 1, 128, 1),
(5, 'folio', 'webdesign', 255, 255, 1),
(6, 'folio', 'webdesign', 3, 0, 1),
(2, 'folio', 'webdesign', 1, 128, 1),
(3, 'folio', 'webdesign', 0, 255, 1),
(4, 'folio', 'webdesign', 3, 0, 1),
(1, 'folio', 'webdesign', 1, 128, 1),
(5, 'folio', 'banners', 255, 255, 1),
(6, 'folio', 'banners', 3, 0, 1),
(2, 'folio', 'banners', 1, 128, 1),
(3, 'folio', 'banners', 0, 255, 1),
(4, 'folio', 'banners', 3, 0, 1),
(1, 'folio', 'banners', 1, 128, 1),
(5, 'folio', 'interfaces', 255, 255, 1),
(6, 'folio', 'interfaces', 3, 0, 1),
(2, 'folio', 'interfaces', 1, 128, 1),
(3, 'folio', 'interfaces', 0, 255, 1),
(4, 'folio', 'interfaces', 3, 0, 1),
(1, 'folio', 'interfaces', 1, 128, 1),
(5, 'folio', 'mobileappsdesign', 255, 255, 1),
(6, 'folio', 'mobileappsdesign', 3, 0, 1),
(2, 'folio', 'mobileappsdesign', 1, 128, 1),
(3, 'folio', 'mobileappsdesign', 0, 255, 1),
(4, 'folio', 'mobileappsdesign', 3, 0, 1),
(1, 'folio', 'mobileappsdesign', 1, 128, 1),
(5, 'folio', 'websitedesign', 255, 255, 1),
(6, 'folio', 'websitedesign', 3, 0, 1),
(2, 'folio', 'websitedesign', 1, 128, 1),
(3, 'folio', 'websitedesign', 0, 255, 1),
(4, 'folio', 'websitedesign', 3, 0, 1),
(1, 'folio', 'websitedesign', 1, 128, 1),
(5, 'folio', 'websites', 255, 255, 1),
(6, 'folio', 'websites', 3, 0, 1),
(2, 'folio', 'websites', 1, 128, 1),
(3, 'folio', 'websites', 0, 255, 1),
(4, 'folio', 'websites', 3, 0, 1),
(1, 'folio', 'websites', 1, 128, 1),
(5, 'folio', 'html', 255, 255, 1),
(6, 'folio', 'html', 3, 0, 1),
(2, 'folio', 'html', 1, 128, 1),
(3, 'folio', 'html', 0, 255, 1),
(4, 'folio', 'html', 3, 0, 1),
(1, 'folio', 'html', 1, 128, 1),
(5, 'folio', 'webprogramming', 255, 255, 1),
(6, 'folio', 'webprogramming', 3, 0, 1),
(2, 'folio', 'webprogramming', 1, 128, 1),
(3, 'folio', 'webprogramming', 0, 255, 1),
(4, 'folio', 'webprogramming', 3, 0, 1),
(1, 'folio', 'webprogramming', 1, 128, 1),
(5, 'folio', 'ecommerce', 255, 255, 1),
(6, 'folio', 'ecommerce', 3, 0, 1),
(2, 'folio', 'ecommerce', 1, 128, 1),
(3, 'folio', 'ecommerce', 0, 255, 1),
(4, 'folio', 'ecommerce', 3, 0, 1),
(1, 'folio', 'ecommerce', 1, 128, 1),
(5, 'folio', 'turnkey', 255, 255, 1),
(6, 'folio', 'turnkey', 3, 0, 1),
(2, 'folio', 'turnkey', 1, 128, 1),
(3, 'folio', 'turnkey', 0, 255, 1),
(4, 'folio', 'turnkey', 3, 0, 1),
(1, 'folio', 'turnkey', 1, 128, 1),
(5, 'folio', 'websitetesting', 255, 255, 1),
(6, 'folio', 'websitetesting', 3, 0, 1),
(2, 'folio', 'websitetesting', 1, 128, 1),
(3, 'folio', 'websitetesting', 0, 255, 1),
(4, 'folio', 'websitetesting', 3, 0, 1),
(1, 'folio', 'websitetesting', 1, 128, 1),
(5, 'folio', 'graphics', 255, 255, 1),
(6, 'folio', 'graphics', 3, 0, 1),
(2, 'folio', 'graphics', 1, 128, 1),
(3, 'folio', 'graphics', 0, 255, 1),
(4, 'folio', 'graphics', 3, 0, 1),
(1, 'folio', 'graphics', 1, 128, 1),
(5, 'folio', '3dgraphics', 255, 255, 1),
(6, 'folio', '3dgraphics', 3, 0, 1),
(2, 'folio', '3dgraphics', 1, 128, 1),
(3, 'folio', '3dgraphics', 0, 255, 1),
(4, 'folio', '3dgraphics', 3, 0, 1),
(1, 'folio', '3dgraphics', 1, 128, 1),
(5, 'folio', 'illustrations', 255, 255, 1),
(6, 'folio', 'illustrations', 3, 0, 1),
(2, 'folio', 'illustrations', 1, 128, 1),
(3, 'folio', 'illustrations', 0, 255, 1),
(4, 'folio', 'illustrations', 3, 0, 1),
(1, 'folio', 'illustrations', 1, 128, 1),
(5, 'folio', 'photoediting', 255, 255, 1),
(6, 'folio', 'photoediting', 3, 0, 1),
(2, 'folio', 'photoediting', 1, 128, 1),
(3, 'folio', 'photoediting', 0, 255, 1),
(4, 'folio', 'photoediting', 3, 0, 1),
(1, 'folio', 'photoediting', 1, 128, 1),
(5, 'folio', 'polygraphy', 255, 255, 1),
(6, 'folio', 'polygraphy', 3, 0, 1),
(2, 'folio', 'polygraphy', 1, 128, 1),
(3, 'folio', 'polygraphy', 0, 255, 1),
(4, 'folio', 'polygraphy', 3, 0, 1),
(1, 'folio', 'polygraphy', 1, 128, 1),
(5, 'folio', 'printlayout', 255, 255, 1),
(6, 'folio', 'printlayout', 3, 0, 1),
(2, 'folio', 'printlayout', 1, 128, 1),
(3, 'folio', 'printlayout', 0, 255, 1),
(4, 'folio', 'printlayout', 3, 0, 1),
(1, 'folio', 'printlayout', 1, 128, 1),
(5, 'folio', 'productdesign', 255, 255, 1),
(6, 'folio', 'productdesign', 3, 0, 1),
(2, 'folio', 'productdesign', 1, 128, 1),
(3, 'folio', 'productdesign', 0, 255, 1),
(4, 'folio', 'productdesign', 3, 0, 1),
(1, 'folio', 'productdesign', 1, 128, 1),
(5, 'folio', 'logos', 255, 255, 1),
(6, 'folio', 'logos', 3, 0, 1),
(2, 'folio', 'logos', 1, 128, 1),
(3, 'folio', 'logos', 0, 255, 1),
(4, 'folio', 'logos', 3, 0, 1),
(1, 'folio', 'logos', 1, 128, 1),
(5, 'folio', 'branding', 255, 255, 1),
(6, 'folio', 'branding', 3, 0, 1),
(2, 'folio', 'branding', 1, 128, 1),
(3, 'folio', 'branding', 0, 255, 1),
(4, 'folio', 'branding', 3, 0, 1),
(1, 'folio', 'branding', 1, 128, 1),
(5, 'folio', 'software', 255, 255, 1),
(6, 'folio', 'software', 3, 0, 1),
(2, 'folio', 'software', 1, 128, 1),
(3, 'folio', 'software', 0, 255, 1),
(4, 'folio', 'software', 3, 0, 1),
(1, 'folio', 'software', 1, 128, 1),
(5, 'folio', '1cprogramming', 255, 255, 1),
(6, 'folio', '1cprogramming', 3, 0, 1),
(2, 'folio', '1cprogramming', 1, 128, 1),
(3, 'folio', '1cprogramming', 0, 255, 1),
(4, 'folio', '1cprogramming', 3, 0, 1),
(1, 'folio', '1cprogramming', 1, 128, 1),
(5, 'folio', 'databases', 255, 255, 1),
(6, 'folio', 'databases', 3, 0, 1),
(2, 'folio', 'databases', 1, 128, 1),
(3, 'folio', 'databases', 0, 255, 1),
(4, 'folio', 'databases', 3, 0, 1),
(1, 'folio', 'databases', 1, 128, 1),
(5, 'folio', 'mobileapps', 255, 255, 1),
(6, 'folio', 'mobileapps', 3, 0, 1),
(2, 'folio', 'mobileapps', 1, 128, 1),
(3, 'folio', 'mobileapps', 0, 255, 1),
(4, 'folio', 'mobileapps', 3, 0, 1),
(1, 'folio', 'mobileapps', 1, 128, 1),
(5, 'folio', 'appliedsoftware', 255, 255, 1),
(6, 'folio', 'appliedsoftware', 3, 0, 1),
(2, 'folio', 'appliedsoftware', 1, 128, 1),
(3, 'folio', 'appliedsoftware', 0, 255, 1),
(4, 'folio', 'appliedsoftware', 3, 0, 1),
(1, 'folio', 'appliedsoftware', 1, 128, 1),
(5, 'folio', 'gamedev', 255, 255, 1),
(6, 'folio', 'gamedev', 3, 0, 1),
(2, 'folio', 'gamedev', 1, 128, 1),
(3, 'folio', 'gamedev', 0, 255, 1),
(4, 'folio', 'gamedev', 3, 0, 1),
(1, 'folio', 'gamedev', 1, 128, 1),
(5, 'folio', 'systemprogramming', 255, 255, 1),
(6, 'folio', 'systemprogramming', 3, 0, 1),
(2, 'folio', 'systemprogramming', 1, 128, 1),
(3, 'folio', 'systemprogramming', 0, 255, 1),
(4, 'folio', 'systemprogramming', 3, 0, 1),
(1, 'folio', 'systemprogramming', 1, 128, 1),
(5, 'folio', 'softwaretesting', 255, 255, 1),
(6, 'folio', 'softwaretesting', 3, 0, 1),
(2, 'folio', 'softwaretesting', 1, 128, 1),
(3, 'folio', 'softwaretesting', 0, 255, 1),
(4, 'folio', 'softwaretesting', 3, 0, 1),
(1, 'folio', 'softwaretesting', 1, 128, 1),
(5, 'folio', 'seo', 255, 255, 1),
(6, 'folio', 'seo', 3, 0, 1),
(2, 'folio', 'seo', 1, 128, 1),
(3, 'folio', 'seo', 0, 255, 1),
(4, 'folio', 'seo', 3, 0, 1),
(1, 'folio', 'seo', 1, 128, 1),
(5, 'folio', 'contextads', 255, 255, 1),
(6, 'folio', 'contextads', 3, 0, 1),
(2, 'folio', 'contextads', 1, 128, 1),
(3, 'folio', 'contextads', 0, 255, 1),
(4, 'folio', 'contextads', 3, 0, 1),
(1, 'folio', 'contextads', 1, 128, 1),
(5, 'folio', 'marketanalysis', 255, 255, 1),
(6, 'folio', 'marketanalysis', 3, 0, 1),
(2, 'folio', 'marketanalysis', 1, 128, 1),
(3, 'folio', 'marketanalysis', 0, 255, 1),
(4, 'folio', 'marketanalysis', 3, 0, 1),
(1, 'folio', 'marketanalysis', 1, 128, 1),
(5, 'folio', 'searchengines', 255, 255, 1),
(6, 'folio', 'searchengines', 3, 0, 1),
(2, 'folio', 'searchengines', 1, 128, 1),
(3, 'folio', 'searchengines', 0, 255, 1),
(4, 'folio', 'searchengines', 3, 0, 1),
(1, 'folio', 'searchengines', 1, 128, 1),
(5, 'folio', 'smm', 255, 255, 1),
(6, 'folio', 'smm', 3, 0, 1),
(2, 'folio', 'smm', 1, 128, 1),
(3, 'folio', 'smm', 0, 255, 1),
(4, 'folio', 'smm', 3, 0, 1),
(1, 'folio', 'smm', 1, 128, 1),
(5, 'folio', 'texts', 255, 255, 1),
(6, 'folio', 'texts', 3, 0, 1),
(2, 'folio', 'texts', 1, 128, 1),
(3, 'folio', 'texts', 0, 255, 1),
(4, 'folio', 'texts', 3, 0, 1),
(1, 'folio', 'texts', 1, 128, 1),
(5, 'folio', 'copywriting', 255, 255, 1),
(6, 'folio', 'copywriting', 3, 0, 1),
(2, 'folio', 'copywriting', 1, 128, 1),
(3, 'folio', 'copywriting', 0, 255, 1),
(4, 'folio', 'copywriting', 3, 0, 1),
(1, 'folio', 'copywriting', 1, 128, 1),
(5, 'folio', 'translations', 255, 255, 1),
(6, 'folio', 'translations', 3, 0, 1),
(2, 'folio', 'translations', 1, 128, 1),
(3, 'folio', 'translations', 0, 255, 1),
(4, 'folio', 'translations', 3, 0, 1),
(1, 'folio', 'translations', 1, 128, 1),
(5, 'folio', 'editing', 255, 255, 1),
(6, 'folio', 'editing', 3, 0, 1),
(2, 'folio', 'editing', 1, 128, 1),
(3, 'folio', 'editing', 0, 255, 1),
(4, 'folio', 'editing', 3, 0, 1),
(1, 'folio', 'editing', 1, 128, 1),
(5, 'folio', 'transcription', 255, 255, 1),
(6, 'folio', 'transcription', 3, 0, 1),
(2, 'folio', 'transcription', 1, 128, 1),
(3, 'folio', 'transcription', 0, 255, 1),
(4, 'folio', 'transcription', 3, 0, 1),
(1, 'folio', 'transcription', 1, 128, 1),
(5, 'folio', 'management', 255, 255, 1),
(6, 'folio', 'management', 3, 0, 1),
(2, 'folio', 'management', 1, 128, 1),
(3, 'folio', 'management', 0, 255, 1),
(4, 'folio', 'management', 3, 0, 1),
(1, 'folio', 'management', 1, 128, 1),
(5, 'folio', 'sales', 255, 255, 1),
(6, 'folio', 'sales', 3, 0, 1),
(2, 'folio', 'sales', 1, 128, 1),
(3, 'folio', 'sales', 0, 255, 1),
(4, 'folio', 'sales', 3, 0, 1),
(1, 'folio', 'sales', 1, 128, 1),
(5, 'folio', 'projectmanagement', 255, 255, 1),
(6, 'folio', 'projectmanagement', 3, 0, 1),
(2, 'folio', 'projectmanagement', 1, 128, 1),
(3, 'folio', 'projectmanagement', 0, 255, 1),
(4, 'folio', 'projectmanagement', 3, 0, 1),
(1, 'folio', 'projectmanagement', 1, 128, 1),
(5, 'folio', 'education', 255, 255, 1),
(6, 'folio', 'education', 3, 0, 1),
(2, 'folio', 'education', 1, 128, 1),
(3, 'folio', 'education', 0, 255, 1),
(4, 'folio', 'education', 3, 0, 1),
(1, 'folio', 'education', 1, 128, 1),
(5, 'folio', 'academics', 255, 255, 1),
(6, 'folio', 'academics', 3, 0, 1),
(2, 'folio', 'academics', 1, 128, 1),
(3, 'folio', 'academics', 0, 255, 1),
(4, 'folio', 'academics', 3, 0, 1),
(1, 'folio', 'academics', 1, 128, 1);

-- Создание таблицы cot_market (без изменений, так как структура остается прежней)
CREATE TABLE IF NOT EXISTS `cot_folio` (
  `item_id` int UNSIGNED NOT NULL auto_increment,
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

-- Вставка записи в cot_folio с обновленной категорией
INSERT INTO `cot_folio` (`item_id`, `item_userid`, `item_date`, `item_update`, `item_parser`, `item_cat`, `item_title`, `item_alias`, `item_desc`, `item_keywords`, `item_metatitle`, `item_metadesc`, `item_text`, `item_cost`, `item_count`, `item_sort`, `item_state`, `item_country`, `item_region`, `item_city`) VALUES
(1, 1, 1751728167, 0, 'html', 'turnkey', 'Скрипт торговой площадки фриланс услуг', 'skript-freelance', '', '', '', '', '<h5>Скрипт торговой площадки фриланс услуг</h5><h5>Обновленная стартовая сборка фриланс-биржи на Cotonti CMF v.0.9.26, совместимая с PHP 8.2, от 27.06.2025</h5><p><a target=\"_blank\" href=\"https://2waydeal.previewit.work/\" rel=\"nofollow noreferrer noopener\"><strong>Демонстрация сайта</strong></a></p><hr><h5>Freelance Marketplace Script</h5><h5>Updated starter build of a freelance exchange platform on Cotonti CMF v0.9.26, compatible with PHP 8.2 (as of June 27, 2025)</h5><p><a target=\"_blank\" href=\"https://2waydeal.previewit.work/\" rel=\"nofollow noreferrer noopener\"><strong>Live Demo</strong></a></p><p> </p><p>⭐ Freelance MarketPlace script ⭐ by webitproff</p><p> </p><h2 class=\"heading-element\">Installation Guide</h2><h3 class=\"heading-element\">1. Create the Database</h3><p>Set up a new database for your site using your hosting control panel or any preferred method.</p><h3 class=\"heading-element\">2. Upload the Cotonti Engine</h3><p>Download the <a target=\"_blank\" href=\"https://github.com/Cotonti/Cotonti\" rel=\"nofollow noreferrer noopener\">Cotonti engine</a> and upload it into an empty folder for your future website.<br><strong>Recommended:</strong> use FTP so you can detect any file transfer errors or missing files. Re-upload any failed files. Repeat this step for every upload phase.</p><h3 class=\"heading-element\">3. Upload the Freelance Build <a target=\"_blank\" href=\"https://github.com/webitproff/cot_2waydeal_build\" rel=\"nofollow noreferrer noopener\"><strong>(cot_2waydeal_build)</strong></a></h3><p>Now upload the contents of the <code>public_html</code> folder from the freelance build package <code>cot_2waydeal_build</code> into the same folder where you uploaded the Cotonti engine.<br>When asked about file conflicts — choose “replace all.”<br><i>Note for beginners:</i> Core system files will not be overwritten. It might replace files like <code>/plugins/index.html</code> which are just used to prevent directory listing.</p><h3 class=\"heading-element\">4. Start the Installation Wizard</h3><p>Open the following URL in your browser:<br><code>https://2waydeal.ltd/install.php</code><br>You should see the installation screen with a \"Step 0.\"<br>From the dropdown list, select the setup profile: <strong>flance</strong></p><h3 class=\"heading-element\">5. Follow Installation Steps</h3><p>Proceed through the installation wizard:</p><ul><li>Enter the database connection info.</li><li>On the next screen, just fill out the admin credentials.<br><strong>Do not change anything else</strong> — all other values are preconfigured in the installer.</li></ul><h3 class=\"heading-element\">6. Extension List</h3><p>You will then see a list of extensions with checkboxes.<br><strong>Do not change anything.</strong><br>Scroll to the bottom and click <strong>\"Finish\"</strong>.</p><h3 class=\"heading-element\">7. Installation Complete!</h3><hr><h2 class=\"heading-element\">Important: First Steps After Installation</h2><h3 class=\"heading-element\">1. Enable Custom Functions</h3><p>Open <code>/datas/config.php</code>,<br>Find the line around 89:</p><pre><code class=\"language-plaintext\">$cfg[\'customfuncs\'] = false;</code></pre><p>Change it to:</p><pre><code class=\"language-plaintext\">$cfg[\'customfuncs\'] = true;</code></pre><p>This enables the file <code>/system/functions.custom.php</code>, which contains custom functions like <code>cot_load_structure_custom()</code> that are <strong>required for working with nested categories</strong>.</p><h3 class=\"heading-element\">2. Configure Country in Location Selector</h3><p>Go to:<br><strong>Admin Panel → Extensions → Location Selector → Configuration</strong><br>In the first field labeled “Display Countries”, enter your country code.<br>Only <strong>one</strong> code, no commas. For example:</p><pre><code class=\"language-plaintext\">ru</code></pre><p><i>(without quotes, for Russia)</i><br>Then <strong>Save</strong> the settings.</p><p>If you need to display <strong>more than one country</strong>, edit this file:</p><pre><code class=\"language-plaintext\">/themes/2waydeal/2waydeal.resources.php</code></pre><p>Find this line:</p><pre><code class=\"language-plaintext\">$R[\'input_location\'] = \'<div style=\"display: none;\">{$country}</div>\';</code></pre><p>And replace it with:</p><pre><code class=\"language-plaintext\">$R[\'input_location\'] = \'<div>{$country}</div>\';</code></pre><hr><h2 class=\"heading-element\">Need Help?</h2><p>For any further configuration help:</p><ul><li>Use <a target=\"_blank\" href=\"https://abuyfile.com/ru/search\" rel=\"noreferrer noopener\">search on the site</a></li><li>Or post a question on the <a target=\"_blank\" href=\"https://abuyfile.com/ru/forums/cotonti/cot-2wd-build\" rel=\"noreferrer noopener\">support forum</a></li></ul><hr><p><strong>Last updated: 27.06.2025</strong></p><hr><h1 class=\"heading-element\">Инструкция по установке</h1><h3 class=\"heading-element\">1. Создание базы данных</h3><p>Создайте новую базу данных для сайта через панель управления хостингом или другим удобным способом.</p><h3 class=\"heading-element\">2. Загрузка движка Cotonti</h3><p>Скачайте <a target=\"_blank\" href=\"https://github.com/Cotonti/Cotonti\" rel=\"nofollow noreferrer noopener\">движок Cotonti</a> и загрузите его в пустую папку будущего сайта.<br><strong>Рекомендуется использовать FTP</strong>, чтобы сразу видеть ошибки передачи и потерянные файлы. Повторно загружайте все повреждённые файлы. Эти действия выполняйте на каждом этапе загрузки.</p><h3 class=\"heading-element\">3. Загрузка сборки фриланса <a target=\"_blank\" href=\"https://github.com/webitproff/cot_2waydeal_build\" rel=\"nofollow noreferrer noopener\">(cot_2waydeal_build)</a></h3><p>Загрузите содержимое папки <code>public_html</code> из сборки <code>cot_2waydeal_build</code> в ту же папку, где уже лежит движок Cotonti.<br>При запросе на замену файлов — выбирайте «перезаписать всё».<br><strong>Примечание для новичков:</strong> файлы ядра не будут затронуты. Заменятся только незначительные, например, <code>/plugins/index.html</code> — он используется для запрета листинга.</p><h3 class=\"heading-element\">4. Запуск установщика</h3><p>Откройте в браузере: <code>https://2waydeal.ltd/install.php</code></p><p>Появится установочная страница с «нулевым шагом». В выпадающем списке выберите <strong>flance</strong>.</p><h3 class=\"heading-element\">5. Следуйте шагам установки</h3><ul><li>Введите данные подключения к БД.</li><li>На следующем этапе заполните только данные администратора.<br><strong>Остальные поля не меняйте</strong> — все значения уже заданы в профиле установки.</li></ul><h3 class=\"heading-element\">6. Список расширений</h3><p>Вы увидите список расширений с чекбоксами.<br><strong>Ничего не меняйте.</strong><br>Промотайте в самый низ и нажмите <strong>«Завершить»</strong>.</p><h3 class=\"heading-element\">7. Установка завершена!</h3><hr><h2 class=\"heading-element\">Важно: Первые действия после установки</h2><h3 class=\"heading-element\">1. Включение пользовательских функций</h3><p>Откройте файл <code>/datas/config.php</code><br>Найдите строку примерно на 89-й строке:</p><pre><code class=\"language-plaintext\">$cfg[\'customfuncs\'] = false;</code></pre><p>Замените на:</p><pre><code class=\"language-plaintext\">$cfg[\'customfuncs\'] = true;</code></pre><p>Это подключит файл <code>/system/functions.custom.php</code>, где находятся функции, необходимые для работы с вложенными категориями, включая <code>cot_load_structure_custom()</code>.</p><h3 class=\"heading-element\">2. Настройка страны в Location Selector</h3><p>Перейдите: <strong>Управление сайтом → Расширения → Location Selector → Конфигурация</strong></p><p>В первом поле справа от «Отображать страны» введите код своей страны.<br>Только <strong>один</strong> код, без запятых. Пример:</p><pre><code class=\"language-plaintext\">ru</code></pre><p><i>(без кавычек, для России)</i><br>Сохраните настройки.</p><p>Если у вас более одной страны — откройте файл:</p><pre><code class=\"language-plaintext\">/themes/2waydeal/2waydeal.resources.php</code></pre><p>Найдите строку:</p><pre><code class=\"language-plaintext\">$R[\'input_location\'] = \'<div style=\"display: none;\">{$country}</div>\';</code></pre><p>И замените её на:</p><pre><code class=\"language-plaintext\">$R[\'input_location\'] = \'<div>{$country}</div>\';</code></pre><hr><h2 class=\"heading-element\">Нужна помощь?</h2><ul><li>Ищите ответы через <a target=\"_blank\" href=\"https://abuyfile.com/ru/search\" rel=\"noreferrer noopener\">поиск по сайту</a></li><li>Или задавайте вопросы на <a target=\"_blank\" href=\"https://abuyfile.com/ru/forums/cotonti/cot-2wd-build\" rel=\"noreferrer noopener\">форуме поддержки</a></li></ul><hr><p><strong>Последнее обновление: 27.06.2025</strong></p><hr>', '0.00', 0, 0, 0, '', 0, 0);



-- Вставка новых категорий в cot_structure с учетом иерархии
INSERT INTO `cot_structure` (`structure_area`, `structure_code`, `structure_path`, `structure_tpl`, `structure_title`, `structure_desc`, `structure_icon`, `structure_locked`, `structure_count`) VALUES
('folio', 'siteadmin', '001', '', 'Администрирование сайтов', 'Услуги по администрированию сайтов', '', 0, 0),
('folio', 'sitecontent', '001.001', '', 'Наполнение сайтов', 'Услуги по наполнению сайтов контентом', '', 0, 0),
('folio', 'sysadmin', '001.002', '', 'Системное администрирование', 'Услуги системного администрирования', '', 0, 0),
('folio', 'support', '001.003', '', 'Служба поддержки', 'Услуги службы поддержки', '', 0, 0),
('folio', 'architecture', '002', '', 'Архитектура и Инжиниринг', 'Услуги в области архитектуры и инжиниринга', '', 0, 0),
('folio', 'interiors', '002.001', '', 'Интерьеры и Экстерьеры', 'Дизайн интерьеров и экстерьеров', '', 0, 0),
('folio', 'landscape', '002.002', '', 'Ландшафтный дизайн', 'Услуги ландшафтного дизайна', '', 0, 0),
('folio', 'blueprints', '002.003', '', 'Чертежи и Схемы', 'Создание чертежей и схем', '', 0, 0),
('folio', 'audiovideo', '003', '', 'Аудио и Видео', 'Услуги по работе с аудио и видео', '', 0, 0),
('folio', 'animation', '003.001', '', 'Анимация', 'Создание анимации', '', 0, 0),
('folio', 'audiomontage', '003.002', '', 'Аудиомонтаж', 'Монтаж аудио', '', 0, 0),
('folio', 'videomontage', '003.003', '', 'Видеомонтаж', 'Монтаж видео', '', 0, 0),
('folio', 'music', '003.004', '', 'Музыка и Звуки', 'Создание музыки и звуков', '', 0, 0),
('folio', 'voicing', '003.005', '', 'Озвучивание', 'Услуги озвучивания', '', 0, 0),
('folio', 'presentations', '003.006', '', 'Презентации', 'Создание презентаций', '', 0, 0),
('folio', 'webdesign', '004', '', 'Веб-дизайн и Интерфейсы', 'Услуги веб-дизайна и интерфейсов', '', 0, 0),
('folio', 'banners', '004.001', '', 'Баннеры', 'Создание баннеров', '', 0, 0),
('folio', 'interfaces', '004.002', '', 'Дизайн интерфейсов и игр', 'Дизайн интерфейсов и игр', '', 0, 0),
('folio', 'mobileappsdesign', '004.003', '', 'Дизайн мобильных приложений', 'Дизайн мобильных приложений', '', 0, 0),
('folio', 'websitedesign', '004.004', '', 'Дизайн сайтов', 'Дизайн веб-сайтов', '', 0, 0),
('folio', 'websites', '005', '', 'Веб-сайты', 'Услуги по разработке веб-сайтов', '', 0, 0),
('folio', 'html', '005.001', '', 'HTML-верстка', 'Услуги HTML-верстки', '', 0, 0),
('folio', 'webprogramming', '005.002', '', 'Веб-программирование', 'Услуги веб-программирования', '', 0, 0),
('folio', 'ecommerce', '005.003', '', 'Интернет-магазины', 'Создание интернет-магазинов', '', 0, 0),
('folio', 'turnkey', '005.004', '', 'Сайты «под ключ»', 'Создание сайтов под ключ', '', 0, 1),
('folio', 'websitetesting', '005.005', '', 'Тестирование сайтов', 'Услуги тестирования сайтов', '', 0, 0),
('folio', 'graphics', '006', '', 'Графика и Фотография', 'Услуги графики и фотографии', '', 0, 0),
('folio', '3dgraphics', '006.001', '', '3D-графика', 'Создание 3D-графики', '', 0, 0),
('folio', 'illustrations', '006.002', '', 'Иллюстрации и Рисунки', 'Создание иллюстраций и рисунков', '', 0, 0),
('folio', 'photoediting', '006.003', '', 'Обработка фотографий', 'Услуги обработки фотографий', '', 0, 0),
('folio', 'polygraphy', '007', '', 'Полиграфия и Айдентика', 'Услуги полиграфии и айдентики', '', 0, 0),
('folio', 'printlayout', '007.001', '', 'Верстка полиграфии', 'Услуги верстки полиграфии', '', 0, 0),
('folio', 'productdesign', '007.002', '', 'Дизайн продукции', 'Дизайн продукции', '', 0, 0),
('folio', 'logos', '007.003', '', 'Логотипы и Знаки', 'Создание логотипов и знаков', '', 0, 0),
('folio', 'branding', '007.004', '', 'Фирменный стиль', 'Разработка фирменного стиля', '', 0, 0),
('folio', 'software', '008', '', 'Программирование ПО', 'Услуги программирования ПО', '', 0, 0),
('folio', '1cprogramming', '008.001', '', '1С-программирование', 'Программирование для 1С', '', 0, 0),
('folio', 'databases', '008.002', '', 'Базы данных', 'Работа с базами данных', '', 0, 0),
('folio', 'mobileapps', '008.003', '', 'Мобильные приложения', 'Разработка мобильных приложений', '', 0, 0),
('folio', 'appliedsoftware', '008.004', '', 'Прикладное ПО', 'Разработка прикладного ПО', '', 0, 0),
('folio', 'gamedev', '008.005', '', 'Разработка игр', 'Разработка игр', '', 0, 0),
('folio', 'systemprogramming', '008.006', '', 'Системное программирование', 'Системное программирование', '', 0, 0),
('folio', 'softwaretesting', '008.007', '', 'Тестирование ПО', 'Услуги тестирования ПО', '', 0, 0),
('folio', 'seo', '009', '', 'Продвижение сайтов (SEO)', 'Услуги продвижения сайтов', '', 0, 0),
('folio', 'contextads', '009.001', '', 'Контекстная реклама', 'Настройка контекстной рекламы', '', 0, 0),
('folio', 'marketanalysis', '009.002', '', 'Маркетинговый анализ', 'Проведение маркетингового анализа', '', 0, 0),
('folio', 'searchengines', '009.003', '', 'Поисковые системы (SEO)', 'Оптимизация для поисковых систем', '', 0, 0),
('folio', 'smm', '009.004', '', 'Социальные сети (SMM и SMO)', 'Продвижение в социальных сетях', '', 0, 0),
('folio', 'texts', '010', '', 'Тексты и Переводы', 'Услуги по работе с текстами и переводами', '', 0, 0),
('folio', 'copywriting', '010.001', '', 'Копирайтинг', 'Написание текстов', '', 0, 0),
('folio', 'translations', '010.002', '', 'Переводы', 'Услуги перевода', '', 0, 0),
('folio', 'editing', '010.003', '', 'Редактирование и Корректура', 'Редактирование и корректура текстов', '', 0, 0),
('folio', 'transcription', '010.004', '', 'Транскрибация', 'Услуги транскрибации', '', 0, 0),
('folio', 'management', '011', '', 'Управление и Менеджмент', 'Услуги управления и менеджмента', '', 0, 0),
('folio', 'sales', '011.001', '', 'Продажи и лиды', 'Услуги по продажам и генерации лидов', '', 0, 0),
('folio', 'projectmanagement', '011.002', '', 'Управление проектами', 'Услуги управления проектами', '', 0, 0),
('folio', 'education', '012', '', 'Учеба и Репетиторство', 'Услуги в области учебы и репетиторства', '', 0, 0),
('folio', 'academics', '012.001', '', 'Рефераты, Курсовые и Дипломы', 'Написание рефератов, курсовых и дипломов', '', 0, 0);

<?php
/**
 * Admin Theme for Cotonti Siena
 */

/**
 * JavaScript and CSS loader 
 *
 * @package Cotonti
 * @version 0.9.26
 * @author  
 * @copyright Copyright (c) 
 * @license BSD
 */

defined('COT_CODE') or die('Wrong URL.');

// Bootstrap is needed to use the Modal, Toast, etc. components.
Resources::addFile('lib/bootstrap/css/bootstrap.min.css');

Resources::addFile(Cot::$cfg['themes_dir'] . '/admin/' . Cot::$cfg['admintheme'] . '/assets/jquery/jquery.min.js');

Resources::addFile(Cot::$cfg['themes_dir'] . '/admin/' . Cot::$cfg['admintheme'] . '/fontawesome/css/all.min.css', 'css', 200);
Resources::addFile(Cot::$cfg['themes_dir'] . '/admin/' . Cot::$cfg['admintheme'] . '/assets/select2/select2.min.css');
Resources::addFile(Cot::$cfg['themes_dir'] . '/admin/' . Cot::$cfg['admintheme'] . '/assets/select2/style-select2.css');
Resources::addFile(Cot::$cfg['themes_dir'] . '/admin/' . Cot::$cfg['admintheme'] . '/assets/select2/select2.min.js');
Resources::addFile(Cot::$cfg['themes_dir'] . '/admin/' . Cot::$cfg['admintheme'] . '/assets/select2/js-select2.js');
Resources::addFile(Cot::$cfg['themes_dir'] . '/admin/' . Cot::$cfg['admintheme'] . '/css/modalbox.css');
Resources::addFile(Cot::$cfg['themes_dir'] . '/admin/' . Cot::$cfg['admintheme'] . '/css/style.css');

// uncomment the lines below if you use this
// Resources::addFile(Cot::$cfg['themes_dir'] . '/admin/' . Cot::$cfg['admintheme'] . '/assets/fancybox/fancybox.css');
// Resources::addFile(Cot::$cfg['themes_dir'] . '/admin/' . Cot::$cfg['admintheme'] . '/assets/fancybox/fancybox.umd.js');


Resources::addFile(Cot::$cfg['themes_dir'] . '/admin/' . Cot::$cfg['admintheme'] . '/assets/perfect-scrollbar/perfect-scrollbar.css');
Resources::addFile(Cot::$cfg['themes_dir'] . '/admin/' . Cot::$cfg['admintheme'] . '/assets/perfect-scrollbar/styles-perfect-scrollbar.css'); 

Resources::linkFileFooter(Cot::$cfg['themes_dir'] . '/admin/' . Cot::$cfg['admintheme'] . '/assets/perfect-scrollbar/perfect-scrollbar.min.js');
Resources::linkFileFooter(Cot::$cfg['themes_dir'] . '/admin/' . Cot::$cfg['admintheme'] . '/assets/perfect-scrollbar/js-perfect-scrollbar.js'); 




if (Cot::$cfg['headrc_consolidate']) {
    Resources::addFile('lib/bootstrap/js/bootstrap.bundle.min.js');
} else {
    Resources::linkFileFooter('lib/bootstrap/js/bootstrap.bundle.min.js');
}

Resources::addFile(Cot::$cfg['themes_dir'] . '/admin/' . Cot::$cfg['admintheme'] . '/js/js.js');







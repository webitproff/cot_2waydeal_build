<?php
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

Resources::addFile(Cot::$cfg['themes_dir'] . '/' . Cot::$cfg['defaulttheme'] . '/assets/jquery/jquery.min.js');

Resources::addFile(Cot::$cfg['themes_dir'] . '/' . Cot::$cfg['defaulttheme'] . '/fontawesome/css/all.min.css', 'css', 200);

Resources::addFile(Cot::$cfg['themes_dir'] . '/' . Cot::$cfg['defaulttheme'] . '/css/modalbox.css');
Resources::addFile(Cot::$cfg['themes_dir'] . '/' . Cot::$cfg['defaulttheme'] . '/css/style.css');

Resources::addFile(Cot::$cfg['themes_dir'] . '/' . Cot::$cfg['defaulttheme'] . '/assets/fancybox/fancybox.css');
Resources::addFile(Cot::$cfg['themes_dir'] . '/' . Cot::$cfg['defaulttheme'] . '/assets/fancybox/fancybox.umd.js');


Resources::addFile(Cot::$cfg['themes_dir'] . '/' . Cot::$cfg['defaulttheme'] . '/assets/perfect-scrollbar/perfect-scrollbar.css');
Resources::addFile(Cot::$cfg['themes_dir'] . '/' . Cot::$cfg['defaulttheme'] . '/assets/perfect-scrollbar/styles-perfect-scrollbar.css'); 

Resources::linkFileFooter(Cot::$cfg['themes_dir'] . '/' . Cot::$cfg['defaulttheme'] . '/assets/perfect-scrollbar/perfect-scrollbar.min.js');
Resources::linkFileFooter(Cot::$cfg['themes_dir'] . '/' . Cot::$cfg['defaulttheme'] . '/assets/perfect-scrollbar/js-perfect-scrollbar.js'); 


Resources::addFile(Cot::$cfg['themes_dir'] . '/' . Cot::$cfg['defaulttheme'] . '/assets/select2/select2.min.css');
Resources::addFile(Cot::$cfg['themes_dir'] . '/' . Cot::$cfg['defaulttheme'] . '/assets/select2/select2.min.js');



if (Cot::$cfg['headrc_consolidate']) {
    Resources::addFile('lib/bootstrap/js/bootstrap.bundle.min.js');
} else {
    Resources::linkFileFooter('lib/bootstrap/js/bootstrap.bundle.min.js');
}

Resources::addFile(Cot::$cfg['themes_dir'] . '/' . Cot::$cfg['defaulttheme'] . '/js/js.js');



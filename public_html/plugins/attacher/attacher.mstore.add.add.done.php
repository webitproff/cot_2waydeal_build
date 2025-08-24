<?php
/* ====================
  [BEGIN_COT_EXT]
  Hooks=mstore.add.add.done,mstore.edit.update.done
  [END_COT_EXT]
  ==================== */

  /**
   * Attacher plugin: mstore add
   *
   * @package Attacher
   * @author Roffun
   * @copyright Copyright (c) Roffun, 2018 - 2019 | https://github.com/Roffun
   * @license BSD License
   **/

defined('COT_CODE') or die('Wrong URL');

if (cot_auth('plug', 'attacher', 'W')) {
    if ($id) {
        att_fixNewPath('mstore', $id);
    }
}

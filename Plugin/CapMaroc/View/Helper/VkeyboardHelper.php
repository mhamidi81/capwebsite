<?php

App::uses('Helper', 'View/Helper');
/**
 * Vkeyboard Helper
 *
 * PHP version 5
 *
 * @category Helper
 * @package  Croogo
 * @version  1.0
 * @author   Fahad Ibnay Heylaal <contact@fahad19.com>
 * @license  http://www.opensource.org/licenses/mit-license.php The MIT License
 * @link     http://www.croogo.org
 */
class VkeyboardHelper extends Helper {

	/**
	 * Other helpers used by this helper
	 *
	 * @var array
	 * @access public
	 */
	public $helpers = array(
		'Html',
		'Js',
	);

	public function beforeRender($viewFile) {
		$this->Html->script('/CapMaroc/js/jquery-ui-personalized-1.5.2.min', array('inline' => false));
		$this->Html->script('/CapMaroc/js/jquery-fieldselection', array('inline' => false));
		$this->Html->script('/CapMaroc/js/vkeyboard', array('inline' => false));
		$this->Html->css("/CapMaroc/css/keyboard", null, array("inline"=>false));
	}
}
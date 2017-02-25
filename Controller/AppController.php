<?php

App::uses('CroogoAppController', 'Croogo.Controller');

/**
 * Base Application Controller
 *
 * @package  Croogo
 * @link     http://www.croogo.org
 */
class AppController extends CroogoAppController {

/**
 * Constructor
 *
 * @access public
 */

	public function beforeFilter() {
		
		$prefix = isset($this->request->params['prefix']) ? $this->request->params['prefix'] : '';
		
		if ($prefix === 'admin') {
			$theme = Configure::read('Site.admin_theme');
			
			if($this->Auth->user('role_id') > 3  && $theme !== 'CapAdmin')
			{
				Configure::write('Site.admin_theme', 'CapAdmin');
				$this->_setupTheme();

			}			
		}

		parent::beforeFilter();
	}
}






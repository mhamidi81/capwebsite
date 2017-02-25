<?php
App::uses('CapMarocAppController', 'CapMaroc.Controller');
/**
 * Faqs Controller
 *
 * @property Diplome $Diplome
 * @property PaginatorComponent $Paginator
 */
class CapsController extends CapMarocAppController {

/**
 * Components
 *
 * @var array
 */
	public $components = array('Paginator');

/**
 * Models used by the Controller
 *
 * @var array
 * @access public
 */
	public $uses = array(
		'Nodes.Node',
	);

/**
 * index method
 *
 * @return void
 */
	public function faq()
	{
		$faqs = $this->Node->find('all', array(
			'conditions' => array(
				'Node.status' => '1',
				'Node.type' => 'node',
				'Node.terms LIKE' =>  '%faq%',
			),
			'fields' => array('id', 'title', 'body'),
			'order' => array('Node.id' => 'DESC'),
			'limit' => 8,
			'cache' => array(
				'name' => 'component_faq',
				'config' => 'nodes_view'
			),
			'recursive' => '-1',
		));
		
		$this->set('faqs', $faqs);
	}
}

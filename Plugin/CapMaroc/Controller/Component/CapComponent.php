<?php

App::uses('Component', 'Controller');

class CapComponent extends Component 
{
	public $components = array('Session', 'Auth', 'RequestHandler');

	public $nodesForLayoutGallery = array();
	public $nodesForLayoutObjectifs = array();
	public $nodesForLayoutFaq = array();

/**
 * initialize
 *
 * @param Controller $controller instance of controller
 */
	public function initialize(Controller $controller)
	{
		$this->controller = $controller;

		// Node model
		if (isset($controller->Node)) 
		{
			$this->Node = $controller->Node;
		} 
		else 
		{
			$this->Node = ClassRegistry::init('Nodes.Node');
		}
	}

/**
 * Called after the Controller::beforeFilter() and before the controller action
 *
 * @param object $controller Controller with components to startup
 * @return void
 */
	public function startup(Controller $controller) 
	{
		if (!isset($controller->request->params['admin']) && !isset($controller->request->params['requested'])) 
		{
			$this->gallery();
			$this->objectifs();
			$this->faq();
		}
	}

	public function gallery()
	{
		$gallery = $this->Node->find('all', array(
			'conditions' => array(
				'Node.status' => '1',
				'Node.type' => 'node',
				'Node.terms LIKE' =>  '%gallery%',
			),
			'fields' => array('id', 'title', 'path', 'filename', 'video'),
			'order' => array('Node.id' => 'DESC'),
			'limit' => 8,
			'cache' => array(
				'name' => 'component_gallery', 
				'config' => 'nodes_view'
			),
			'recursive' => '-1',
		));
		
		$this->nodesForLayoutGallery = $gallery;
	}

	public function objectifs()
	{
		$objectifs = $this->Node->find('all', array(
			'conditions' => array(
				'Node.status' => '1',
				'Node.type' => 'node',
				'Node.terms LIKE' =>  '%objectifs%',
			),
			'fields' => array('id', 'title', 'path', 'body'),
			'order' => array('Node.id' => 'DESC'),
			'limit' => 8,
			'cache' => array(
				'name' => 'component_objectifs', 
				'config' => 'nodes_view'
			),
			'recursive' => '-1',
		));
		
		$this->nodesForLayoutObjectifs = $objectifs;
	}

	public function faq()
	{
		$faq = $this->Node->find('all', array(
			'conditions' => array(
				'Node.status' => '1',
				'Node.type' => 'node',
				'Node.terms LIKE' =>  '%faq%',
			),
			'fields' => array('id', 'title', 'path', 'body'),
			'order' => array('Node.id' => 'DESC'),
			'limit' => 8,
			'cache' => array(
				'name' => 'component_faq', 
				'config' => 'nodes_view'
			),
			'recursive' => '-1',
		));
		
		$this->nodesForLayoutFaq = $faq;
	}
/**
 * Called after the Controller::beforeRender(), after the view class is loaded, and before the
 * Controller::render()
 *
 * @param object $controller Controller with components to beforeRender
 * @return void
 */
	public function beforeRender(Controller $controller) 
	{
		$controller->set('gallery', $this->nodesForLayoutGallery);
		$controller->set('objectifs', $this->nodesForLayoutObjectifs);
		$controller->set('faqs', $this->nodesForLayoutFaq);
	}

}
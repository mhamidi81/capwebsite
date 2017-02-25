<?php
App::uses('AddressesManagementAppController', 'AddressesManagement.Controller');
/**
 * Cities Controller
 *
 * @property City $City
 * @property PaginatorComponent $Paginator
 */
class CitiesController extends AddressesManagementAppController {

/**
 * Components
 *
 * @var array
 */
	public $components = array('Paginator');

/**
 * beforeFilter method
 *
 * @return void
 */
function beforeFilter() { 
	parent::beforeFilter();

	$this->Security->csrfCheck = false;
	$this->Security->validatePost = false;
}

/**
 * get_datagrid_data method
 *
 * @return array
 */
	public function admin_get_datagrid_data() {
		$sort_field = $this->request->data['sort'];
		$sort_order = $this->request->data['order'];
		$limit = $this->request->data['limit'];
		$page = $this->request->data['page'];
		
		$this->paginate = array(
			'limit'	=> $limit, 
			'order' => array(
				$sort_field => $sort_order
			),
			'page' => $page
		);

		$unformated_data = $this->paginate();
		$formated_data = $this->__format_datagrid_data($unformated_data);
		$data = array('rows' => $formated_data, 'total' => $this->params['paging']['City']['count']);
  		$this->autoRender = false;
    	$this->response->type('json');
	    $json = json_encode($data);
	    $this->response->body($json);
	}
/**
 * __format_datagrid_data method
 *
 * @param array $unformated_data unformated data
 * @return array $formated_data formated data
 */
	protected function __format_datagrid_data($unformated_data) {
		$formated_data = array();

		foreach ($unformated_data as $datum) {

			$formated_data[] = $datum;
		}

		return $formated_data;
	}

/**
 * admin_index method
 *
 * @return void
 */
	public function admin_index() {
		$adm_countries = $this->City->Country->find('list');
		$this->set(compact('adm_countries'));
	}

/**
 * admin_add method
 *
 * @return void
 */
 	public function admin_add() {
		$inserted_record = array();
		$this->City->create();
		
		if ($this->City->save($this->request->data)) {
			 $message = __d('addresses_management','The city has been saved');
			 $result = 'success';
			$inserted_record = $this->City->find('first', array(
				'conditions' => array(
					'City.id' => $this->City->id
				)
			));
		} else {
			 $message =__d('addresses_management','The city could not be saved. Please, try again.');
			 $result = 'error';
		}

		$formated_record = $this->__format_datagrid_data(array($inserted_record));
		$data = array('message' =>  $message, 'result' => $result, 'record' => $formated_record[0]);
		$this->set('data', $data);
        $this->set('_serialize', 'data');
	}

/**
 * admin_edit method
 *
 * @return void
 */
	public function admin_edit() {
		
		$updated_record = array();
		
		if ($this->City->save($this->request->data)) {

			$message = __d('addresses_management','The city has been saved');
			$result = 'success';
			$updated_record = $this->City->find('first', array(
				'conditions' => array(
					'City.id' => $this->City->id
				)
			));

		} else {
			$message =__d('addresses_management','The city could not be saved. Please, try again.');
			$result = 'error';
		}

		$formated_record = $this->__format_datagrid_data(array($updated_record));
		$data = array('message' =>  $message, 'result' => $result, 'record' => $formated_record[0]);
		$this->set('data', $data);
        $this->set('_serialize', 'data');
	}

/**
 * admin_delete method
 *
 * @access public
 * @return void
 */
	public function admin_delete() {

		$data = $this->request->data('City');
		$action = !empty($data['action']) ? $data['action'] : null;
		$ids = array();
		
		foreach ($data as $id => $value) {
			if (is_array($value) && !empty($value['id'])) {
				$ids[] = $id;
			}
		}

		list($action, $ids) = array($action, $ids);

		if(count($ids) === 0)
		{
			$message = __d('addresses_management','No item selected');
			$result = 'error';
		}
		elseif($action == null)
		{
			$message = __d('addresses_management','No action selected');
			$result = 'error';
		}
		else
		{
			$processed = $this->City->delete($ids);

			if ($processed) {
				$message = __d('addresses_management','City deleted');
				$result = 'success';
			} else {
				$message = __d('addresses_management','An error occured');
				$result = 'error';
			}
		}

		$data =  array('message' =>  $message, 'result' => $result, 'action' => $action, 'ids' => $ids);
		
		$this->set('data', $data);
        $this->set('_serialize', 'data');		
	}
}

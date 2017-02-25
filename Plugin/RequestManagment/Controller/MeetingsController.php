<?php
App::uses('RequestManagmentAppController', 'RequestManagment.Controller');
/**
 * Meetings Controller
 *
 * @property Meeting $Meeting
 * @property PaginatorComponent $Paginator
 */
class MeetingsController extends RequestManagmentAppController {

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

		$limit = "10";
		
		if ( isset( $this->params['data']['start'] ) && $this->params['data']['length'] != '-1' )
		{
			$limit = $this->params['data']['length'];
		}

		$page = "1";
		
		if ( isset( $this->params['data']['start'] ))
		{
			$page = ($this->params['data']['start'] / $limit) + 1;
		}

		$order = "";
		
		if ( isset( $this->params['data']['order'] ) )
		{
			$order = "";

			foreach ($this->params['data']['order'] as $i => $datum)
			{
				if ( $this->params['data']['columns'][$datum['column']]['orderable'] == "true" )
				{
					if(!empty($order)) $order .= ", ";
					$order .= "".$this->params['data']['columns'][$datum['column']]['data']." ".$datum['dir'];
				}
			}
		}

		if($order == "") $order = "Meeting.id DESC";
		
		$conditions = array();
		
		if ( isset($this->params['data']['filter']))
		{
			$conditions = array($this->params['data']['filter']);
		}

		$this->Paginator->settings = array(
			'conditions' => $conditions,
			'limit' => $limit,
			'page' => $page,
			'order' => $order
		);

		$datum = $this->Paginator->paginate('Meeting');

		$data = array(
			"draw" => (isset($this->params['data']['draw']))? $this->params['data']['draw'] : 1, 
			"recordsTotal" => $this->params['paging']['Meeting']['count'], 
			"recordsFiltered" => $this->params['paging']['Meeting']['count'],
    		"data" => $datum
		);
		$this->set('data', $data);
		$this->set('_serialize', 'data');
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
		$users = $this->Meeting->User->find('list');
		$this->set(compact('users'));
	}

/**
 * admin_get_requests_for_meeting method
 *
 * @return void
 */
	/*public function admin_get_requests_for_meeting() {
		
		$scheduled = $this->Meeting->MeetingRequest->find('list', array(
			'conditions' => array(
				'MeetingRequest.judgment_id IS NULL',
				'Meeting.event_date < Now()'  
			),
			'fields' => array('MeetingRequest.request_id')
		));

		$requests = $this->Meeting->MeetingRequest->Request->find('all', array(
			'conditions' => array(
				'Status.alias' => 'commission',
				'Not' => array('Request.id' => $scheduled)
			),
			'contain' => array('Status', 'Company', 'Counselor.User')
		));

		$available_requests = array();
		
		foreach ($requests as $key => $request) {
			
			if($request['Request']['type'] == 'natural')
			{
				$available_request[$request['Request']['id']] = $request['Request']['id'].' - '. $request['Counselor']['User']['first_name'].' '. $request['Counselor']['User']['last_name'];
			}
			else
			{
				$available_request[$request['Request']['id']] = $request['Company']['name'];
			}
		}

		$this->set('data', $available_requests);
        $this->set('_serialize', 'data');
	}*/

/**
 * admin_add method
 *
 * @return void
 */
 	public function admin_add() {

		$inserted_record = array();
		$errors = array();
		$this->Meeting->create();
		$this->request->data['Meeting']['user_id'] = $this->Auth->user('id');
		if ($this->Meeting->saveAll($this->request->data)) {
			$message = __d('request_managment','The meeting has been saved');
			$result = 'success';
			$inserted_record = $this->Meeting->find('first', array(
				'conditions' => array(
					'Meeting.id' => $this->Meeting->id
				)
			));

			$subject_tpl = (!empty($this->request['data']['Meeting']['name']))? $this->request['data']['Meeting']['name'] : Configure::read('Meeting.invitation_email_subject');
			$body_tpl = (!empty($this->request['data']['Meeting']['message']))? $this->request['data']['Meeting']['message'] : Configure::read('Meeting.invitation_email_body');
			
			$this->Meeting->sendMeetingEmail($this->Meeting->id, $subject_tpl, $body_tpl, true);	
		} else {
			$errors = $this->Meeting->validationErrors;
			$message =__d('request_managment','The meeting could not be saved. Please, try again.');
			$result = 'error';
		}

		$formated_record = $this->__format_datagrid_data(array($inserted_record));
		$data = array('message' =>  $message, 'result' => $result, 'record' => $formated_record[0], 'errors' => $errors);
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
		$errors = array();

		if ($this->Meeting->save($this->request->data)) {

			$message = __d('request_managment','La date de la réunion a été modifiée avec succés');
			$result = 'success';
			$updated_record = $this->Meeting->find('first', array(
				'conditions' => array(
					'Meeting.id' => $this->Meeting->id
				)
			));

			$subject_tpl = (!empty($this->request['data']['Meeting']['name']))? $this->request['data']['Meeting']['name'] : Configure::read('Meeting.invitation_email_subject_edition');
			$body_tpl = (!empty($this->request['data']['Meeting']['message']))? $this->request['data']['Meeting']['message'] : Configure::read('Meeting.invitation_email_body_edition');
			
			$this->Meeting->sendMeetingEmail($this->Meeting->id, $subject_tpl, $body_tpl, true);

		} else {
			$errors = $this->Meeting->validationErrors;
			$message =__d('request_managment','The meeting could not be saved. Please, try again.');
			$result = 'error';
		}

		$formated_record = $this->__format_datagrid_data(array($updated_record));
		$data = array('message' =>  $message, 'result' => $result, 'record' => $formated_record[0] , 'errors' => $errors);
		$this->set('data', $data);
        $this->set('_serialize', 'data');
	}

/**
 * admin_edit method
 *
 * @return void
 */
	public function admin_update_meeting_members() {
		
		$updated_record = array();
		$errors = array();
		$message = __d('request_managment','les membres de la commision ont été modifiés avec succés');
		$meeting_id = (isset($this->request->data['Meeting']['id']))? $this->request->data['Meeting']['id'] : -1;
		$result = 'success'; 
		
		if (!$this->Meeting->exists($meeting_id)) {
			$message =__d('profile_managment', 'Invalide %s', __d('request_managment', 'réunion'));
			$result = 'error';
		}
		else
		{
			$meeting = $this->Meeting->find('first', array('conditions' => array('Meeting.id' => $meeting_id)));
			$old_members_ids = $this->Meeting->MeetingsUser->find('list', array(
				'conditions' => array('MeetingsUser.meeting_id' => $meeting_id),
				'fields' => array('MeetingsUser.user_id')
			));

			$this->request->data['MeetingsUser'] = Hash::insert($this->request->data['MeetingsUser'], '{n}.meeting_id', $meeting_id);
			$this->Meeting->MeetingsUser->deleteAll(array('MeetingsUser.meeting_id' => $meeting_id));
			$valid = $this->Meeting->MeetingsUser->saveAll($this->request->data['MeetingsUser']); 			
 			
 			if(!$valid)
 			{
				$errors = $this->Meeting->MeetingsUser->validationErrors;
				$message =__d('request_managment',"une error s'est produit lors de la sauvegarde veuillez réessayer ulterieurement");
				$result = 'error';

				return false;
			}

			$selected_members_ids = Hash::extract($this->request->data['MeetingsUser'], '{n}.user_id');
			$new_members_ids = array_diff($selected_members_ids, $old_members_ids);

			if(count($new_members_ids) > 0)
			{
				$subject_tpl = Configure::read('Meeting.invitation_email_subject');
				$body_tpl = Configure::read('Meeting.invitation_email_body');
				$this->Meeting->sendMeetingEmail($meeting_id, $subject_tpl, $body_tpl, true, $new_members_ids);
			}
			
			$removed_members = array_diff($old_members_ids, $selected_members_ids);
			
			if(count($removed_members) > 0)
			{
				$subject_tpl = Configure::read('Meeting.member_dismiss_body');
				$body_tpl = Configure::read('Meeting.member_dismiss_body');
				$this->Meeting->sendMeetingEmail($meeting_id, $subject_tpl, $body_tpl, false, $removed_members);
			}
		}

		$formated_record = $this->__format_datagrid_data(array($updated_record));
		$data = array('message' =>  $message, 'result' => $result, 'record' => array() , 'errors' => $errors);
		$this->set('data', $data);
        $this->set('_serialize', 'data');
	}
/**
 * admin_edit method
 *
 * @return void
 */
	public function admin_update_meeting_requests() {
		
		$updated_record = array();
		$errors = array();
		$message = __d('request_managment','les dossiers à traiter durant la réunion ont été modifiés avec succés');
		$result = 'success';

		$meeting_id = (isset($this->request->data['Meeting']['id']))? $this->request->data['Meeting']['id'] : -1;
		
		if (!$this->Meeting->exists($meeting_id)) {
			$message =__d('profile_managment', 'Invalide %s', __d('request_managment', 'réunion'));
		}
		else
		{

			$meeting = $this->Meeting->find('first', array('conditions' => array('Meeting.id' => $meeting_id)));
			
			$this->request->data['MeetingsRequest'] = Hash::insert($this->request->data['MeetingsRequest'], '{n}.meeting_id', $meeting_id);
			$valid = $this->Meeting->MeetingsRequest->saveAll($this->request->data['MeetingsRequest']);
 			
 			if(!$valid)
 			{
				$errors = $this->Meeting->MeetingsRequest->validationErrors;
				$message =__d('request_managment',"une error s'est produit lors de la sauvegarde veuillez réessayer ulterieurement");
				$result = 'error';

				return false;
			}

			$subject_tpl = Configure::read('Meeting.schuduled_request_subject_edition');
			$body_tpl = Configure::read('Meeting.schuduled_request_body_edition');
			$this->Meeting->sendMeetingEmail($meeting_id, $subject_tpl, $body_tpl, true);
		}

		$formated_record = $this->__format_datagrid_data(array($updated_record));
		$data = array('message' =>  $message, 'result' => $result, 'record' => $formated_record[0] , 'errors' => $errors);
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

		$id = (isset($this->request->data['id']))? $this->request->data['id'] : -1;

		if ($this->Meeting->delete($id)) {
			$message = __d('request_managment','Réunion supprimée avec succés');
			$result = 'success';
		} else {
			$message = __d('request_managment','Une erreur est survenue durant la suppression');
			$result = 'error';
		}

		$data =  array('message' =>  $message, 'result' => $result, 'id' => $id);
		
		$this->set('data', $data);
        $this->set('_serialize', 'data');
	}

/**
 * admin_delete_meeting_request method
 *
 * @access public
 * @return void
 */
	public function admin_delete_meeting_request() {

		$id = (isset($this->request->data['id']))? $this->request->data['id'] : -1;

		if ($this->Meeting->MeetingsRequest->deleteAll(array('MeetingsRequest.request_id' => $id), true, true)) {
			$message = __d('request_managment','La demande a été retirée de la réunion avec succés');
			$result = 'success';
		} else {
			$message = __d('request_managment','Une erreur est survenue durant la suppression');
			$result = 'error';
		}
		$meeting_id = $this->request->data['meeting_id'];
		$subject_tpl = Configure::read('Meeting.schuduled_request_subject_edition');
		$body_tpl = Configure::read('Meeting.schuduled_request_body_edition');
		$this->Meeting->sendMeetingEmail($meeting_id, $subject_tpl, $body_tpl, true);
		$data =  array('message' =>  $message, 'result' => $result, 'id' => $id);
		
		$this->set('data', $data);
        $this->set('_serialize', 'data');
	}

/**
 * admin_index method
 *
 * @return void
 */
	public function admin_open($meeting_id) {
		$request_ids = $this->Meeting->MeetingsRequest->find('list', array(
			'conditions' => array('MeetingsRequest.meeting_id' => $meeting_id),
			'contain' => false,
			'fields' => array('MeetingsRequest.request_id')
		));

		$members_ids = $this->Meeting->MeetingsUser->find('list', array(
			'conditions' => array('MeetingsUser.meeting_id' => $meeting_id),
			'contain' => false,
			'fields' => array('MeetingsUser.user_id')
		));

		$members_ids = array_values($members_ids);
		$request_ids = array_values($request_ids);
		$meeting = $this->Meeting->find('first', array(
			'contain' => false,
			'conditions' => array('Meeting.id' => $meeting_id)
		));

		$subject = Configure::read('Meeting.invitation_email_subject_edition');
		$body = Configure::read('Meeting.invitation_email_body_edition');

		$this->set(compact('request_ids', 'meeting_id', 'meeting', 'members_ids', 'subject', 'body'));
	}
}

<?php
App::uses('RequestManagmentAppController', 'RequestManagment.Controller');
/**
 * Requests Controller
 *
 * @property Request $Request
 * @property PaginatorComponent $Paginator
 */
class RequestsController extends RequestManagmentAppController {

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
 * save_meeting_request_judgment method
 *
 * @return void
 */
	public function admin_save_meeting_request_judgment() {
		
		$result = 'error';
		$message =__d('request_managment','Une erreur est survenue durant la validation de profil réssayer svp! ');
		$meetings_request = isset($this->request['data']['MeetingsRequest'])? $this->request['data']['MeetingsRequest'] : '';
		
		if(isset($meetings_request['request_id']) && !empty($meetings_request['judgment_id']) && !empty($meetings_request['meeting_id'])){
			
			if (!$this->Request->exists($meetings_request['request_id'])) {
				$message =__d('profile_managment', 'Invalid %s', __d('profile_managment', 'counselor'));
			}
			else
			{
				$id = $this->Request->MeetingsRequest->field('id', array(
					'MeetingsRequest.request_id' => $meetings_request['request_id'],
					'MeetingsRequest.meeting_id' => $meetings_request['meeting_id'],
				));
				
				if($id)
				{
					$this->Request->MeetingsRequest->id = $id;
				}

				$valid = $this->Request->MeetingsRequest->save(array(
					'request_id' => $meetings_request['request_id'],
					'meeting_id' => $meetings_request['meeting_id'],
					'judgment_id' => $meetings_request['judgment_id'],
					'description' => isset($meetings_request['description'])? $meetings_request['description'] : ''
				));

				if($valid && $this->Request->setStatus('ministry', $meetings_request['request_id'])){
					$message = __d('request_managment',"Le dossier a été envoyé à la ministère pour décision");
					$result = 'success';
				}
			}
		}

		$data = array('message' =>  $message, 'result' => $result, 'errors' => array());
		$this->set('data', $data);
        $this->set('_serialize', 'data');
	}

/**
 * save_member_request_judgment method
 *
 * @return void
 */
	public function admin_save_member_request_judgment() {

		$result = 'error';
		$message =__d('request_managment','Une erreur est survenue durant la validation de profil réssayer svp! ');
		$members_request = isset($this->request['data']['MembersRequest'])? $this->request['data']['MembersRequest'] : '';
		
		if(isset($members_request['request_id']) && !empty($members_request['judgment_id'])){
			
			if (!$this->Request->exists($members_request['request_id'])) {
				$message =__d('profile_managment', 'Invalid %s', __d('profile_managment', 'counselor'));
			}
			else
			{
				$id = $this->Request->MembersRequest->field('id', array(
					'MembersRequest.request_id' => $members_request['request_id'],
					'MembersRequest.user_id' => $this->Auth->User('id'),
				));
				
				if($id)
				{
					$this->Request->MembersRequest->id = $id;
				}

				$valid = $this->Request->MembersRequest->save(array(
					'request_id' => $members_request['request_id'],
					'user_id' => $this->Auth->user('id'),
					'judgment_id' => $members_request['judgment_id'],
					'event_date' => Date('Y-m-d'),
					'description' => isset($members_request['description'])? $members_request['description'] : ''
				));
				
				if($valid){
					$message = __d('request_managment','Votre avis a été enregistré avec succès');
					$result = 'success';
				}
			}
		}

		$data = array('message' =>  $message, 'result' => $result, 'errors' => array());
		$this->set('data', $data);
        $this->set('_serialize', 'data');
	}
/**
 * validate_document_reception method
 *
 * @return void
 */
	public function admin_validate_document_reception() {

		$result = 'error';
		$message =__d('request_managment', 'Une erreur est survenue durant la confirmation de réception du dossier papier!');
		$request = array();

		if(isset($this->request['data']['qr_code'])){
			$qr_code = $this->request['data']['qr_code'];
			
			$request = $this->Request->find('first', array(
				'fields' => array('qr_code', 'id'),
				'conditions' => array(
					"Request.qr_code = '{$qr_code}'",
					'Status.alias' => 'pending_postale_papers'
				),
				'contain' => array('Status')
			));
			
			if (empty($request)) {
				$message =__d('request_managment',"Le code à barre n'est pas valide!");
			}
			else
			{
				if($this->Request->setStatus('profile_validation', $request['Request']['id'])){
					$message = __d('request_managment','La réception du dossier papier a été confirmé avec succès');
					$result = 'success';
				}				
			}
		}

		$data = array('message' =>  $message, 'result' => $result, 'errors' => array(), 'data' => $request);
		$this->set('data', $data);
        $this->set('_serialize', 'data');
	}
/**
 * admin_validate_requester method
 *
 * @return void
 */
	public function admin_completely_required() {

		$result = 'error';
		$message =__d('request_managment','Une erreur est survenue durant la validation de profil réssayer svp! ');

		if(isset($this->request['data']['id'])){
			$id = $this->request['data']['id'];
			
			if (!$this->Request->exists($id)) {
				$message =__d('profile_managment', 'Invalid %s', __d('profile_managment', 'counselor'));
			}
			elseif($this->Request->setStatus('pending_completely', $id))
			{
				$message = __d('request_managment','Le dossier a été marqué comme incomplèt');
				$result = 'success';
				
				if(isset($this->request['data']['title']) && isset($this->request['data']['body']))
				{

					$recipient_id = $this->Request->getRequestUserId($this->request['data']['id']);

					$this->loadModel('MessageManagment.Message');
					$m_status = $this->Message->save(array(
						'sender_id' => $this->Auth->user('id'),
						'recipient_id' => $recipient_id,
						'title' => $this->request['data']['title'],
						'body' => $this->request['data']['body']
					));

					if($m_status)
					{
						$message.= ' , un courriel de notification a été envoyé au bénéficiaire';
					}				
				}
			}
		}


		$data = array('message' =>  $message, 'result' => $result, 'errors' => array());
		$this->set('data', $data);
        $this->set('_serialize', 'data');
	}

/**
 * admin_receive_request_completely method
 *
 * @return void
 */
	public function admin_receive_request_completely() {

		$result = 'error';
		$message =__d('request_managment','Une erreur est survenue durant la validation de profil réssayer svp! ');

		if(isset($this->request['data']['id'])){
			$id = $this->request['data']['id'];

			if (!$this->Request->exists($id)) {
				$message =__d('profile_managment', 'Invalid %s', __d('profile_managment', 'counselor'));
			}
			else
			{
				if($this->Request->setStatus('profile_validation', $id)){
					$message = __d('request_managment','Le dossier a été confirmé complet avec succès');
					$result = 'success';
				}
			}
		}

		$data = array('message' =>  $message, 'result' => $result, 'errors' => array());
		$this->set('data', $data);
        $this->set('_serialize', 'data');
	}
/**
 * admin_validate_requester method
 *
 * @return void
 */
	public function admin_invalidate_requester() {

		$result = 'error';
		$message =__d('request_managment','Une erreur est survenue durant la validation de profil réssayer svp! ');

		if(isset($this->request['data']['id'])){
			$id = $this->request['data']['id'];

			if (!$this->Request->exists($id)) {
				$message =__d('profile_managment', 'Invalid %s', __d('profile_managment', 'counselor'));
			}
			else
			{
				
				if($this->Request->setStatus('profile_validation', $id)){
					$message = __d('request_managment','Le dossier a été envoyé à la direction avec succès');
					$result = 'success';
				}
			}
		}

		$data = array('message' =>  $message, 'result' => $result, 'errors' => array());
		$this->set('data', $data);
        $this->set('_serialize', 'data');
	}

/**
 * admin_send_to_ministary method
 *
 * @return void
 */
	public function admin_send_to_ministary() {

		$message =__d('request_managment', "Une erreur est survenue lors de l'envoi du dossier! ");
		$result = 'error';

		if(isset($this->request['data']['id'])){
			$id = $this->request['data']['id'];
			
			if (!$this->Request->exists($id)) {
				$message =__d('profile_managment', 'Invalid %s', __d('profile_managment', 'counselor'));
			}
			else
			{
				if($this->Request->setStatus('ministary', $id)){
					$message = __d('request_managment','Le dossier a été envoyé à la direction avec succès');
					$result = 'success';
				}
			}
		}

		$data = array('message' =>  $message, 'result' => $result, 'errors' => array());
		$this->set('data', $data);
        $this->set('_serialize', 'data');
	}

/**
 * admin_grant_request method
 *
 * @return void
 */
	public function admin_save_request_decision() {
		
		$message =__d('request_managment', "Une erreur est survenue lors de l'abrobation de l'agrément! ");
		$result = 'error';
		
		if(isset($this->request['data']['Request']['request_id'])  && !empty($this->request['data']['Request']['judgment'])){
			$id = $this->request['data']['Request']['request_id'];
			$judgment = $this->request['data']['Request']['judgment'];
			
			if (!$this->Request->exists($id)) {
				$message =__d('profile_managment', 'Invalid %s', __d('profile_managment', 'counselor'));
			}
			else
			{
				$description = isset($this->request['data']['Request']['description'])? $this->request['data']['Request']['description'] : '';
				
				if($judgment == 'Favorable')
				{
					if($this->Request->setStatus('granted', $id, $description)){
						$message = __d('request_managment', "L'agrément a été abrobé au bénéficiaire avec succès");
						$result = 'success';
					}
				}
				elseif($judgment == 'Défavorable')
				{
					if($this->Request->setStatus('rejected', $id, $description)){
						$message = __d('request_managment', "L'agrément a été abrobé au bénéficiaire avec succès");
						$result = 'success';
					}
				}

			}
		}

		$data = array('message' =>  $message, 'result' => $result, 'errors' => array());
		$this->set('data', $data);
        $this->set('_serialize', 'data');
	}

/**
 * admin_validate_requester method
 *
 * @return void
 */
	public function admin_validate_requester() {

		$message =__d('request_managment','Une erreur est survenue durant la validation de profil réssayer svp! ');
		$result = 'error';

		if(isset($this->request['data']['id'])){
			$id = $this->request['data']['id'];
			
			if (!$this->Request->exists($id)) {
				$message =__d('profile_managment', 'Invalid %s', __d('profile_managment', 'counselor'));
			}
			else
			{
				if($this->Request->setStatus('commission', $id)){
					$message = __d('request_managment','Le dossier a été envoyé à la direction avec succès');
					$result = 'success';
				}
			}
		}

		$data = array('message' =>  $message, 'result' => $result, 'errors' => array());
		$this->set('data', $data);
        $this->set('_serialize', 'data');
	}

/**
 * get_requester method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_get_requester_data($id, $meeting_id = false) {
		
		if (!$this->Request->exists($id)) {
			throw new NotFoundException(__d('profile_managment', 'Invalid %s', __d('profile_managment', 'counselor')));
		}

		$members_request = array();
		$companies_documents = array();
		$members_judgments = array();
		$meeting_request = array();
		$contexte = false;
		
		$request = $this->Request->find('first', array(
			'conditions' => array('Request.id' => $id),
			'contain' => array('Status')
		));
		
		if($request['Request']['requester_type'] == "natural")
		{
			$data = $this->Request->Counselor->find('first', array(
				'conditions' => array(
					'Counselor.id' => $request['Request']['requester_id']
				),
				'contain' => array(
					'CounselorsDocument',
					'CounselorsLanguage.Language',
					'CounselorsSpeciality.Speciality',
					'CommunityActivity',
					'ProfessionalExperience',
					'PublicationResearch',
					'Qualification' => array('Establishment' , 'Diplome.DiplomeType'),
					'User'
				)
			));

			$documents = $this->Request->Counselor->CounselorsDocument->Document->find('all', array(
				'contain' => false
			));
		}
		else
		{
			$data = $this->Request->Company->find('first', array(
				'conditions' => array(
					'Company.id' => $request['Request']['requester_id']
				),
				'contain' => array(
					'Employee',
					'Counselor.CounselorsLanguage.Language',
					'Counselor.CounselorsSpeciality.Speciality',
					'Counselor.CommunityActivity',
					'Counselor.ProfessionalExperience',
					'Counselor.PublicationResearch',
					'Counselor.Qualification' => array('Establishment' , 'Diplome.DiplomeType'),
					'Counselor.User',
					'Counselor.CounselorsDocument.Document',
					'CompaniesDocument.Edocument',
					'City'
				)
			));

			$companies_documents = $this->Request->Company->CompaniesDocument->Edocument->find('all', array(
				'contain' => false
			));
			$documents = $this->Request->Counselor->CounselorsDocument->Document->find('all', array(
				'contain' => false
			));
		}

		if($meeting_id)
		{
			$meeting_request = $this->Request->MeetingsRequest->find('first', array(
				'conditions' => array(
					'meeting_id' => $meeting_id,
					'request_id' => $request['Request']['id']
					),
				'contain' => array('Judgment', 'Meeting')
			));
			$contexte = 'meeting';
		}
		else
		{
			$meeting_request = $this->Request->MeetingsRequest->find('first', array(
				'conditions' => array(
					'request_id' => $request['Request']['id']
					),
				'contain' => array('Judgment', 'Meeting'),
				'order' => 'MeetingsRequest.id desc'
			));			
		}

		$members_judgments = $this->Request->MembersRequest->find('all', array(
			'conditions' => array(
				'request_id' => $request['Request']['id']
				),
			'contain' => array('Judgment', 'User.Establishment')
		));

		$request_statuses = $this->Request->RequestStatus->find('all', array(
			'contain' => array('Status', 'User'),
			'conditions' => array('RequestStatus.request_id' => $request['Request']['id']),
			'order' => 'RequestStatus.event_date desc'
		));

		$judgment_data = $this->Request->MeetingsRequest->Judgment->find("all");
		$judgments = Hash::combine($judgment_data, '{n}.Judgment.id', '{n}.Judgment.name');
		$this->set(compact('data', 'request', 'documents', 'companies_documents', 'judgments', 'members_judgments', 'judgment_data', 'meeting_request', 'contexte', 'request_statuses'));
	}

/**
 * get_pending_request_datagrid_data method
 *
 * @return array
 */
	public function admin_get_pending_request_datagrid_data() {		
		
		$conditions = array();

		$pending_requests = $this->Request->query("
			SELECT `Request`.`id`, `Request`.`requester_type`, 
			`Request`.`number`, `Request`.`event_date`, `Company`.`name`, `Counselor`.`first_name`, `Counselor`.`last_name`
			FROM rqm_requests AS `Request` 
			LEFT JOIN `cpm_companies` AS `Company` ON (`Request`.`requester_id` = `Company`.`id` AND `Request`.`requester_type` = 'legal') 
			LEFT JOIN `pfm_counselors` AS `Counselor` ON (`Request`.`requester_id` = `Counselor`.`id` AND `Request`.`requester_type` = 'natural') 
			LEFT JOIN `rqm_statuses` AS `Status` ON (`Request`.`status_id` = `Status`.`id`)
			Where Status.alias in ('commission', 'commission_meeting') and Request.id NOT IN 
			(Select MeetingsRequest.request_id 
			FROM rqm_meetings_requests MeetingsRequest 
			JOIN rqm_requests as Request on (Request.id = MeetingsRequest.request_id)
			JOIN rqm_statuses on (Request.status_id = rqm_statuses.id)
			JOIN rqm_meetings as Meeting on (Meeting.id = MeetingsRequest.meeting_id)
			WHERE rqm_statuses.alias = 'commission_meeting' and Meeting.event_date > NOW())
			order by Request.id
			limit 0,100;
		");

		$data = array(
    		"data" => $pending_requests
		);

		$this->set('data', $data);
		$this->set('_serialize', 'data');
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

		if($order == "") $order = "Request.id DESC";
		
		$conditions = array();
		
		if ( isset($this->params['data']['filter']) )
		{
			$conditions = array($this->params['data']['filter']);
		}

		$role_id = AuthComponent::user('role_id');

		$connected_user_role = $this->Request->MembersRequest->User->Role->field('alias', array('Role.id' => $role_id));

		switch ($connected_user_role) {
			case 'secretary':
				$conditions[] = array('Status.alias' => array('pending_postale_papers', 'pending_completely', 'profile_validation'));
				break;
			case 'commission_member':
				$conditions[] = array('Status.alias' => array('commission', 'commission_meeting'));
				break;
			case 'director':
				$conditions[] = array('Status.alias' => array('commission', 'commission_meeting'));
				break;
			case 'minister':
				$conditions[] = array('Status.alias' => array('ministry', 'rejected', 'granted'));
				break;
			default:
				# code...
				break;
		}

		$this->Paginator->settings = array(
			'conditions' => $conditions,
			'contain' => array('Counselor', 'Company', 'Status'),
			'limit' => $limit,
			'page' => $page,
			'order' => $order
		);

		$datum = $this->Paginator->paginate('Request');

		$data = array(
			"draw" => (isset($this->params['data']['draw']))? $this->params['data']['draw'] : 1, 
			"recordsTotal" => $this->params['paging']['Request']['count'], 
			"recordsFiltered" => $this->params['paging']['Request']['count'],
    		"data" => $datum
		);
		$this->set('data', $data);
		$this->set('_serialize', 'data');
	}
/**
 * get_datagrid_data method
 *
 * @return array
 */
	public function admin_get_datagrid_data_for_meeting() {		

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

		if($order == "") $order = "Request.id DESC";
		
		$conditions = array();
		
		if ( isset($this->params['data']['filter']) )
		{
			$conditions = array($this->params['data']['filter']);
		}

		$this->Paginator->settings = array(
			'conditions' => $conditions,
			'contain' => array('Counselor', 'Company', 'Status'),
			'limit' => $limit,
			'page' => $page,
			'order' => $order
		);

		$datum = $this->Paginator->paginate('Request');

		$data = array(
			"draw" => (isset($this->params['data']['draw']))? $this->params['data']['draw'] : 1, 
			"recordsTotal" => $this->params['paging']['Request']['count'], 
			"recordsFiltered" => $this->params['paging']['Request']['count'],
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
		$counselors = $this->Request->Counselor->find('list');
		$statuses = $this->Request->Status->find('list');
		$this->set(compact('counselors', 'statuses'));
	}

/**
 * admin_add method
 *
 * @return void
 */
 	public function admin_add() {

		$inserted_record = array();
		$errors = array();
		$this->Request->create();
		
		if ($this->Request->save($this->request->data)) {
			$message = __d('request_managment','The request has been saved');
			$result = 'success';
			$inserted_record = $this->Request->find('first', array(
				'conditions' => array(
					'Request.id' => $this->Request->id
				)
			));
		} else {
			$errors = $this->Request->validationErrors;
			$message =__d('request_managment','The request could not be saved. Please, try again.');
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

		if ($this->Request->save($this->request->data)) {

			$message = __d('request_managment','The request has been saved');
			$result = 'success';
			$updated_record = $this->Request->find('first', array(
				'conditions' => array(
					'Request.id' => $this->Request->id
				)
			));

		} else {
			$errors = $this->Request->validationErrors;
			$message =__d('request_managment','The request could not be saved. Please, try again.');
			$result = 'error';
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

		if ($this->Request->delete($id)) {
			$message = __d('request_managment','Request deleted');
			$result = 'success';
		} else {
			$message = __d('request_managment','An error occured');
			$result = 'error';
		}

		$data =  array('message' =>  $message, 'result' => $result, 'id' => $id);
		
		$this->set('data', $data);
        $this->set('_serialize', 'data');
	}
}

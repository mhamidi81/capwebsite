<?php
App::uses('ProfileManagmentAppController', 'ProfileManagment.Controller');
/**
 * Counselors Controller
 *
 * @property Counselor $Counselor
 * @property PaginatorComponent $Paginator
 */
class CounselorsController extends ProfileManagmentAppController {

/**
 * Components
 *
 * @var array
 */
	public $components = array('Paginator', 'ProfileManagment.Upload');

	
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
 * Wizard method
 *
 * @return void
 */


/**
 * Wizard method
 *
 * @return void
 */
	public function viewpdf($request_id)
	{
		$this->layout = 'pdf';
		//Configure::write('debug',0);
		$request = $this->Counselor->Request->find('first', array(
			'conditions' => array(
				'Request.id' => $request_id
			),
			'contain' => array('Status', 'Counselor.CounselorsDocument.Document', 'Company' => array('Counselor.CounselorsDocument.Document', 'City', 'CompaniesDocument.Edocument'))
		));

		$counselor = $this->Counselor->find('first', array(
			'conditions' => array(
				'Counselor.id' => ($request['Request']['requester_type'] == "natural")? $request['Request']['requester_id'] : $request['Company']['counselor_id']
			),
			'contain' => array(
				'City',
				'BirthCity',
				'CounselorsDocument',
				'CounselorsLanguage',
				'CommunityActivity',
				'ProfessionalExperience',
				'PublicationResearch',
				'Qualification' => array('Establishment' , 'Diplome.DiplomeType', 'Speciality'),
				'User'
			)
		));
		$this->Counselor->Request->id = $request['Request']['id'];
		$this->Counselor->Request->saveField('pdf_downloaded', 1);
		$family_statuses = $this->Counselor->familyStatuses;
		$this->set(compact('request', 'counselor', 'family_statuses'));
	}

/**
 * Wizard method
 *
 * @return void
 */
	public function home()
	{
		$this->layout = "home_layout";
		$request = array();
		$userId = AuthComponent::user('id');
		$user_email = AuthComponent::user('email');
		$user = AuthComponent::user();
		$has_recent_request = $this->__user_has_recent_request();
		
		

		$requests = $this->Counselor->Request->find('all', array(
			'conditions' => array('Request.user_id' => $userId),
			'contain' => array('Status', 'Counselor', 'Company'),
			'order' => array('Request.id' => 'desc')
		));	

		if($has_recent_request)
		{
			switch ($requests[0]['Status']['alias']) {
				case 'pending_postale_papers':

					if($requests[0]['Request']['pdf_downloaded'] == 1)
					{
						$active_steps = 	array(3, 4);
					}
					else
					{
						$active_steps = 	array(2);
					}
				break;
				case 'pending_completely':
					$active_steps = 	array(4);
				break;	
				case 'profile_validation':
				case 'commission':
				case 'commission_meeting':
				case 'ministry':
					$active_steps = 	array(5);
					break;				
				default:
					$active_steps = 	array(0);
					break;
			}
		}
		else
		{
			$active_steps =  array(1);
		}

		$this->loadModel('MessageManagment.Message');
		$this->Paginator->settings = array(
			'conditions' => array(
				'email_to' => $user_email,
				'mailbox' => 'inbox',
				'deleted' => false
			),
			'limit' => 2,
			'contain' => array(
				'Sender' => array(
				'fields' => array('first_name','last_name','email','image')
				),
				'Recipient' => array(
					'fields' => array('first_name','last_name','email','image')
				)
			),
		'order' => 'Message.created DESC'
		);

		$messages = $this->Paginator->paginate('Message');
		
		$unread_count = $this->Message->find('count',array(
			'conditions' => array(
				'Message.email_to' => $user_email,
				'Message.mailbox' => 'inbox',
				'Message.status' => 0
			)
		));
		$this->set(compact('requests', 'messages', 'has_recent_request', 'active_steps', 'user', 'unread_count'));
	}

/**
 * add method
 *
 * @return void
 */
	private function __user_has_recent_request(){
		$has_recent_request = $this->Counselor->Request->find('count', array(
			'conditions' => array(
				'Status.alias NOT' => array('creation'),
				'Request.user_id' => $this->Session->read('Auth.User.id'),
				'DATEDIFF(NOW(), Request.created) < 90'
			)
		));

		return $has_recent_request > 0;
	}

/**
 * add method
 *
 * @return void
 */
	public function add()
	{
		$this->layout = "wizard_layout";
		$counselor = array();
		$companies_documents = array();
		$data = array();
		$user = $this->Session->read('Auth.User');
		$counselor_id = $this->Counselor->field('id', array(
			'Counselor.user_id' => $this->Session->read('Auth.User.id')
		));
		
		if($this->__user_has_recent_request())
		{
			$this->Session->setFlash(__d('croogo', "Vous ne pouvez pas envoyer une autre demande selon les régles d'utilisation!."), 'flash', array('class' => 'error'));
			$this->redirect(array('action' => 'home'));
		}

		$request = $this->Counselor->Request->find('first', array(
			'conditions' => array(
				'Status.alias' => array('creation'),
				'Request.user_id' => $this->Session->read('Auth.User.id')
			),
			'contain' => array('Status')
		));
		
		if(!empty($request))
		{

			if($request['Request']['requester_type'] == "natural")
			{
				$data = $this->Counselor->find('first', array(
					'conditions' => array(
						'Counselor.id' => $request['Request']['requester_id']
					),
					'contain' => array(
						'CounselorsDocument',
						'CounselorsLanguage',
						'CommunityActivity',
						'ProfessionalExperience',
						'PublicationResearch',
						'Qualification' => array('Establishment' , 'Diplome.DiplomeType', 'Speciality'),
						'User'
					)
				));
				$this->request->data['Counselor'] = $data['Counselor'];
				$this->request->data['ProfessionalExperience'] = $data['ProfessionalExperience'];
				$this->request->data['PublicationResearch'] = $data['PublicationResearch'];
				$this->request->data['CommunityActivity'] = $data['CommunityActivity'];
				$this->request->data['Qualification'] = $data['Qualification'];
				$this->request->data['CounselorsLanguage'] = $data['CounselorsLanguage'];
				$this->request->data['CounselorsDocument'] = $data['CounselorsDocument'];
			}
			else
			{
				$data = $this->Counselor->Request->Company->find('first', array(
					'conditions' => array(
						'Company.id' => $request['Request']['requester_id']
					),
					'contain' => array(
						'Counselor.CounselorsLanguage',
						'Counselor.CommunityActivity',
						'Counselor.ProfessionalExperience',
						'Counselor.PublicationResearch',
						'Counselor.Qualification' => array('Establishment' , 'Diplome.DiplomeType', 'Speciality'),
						'Counselor',
						'Counselor.CounselorsDocument.Document',
						'CompaniesDocument.Edocument',
						'City',
					)
				));

				$this->request->data['Company'] = $data['Company'];
				$this->request->data['Counselor'] = $data['Counselor'];
				$this->request->data['ProfessionalExperience'] = $data['Counselor']['ProfessionalExperience'];
				$this->request->data['PublicationResearch'] = $data['Counselor']['PublicationResearch'];
				$this->request->data['CommunityActivity'] = $data['Counselor']['CommunityActivity'];
				$this->request->data['Qualification'] = $data['Counselor']['Qualification'];
				$this->request->data['CounselorsLanguage'] = $data['Counselor']['CounselorsLanguage'];
				$this->request->data['CounselorsDocument'] = $data['Counselor']['CounselorsDocument'];
				$this->request->data['CompaniesDocument'] = $data['CompaniesDocument'];
			}
		}

		$cities = $this->Counselor->City->find('list');
		$diplomes = $this->Counselor->Qualification->Diplome->find('list');
		$specialities = $this->Counselor->Qualification->Speciality->find('list');
		$establishments = $this->Counselor->Qualification->Establishment->find('list');
		$documents_type_counselor = $this->Counselor->CounselorsDocument->Document->find('all');
		$documents_type_company = $this->Counselor->Request->Company->CompaniesDocument->Edocument->find('all');
		$languages = array('Arabe' => 'Arabe','Amazigh' => 'Amazigh','Français' =>  'Français','Anglais' => 'Anglais', 'Espagnol' => 'Espagnol');
		$mentions = array('Excellent' => 'Excellent','Très bien' => 'Très bien','Bien' => 'Bien','Assez bien' => 'Assez bien','Moyen' => 'Moyen','faible' => 'faible');
		$family_statuses = $this->Counselor->familyStatuses;
		$this->set(compact('family_statuses', 'languages', 'mentions', 'user', 'counselor', 'cities', 'request', 'data', 'specialities', 'diplomes', 'establishments', 'documents_type_company', 'documents_type_counselor'));
	}

/**
 * upload method
 *
 * @return void
 */
    public function upload(){

		$message =__d('request_managment','Une erreur est survenue durant la sauvegarde!');
		$result = 'error';
		$id = -1;
        $type = $this->request->data['type'];
        $document_id = isset($this->request->data['document_id'])? $this->request->data['document_id'] : -1; 
		
		$request = $this->Counselor->Request->find('first', array(
			'conditions' => array(
				'Status.alias' => array('creation'),
				'Request.user_id' => $this->Session->read('Auth.User.id')
			),
			'contain' => array('Status', 'Company', 'Counselor')
		));

		$counselor_id  = ($request['Request']['requester_type'] == "legal")? $request['Company']['counselor_id'] : $request['Counselor']['id'];

        //enlever les caracters specieux du nom de fichier 
        $name = preg_replace("/[^a-zA-Z0-9_]/", "",pathinfo($this->request['form']['file']['name'], PATHINFO_FILENAME));
        //recupperer l'extension du fichier
        $ext = pathinfo($this->params['form']['file']['name'], PATHINFO_EXTENSION);
        
        //Ajouter le timestamp de la date de création en préf
        $filename =  $counselor_id.'_'.time().'.'.$ext;

        //renommer le fichier
        $this->Upload->custom_name($filename);
        $upload_path = $this->_getUploadPath($type);
        $this->Upload->destination($upload_path);
        
        //envoyer le fichier au serveur
        if($this->Upload->upload($this->params['form']['file']))
        {
            if($type == 'counselor_photo')
            {
            	if($this->Counselor->save(array('id' => $counselor_id, 'image' => $filename)))
            	{
            		$id = $this->Counselor->id;
            		$result = 'success';
            	}
            }
            else
            if($type == 'counselor_document')
            {
            	if($this->Counselor->CounselorsDocument->save(array(
            		'counselor_id' => $counselor_id,
            		'filename' => $filename,
            		'document_id' => $document_id
            	)))
            	{
            		$id = $this->Counselor->CounselorsDocument->id;
            		$result = 'success';
            	}
            }else
            if($type == 'company_logo')
            {
            	if($this->Counselor->Request->Company->save(array('id' => $request['Company']['id'], 'logo' => $filename)))
            	{
            		$id = $this->Counselor->Request->Company->id;
            		$result = 'success';
            	}
            }
            else
            if($type == 'company_document')
            {
            	if($this->Counselor->Request->Company->CompaniesDocument->save(array(
            		'filename' => $filename,
            		'company_id' => $request['Request']['requester_id'],
            		'edocument_id' => $document_id
            	)))
            	{
            		$result = 'success';
            	}
            }
        }

		if($result == 'success')
		{
			$message =__d('request_managment',"Le fichier a été téléversé avec succès");
		}

        $data = array('message' =>  $message, 'result' => $result, 'errors' => array(), 'id' => $id, 'filename' =>  $filename);
        $this->set('data', $data);
        $this->set('_serialize', 'data');
    }

/**
 * delete_file method
 *
 * @return void
 */
    public function delete_file(){

		$message =__d('request_managment','Une erreur est survenue durant la suppession!');
		$result = 'error';

        $type = $this->request->data['type'];
        $document_id = isset($this->request->data['document_id'])? $this->request->data['document_id'] : -1; 
		
		$request = $this->Counselor->Request->find('first', array(
			'conditions' => array(
				'Status.alias' => array('creation'),
				'Request.user_id' => $this->Session->read('Auth.User.id')
			),
			'contain' => array('Status', 'Company', 'Counselor')
		));

		$counselor_id  = ($request['Request']['requester_type'] == "legal")? $request['Company']['counselor_id'] : $request['Counselor']['id'];

        $upload_path = $this->_getUploadPath($type);

        if($type == 'counselor_photo')
        {	
        	$this->Counselor->id = $counselor_id;
        	$file = $this->Counselor->field('image');
        	
        	if($file) unlink($upload_path.DS.$file);
        	
        	if($this->Counselor->saveField('image', ''))
        	{
        		$result = 'success';
        	}
        }
        else
        if($type == 'counselor_document')
        {
        	$file = $this->Counselor->CounselorsDocument->field('filename', array(
        		'counselor_id' => $counselor_id,
        		'document_id' => $document_id
        	));
        	if($file) unlink($upload_path.DS.$file);

        	if($this->Counselor->CounselorsDocument->deleteAll(array(
        		'counselor_id' => $counselor_id,
        		'document_id' => $document_id
        	)))
        	{
        		$result = 'success';
        	}
        }else
        if($type == 'company_logo')
        {	
        	$this->Counselor->Request->Company->id = $request['Company']['id'];
        	$file = $this->Counselor->Request->Company->field('logo');
        	
        	if($file) unlink($upload_path.DS.$file);
        	
        	if($this->Counselor->Request->Company->saveField('logo', ''))
        	{
        		$result = 'success';
        	}
        }
        else
        if($type == 'company_document')
        {
        	$file = $this->Counselor->Request->Company->CompaniesDocument->field('filename', array(
        		'company_id' => $request['Company']['id'],
        		'edocument_id' => $document_id
        	));

        	if($file) unlink($upload_path.DS.$file);

        	if($this->Counselor->Request->Company->CompaniesDocument->deleteAll(array(
        		'company_id' => $request['Company']['id'],
        		'edocument_id' => $document_id
        	)))
        	{
        		$result = 'success';
        	}
        }

		if($result = 'success')
		{
			$message =__d('request_managment',"Le fichier a été supprimé avec succès");
		}

        $data = array('message' =>  $message, 'result' => $result, 'errors' => array());
        $this->set('data', $data);
        $this->set('_serialize', 'data');
    }
/**
 * save_step1 method
 *
 * @return void
 */
	public function save_step1()
	{
		$message =__d('request_managment','Une erreur est survenue durant la sauvegarde!');
		$result = 'error';
		$errors = array();
		$this->layout = "wizard_layout";
		$counselor = array();
		
		$request = $this->Counselor->Request->find('first', array(
			'conditions' => array(
				'Status.alias' => array('creation'),
				'Request.user_id' => $this->Session->read('Auth.User.id')
			),
			'contain' => array('Status', 'Company', 'Counselor')
		));

		if(!empty($request))
		{
			$this->request->data['Request']['id'] = $request['Request']['id'];

			if($request['Request']['requester_type'] == "legal")
			{
				if($this->request->data['Request']['requester_type'] == 'natural')
				{
					$this->Counselor->Request->Company->delete($request['Request']['requester_id']);
				}
				else
				{
					$this->request->data['Company']['id'] = $request['Company']['id'];
				}
				$this->request->data['Counselor']['id'] =  $request['Company']['counselor_id'];
			}
			else
			{

				$this->request->data['Counselor']['id'] = $request['Counselor']['id'];
			}

		}

		$this->request->data['Counselor']['user_id'] = $this->Session->read('Auth.User.id');
		$this->request->data['Request']['user_id'] = $this->Session->read('Auth.User.id');

		if($this->Counselor->save($this->request->data['Counselor']))
		{

			if($this->request->data['Request']['requester_type'] == 'legal')
			{
				$this->request->data['Company']['counselor_id'] = $this->Counselor->id;

				if($this->Counselor->Request->Company->save($this->request->data['Company']))
				{
					$this->request->data['Request']['requester_id'] = $this->Counselor->Request->Company->id;
				}
				else
				{
					$errors = $this->Counselor->Request->Company->validationErrors;
				}				
			}
			else
			{
				$this->request->data['Request']['requester_id'] = $this->Counselor->id;
			}
			
			$status_id = $this->Counselor->Request->Status->field('id', array('alias' => 'creation'));
			
			$this->request->data['Request']['status_id'] = $status_id;

			if($this->Counselor->Request->save($this->request->data['Request']))
			{
				$result == 'success';
			}
		}
		else
		{
			$errors = $this->Counselor->validationErrors;
		}

		if($result = 'success')
		{
			$message =__d('request_managment',"L'étape 1 a été entregistrée avec succès");
		}

		$data = array('message' =>  $message, 'result' => $result, 'errors' => $errors);

		$this->set('data', $data);
		$this->set('_serialize', 'data');
	}

/**
 * save_step2 method
 *
 * @return void
 */
	public function save_step2()
	{
		$message =__d('request_managment','Une erreur est survenue durant la sauvegarde!');
		$result = 'error';
		$errors = array();
		$this->layout = "wizard_layout";
		$counselor = array();
				
		$request = $this->Counselor->Request->find('first', array(
			'conditions' => array(
				'Status.alias' => array('creation'),
				'Request.user_id' => $this->Session->read('Auth.User.id')
			),
			'contain' => array('Status', 'Company', 'Counselor')
		));

		if(empty($request))
		{
			$this->redirect('home');
		}

		if($request['Request']['requester_type'] == "legal")
		{
			$this->request->data['Counselor']['id'] =  $request['Company']['counselor_id'];
		}
		else
		{
			$this->request->data['Counselor']['id'] = $request['Counselor']['id'];
		}

		$this->request->data['Counselor']['user_id'] = $this->Session->read('Auth.User.id');
		$this->request->data['Counselor']['gender'] = $this->Session->read('Auth.User.gender');

		$this->Counselor->CounselorsLanguage->deleteAll(array('counselor_id' => $this->request->data['Counselor']['id']), true, true);
		$this->Counselor->Qualification->deleteAll(array('counselor_id' => $this->request->data['Counselor']['id']), true, true);
		$this->Counselor->ProfessionalExperience->deleteAll(array('counselor_id' => $this->request->data['Counselor']['id']), true, true);
		$this->Counselor->PublicationResearch->deleteAll(array('counselor_id' => $this->request->data['Counselor']['id']), true, true);
		$this->Counselor->CommunityActivity->deleteAll(array('counselor_id' => $this->request->data['Counselor']['id']), true, true);
		
		foreach ($this->request->data['CommunityActivity'] as $key => $datum) {
			
			if(empty($datum['start_date']) || empty($datum['end_date']) || empty($datum['association']) || empty($datum['name']))
			{
				unset($this->request->data['CommunityActivity'][$key]);
			}
		}

		foreach ($this->request->data['PublicationResearch'] as $key => $datum) {
			
			if(empty($datum['event_date']) || empty($datum['name']))
			{
				unset($this->request->data['PublicationResearch'][$key]);
			}
		}

		if(!$this->Counselor->saveAll($this->request->data))
		{
			$errors = $this->Counselor->validationErrors;
		}
		else
		{
			$result = 'success';
			$message =__d('request_managment',"L'étape 2 a été entregistrée avec succès");
		}

		$data = array('message' =>  $message, 'result' => $result, 'errors' => $errors);

		$this->set('data', $data);
		$this->set('_serialize', 'data');
	}

/**
 * save_step3 method
 *
 * @return void
 */
	public function save_step3()
	{

    	$result = 'success';
    	$message =__d('request_managment',"l'étape 3 à été enregistrée avec succès");    		

        $data = array('message' =>  $message, 'result' => $result, 'errors' => array());
        $this->set('data', $data);
        $this->set('_serialize', 'data');
	}
/**
 * save_step4 method
 *
 * @return void
 */
	public function save_step4()
	{
		$message =__d('request_managment','Une erreur est survenue durant la sauvegarde!');
		$result = 'error';
		$errors = array();

		$counselor = array();
				
		$request = $this->Counselor->Request->find('first', array(
			'conditions' => array(
				'Status.alias' => array('creation'),
				'Request.user_id' => $this->Session->read('Auth.User.id')
			),
			'contain' => array('Status', 'Company', 'Counselor', 'RequestStatus.Status.alias')
		));

		if(!empty($request))
		{

			$status = 'pending_postale_papers';

			if(in_array('profile_validation', Hash::extract($request['RequestStatus'], '{n}.Status.alias')))
			{
				$status = 'profile_validation';
			}

			$status_id = $this->Counselor->Request->Status->field('id', array('alias' => $status));
			$request['Request']['status_id'] = $status_id;

			if($this->Counselor->Request->save($request['Request']))
			{
				$result = 'success';
				$message =__d('request_managment',"Demande envoyé avec succès");
			}
		}

		$data = array('message' =>  $message, 'result' => $result, 'errors' => $errors);

		$this->set('data', $data);
		$this->set('_serialize', 'data');
	}

/**
 * Reset
 *
 * @return void
 * @access public
 */
	public function change_password() {
		
		$message =__d('request_managment','Une erreur est survenue durant la sauvegarde!');
		$result = 'error';
		$errors = array();
		$old_password = $this->request->data['User']['old_password'];
		$user_id = $this->Counselor->User->field('id', array(
			'User.password' => AuthComponent::password($old_password),
			'User.email' => $this->Auth->user('email')
		));
		
		if ($user_id) {
			$this->Counselor->User->id = $user_id;
			$user['User']['activation_key'] = md5(uniqid());
			$user['User']['password'] = $this->request->data['User']['password'];
			$user['User']['verify_password'] = $this->request->data['User']['verify_password'];
			
			if ($this->Counselor->User->save($user['User'])) {
				$message =__d('croogo','Votre mot de passe a été changé avec succès.');
				$result = 'success';
			}
			else
			{
				$errors = $this->Counselor->User->validationErrors;
			}
		}

		$data = array('message' =>  $message, 'result' => $result, 'errors' => $errors);

		$this->set('data', $data);
		$this->set('_serialize', 'data');
	}

/**
 * Reset
 *
 * @param string $email
 * @param string $key
 * @return void
 * @access public
 */
	public function edit_user() {
		
		$message =__d('request_managment','Une erreur est survenue durant la sauvegarde!');
		$result = 'error';
		$errors = array();

		$this->Counselor->User->id = $this->Auth->user('id');
		$user['User']['first_name'] = $this->request->data['User']['first_name'];
		$user['User']['last_name'] = $this->request->data['User']['last_name'];
		$user['User']['gender'] = $this->request->data['User']['gender'];
		$user['User']['phone'] = $this->request->data['User']['phone'];

		if ($this->Counselor->User->save($user['User'])) {
			$message =__d('request_managment','Votre profile a été mis à jour avec succé.');
			$result = 'success';
			$this->Session->write('Auth', $this->Counselor->User->read(null, $this->Auth->User('id')));
		}
		else
		{
			$errors = $this->Counselor->User->validationErrors;
		}

		$data = array('message' =>  $message, 'result' => $result, 'errors' => $errors);

		$this->set('data', $data);
		$this->set('_serialize', 'data');
	}

	protected function _getUploadPath($type){

		switch ($type) {
			case 'counselor_photo':
				$upload_path = Configure::read('counselor_photo_abs_path');
				break;
			case 'counselor_document':
				$upload_path = Configure::read('counselor_document_abs_path');
				break;
			case 'company_document':
			case 'company_logo':
				$upload_path = Configure::read('company_document_abs_path');
				break;
		}
        
        return $upload_path;
    }
}

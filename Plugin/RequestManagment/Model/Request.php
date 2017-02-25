<?php
App::uses('RequestManagmentAppModel', 'RequestManagment.Model');
/**
 * Request Model
 *
 * @property Counselor $Counselor
 * @property MeetingJudgment $MeetingJudgment
 * @property MemberJudgment $MemberJudgment
 * @property RequestStatus $RequestStatus
 */
class Request extends RequestManagmentAppModel {

/**
 * Validation rules
 *
 * @var array
 */
	public $validate = array(
		'counselor_id' => array(
			'numeric' => array(
				'rule' => array('numeric'),
				//'message' => 'Your custom message here',
				'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
		'number' => array(
			'notEmpty' => array(
				'rule' => array('notEmpty'),
				//'message' => 'Your custom message here',
				'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
		'date_request' => array(
			'notEmpty' => array(
				'rule' => array('notEmpty'),
				//'message' => 'Your custom message here',
				'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
	);

	//The Associations below have been created with all possible keys, those that are not needed can be removed


/**
 * hasOne associations
 *
 * @var array
 */
	/*public $hasOne = array(
		'Company' => array(
			'className' => 'CompanyManagment.Counselor',
			'foreignKey' => 'counselor_id',
			'conditions' => array('Request.type' => 'legal'),
			'fields' => '',
			'order' => ''
		),
		'Counselor' => array(
			'className' => 'ProfileManagment.Counselor',
			'foreignKey' => 'status_id',
			'conditions' => array('Request.type' => 'natural'),
			'fields' => '',
			'order' => ''
		)
	);*/

/**
 * belongsTo associations
 *
 * @var array
 */
	public $belongsTo = array(
		'Company' => array(
			'className' => 'CompanyManagment.Company',
			'foreignKey' => 'requester_id',
			'conditions' => array('Request.requester_type' => 'legal'),
			'fields' => '',
			'order' => ''
		),
		'Counselor' => array(
			'className' => 'ProfileManagment.Counselor',
			'foreignKey' => 'requester_id',
			'conditions' => array('Request.requester_type' => 'natural'),
			'fields' => '',
			'order' => ''
		),
		'Status' => array(
			'className' => 'RequestManagment.Status',
			'foreignKey' => 'status_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		),
		'User' => array(
			'className' => 'Users.User',
			'foreignKey' => 'user_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		)
	);

/**
 * hasMany associations
 *
 * @var array
 */
	public $hasMany = array(
		'MeetingsRequest' => array(
			'className' => 'RequestManagment.MeetingsRequest',
			'foreignKey' => 'request_id',
			'dependent' => false,
			'conditions' => '',
			'fields' => '',
			'order' => '',
			'limit' => '',
			'offset' => '',
			'exclusive' => '',
			'finderQuery' => '',
			'counterQuery' => ''
		),
		'MembersRequest' => array(
			'className' => 'RequestManagment.MembersRequest',
			'foreignKey' => 'request_id',
			'dependent' => false,
			'conditions' => '',
			'fields' => '',
			'order' => '',
			'limit' => '',
			'offset' => '',
			'exclusive' => '',
			'finderQuery' => '',
			'counterQuery' => ''
		),
		'RequestStatus' => array(
			'className' => 'RequestManagment.RequestStatus',
			'foreignKey' => 'request_id',
			'dependent' => false,
			'conditions' => '',
			'fields' => '',
			'order' => '',
			'limit' => '',
			'offset' => '',
			'exclusive' => '',
			'finderQuery' => '',
			'counterQuery' => ''
		)
	);

	/**
 * beforeSave
 *
 * @param array $options
 * @return boolean
 */
	public function beforeSave($options = array()) {
		if (empty($this->data[$this->alias]['id']) && !$this->id) {
			$current_year = date('Y');
			$max = $this->find('first', array(
				'fields' => array('MAX(Request.id) AS max_id'),
				'conditions' => array('YEAR(Request.created)' => $current_year)
			));
			$this->data[$this->alias]['number'] = ($max[0]['max_id']+1).'/'.$current_year;
			$this->data[$this->alias]['event_date'] = date('Y-m-d h:i:s');
			$this->data[$this->alias]['qr_code'] = ($max[0]['max_id'])? md5($max[0]['max_id']): md5(1);
		}

		return true;
	}

/**
* getRequestType
* @param $id request identifier
* @return mixed $user_id request sender user_id
*/
	public function identifyRequester($id){
		$data = false;

		$request = $this->find('first', array(
			'fields' => array('requester_type', 'requester_id'),
			'conditions' => array('Request.id' => $id)
		));
		
		if(!empty($request))
		{
			$data['requester_type'] = $request['Request']['requester_type'];
			$data['requester_id'] = $request['Request']['requester_id'];
		}

		return $data;
	}
/**
* getRequestUserId
* @param $id request identifier
* @return mixed $user_id request sender user_id
*/
	public function getRequestUserId($id){
		$user_id = false;

		$request = $this->find('first', array(
			'conditions' => array('Request.id' => $id),
			'contain' => array('Counselor', 'Company.Counselor'),
		));
		
		if(!empty($request))
		{
			if($request['Request']['requester_type'] == 'natural')
			{
				$user_id = $request['Counselor']['user_id'];
			}
			else
			{
				$user_id = $request['Company']['Counselor']['user_id'];
			}
		}

		return $user_id;
	}
/**
 * setStatus method
 * @param $status String
 * @return bool
 */
	public function setStatus($status, $id, $description = '') {
		$result = true;
		/*$request = $this->Request->find('first', array(
			'conditions' => array('Request.id' => $id)
		));*/

		$status_id = $this->Status->field('id', array(
			'Status.alias' => $status
		));
		$this->id = $id;
		$result = $this->saveField('status_id', $status_id);
		$this->RequestStatus->create();
		$this->RequestStatus->save(array(
			'request_id' => $this->id, 
			'status_id' => $status_id,
			'user_id' => AuthComponent::user('id'),
			'event_date' => date('Y-m-d h:i:s'),
			'description' => $description
		));

		return $result;
	}
}

<?php
App::uses('RequestManagmentAppModel', 'RequestManagment.Model');
/**
 * Meeting Model
 *
 * @property Croogo.User $User
 * @property RequestManagment.MeetingJudgment $MeetingJudgment
 */
class Meeting extends RequestManagmentAppModel {

/**
 * Behaviors
 *
 * @var array
 */
	public $actsAs = array(
		'Containable',
	);

/**
 * Validation rules
 *
 * @var array
 */
	public $validate = array(
		'user_id' => array(
			'numeric' => array(
				'rule' => array('numeric'),
				//'message' => 'Your custom message here',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
	);

	//The Associations below have been created with all possible keys, those that are not needed can be removed

/**
 * belongsTo associations
 *
 * @var array
 */
	public $belongsTo = array(
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
			'foreignKey' => 'meeting_id',
			'dependent' => true,
			'conditions' => '',
			'fields' => '',
			'order' => '',
			'limit' => '',
			'offset' => '',
			'exclusive' => '',
			'finderQuery' => '',
			'counterQuery' => ''
		),
		'MeetingsUser' => array(
			'className' => 'RequestManagment.MeetingsUser',
			'foreignKey' => 'meeting_id',
			'dependent' => true,
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
 * beforeDelete
 *
 * @param boolean $cascade
 * @return boolean
 */
	public function beforeDelete($cascade = true) {
		$count = $this->MeetingsRequest->find('count', array(
			'conditions' => array(
				'MeetingsRequest.meeting_id' => $this->id,
				'MeetingsRequest.judgment_id IS NOT NULL'
			)
		));
		
		if($count == 0)
		{
			$meeting_id = $this->id;
			$subject_tpl = Configure::read('Meeting.cancellation_email_subject');
			$body_tpl = Configure::read('Meeting.cancellation_email_body');
			$this->sendMeetingEmail($meeting_id, $subject_tpl, $body_tpl, false);
		}

		return ($count == 0);
	}

/**
 * sendMeetingEmail
 *
 * @param boolean $cascade
 * @return boolean
 */
	public function sendMeetingEmail($meeting_id, $subject_tpl, $body_tpl, $attach_requests = true, $members_ids = false) {

		$meeting = $this->find('first', array('conditions' => array('Meeting.id' => $meeting_id)));
		
		if(!$members_ids)
		{
			$members_ids = $this->MeetingsUser->find('list', array(
				'conditions' => array('MeetingsUser.meeting_id' => $meeting_id),
				'fields' => array('MeetingsUser.user_id')
			));			
		}


		$body = str_replace('{1}', $meeting['Meeting']['event_date'], $body_tpl);
		$subject_tpl = str_replace('{1}', $meeting['Meeting']['event_date'], $subject_tpl);

		if($attach_requests)
		{	
			$requests_numbers = $this->MeetingsRequest->find('list', array(
				'conditions' => array('MeetingsRequest.meeting_id' => $meeting_id),
				'contain' => array('Request'),
				'fields' => array('Request.number')
			));

			$li = '';
			
			foreach ($requests_numbers as $key => $number) {
				$li .= '<li>'.$number.'</li>';
			}
			$body_requests = '<ul>'.$li.'</ul>';
			$body = str_replace('{2}', $body_requests, $body);
		}


		$this->loadModel('MessageManagment.Message');
		
		foreach ($members_ids as $key => $user_id) {
			
				$this->Message->create();
				$this->Message->save(array(
					'sender_id' => AuthComponent::user('id'),
					'recipient_id' => $user_id,
					'title' => $subject_tpl,
					'body' => $body,
					'mailbox' => 'inbox'
				));
				$this->Message->create();
				$this->Message->save(array(
					'sender_id' => AuthComponent::user('id'),
					'recipient_id' => $user_id,
					'title' => $subject_tpl,
					'body' => $body,
					'mailbox' => 'sent'
				));	
		}

		$this->_sendEmail(
			array(Configure::read('Site.title'), Configure::read('Site.email')),
			$this->MeetingsUser->User->find('list', array(
				'conditions' => array('User.id' => $members_ids),
				'fields' => array('User.email')
			)),
			Configure::read('Site.title'),
			'RequestManagment.notification',
			array()
		);
	}

}

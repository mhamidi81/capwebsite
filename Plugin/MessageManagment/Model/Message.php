<?php
App::uses('MessageManagmentAppModel', 'MessageManagment.Model');
/**
 * Message Model
 *
 * @property Sender $Sender
 * @property Recipient $Recipient
 */
class Message extends MessageManagmentAppModel {

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
		'email_from' => array(
			'email' => array(
				'rule' => array('email'),
				//'message' => 'Your custom message here',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
		'email_to' => array(
			'email' => array(
				'rule' => array('email'),
				//'message' => 'Your custom message here',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		)
	);

	//The Associations below have been created with all possible keys, those that are not needed can be removed

/**
 * belongsTo associations
 *
 * @var array
 */
	public $belongsTo = array(
		'Sender' => array(
			'className' => 'UserManagment.AllUser',
			'foreignKey' => false,
			'conditions' => array('Sender.email = Message.email_from'),
			'bindingKey' => 'email',
			'fields' => '',
			'order' => ''
		),
		'Recipient' => array(
			'className' => 'UserManagment.AllUser',
			'foreignKey' => false,
			'bindingKey' => 'email',
			'conditions' => array('Recipient.email = Message.email_to'),
			'fields' => '',
			'order' => ''
		)
	);
/**
 * afterSave
 *
 * @param array $options
 * @return boolean
 */
	public function beforeSave($options = array()) {
		
		if($this->id || !empty($this->data['Message']['id']))
		{
			if(empty($this->data['Message']['id']))
			{
				$this->data['Message']['id'] = $this->id;
			}

			$user_email = AuthComponent::user('email');

			$is_owner = $this->find('count', array(
				'conditions' => array(
					'Message.id' => $this->data['Message']['id'],
					'or' => array(
						array(
							'Message.mailbox' => 'sent',
							'Message.email_from' => $user_email,
						),
						array(
							'Message.mailbox' => 'inbox',
							'Message.email_to' => $user_email,
						)
					)
				),
				'contain' => false
			));

			return $is_owner > 0;
		}
	}
/**
 * afterSave
 *
 * @param array $options
 * @return boolean
 */
	public function afterSave($created, $options = array()) {
		if(AuthComponent::user('email'))
		
		if($created)
		{
			$message = $this->read();
			unset($message['Message']['id']);
			$message['Message']['mailbox'] = 'sent';
			$message['Message']['status'] = 1;
			$this->create();
			$this->save($message, array('callbacks' => false));	
			$this->_sendEmail(
				$message['Message']['email_from'],
				$message['Message']['email_to'],
				Configure::read('Site.title'),
				'MessageManagment.notification',
				array()
			);
		}

	}	

}

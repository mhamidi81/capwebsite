<?php
App::uses('AddressesManagementAppModel', 'AddressesManagement.Model');
/**
 * City Model
 *
 * @property AddressesManagement.Country $Country
 */
class City extends AddressesManagementAppModel {

public $displayField = 'name';
/**
 * Behaviors
 *
 * @var array
 */
	public $actsAs = array(
		'Containable',
	);


	//The Associations below have been created with all possible keys, those that are not needed can be removed

/**
 * belongsTo associations
 *
 * @var array
 */
	public $belongsTo = array(
		'Country' => array(
			'className' => 'AddressesManagement.Country',
			'foreignKey' => 'adm_country_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		)
	);
}

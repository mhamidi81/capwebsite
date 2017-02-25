<?php
App::uses('Establishment', 'ProfileManagment.Model');

/**
 * Establishment Test Case
 *
 */
class EstablishmentTest extends CakeTestCase {

/**
 * Fixtures
 *
 * @var array
 */
	public $fixtures = array(
		'plugin.profile_managment.establishment',
		'plugin.profile_managment.diplome'
	);

/**
 * setUp method
 *
 * @return void
 */
	public function setUp() {
		parent::setUp();
		$this->Establishment = ClassRegistry::init('ProfileManagment.Establishment');
	}

/**
 * tearDown method
 *
 * @return void
 */
	public function tearDown() {
		unset($this->Establishment);

		parent::tearDown();
	}

}

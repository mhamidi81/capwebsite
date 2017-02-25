<?php
	CroogoRouter::connect('/add', array(
		'plugin' => 'profile_managment', 'controller' => 'counselors', 'action' => 'add',
	));
	CroogoRouter::connect('/home', array(
		'plugin' => 'profile_managment', 'controller' => 'counselors', 'action' => 'home',
	));
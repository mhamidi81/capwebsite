<?php


/**
 * Admin menu (navigation)
 */
CroogoNav::add('sidebar', 'usm_users', array(
	'admin' => false,
	'title' => 'Utilisateurs',
	'icon' => 'user',
	'url' => array(
		'admin' => true,
		'plugin' => 'user_managment',
		'controller' => 'users',
		'action' => 'index',
	),
	'children' => array(),
));

CroogoNav::add('sidebar', 'requests', array(
	'admin' => false,
	'title' => 'Demandes',
	'icon' => 'folder',
	'url' => array(
		'admin' => true,
		'plugin' => 'request_managment',
		'controller' => 'requests',
		'action' => 'index',
	),
	'children' => array(),
));
CroogoNav::add('sidebar', 'meetings', array(
	'admin' => false,
	'title' => 'Réunion',
	'icon' => 'calendar',
	'url' => array(
		'admin' => true,
		'plugin' => 'request_managment',
		'controller' => 'meetings',
		'action' => 'index',
	),
	'children' => array(),
));

CroogoNav::add('sidebar', 'services', array(
	'admin' => false,
	'title' => 'Services',
	'icon' => 'bookmark',
	'url' => array(
		'admin' => true,
		'plugin' => 'profile_managment',
		'controller' => 'establishments',
		'action' => 'index',
	),
	'children' => array(),
));
CroogoNav::add('sidebar', 'diplomats', array(
	'admin' => false,
	'title' => 'Diplômes',
	'icon' => 'medall',
	'url' => array(
		'admin' => true,
		'plugin' => 'profile_managment',
		'controller' => 'diplomes',
		'action' => 'index',
	),
	'children' => array(),
));
CroogoNav::add('sidebar', 'specialities', array(
	'admin' => false,
	'title' => 'Spécialités',
	'icon' => 'view-list',
	'url' => array(
		'admin' => true,
		'plugin' => 'profile_managment',
		'controller' => 'specialities',
		'action' => 'index',
	),
	'children' => array(),
));
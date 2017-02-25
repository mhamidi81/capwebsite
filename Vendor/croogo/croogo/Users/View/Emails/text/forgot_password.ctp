<?php echo __d('croogo', 'Bonjour'); ?>,

Pour réinitialiser votre mot de passe merci de cliquer sur le lien suivant ou de le copier-coller dans votre navigateur.

<?php
	$url = Router::url(array(
		'controller' => 'users',
		'action' => 'reset',
		$user['User']['email'],
		$activationKey,
	), true);
	echo $url;
?>

<?php echo __d('croogo', 'If you did not request a password reset, then please ignore this email.'); ?>


<?php echo __d('croogo', 'IP Address: %s', $_SERVER['REMOTE_ADDR']); ?>

Cordialement.
<?php echo Configure::read('Site.title'); ?>


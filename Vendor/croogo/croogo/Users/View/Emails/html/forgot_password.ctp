<p><?php echo __d('croogo', 'Bonjour'); ?>,</p>

<p>Pour réinitialiser votre mot de passe merci de cliquer sur le lien suivant ou de le copier-coller dans votre navigateur.</p>

<p>
<?php
	$url = Router::url(array(
		'controller' => 'users',
		'action' => 'reset',
		$user['User']['email'],
		$activationKey,
	), true);
	echo $url;
?>
</p>
<p>
<?php echo __d('croogo', 'If you did not request a password reset, then please ignore this email.'); ?>
</p>
<p>
<?php echo __d('croogo', 'IP Address: %s', $_SERVER['REMOTE_ADDR']); ?>
</p>
<br><br><br>
<p>
Cordialement,<br>
<?php echo Configure::read('Site.title'); ?>
</p>

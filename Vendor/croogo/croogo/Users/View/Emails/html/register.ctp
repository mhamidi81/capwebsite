<p>Bonjour,</p>

<p>Nous vous remercions pour votre inscription sur notre site.</p>

<p>Votre identifiant est <?php echo $user['User']['email']; ?></p>

<p>Pour activer votre compte merci de cliquer sur le lien suivant ou de le
copier-coller dans votre navigateur.</p>
<?php

if (empty($url)):
	
	$url = Router::url(array(
		'controller' => 'users',
		'action' => 'activate',
		$user['User']['email'],
		$user['User']['activation_key'],
	), true);
endif;
?>
<p>
	<?php  echo $url;?>
</p>
<p>
Le lien ci-dessus est une connexion temporaire et ne peut être utilisé
qu'une seule fois. Sans aucune action de votre part, votre compte sera
supprimé dans 15 jours.</p>

<br><br><br>
<p>
Cordialement,<br>
<?php echo Configure::read('Site.title'); ?>
</p>
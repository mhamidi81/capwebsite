Bonjour,

Nous vous remercions pour votre inscription sur notre site.

Votre identifiant est <?php echo $user['User']['email']; ?>

Pour activer votre compte merci de cliquer sur le lien suivant ou de le
copier-coller dans votre navigateur.

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

<?php  echo $url;?>

Le lien ci-dessus est une connexion temporaire et ne peut être utilisé
qu'une seule fois. Sans aucune action de votre part, votre compte sera
supprimé dans 15 jours.



Cordialement,
<?php echo Configure::read('Site.title'); ?>
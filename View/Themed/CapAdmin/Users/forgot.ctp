<?php 
	$this->layout = "users_layout";
	$this->assign('breadcrumb_title', 'Mot de passe oublié');
	$this->assign('breadcrumb_description', 'réinitialiser votre mot de passe');

echo $this->Html->css('vendor/bootstrap/css/bootstrap.min', null, array('block' => 'css'));
echo $this->Html->css('vendor/fontawesome/css/font-awesome.min', null, array('block' => 'css'));
echo $this->Html->css('vendor/themify-icons/themify-icons.min', null, array('block' => 'css'));
echo $this->Html->css('vendor/animate.css/animate.min', null, array('block' => 'css'));
echo $this->Html->css('assets/css/styles', null, array('block' => 'css'));

?>

<div id="forgot" class="row login">
	<!-- start: FORGOT -->
	<div class="row">
		<div class="main-login col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-8 col-md-offset-2">
			<!-- start: FORGOT BOX -->
			<div class="box-forgot">
				<?php
					echo $this->Form->create('User', array(
						'url' => array(
							'plugin' => 'users',
							'controller' => 'users',
							'action' => 'forgot',
						),
						array(
							'class' => 'form-forgot',
							'escape' => false
						)
					));

					echo '<div class="message-box-wrapper blue">
							<div class="message-box-title">
								Réinitialiser le mot de passe à l\'aide de votre adresse email
							</div>
							<div class="message-box-content">
								Veuillez saisissez votre adresse email dans le champ ci-desous. Nous vous enverrons un lien de réinitialisation du mot de passe à l\'adresse de courrier électronique associée à votre compte.
							</div>
						</div>'.
						'<fieldset>
							<legend>
								Mot de passe oublié?
							</legend>
							<p>
								Entrez votre adresse e-mail ci-dessous pour réinitialiser votre mot de passe.
							</p>
							<div class="form-group">
								<span class="input-icon">'.
									$this->Form->input('email', array(
											'label' => false,
											'div' => false,
											'class' => 'form-control'
										)
									).
									'<i class="fa fa-envelope-o"></i>
								</span>
							</div>
							<div class="form-actions">'.
								$this->Html->link('<i class="fa fa-chevron-circle-left"></i>'.__d('croogo', ' Se connecter'), array(
										'admin' => false,
										'controller' => 'users',
										'action' => 'login',
									),
									array(
										'class' => "btn btn-primary btn-o",
										'escape' => false
									)
								).
								$this->Form->submit(__d('croogo', 'Submit'), array(
										'div' => false,
										'class' => 'btn btn-primary pull-right'
									)
								).
							'</div>'.
					
						'</fieldset>';

?>
					<!-- end: COPYRIGHT -->
				</div>
				<!-- end: FORGOT BOX -->
			</div>
		</div>
		<!-- end: FORGOT -->
</div>

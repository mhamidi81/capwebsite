<?php 
	$this->layout = "users_layout";
	$this->assign('breadcrumb_title', 'Se connecter');
	$this->assign('breadcrumb_description', 'se connecter pour déposer votre dossier');

echo $this->Html->css('vendor/bootstrap/css/bootstrap.min', null, array('block' => 'css'));
echo $this->Html->css('vendor/fontawesome/css/font-awesome.min', null, array('block' => 'css'));
echo $this->Html->css('vendor/themify-icons/themify-icons.min', null, array('block' => 'css'));
echo $this->Html->css('vendor/animate.css/animate.min', null, array('block' => 'css'));
echo $this->Html->css('assets/css/styles', null, array('block' => 'css'));

?>

<div class="login">
	<!-- start: LOGIN -->
	<div class="row">
		<div class="main-login col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-8 col-md-offset-2">
			<!-- start: LOGIN BOX -->
			<div class="box-login">
		<?php
			echo $this->Form->create('User', array(
				'url' => array(
					'plugin' => 'users',
					'controller' => 'users',
					'action' => 'login',
				),
				array('class' => 'form-login', 'escape' => false)
			));

			echo '<fieldset>'.
					'<legend>'.
						'Connectez-vous à votre compte'.
					'</legend>'.
					'<p>Veuillez saisir votre adresse email et mot de passe pour vous connecter.</p>'.
					'<div class="form-group">'.
						'<span class="input-icon">'.
							$this->Form->input('email', array(
												'label' => false,
												'div' => false,
												'class' => 'form-control',
												'placeholder' => 'Votre adresse email'
											)
										).
							'<i class="fa fa-user"></i>'.
						'</span>'.
					'</div>'.
					'<div class="form-group form-actions">'.
						'<span class="input-icon">'.
							$this->Form->input('password', array(
									'label' => false,
									'div' => false,
									'value' => '', 'class' => 'form-control password',
									'placeholder' => 'Votre mot de passe'
								)
							).
							'<i class="fa fa-lock"></i>'.
							$this->Html->link(__d('croogo', 'Forgot password?'), array(
										'admin' => false,
										'controller' => 'users',
										'action' => 'forgot',
								), 
								array(
									'class' => 'forgot'
								)
							).
						'</span>'.
					'</div>'.

					'<div class="form-actions">'.
						'<div class="checkbox clip-check check-primary">';
							if (Configure::read('Access Control.autoLoginDuration')):
								echo $this->Form->input('remember', array(
									'type' => 'checkbox',
									'label' => __d('croogo', 'Remember me?'),
									'default' => false,
									'style' => "margin-left: 0px;"
								));
							endif;
						echo '</div>';

						'<button type="submit" class="btn btn-primary pull-right">
							Login <i class="fa fa-arrow-circle-right"></i>
						</button>';
				echo '</div>'.
					'<div class="new-account">'.
						'Vous n\'avez pas encore un compte ? '.
							$this->Html->link(__d('croogo', 'Créer un compte'), array(
										'admin' => false,
										'controller' => 'users',
										'action' => 'add',
								), 
								array(
									'class' => 'add'
								)
							).
							$this->Form->submit(__d('croogo', 'Log In'), array(
									'div' => false, 
									'class' => 'btn btn-primary pull-right'
								)
							).
					'</div>'.
				'</fieldset>';
		?>
			</div>
			<!-- end: LOGIN BOX -->
		</div>
	</div>
	<!-- end: LOGIN -->
</div>
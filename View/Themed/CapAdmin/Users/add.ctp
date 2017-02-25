<?php 
	$this->layout = "users_layout";
	$this->assign('breadcrumb_title', 'Inscription');
	$this->assign('breadcrumb_description', 'créer votre compte');



?>

<div class="login">
	<!-- start: REGISTRATION -->
	<div class="row">
		<div class="main-login col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-8 col-md-offset-2">
			<!-- start: REGISTER BOX -->
			<div class="box-register">
					<?php
						echo $this->Form->create('User', array(
							'url' => array(
								'plugin' => 'users',
								'controller' => 'users',
								'action' => 'add',
							),
							array('class' => 'form-register', 'escape' => false)
						));
					?>
					<fieldset>
							<legend>
								Inscription
							</legend>
							<p>
								Entrez vos données personnelles ci-dessous:
							</p>
							<div class="form-group">
								<span class="input-icon">
								<?php	echo $this->Form->input('first_name', array(
											'label' => false,
											'div' => false,
											'placeholder' => 'Veuillez saisir votre prénom',
											'class' => 'form-control'
										)
									)
								?>
								<i class="fa fa-user"></i>
								</span>
							</div>
							<div class="form-group">
								<span class="input-icon">
								<?php	echo $this->Form->input('last_name', array(
											'label' => false,
											'div' => false,
											'placeholder' => 'Veuillez saisir votre nom',
											'class' => 'form-control'
										)
									)
								?>
								<i class="fa fa-user"></i>
								</span>
							</div>
							<div class="form-group">
								<span class="input-icon">
								<?php	echo $this->Form->input('email', array(
										'label' => false,
										'div' => false,
										'placeholder' => 'Veuillez saisir votre adresse email',
										'class' => 'form-control'
									)
								); ?>
								<i class="fa fa-envelope"></i>
								</span>
							</div>
							<div class="form-group">
								<div class="clip-radio radio-primary">
									<input type="radio" value="female" name="data[User][gender]" id="us-female">
									<label for="us-female">
										Femme
									</label>
									<input type="radio" value="male" name="data[User][gender]" id="us-male" checked = "true" >
									<label for="us-male">
										Homme
									</label>
								</div>
							</div>
							<div class="form-group">
								<span class="input-icon">
									<?php echo $this->Form->input('password', array(
											'label' => false, 
											'div' => false,
											'placeholder' => 'Votre mot de passe',
											'value' => '',
											'class' => 'form-control'
										)
									);
									?>
									<i class="fa fa-lock"></i> 
								</span>
							</div>
							<div class="form-group">
								<span class="input-icon">
								<?php	echo $this->Form->input('verify_password', array(
											'label' => false, 
											'div' => false, 
											'type' => 'password', 
											'placeholder' => 'Confirmer mot de passe',
											'class' => 'form-control', 
											'value' => ''
										)
									);
									?>
									<i class="fa fa-lock"></i>
								</span>
							</div>		
							<script type="text/javascript">
							 var RecaptchaOptions = {
							    theme : "clean",
							    lang : "fr",
							 };
							 </script>
							<?php 
								if (Configure::read('Service.register_recaptcha')):
									echo $this->Recaptcha->display_form();
								endif;
							?>
							<div class="form-actions">
								<p>
									Vous avez déjà un compte? 
								<?php echo $this->Html->link(__d('croogo', 'Se connecter'), array(
											'admin' => false,
											'controller' => 'users',
											'action' => 'login',
										)
									);
								?>
								</p>
								<?php echo $this->Form->submit(__d('croogo', 'Register'), array(
										'div' => false, 
										'class' => 'btn btn-primary pull-right'
									)
								);
								?>
							</div>
						</fieldset>
			</div>
			<!-- end: REGISTER BOX -->
		</div>
	</div>
	<!-- end: REGISTRATION -->
</div>
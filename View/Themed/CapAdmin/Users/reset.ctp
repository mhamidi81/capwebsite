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
				<?php echo $this->Form->create('User', array('url' => array('controller' => 'users', 'action' => 'reset', $email, $key),
						array(
							'class' => 'form-forgot',
							'escape' => false
				)));?>

				<fieldset>
					<legend>Réinitialiser votre mot de passe</legend>
					<div class="form-group">
						<span class="input-icon">
							<?php echo $this->Form->input('password', array('label' => __d('croogo', 'New password')));
							?>
						</span>
					</div>
					<div class="form-group">
						<span class="input-icon">
							<?php echo $this->Form->input('verify_password', array('type' => 'password', 'label' => __d('croogo', 'Verify Password')));
							?>
						</span>
					</div>
					<div class="form-actions">
						<?php 
						echo $this->Form->submit(__d('croogo', 'Reset'), array(
								'div' => false,
								'class' => 'btn btn-primary pull-right'
							)
						);
						?>
					</div>
				</fieldset>
					<!-- end: COPYRIGHT -->
			</div>
				<!-- end: FORGOT BOX -->
		</div>
	</div>
		<!-- end: FORGOT -->
</div>

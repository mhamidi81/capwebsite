<!DOCTYPE html>
<!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7" dir="<?php echo Configure::read('Site.direction'); ?>"> <![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8" dir="<?php echo Configure::read('Site.direction'); ?>"> <![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9" dir="<?php echo Configure::read('Site.direction'); ?>"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" dir="<?php echo Configure::read('Site.direction'); ?>"> <!--<![endif]-->
	<head>

		<!-- Basic Page Needs
	  ================================================== -->
		<meta charset="UTF-8" />
		<title><?php echo $title_for_layout; ?> &raquo; <?php echo Configure::read('Site.title'); ?></title>

		<!--[if lt IE 9]>
			<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->

		<!-- CSS
	  ================================================== -->

		<?php 
			echo $this->Html->css(array('style'));
			if( Configure::read('Site.is_responsive') )
			{
		?>
				<meta name="viewport" content="width=device-width, user-scalable=no">
		<?php
				echo $this->Html->css(array('responsive'));
			}
			else
			{
				echo $this->Html->css(array('defer'));
			}
		?>
		
		<!--[if IE 7]>
			<?php echo $this->Html->css(array("ie7-style")); ?> 
		<![endif]-->	
		
		<?php
			echo $this->Meta->meta();
			echo $this->Layout->feed();
			echo $this->Layout->js();
			// start calling header script

			echo $this->Html->css(array(
				'vendor/bootstrap/css/bootstrap.min',
				'vendor/fontawesome/css/font-awesome.min',
				'vendor/themify-icons/themify-icons.min',
				'theme',
			));
		?>	
		<?php
			echo $this->Html->script(array(
				'jquery',
				'anti-spam'
			));
		?>
	</head>
	
	<body class="home page page-id-9 page-template-default">
		<div class="body-outer-wrapper">

				
				<div class="top-navigation-wrapper boxed-style"></div>
				<div class="header-wrapper boxed-style main">
					<!-- Get Logo -->
					<div class="boxed-style">
						<?php echo $this->Regions->blocks('header'); ?>
					</div>
					<!-- Navigation -->
					<div class="clear"></div>
					<div class="gdl-navigation-wrapper">
						<div class="boxed-style">
							<?php echo $this->Menus->menu('main', array('dropdown' => false)); ?>
						</div>
						<div class="clear"></div>
					</div>
				</div> <!-- header wrapper container -->
				<div class="body-wrapper  main-content boxed-style" >
					<div class="row">
						<div class="col-md-7" style = "padding-right:0px;">
							<?php
								echo $this->Layout->sessionFlash();
								echo $content_for_layout;
							?>
							<!--<a class = "decouvrir-link " href = "<?php echo Router::url(array(
	'plugin' => 'nodes', 'controller' => 'nodes', 'action' => 'view', 'type'=> 'page', 'slug' => 'composition-de-dossier-conseiller-agricole'
))?>">Composition du dossier <i class = "ti-help-alt"></i></a>
							<div class="about-author-wrapper">
								<div class="about-author-avartar">
											<?php
												echo $this->Html->image('maroc_vert.png', array(
														'alt' => Configure::read('Site.title'), 
														'title' => Configure::read('Site.title'), 
														'class' => 'avatar avatar-90 photo'
													)
												);
											?>	
								</div>
								<div class="about-author-info">
									<h5 class="about-author-title">
										Ministère de l’Agriculture et de la Pêche maritime
									</h5>
									Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cum sociis natoque.
								</div>

								<div class="clear"></div>
							</div>-->
						</div>
						<div class="col-md-5">
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
											<h3 class = "subtitle">
												<i class = "fa fa-user-plus"></i> Inscription
											</h3>
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
										<?php 
											if (!$this->Session->read('Auth.User.id'))
											{
										?>
												<p>
													Vous avez déjà un compte? 
												<?php echo $this->Html->link(__d('croogo', 'Se connecter'), array(
															'admin' => false,
															'plugin' => 'users',
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
											<?php } ?>
											</div>
											<div class = "clear"></div>
											<div class="form-actions">
												<p style = "margin-top:20px; font-size:12px;">
													En cliquant sur Inscription, vous acceptez nos Conditions et indiquez que vous avez lu notre Politique d’utilisation des données, y compris notre Utilisation des cookies.
												</p>
											</div>
										</fieldset>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>				
				<div class="footer-wrapper">
					<!-- Get Copyright Text -->
					<div class="copyright-outer-wrapper boxed-style">
						<div class="copyright-container">
							<?php echo $this->Regions->blocks('copyright'); ?>
						</div>
					</div>
				</div><!-- footer wrapper -->
		</div> <!-- body outer wrapper -->

	</body>
</html>
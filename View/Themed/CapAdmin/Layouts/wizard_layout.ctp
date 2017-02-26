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
				'../plugins/bootstrap/css/bootstrap.min.css',
				'../plugins/fontawesome/css/font-awesome.min.css',
				'../plugins/themify-icons/themify-icons.min.css',
				'../plugins/animate.css/animate.min.css',
				'../plugins/select2/select2.min.css',
				'../plugins/toastr/toastr.min',
				'../plugins/bootstrap-datepicker/bootstrap-datepicker3.standalone.min',
				'../plugins/jquery-file-upload/css/jquery.fileupload-ui',
				'../plugins/lightbox/css/jquery.fancybox',
				'plugins',
				'style-custom',
				'assets/css/styles',
			));
		?>	

	</head>
	
	<body class="home page page-id-9 page-template-default">
		<div class="body-outer-wrapper">
			<div class="body-wrapper boxed-style">
				
				<div class="top-navigation-wrapper boxed-style"></div>
				<div class="header-wrapper container main">
					<!-- Get Logo -->

					<?php echo $this->Regions->blocks('header'); ?>

				</div> <!-- header wrapper container -->
				<div class="top-navigation-wrapper boxed-style"></div>
											<section id="page-title" style = " background:#FAFAFA; padding: 20px 0; margin:0;">
												<div class="row">
													<div class="col-sm-8">
														<h1 class="mainTitle">Dépot du dossier </h1>
														<span class="mainDescription">Cette interface vous permet de déposer une demande d'agrément, chaque étape sera sauvegardée apres avoir passé à la prochaine.</span>
													</div>
													<ol class="breadcrumb">
														<li>
															<?php echo $this->Html->link('<span class = "ti-home"></span>  Accueil', '/', array('escape' => false)); ?>
														</li>
														<li>
															<?php echo $this->Html->link('<span class = "ti-user"></span> Espace Conseillers', '/home', array('escape' => false)); ?>
														</li>
														<li class="active">
															<span class = "ti-folder"></span> <span>Dépot du dossier</span>
														</li>
													</ol>
												</div>
											</section>
				<div class="content-wrapper container main custom">
					<div id="post-9" class="post-9 page type-page status-publish hentry">
						<div class="page-wrapper single-page ">

							<div class="row gdl-page-row-wrapper">
								<div class="gdl-page-left mb0 twelve columns">
									<div class="row">
										<div class="gdl-page-item mb0 twelve columns">
											<?php
												echo $this->Layout->sessionFlash();
												echo $content_for_layout;
											?>
										</div>
										<div class="clear"></div>
									</div>
								</div>
								<div class="clear"></div>
							</div>

							<div class="clear"></div>
						</div>
					</div>
				</div> <!-- content wrapper -->

				<div class="footer-top-bar boxed-style"></div>

				<div class="footer-wrapper boxed-style">

					<!-- Get Copyright Text -->
					<div class="copyright-outer-wrapper boxed-style">
						<div class="container copyright-container">
							<?php echo $this->Regions->blocks('copyright'); ?>
						</div>
					</div>
				</div><!-- footer wrapper -->
			</div> <!-- body wrapper -->
		</div> <!-- body outer wrapper -->

		<?php
			echo $this->Html->script(array(
				'../plugins/jquery/jquery.min.js',
				'../plugins/toastr/toastr.min.js',
				'../plugins/bootstrap/js/bootstrap.min.js',
				'../plugins/modernizr/modernizr',
				'../plugins/jquery-validation/jquery.validate.min',
				'../plugins/jquery-smart-wizard/jquery.smartWizard',
				'../plugins/select2/select2.min',
				'../plugins/bootstrap-datepicker/bootstrap-datepicker.min',
				'../plugins/jquery-file-upload/vendor/jquery.ui.widget',
				'../plugins/javascript-Load-Image/load-image.all.min',
				'../plugins/jquery-file-upload/jquery.iframe-transport',
				'../plugins/jquery-file-upload/jquery.fileupload',
				'../plugins/jquery-file-upload/jquery.fileupload-process',
				'../plugins/jquery-file-upload/jquery.fileupload-image',
				'../plugins/jquery-file-upload/jquery.fileupload-validate',
				'../plugins/jquery-file-upload/jquery.fileupload-ui',
				'../plugins/lightbox/js/jquery.fancybox',
				
				//'../plugins/jquery-file-upload/main',
				'form-wizard'

			));
		?>
		<script>
			jQuery(document).ready(function() {
				FormWizard.init();
				$('.datepicker').datepicker({format : 'yyyy-mm-dd'});
				$('select').select2();
			});
		</script>
		<?php
		echo $this->Blocks->get('scriptBottom');
		echo $this->Js->writeBuffer();
		?>
	</body>
</html>
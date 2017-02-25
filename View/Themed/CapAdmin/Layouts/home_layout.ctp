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
				'../plugins/perfect-scrollbar/perfect-scrollbar.min.css',
				'../plugins/select2/select2.min.css',
				'../plugins/toastr/toastr.min',
				'../plugins/responsive-progress-bar/css/style',
				'style-custom',
				'assets/css/styles',
				'plugins'
			));
		?>

		<?php
			echo $this->Html->script(array(
				'../plugins/jquery/jquery.min.js',
				'../plugins/toastr/toastr.min.js',
				'../plugins/bootstrap/js/bootstrap.min.js',
			));
		?>

		<link rel="next" title="Contact" href="/contact/">
		
		<!--[if lt IE 9]>
		<style type="text/css">
			div.shortcode-dropcap.circle,
			div.anythingSlider .anythingControls ul a, .flex-control-nav li a, 
			.nivo-controlNav a, ls-bottom-slidebuttons a{
				z-index: 1000;
				position: relative;
				behavior: url(../../ie-fix/PIE.php);
			}
			div.top-search-wrapper .search-text{ width: 185px; }
			div.top-search-wrapper .search-text input{ float: right; }
			span.hover-link, span.hover-video, span.hover-zoom{ display: none !important; }
		</style>
		<![endif]-->

	</head>
	
	<body class="home page page-template-default">
		<div class="body-outer-wrapper">
			<div class="body-wrapper boxed-style">
				
				<div class="top-navigation-wrapper boxed-style"></div>
				<div class="header-wrapper container main">
					<!-- Get Logo -->

					<?php echo $this->Regions->blocks('header'); ?>

					<!-- Navigation -->
					<div class="clear"></div>
					<div class="gdl-navigation-wrapper menu_user">
					
						<div class="clear"></div>
					</div>
				</div> 
				<div class="top-navigation-wrapper boxed-style"></div>
				<!-- header wrapper container -->
				<section id="page-title" style = " background:#FAFAFA; padding: 20px 0; margin:0;">
					<div class="row">
						<div class="col-sm-8">
							<h1 class="mainTitle"><i class = "ti-user"></i> Espace Conseillers </h1>
							<span class="mainDescription">Cette interface vous permet de déposer une demande d'agréement, ainsi de suivre la progression de votre dossier.</span>
						</div>
						<ol class="breadcrumb">
							<li>
								<?php echo $this->Html->link('<span class = "ti-home"></span> Accueil', '/', array('escape' => false)); ?>
							</li>
							<li class="active">
								<span class = "ti-user"></span> Espace Conseillers
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
				'../plugins/perfect-scrollbar/perfect-scrollbar.min.js',
				'../plugins/modernizr/modernizr',
				'../plugins/jquery-validation/jquery.validate.min'
			));
		?>
		<?php
		echo $this->Blocks->get('scriptBottom');
		echo $this->Js->writeBuffer();
		?>
	</body>
</html>
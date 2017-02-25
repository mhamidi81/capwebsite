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

				
				<div class="top-navigation-wrapper"></div>
				<div class="header-wrapper  main">
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
						<div class="col-md-12" style = "padding:100px 0;">
							<?php
								echo $this->Layout->sessionFlash();
								echo $content_for_layout;
							?>
							<!--<div class="about-author-wrapper">
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
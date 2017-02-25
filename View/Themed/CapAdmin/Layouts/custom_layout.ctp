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
				'abeezee',
				'vendor/fontawesome/css/font-awesome.min',
				'vendor/themify-icons/themify-icons.min',
				'theme'
			));
		?>	
		<?php
			echo $this->Html->script(array(
				'jquery',
				'anti-spam'
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
	
	<body class="page page-template-default">
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
						<div class="page-wrapper single-page ">
							<div class="row gdl-page-row-wrapper">
								<div class="gdl-page-left mb0 nine columns">
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
								<div class="three columns mb0 gdl-right-sidebar">
									<div class="gdl-sidebar-wrapper gdl-border-y left">
										<div class="sidebar-wrapper">
											<?php echo $this->Regions->blocks('right_side'); ?>
										</div>
									</div>
								</div>
								<div class="clear"></div>
							</div>

							<div class="clear"></div>
						</div>
				</div> <!-- content wrapper -->

				<div class="footer-wrapper">
					<!-- Get Copyright Text -->
					<div class="copyright-outer-wrapper boxed-style">
						<div class="copyright-container">
							<?php echo $this->Regions->blocks('copyright'); ?>
						</div>
					</div>
				</div><!-- footer wrapper -->


			</div> <!-- body wrapper -->
		</div> <!-- body outer wrapper -->

<script>

	</script>

		<?php
			echo $this->Html->script(array(
				'superfish',
				'supersub',
				'hoverIntent',
				'jquery.easing',
				'jquery.fancybox',
				'jquery.fancybox-media',
				'jquery.fancybox-thumbs',
				'gdl-scripts',
				'portfolio-carousel',
				'jquery.flexslider',
				'jquery.cycle',
				'gdl-contactform',
			));
		?>

		<script type="text/javascript">
			/* <![CDATA[ */
				var ATTR = {"enable":"enable","width":"80","height":"45"};
				var FLEX = {"animation":"slide","pauseOnHover":"enable","controlNav":"enable","directionNav":"enable","animationSpeed":"600","slideshowSpeed":"12000","pauseOnAction":"disable","thumbnail_width":"75","thumbnail_height":"50","controlsContainer":".flexslider"};
			/* ]]> */
		</script>
	</body>
</html>
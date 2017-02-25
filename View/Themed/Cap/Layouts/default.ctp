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
				'abeezee',
				'droid-serif',
				'pt-sans',
				'layerslider',
				'superfish',
				'fancybox',
				'jquery.fancybox-thumbs',
				'flexslider',
				'skin',
				'style-custom',
			));
		?>	
		<div class="fit-vids-style">
		­	<style>
				.fluid-width-video-wrapper {width:100%;position:relative;padding:0;}
				.fluid-width-video-wrapper iframe,
				.fluid-width-video-wrapper object,
				.fluid-width-video-wrapper embed {position: absolute;top: 0;left: 0;
					width: 100%;
					height: 100%;
				}
			</style>
		</div>

		<?php
			echo $this->Html->script(array(
				'jquery',
				'anti-spam',
				'layerslider.kreaturamedia.jquery',
				'jquery-easing-1.3',
				'jquery.fitvids',
				'comment-reply',
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
	
	<body class="home page page-id-9 page-template-default">
		<div class="body-outer-wrapper">
			<div class="body-wrapper boxed-style">
				
				<div class="top-navigation-wrapper boxed-style"></div>
				<div class="header-wrapper container main">
					<!-- Get Logo -->
					<div class="logo-wrapper">
						<?php
							if( $this->request->here = '/' )
							{
								echo '<h1>'.
									$this->Html->link(
			    							$this->Html->image('logo.jpg', array( 'alt' => '', 'title' => '')),
			    							'/',
			    							array('escape' => false)
			    					).
								'</h1>';	
							}
							else
							{
								$this->Html->link(
										$this->Html->image('logo.jpg', array( 'alt' => '', 'title' => '')),
										'/',
										array('escape' => false)
								);				
							}
						?>
					</div>
					
					<div class="logo-right-text">
						<div class="logo-right-text-content">
							<?php //echo $this->Html->image('icons/email.png', array( 'alt' => '', 'title' => '', 'style' => "margin-right: 9px;")); ?>
							<span style="font-size: 14px; color: #aaa;"> <a href="#">Créer un compte</a> </span>
							<span style="margin-left: 15px; margin-right: 15px; ">|</span>
							<?php //echo $this->Html->image('icons/phone.png', array( 'alt' => '', 'title' => '', 'style' => "margin-right: 9px;")); ?>
							<span style="font-size: 14px; color: #aaa; "> <a href="#">Se connecter</a> </span>
						</div>

						<div class="top-search-wrapper">
							<div class="gdl-search-form">
								<?php //echo $this->element('search'); ?>
								<form method="get" id="searchform" action="#">
									<div class="search-text" id="search-text">
										<input type="text" value="Recherche..." name="s" id="s" autocomplete="off" data-default="Recherche...">
									</div>
									<input type="submit" id="searchsubmit" value="">
									<div class="clear"></div>
								</form>
							</div>
						</div>
					</div>

					<!-- Navigation -->
					<div class="clear"></div>
					<div class="gdl-navigation-wrapper">
						<?php 
							// responsive menu
							if(Configure::read('Site.is_responsive'))
							{
								echo $this->element('responsive_menu');
								echo '<div class="clear"></div>';
							}

							// main menu
							echo $this->element('main_menu');
							// navigation-wrapper 
						?>
						<div class="clear"></div>
					</div>
				</div> <!-- header wrapper container -->
				
				<div class="content-wrapper container main">
					<div id="post-9" class="post-9 page type-page status-publish hentry">
						<div class="page-wrapper single-page ">
							<div class="gdl-top-slider">
								<?php echo $this->element('slides'); ?>
							</div>

							<div class="row gdl-page-row-wrapper">
								<?php echo $this->element('content'); ?>
							</div>
							<div class="clear"></div>
						</div>
					</div>
				</div> <!-- content wrapper -->

				<div class="footer-top-bar boxed-style"></div>

				<div class="footer-wrapper boxed-style">
					<div class="container footer-container">
						<div class="footer-widget-wrapper">
							<div class="row">
								<?php echo $this->element('footer'); ?>
								<div class="clear"></div>
							</div> <!-- close row -->
						</div>
					</div>

					<!-- Get Copyright Text -->
					<div class="copyright-outer-wrapper boxed-style">
						<div class="container copyright-container">
							<?php echo $this->element('copyright'); ?>
						</div>
					</div>
				</div><!-- footer wrapper -->


			</div> <!-- body wrapper -->
		</div> <!-- body outer wrapper -->
			
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
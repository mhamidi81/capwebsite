<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width">
		<title><?php echo $title_for_layout; ?> - <?php echo __d('croogo', 'Croogo'); ?></title>
		<?php

		echo $this->Html->css(array(
			'bootstrap',
			'bootstrap-responsive',
			'thickbox',
		));
		echo $this->Layout->js();
		echo $this->Html->script(array(
			'html5',
			'jquery/jquery.min',
			'jquery/jquery-ui.min',
			'jquery/jquery.slug',
			'jquery/jquery.cookie',
			'jquery/jquery.hoverIntent.minified',
			'jquery/superfish',
			'jquery/supersubs',
			'jquery/jquery.tipsy',
			'jquery/jquery.elastic-1.6.1.js',
			'jquery/thickbox-compressed',
			'underscore-min',
			'admin',
			'sidebar',
			'choose',
			'typeahead_autocomplete',
			'croogo-bootstrap.js',
		));

		echo $this->fetch('script');
		echo $this->fetch('css');

		?>
	</head>
	<body>
		<div id="wrap">
			<?php echo $this->element('admin/header'); ?>
			<?php echo $this->element('admin/navigation'); ?>
			<div id="push"></div>
			<div id="content-container" class="<?php echo $this->Theme->getCssClass('container'); ?>">
				<div class="<?php echo $this->Theme->getCssClass('row'); ?>">
					<div id="content" class="clearfix">
						<?php echo $this->element('admin/breadcrumb'); ?>
						<div id="inner-content" class="<?php echo $this->Theme->getCssClass('columnFull'); ?>">
							<?php echo $this->Layout->sessionFlash(); ?>
							<?php echo $this->fetch('content'); ?>
						</div>
					</div>
					&nbsp;
				</div>
			</div>
		</div>
		<?php echo $this->element('admin/footer'); ?>
		<?php
		echo $this->element('admin/initializers');
		echo $this->Blocks->get('scriptBottom');
		echo $this->Js->writeBuffer();
		?>
	</body>
</html>
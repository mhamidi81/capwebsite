<?php 
$this->set('title_for_layout', __d('croogo', 'Missing Database Connection'));
?>
<h2><?php echo __d('croogo', 'Error'); ?></h2>
<p class="error alert-error">
	<?php echo __d('croogo', 'Missing Database Connection'); ?>
	<!-- controller -->
</p>
<?php Configure::write('debug', 0); ?>
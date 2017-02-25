<?php 
$this->set('title_for_layout', __d('croogo', 'Error'));
?>
<h2><?php echo __d('croogo', 'Error'); ?></h2>
<p class="error alert-error">
	<?php echo __d('theme', 'The requested address %s was not found on this server.', "<strong>'{$url}'</strong>"); ?>
</p>
<?php if (Configure::read('debug') > 0): ?>
<p class="error alert-block">
	<?php echo $this->element('exception_stack_trace'); ?>
</p>
<?php endif; ?>
<?php Configure::write('debug', 0); ?>

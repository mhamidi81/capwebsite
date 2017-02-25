<?php 
	if ( $this->params['controller'] == 'contacts')
	{
?>
		<div class="custom-sidebar">
			<h3 class="custom-sidebar-title gdl-border-x bottom">
				Contact info
			</h3>
			<div class="textwidget">
				<p>
					<strong><?php echo Configure::read('Address.ville'); ?></strong><br>
					<?php echo Configure::read('Address.address'); ?><br>
					Tel. : <?php echo Configure::read('Address.phone'); ?><br>
					Fax : <?php echo Configure::read('Address.fax'); ?><br>
					Email : <?php echo Configure::read('Address.email'); ?>
				</p>
			</div>
		</div>
<?php
	}
 ?>


<div class="copyright-wrapper">
	<div class="copyright-left">
		Copyright 2017 <a href="#" target="_blank"></a>
	</div> 
	<div class="copyright-right">
		<?php 
			echo $this->Html->link(
							'Accueil',
							'/',
							array('escape' => false)
					);
		 ?>
		|
		<?php 
			echo $this->Html->link('Support',
					array(
						'plugin' => 'nodes',
						'controller' => 'nodes',
						'action' => 'view',
						'type' => 'page',
						'slug' => 'faq'
					)
				);
		?>
		|
		<?php 
			echo $this->Html->link('Actualités',
					array(
						'plugin' => 'nodes',
						'controller' => 'nodes',
						'action' => 'term',
						'type' => 'node',
						'slug' => 'actualites'
					)
				);
		?>
		|
		<?php 
			echo $this->Html->link('Contact',
					array(
						'plugin' => 'contacts',
						'controller' => 'contacts',
						'action' => 'view',
					)
				);
		?>
	</div> 
	<div class="clear"></div>
</div>
<?php 
	// responsive menu
	if(Configure::read('Site.is_responsive'))
	{
?>
		<div class="responsive-menu-wrapper">
			<select id="menu-main" class="menu dropdown-menu">
				<option value="" class="blank">– Main Menu –</option>
				<option class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-9 current_page_item menu-item-2466 menu-item-depth-0" value="#" selected="selected">Accueil</option>
				<option class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2471 menu-item-depth-0" value="#">Mes demandes</option>	
				<option class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2526 menu-item-depth-0" value="#">Profile</option>
				<option class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2526 menu-item-depth-0" value="#">Messages</option>
				<option class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2526 menu-item-depth-0" value="#">Activités</option>
				<option class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2526 menu-item-depth-0" value="<?php $this->Html->url(array('plugin' => 'nodes', 'controller' => 'contacts', 'action' => 'view')); ?>">Contacts</option>
			</select>
		</div>
		<div class="clear"></div>
<?php
	}
?>
<div class="navigation-wrapper">
	<div id="main-superfish-wrapper" class="menu-wrapper">
		<ul id="menu-main-1" class="sf-menu sf-js-enabled">
			<li id="menu-item-2466" class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-9 current_page_item menu-item-2466">
				<?php 
					echo $this->Html->link(
									'Accueil',
									'/',
									array('escape' => false, 'class' => 'sf-with-ul')
							);
				 ?>
			</li>
	
			<li id="menu-item-2471" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2471">
				<?php 
					echo $this->Html->link('Mes demandes',
							/*array(
								'plugin' => 'nodes',
								'controller' => 'nodes',
								'action' => 'view',
								'type' => 'page',
								'slug' => 'missions-des-conseillers-agricole'
							)*/
							'#',
							array('class' => 'sf-with-ul')
						);
				?>
			</li>
	
			<li id="menu-item-2526" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2526">
				<?php 
					echo $this->Html->link('Profile',
							/*array(
								'plugin' => 'nodes',
								'controller' => 'nodes',
								'action' => 'term',
								'type' => 'node',
								'slug' => 'actualites'
							),*/
							'#',
							array('class' => 'sf-with-ul')
						);
				?>
			</li>
			
			<li id="menu-item-2527" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2527">
				<a href="#" class="sf-with-ul">Messages</a>
			</li>

			<li id="menu-item-2526" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2526">
				<?php 
					echo $this->Html->link('Activités',
							/*array(
								'plugin' => 'cap_maroc',
								'controller' => 'caps',
								'action' => 'faq',
							),*/
							'#',
							array('class' => 'sf-with-ul')
						);
				?>
			</li>

			<li id="menu-item-2526" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2526">
				<?php 
					echo $this->Html->link('Contact',
							array(
								'plugin' => 'contacts',
								'controller' => 'contacts',
								'action' => 'view',
							),
							array('class' => 'sf-with-ul')
						);
				?>
			</li>
		</ul>
	</div>
	<div id="gdl-social-icon" class="social-wrapper">
		<div class="social-icon-wrapper">

			<div class="social-icon">
				<?php 
					echo $this->Html->link(
							$this->Html->image('icons/social-icon/facebook.png', 
								array('alt' => 'facebook', 'title' => 'facebook', 'class' => 'no-preload')
							),
							Configure::read('Social.facebook'),
							array('escape' => false, 'target' => '_blank')
					);
				?>
			</div>

			<div class="social-icon">
				<?php 
					echo $this->Html->link(
							$this->Html->image('icons/social-icon/youtube.png', 
								array('alt' => 'youtube', 'title' => 'youtube', 'class' => 'no-preload')
							),
							Configure::read('Social.youtube'),
							array('escape' => false, 'target' => '_blank')
					);
				?>
			</div>

			<div class="social-icon">
				<?php 
					echo $this->Html->link(
							$this->Html->image('icons/social-icon/rss.png', 
								array('alt' => 'rss', 'title' => 'rss', 'class' => 'no-preload')
							),
							Configure::read('Social.rss'),
							array('escape' => false, 'target' => '_blank')
					);
				?>
			</div>
		</div>
	</div>
	<div class="clear"></div>
</div>
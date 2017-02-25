<div class="logo-wrapper">
	<?php

		echo $this->Html->link(
				$this->Html->image('logo.png', array(
						'alt' => Configure::read('Site.title'),
						'title' => Configure::read('Site.title'),
						'style' => 'height: 80px;margin-top: 16px;margin-left: 0px;'
					)
				),
				'/',
				array('escape' => false)
		);				
	?>
</div>

<div class="logo-right-text">	
	<div class="top-search-wrapper" >
		<?php
			echo $this->Html->image('trone.gif', array(
					'alt' => Configure::read('Site.title'), 
					'title' => Configure::read('Site.title'), 
					'style' => 'height: 80px;'
				)
			);
		?>
	</div>
	<div class="logo-right-text-content" style = "margin-top: 13px;">
		<?php
			if (!$this->Session->read('Auth.User.id'))
			{
				echo '<span style="font-size: 14px; color: #aaa;"> '.
					$this->Html->link('<i class = "ti-user"></i> Créer un compte',
						array(
							'plugin' => 'users',
							'controller' => 'users',
							'action' => 'add'

						),
						array('escape' => false)
					).
				'</span>
				<span style="margin-left: 15px; margin-right: 15px; ">|</span>';
				
			}
		?>
	
		<span style="font-size: 14px; color: #aaa; "> 
			<?php 
				if ($this->Session->read('Auth.User.id'))
				{
					if($this->request->params['controller'] !== 'counselors')
					{
						echo $this->Html->link('<i class = "ti-user"></i> Espace Conseillers',
							'/home',
							array('escape' => false)
						).' / ';						
					}

					echo $this->Html->link('<i class = "ti-unlock"></i> Se déconnecter',
						array(
							'plugin' => 'users',
							'controller' => 'users',
							'action' => 'logout'
						),
						array('escape' => false)
					);
				}
				else
				{
					echo $this->Html->link('<i class = "ti-lock"></i> Se connecter',
						array(
							'plugin' => 'users',
							'controller' => 'users',
							'action' => 'login'

						),
						array('escape' => false)
					);					
				}
			?>
			
		</span>
		<!--<span style="margin-left: 15px; margin-right: 15px; ">|</span>
		<?php

			/*echo $this->Html->link(' النسخة العربية  <i class = "ti-world"></i>',
				'#',
				array('escape' => false)
			);*/
		?>
		</span>-->
	</div>


</div>
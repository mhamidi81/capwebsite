<div class="six columns mb0">
	<div class="blog-item-holder">
		<div class="row">
			<div class="gdl-page-content">
				<ul class="gdl-accordion">
					<?php 
						if(isset($objectifs) && count($objectifs)>0):
							foreach ($objectifs as $item):
					?>
								<li class="">
									<h2 class="accordion-title">
										<?php echo $item['Node']['title']; ?>
									</h2>
									<div class="accordion-content">	
										<?php echo $item['Node']['body']; ?>
									</div>
								</li>
<?php
							endforeach;
						endif;
?>
				</ul>
				<div class="clear" style=" height:20px;"></div>
			</div>
		</div>
	</div>
	<div class="clear"></div>
</div>

<div class="six columns ">
	<div class="gdl-tab">
		<ul class="gdl-tab-title">
			<li><a data-tab="tab-1" class="active">Domaines d'intervention</a></li>
			<li><a data-tab="tab-2" >Loi n° 62-12</a></li>
			<li><a data-tab="tab-3" >Bulletin officiel</a></li>
		</ul>
		<div class="clear"></div>
		<ul class="gdl-tab-content">
			<li data-tab="tab-1" class="active">
				<div style="margin-right: 2%;">
					<div class="shortcode-list arrow2">
						<ul>
							<li>Conseil technique </li>
							<li>Conseil dans le domaine de l’entreprise agricole</li>
							<li>Conseil dans le domaine de projet de développement agricole</li>
						</ul>
					</div>
					<?php 
						echo $this->Html->link('lire la suite<span class="sf-sub-indicator">+</span>',
								array(
									'plugin' => 'nodes',
									'controller' => 'nodes',
									'action' => 'view',
									'type' => 'page',
									'slug' => 'domaines-dintervention-du-conseiller-agricole'
								),
								array('class' => 'sf-with-ul', 'escape' => false)
							);
					?>
				</div>
				<div class="clear" style=" height:1px;"></div>
			</li>
			<li data-tab="tab-2" >
				<strong>Objectifs de la loi n° 62-12</strong>
				<br>
				Professionnaliser l’activité d’encadrement et préparer l’émergence d’un corps de vulgarisation et de consulting opérationnel et efficace;
				<br>
				<?php 
					echo $this->Html->link('lire la suite<span class="sf-sub-indicator">+</span>',
							array(
								'plugin' => 'nodes',
								'controller' => 'nodes',
								'action' => 'view',
								'type' => 'page',
								'slug' => 'objectifs-de-la-loi-n-62-12'
							),
							array('class' => 'sf-with-ul', 'escape' => false)
						);
				?>
			</li>
			<li data-tab="tab-3" style="text-align:center;" >
				<?php 
					echo $this->Html->link('TÉLÉCHARGER',
							DS . 'theme' . DS . $this->theme . DS . 'pdf' . DS . 'conseiller-agricole-decret-bo-6334-ar.pdf',
							array('class' => 'gdl-button large', 'target' => '_blank', 'style' => 'color:#5d7731; background-color:#a1cc59;')
						);
				?>
			</li>
		</ul>
	</div>
</div>
<div class="clear"></div>
<br>
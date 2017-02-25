<script type="text/javascript">
	jQuery(document).ready(function()
	{
		jQuery('.widget-front').hover(function()
		{
			jQuery(this).addClass('hover');    
		},     
		function()
		{
			jQuery(this).removeClass('hover');     
		});
	});
</script>

<div class="gdl-page-left mb0 twelve columns">
	<div class="row">
		<div class="gdl-page-item mb0 twelve columns">
			<div class="row">
				<div class="twelve columns ">
					<div class="gdl-divider gdl-border-x bottom">
						<div class="scroll-top"></div>
					</div>
				</div>
				<div class="clear"></div>
			</div>

			<div class="row marketing">
				<div class="four columns ">
					<div class="column-service-title-wrapper">
						<div class="span4 fp-one">
							<div class="widget-front">
								<h2>1 - Créer un compte utilisateur </h2>
								<div class="thumb-wrapper ">
									<a class="round-div" href="#" title="Créer un compte utilisateur"></a>
									 <?php  echo $this->Html->image('account-icon.jpg', array('style' => 'width:auto; height:250px;left: 2px; top: 1px;')); ?>
								</div>
								
							</div><!-- /.widget-front -->
						</div>
					</div>
				</div>

				<div class="four columns ">
					<div class="column-service-title-wrapper">
						<div class="span4 fp-two">
							<div class="widget-front">
								<h2>2 - Completer votre profile </h2>
								<div class="thumb-wrapper ">
									<a class="round-div" href="#" title="Déposer votre dossier"></a>
								 <?php  echo $this->Html->image('request.jpg', array('style' => 'width:auto; height:250px;left: 2px; top: 1px;')); ?>
								</div>
								
							</div><!-- /.widget-front -->
						</div>
					</div>
				</div>

				<div class="four columns ">
					<div class="column-service-title-wrapper">
						<div class="span4 fp-three">
							<div class="widget-front">
								<h2>3 - Déposer votre dossier </h2>
								<div class="thumb-wrapper ">
									<a class="round-div" href="#" title="Suivi votre demande en ligne"></a>
							 	<?php  echo $this->Html->image('icon-timeline-inactive.png', array('style' => 'width:auto; height:250px;left: 2px; top: 1px;')); ?>
								</div>
								
							</div><!-- /.widget-front -->
						</div>
					</div>
				</div>
				<div class="clear"></div>
			</div>

			<div class="row row_info">
				<div class="four columns ">
					<div class="column-service-wrapper">
						<div class="column-service-title-wrapper">
							<h2 class="column-service-title">Champs d’activités</h2>
							<div class="column-service-caption">
								Les conseillers se répartissent dans trois grandes spécialités : agronomie-environnement économie-gestion d’entreprise développement territorial.
							</div>
							<a class="gdl-button" href="#">Lire la suite</a>
						</div>
					</div>
				</div>

				<div class="four columns ">
					<div class="column-service-wrapper">
						<div class="column-service-title-wrapper">
							<h2 class="column-service-title">Compétences requises</h2>
							<div class="column-service-caption">
								Avoir un bon bagage technique Pour réaliser des études et des expérimentations (tests de culture, de produits phytosanitaires&#8230;) et élaborer des [&hellip;]
							</div>
							<a class="gdl-button" href="#">Lire la suite</a>
						</div>
					</div>
				</div>

				<div class="four columns ">
					<div class="column-service-wrapper">
						<div class="column-service-title-wrapper">
							<h2 class="column-service-title">Mission de conseiller agricole</h2>
							<div class="column-service-caption">
								Le conseiller agricole aide les exploitations agricoles à améliorer la quantité et la qualité de leur production (végétale ou animale) ou leurs [&hellip;]
							</div>
							<a class="gdl-button" href="#">Lire la suite</a>
						</div>
					</div>
				</div>
				<div class="clear"></div>
			</div>

			<div class="row row_info">
				<div class="twelve columns mb0">

					<div class="portfolio-carousel-wrapper">
						<div class="port-nav-wrapper">
							<a class="port-nav left"></a>
							<a class="port-nav right"></a>
						</div>

						<div class="portfolio-item-holder row" data-index="0" data-num="4" data-width="240" data-max="7" style="width: 1680px; margin-left: -10px;">
							<div class="three columns portfolio-item mb0" style="float: left; width: 240px; height: 288px;">
								<div class="portfolio-media-wrapper gdl-image">
									<a href="<?php  echo $this->Html->url('../theme/Cap/img/demo/SAM_0498.jpg'); ?>" data-rel="fancybox" data-fancybox-group="gal0" title="Conseillers agricole" style="opacity: 0;">
										<span class="portfolio-thumbnail-image-hover"></span>
										<span class="hover-zoom hover-icon"></span>
									</a>
						 		<?php  echo $this->Html->image('demo/SAM_0498_400x400.jpg'); ?>
								</div>

								<div class="portfolio-context">
									<h2 class="portfolio-title">
										<a href="#">
											Information et formation
										</a>
									</h2>
								</div>
								<div class="clear"></div>
							</div>

							<div class="three columns portfolio-item mb0" style="float: left; width: 240px; height: 288px;">
								<div class="portfolio-media-wrapper gdl-image">
									<a href="<?php  echo $this->Html->url('../theme/Cap/img/demo/SAM_0545.jpg'); ?>" data-rel="fancybox" data-fancybox-group="gal0" title="Conseillers agricole">
										<span class="portfolio-thumbnail-image-hover"></span>
										<span class="hover-zoom hover-icon"></span>
									</a>
									<?php  echo $this->Html->image('demo/SAM_0545_400x400.jpg'); ?>
								</div>
								<div class="portfolio-context">
									<h2 class="portfolio-title">
										<a href="#">
											Conseillers agricoles
										</a>
									</h2>
								</div>
								<div class="clear"></div>
							</div>

							<div class="three columns portfolio-item mb0" style="float: left; width: 240px; height: 288px;">

								<div class="portfolio-media-wrapper gdl-image">
									<a href="<?php  echo $this->Html->url('../theme/Cap/img/demo/conseiller-agricole.jpg'); ?>" data-rel="fancybox" data-fancybox-group="gal0" title="Conseillers agricole">
										<span class="portfolio-thumbnail-image-hover"></span>
										<span class="hover-zoom hover-icon"></span>
									</a>
									<?php  echo $this->Html->image('demo/conseiller-agricole_400x400.jpg'); ?>
								</div>

								<div class="portfolio-context">
									<h2 class="portfolio-title">
										<a href="#">
											Conseil technique
										</a>
									</h2>
								</div>

								<div class="clear"></div>
							</div>

							<div class="three columns portfolio-item mb0" style="float: left; width: 240px; height: 288px;">
								<div class="portfolio-media-wrapper gdl-video">
									<div class="fluid-width-video-wrapper" style="padding-top: 100%;">
										<iframe src="http://player.vimeo.com/video/132995970?title=0&amp;byline=20&amp;portrait=0" id="fitvid137718"></iframe>
									</div>
								</div>
								<div class="portfolio-context">
									<h2 class="portfolio-title">
										<a href="#">
											Conseillers agricoles (Video)
										</a>
									</h2>
								</div>
								<div class="clear"></div>
							</div>
						</div>
						<div class="clear"></div>
					</div>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
			</div>

			<div class="row row_info">
				<div class="six columns mb0">
					<div class="blog-item-holder">
						<div class="row">
							<div class="gdl-page-content">
								<ul class="gdl-accordion">
									<li class="active">
										<h2 class="accordion-title">Objectifs de la loi n° 62-12</h2>
										<div class="accordion-content">	
												Professionnaliser l’activité d’encadrement et préparer l’émergence d’un corps de vulgarisation et de consulting opérationnel et efficace...
										</div>
									</li>
									<li>
										<h2 class="accordion-title">
											Objectifs de la loi n° 62-11
										</h2>
										<div class="accordion-content" style="display: none;">
												Professionnaliser l’activité d’encadrement et préparer l’émergence d’un corps de vulgarisation et de consulting opérationnel et efficace...
										</div>
									</li>

									<li>
										<h2 class="accordion-title">
											Objectifs de la loi n° 62-10
										</h2>
										<div class="accordion-content" style="display: none;">	
												Professionnaliser l’activité d’encadrement et préparer l’émergence d’un corps de vulgarisation et de consulting opérationnel et efficace...
										</div>
									</li>
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
							<li><a data-tab="tab-1" class="active">Conseil technique</a></li>
							<li><a data-tab="tab-2" >Conditions de profession</a></li>
						</ul>
						<div class="clear"></div>
						<ul class="gdl-tab-content">
							<li data-tab="tab-1" class="active">
								<div style="margin-right: 2%;">
									<div class="shortcode-list arrow2">
										<ul>
											<li>
												consiste à assister l’agriculteur dans le transfert et la maitrise des techniques de production agricole de l’amont à l’aval de la filière</li>
											</li>
											<li>
												consiste à assister l’agriculteur dans le transfert et la maitrise des techniques de production agricole de l’amont à l’aval de la filière</li>
											</li>
											<li>
												consiste à assister l’agriculteur dans le transfert et la maitrise des techniques de production agricole de l’amont à l’aval de la filière</li>
											</li>
										</ul>
									</div>
								</div>
								<div class="clear" style=" height:1px;"></div>
							</li>
							<li data-tab="tab-2" >
								<strong>Conditions d'éligibilité</strong>
								<br>
								Nul ne peut exercer cette profession, s’il n’est pas détenteur d’un agrément délivré par l’autorité gouvernementale chargée de l’agriculture.
								<br>
								Nul ne peut exercer cette profession, s’il n’est pas détenteur d’un agrément délivré par l’autorité gouvernementale chargée de l’agriculture.
								<br>
								Nul ne peut exercer cette profession, s’il n’est pas détenteur d’un agrément délivré par l’autorité gouvernementale chargée de l’agriculture.
							</li>
						</ul>
					</div>
				</div>
				<div class="clear"></div>
				<br>
			</div>
		</div>
		<div class="clear"></div>
	</div>
</div>
<div class="clear"></div>
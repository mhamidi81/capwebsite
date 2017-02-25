<?php

	$this->layout = "custom_layout";
	if (count($nodes) == 0) {
		echo __d('croogo', 'No items found.');
	}
?>
<div class="row">
	<div class="twelve columns mb40">

	<?php
		foreach ($nodes as $node):
			$this->Nodes->set($node);
	?>
				<div class="blog-item-holder">
					<div class="gdl-blog-full gdl-border-x bottom">
						<div class="blog-media-wrapper gdl-image">
							<?php 
								echo $this->Html->image(
									PHOTOS_PATH.'thumb/620x240/'.$this->Nodes->field('filename'), 
									array(
										'alt' => $this->Nodes->field('title'), 
										'title' => $this->Nodes->field('title'),
										'style' => 'opacity: 1;', 
										'escape' => false
									)
								);
							?>
						</div>

						<div class="blog-date-wrapper">
							<div class="blog-date-value"><?php echo $this->Time->format('d', $this->Nodes->field('created'), null, Configure::read('Site.timezone')); ?></div>
							<div class="blog-month-value"><?php echo $this->Time->format('M', $this->Nodes->field('created'), null, Configure::read('Site.timezone')); ?></div>
							<div class="blog-year-value"><?php echo $this->Time->format('Y', $this->Nodes->field('created'), null, Configure::read('Site.timezone')); ?></div>
						</div>

						<div class="blog-content-wrapper">
							<h2 class="blog-title">
								<?php 
									echo $this->Html->link(
											$this->Nodes->field('title'),
											$this->Nodes->field('url'),
											array('escape' => false)
										);
								?>
							</h2>

							<div class="blog-info-wrapper">
								<div class="blog-comment">
									<?php echo $this->Nodes->moreInfo(); ?>
								</div>
								<div class="clear"></div>
							</div>

							<div class="blog-content">
								<?php echo $this->Nodes->field('excerpt'); ?>... 
								<div class="clear"></div>
								<?php 
									/*echo $this->Html->link(
											'Lire la suite',
											$this->Nodes->field('url'),
											array('class' => 'blog-continue-reading gdl-button', 'escape' => false)
										);*/
								?>
							</div>
						</div>
					</div>
				</div>
		<?php
			endforeach;
		?>
		<div class="clear"></div>
		<div class="gdl-pagination">
			<?php 
				echo $this->Paginator->numbers(array('currentTag' => 'span', 'separator' => '', 'currentClass' => 'current', 'tag' => false)); 
			?>
			<div class="clear"></div>
		</div>
	</div>
	<div class="clear"></div>
</div>

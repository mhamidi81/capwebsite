<?php 
	$this->Nodes->set($node);
	$this->layout = "custom_layout";
	$this->assign('breadcrumb_title', $this->Nodes->field('title'));
?>

<div id="node-<?php echo $this->Nodes->field('id'); ?>" class="node-type-<?php echo $this->Nodes->field('type'); ?> pb20 gdl-blog-full">
	
	<?php 
		$image = $this->Nodes->field('filename');
		$video = $this->Nodes->field('video');
		if($image !='' && !empty($image))
		{
			?>
				<div style="position: absolute;right: 0;">
						<?php 
							echo $this->Html->image($this->Nodes->field('filename'), 
										array(
											'alt' => $this->Nodes->field('title'), 
											'title' => $this->Nodes->field('title'),
											'style' => 'opacity: 1;', 
											'escape' => false
										),
									array('escape' => false)
							);
						?>
				</div>
			<?php 
		}
		
		if (isset($video) && !empty($video) && strlen(trim($video))>1 && $video !=='') 
		{
			echo '<div class="post_video">';
			echo $this->Video->videoTag($this->Nodes->field('video'));
			echo '<div class="youtube_like"><script src="https://apis.google.com/js/platform.js"></script><div class="g-ytsubscribe" data-channelid="UCcNkcTBiwetIyWO50zjjNPg" data-layout="full" data-count="hidden"></div></div>';
			echo '</div>';
		}


	?>

	<div class="blog-content-wrapper">
		<h1 class = "mainTitle">
			<?php echo $this->Nodes->field('title'); ?>
		</h1>

		<div class="blog-info-wrapper">
			<div class="blog-comment">
				<?php echo $this->Nodes->moreInfo(); ?>
			</div>
			<div class="clear"></div>
		</div>

		<div class="blog-content">
			<?php echo $this->Nodes->body(); ?>
			<div class="clear"></div>
		</div>

		<?php //echo $this->element('about_author'); ?>

		<div class="clear"></div>
	</div>
</div>

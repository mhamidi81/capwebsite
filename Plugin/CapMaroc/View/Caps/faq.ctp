<?php 
	$this->layout = "custom_layout";
	$this->assign('breadcrumb_title', 'FAQ');
	$this->assign('breadcrumb_description', 'Foire aux questions');
?>

<div class="row">
	<div class="gdl-page-item mb0 twelve columns">
		<div class="row">
			<div class="twelve columns mb0">
				<div class="gdl-page-content"></div>
			</div>
			<div class="clear"></div>
		</div>

		<div class="row">
			<div class="twelve columns ">
				<ul class="gdl-toggle-box">
<?php 
					if(isset($faqs) && count($faqs)>0):
						foreach ($faqs as $item):
?>
							<li class="">
								<h2 class="toggle-box-title">
									<?php echo $item['Node']['title']; ?>
								</h2>
								<div class="toggle-box-content" style="display: none;">
									<?php echo $item['Node']['body']; ?>
								</div>
							</li>
<?php 					endforeach;
					endif;
?>
				</ul>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<div class="clear"></div>
</div>
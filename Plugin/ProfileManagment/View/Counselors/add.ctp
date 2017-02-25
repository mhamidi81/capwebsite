<script>
<?php  $this->Html->scriptStart(array('inline' => false, 'block' => 'scriptBottom')); ?>
	(function ($) {
	    "use strict";

	    // Detecting IE
	    var oldIE;
	    if ($('html').is('.ie6, .ie7, .ie8, .ie9')) {
	        oldIE = true;
	    }

	    if (!oldIE) {
	        $('#wizard_container').show();
	        $('#alert_browser').hide();
	    }
	    else
	    {
	        $('#wizard_container').show();
	        $('#alert_browser').hide();	    	
	    }

	}(jQuery));

	jQuery(document).ready(function() {
		// Copy div personne
		
		// Copy div experience
		$(document).on('click', '.add_cv_item', function()
		{
			var container = $(this).closest('.cv_item_container');
			var item = $(container).find('.cv_item:first');

			var newdiv = $(item).clone(false);
			
			$(newdiv).find('.select2-container').remove();
			$(newdiv).find('select').removeClass('select2-hidden-accessible');
			$(newdiv).find('select').removeAttr('aria-hidden');
			$(newdiv).find('select').removeAttr('tabindex');
			$(newdiv).find('.alert-danger').hide();
			//employee cv
			$(newdiv).find('.progress-bar').css('width', '0');
			$(newdiv).find('.delete_cv_file_btn').hide();
			$(newdiv).find('.fileinput-button').removeAttr('disabled');
			
			$(container).attr('index', parseInt($(container).attr('index'))+1);
			var index = $(container).attr('index');
			$(container).find('.remove_cv_item').removeClass("hide_button");

			$(newdiv).find('input, textarea ,select').each(function(){
				var name = $(this).attr('name');
				$(this).attr('name', name.replace('0', index));

				if($(this).attr('type') == 'checkbox')
				{
					var id = $(this).attr('id');
					$(this).attr('id', id.replace('0', index));
					$(this).prop('checked' , false);
				}
				else
				{
					$(this).val('');
				}
				
			});
			$(newdiv).find('select').select2();
			$(newdiv).find('.datepicker').datepicker({format : 'yyyy-mm-dd'});
			$(newdiv).find('.has-success').removeClass('has-success');
			$(newdiv).find('.has-error').removeClass('has-error');
			$(newdiv).find('.help-block').remove();
			
			$(newdiv).find('.checkbox').each(function(){
				var id = $(this).find('input[type=checkbox]').attr('id');
				$(this).find('label').attr('for', id); 
			});
			$(container).find('.cv_item:last').after(newdiv);
		});

		$(document).on('click', '.remove_cv_item', function()
		{
			var container = $(this).closest('.cv_item_container');
			

			if($(container).find('.cv_item').length > 1)
			{
				$(container).find('.cv_item:last').remove();
			}
			
			if($(container).find('.cv_item').length == 1)
			{
				$(container).find('.remove_cv_item').addClass("hide_button");
			}
		});
		
		$('.cv_item_container').each(function(){

			if($(this).find('.cv_item').length == 1)
			{
				$(this).find('.remove_cv_item').addClass("hide_button");
			}
			else
			{
				$(this).find('.remove_cv_item').removeClass("hide_button");
			}
		});

	});
<?php $this->Html->scriptEnd(); ?>
</script>
<!-- start: WIZARD DEMO -->
<div class="container-fluid container-fullw bg-white" id = "wizard_container">
	<div class="row">
		<div class="col-md-12">
			<p>
				Les champs marqués (<span class="symbol required"></span>) sont obligatoires.
			</p>
			<!-- start: WIZARD FORM -->
			<div>
				<div id="wizard" class="swMain">
					<!-- start: WIZARD SEPS -->
					<ul>
						<li>
							<a href="#step-1">
								<div class="stepNumber">
									1
								</div>
								<span class="stepDesc">
									<small>Type de bénéficiaire</small>
								</span>
							</a>
						</li>
						<li>
							<a href="#step-2">
								<div class="stepNumber">
									2
								</div>
								<span class="stepDesc">
									<small> Informations du demandeur </small>
								</span>
							</a>
						</li>
						<li>
							<a href="#step-3">
								<div class="stepNumber">
									3
								</div>
								<span class="stepDesc"> 
									<small> Documents  </small> 
								</span>
							</a>
						</li>
						<li>
							<a href="#step-4">
								<div class="stepNumber">
									4
								</div>
								<span class="stepDesc"> 
									<small> Terminer </small> 
								</span>
							</a>
						</li>
					</ul>
					<!-- end: WIZARD SEPS -->
					<!-- start: WIZARD STEP 1 -->
					<div id="step-1">
						<?php echo $this->element('ProfileManagment.Counselors/step1'); ?>
					</div>
					<!-- end: WIZARD STEP 1 -->
					
					<!-- start: WIZARD STEP 2 -->
					<div id="step-2" style = "display:none;">
						<?php echo $this->element('ProfileManagment.Counselors/step2'); ?>
					</div>
					<!-- end: WIZARD STEP 2 -->
					<!-- start: WIZARD STEP 3 -->
					<div id="step-3" style = "display:none;">
						<?php echo $this->element('ProfileManagment.Counselors/step3'); ?>
					</div>
					<!-- end: WIZARD STEP 3 -->
					<!-- start: WIZARD STEP 4 -->
					<div id="step-4" style = "display:none;">
						<?php echo $this->element('ProfileManagment.Counselors/step4'); ?>
					</div>
					<!-- end: WIZARD STEP 4 -->
				</div>
			</div>
			<!-- end: WIZARD FORM -->
		</div>
	</div>
</div>
<div class="alert alert-danger" role="alert" id = "alert_browser" style = "display:none;">
	Votre navigateur n'est plus compatible. Veuillez installer une version plus récente,
	vous pouvez utiliser Chrome, Firefox, Internet Explorer >=10
</div>
<!-- start: WIZARD DEMO -->
<script>
<?php  $this->Html->scriptStart(array('inline' => false, 'block' => 'scriptBottom')); ?>

$(document).ready(function() {
		
	$(document).on('click', '#send_request', function(e){

		var formURL = "<?php echo Router::url(array(
			'admin' => false,
			'plugin' => 'profile_managment',
			'controller' => 'counselors',
			'action' => 'save_step4',
			'ext' => 'json'
		)); ?>";

		$('#step4_form').trigger('dialogLoader', 'show');
		
		$.ajax(
		{
			url : formURL,
			type: "POST",
			success:function(response, textStatus, jqXHR) 
			{
				if(response.result == 'success')
				{
					toastr.success(response.message);
				    window.location.href = "<?php echo Router::url(array(
						'admin' => false,
						'plugin' => 'profile_managment',
						'controller' => 'counselors',
						'action' => 'home'
					)); ?>";
				}
				else
				{
					toastr.error(response.message); 

				}

			},
			error: function(jqXHR, textStatus, errorThrown) 
			{
				toastr.error("<?php echo __d('counselor_managment', 'Une erreur est survenue lors de la supression du ficher!'); ?>");
			}
		});	
		e.preventDefault();
		
		return false;			
	});
});
<?php $this->Html->scriptEnd(); ?>
</script>

<div class="row">
	<div class="col-md-12">
		<div class="text-center">
			<h1 class=" ti-check block text-primary"></h1>
			<h2 class="StepTitle">Félicitations!</h2>
			<p class="text-large">
				Votre demande est prête pour être envoyée.
			</p>
			<p class="text-small">
				Cliquer sur le botton VALIDER ci-dessous pour envoyer votre demande.
			</p>
			<a class="btn btn-wide btn-success" href="javascript:void(0)" id = "send_request">
				VALIDER
			</a>
		</div>
	</div>
</div>
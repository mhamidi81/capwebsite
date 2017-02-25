<script>

<?php  $this->Html->scriptStart(array('inline' => false, 'block' => 'scriptBottom')); ?>

	jQuery(document).ready(function() {
		$('[data-toggle="popover"]').popover({html : true,trigger: 'hover'});
		$('#CompanyCreatedDate').datepicker({
			autoclose: true
		}).on('changeDate', function(ev) {
			if($('#CompanyCreatedDate').valid()){
				$('#CompanyCreatedDate').removeClass('invalid').addClass('success');   
			}
		});

		$(document).on('change', '.custom_select select, .datepicker input' ,function(){
		   
		   if($(this).val() !== ''){
                $(this).closest('.form-group').removeClass('has-error').addClass('has-success');
                $(this).closest('.form-group').find('.help-block').remove();
            }
            else
            {
                $(this).closest('.form-group').addClass('has-error').removeClass('has-success');
            }
		});

		jQuery('#wz-moral').click(function()
		{
			$('#company-info').show();
			$('#company_documents_uploader').show();
			
		});

		jQuery('#wz-physique').click(function()
		{
			jQuery('#company-info').hide();
			$('#company_documents_uploader').hide();
		});

		//datagrid ajax add form 
		$('#step1_form').submit(function(e)
		{
	 		var postData = $(this).serializeArray();
			var formURL = $(this).attr("action");
			$('#step1_form').trigger('dialogLoader', 'show');
			
			$.ajax(
			{
				url : formURL,
				type: "POST",
				data : postData,
				success:function(response, textStatus, jqXHR) 
				{
					if(response.result == 'success')
					{
						toastr.success(response.message);
					}
					else
					{
						toastr.error(response.message); 
						$('#wizard').smartWizard("goBackward");
					}
					$('#step1_form').trigger('dialogLoader', 'hide');
				},
				error: function(jqXHR, textStatus, errorThrown) 
				{
					$('#step1_form').trigger('dialogLoader', 'hide');
					toastr.error("<?php echo __d('message_managment', 'An error occured please try again!'); ?>");
					$('#wizard').smartWizard("goBackward");
				}
			});	
			e.preventDefault();
			
			return false;		
		});

		$.fn.clearForm = function() {
			
			return this.each(function() {
				var type = this.type, tag = this.tagName.toLowerCase();
				
				if (tag == 'form')
					return $(':input',this).clearForm();
				if (type == 'text' || type == 'password' || tag == 'textarea')
					this.value = '';
				else if (type == 'checkbox' || type == 'radio')
					this.checked = false;
				else if (tag == 'select')
					this.selectedIndex = -1;
			});
		};
		
	});

<?php $this->Html->scriptEnd(); ?></script>
<?php  
	echo $this->Form->create('Counselor', array(
				'url' => array(
					'admin' => false,
					'plugin' => 'profile_managment',
					'controller' => 'counselors',
					'action' => 'save_step1',
					'ext' => 'json'
				),
				'class' => 'smart-wizard form_validate',
				'id' => 'step1_form',
				'role' => 'form'
			)
		);
?>
<div class="row">
	<div class="col-md-5">
		<div class="padding-30">
			<h2 class="StepTitle"><i class="ti-face-smile fa-2x text-primary block margin-bottom-10"></i> Bénéficiaire</h2>
			<p>
				Veuillez choisir le type de bénéficiaire.
			</p>
		</div>
	</div>
	<div class="col-md-7">
		<fieldset>
			<legend>
				Personnalité juridique
			</legend>
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<div class="clip-radio radio-primary">
							<input type="radio" id="wz-physique"  name="data[Request][requester_type]" value="natural" 
							<?php if(empty($request)) echo 'checked = "checked"'; else if($request['Request']['requester_type'] == "natural") echo 'checked = "checked"'; ?>
							>
							<label for="wz-physique">Physique</label>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<div class="clip-radio radio-primary">
							<input type="radio" id="wz-moral" name="data[Request][requester_type]" value="legal" <?php if(!empty($request) && $request['Request']['requester_type'] == "legal") echo 'checked = "checked"'; ?>>
							<label for="wz-moral">Moral</label>
						</div>
					</div>
				</div>
			</div>
<!-- 			<p> -->
<!-- 				<a href="javascript:void(0)" data-toggle="popover" data-placement="top" data-title="La personnalité juridique" data-content="<strong>Une personne physique</strong> est, au sens du droit, un être humain auquel on a attribué la jouissance de droits. <br><strong>Une personne morale</strong> est un groupement ayant une existence juridique et qui détient, à ce titre, des droits et des obligations."> -->
<!-- 					 C'est quoi la différence entre les deux types de personnalité juridique? -->
<!-- 				</a> -->
<!-- 			</p> -->
		</fieldset>

	</div>
</div>
<div id="company-info" <?php if(empty($request) || $request['Request']['requester_type'] == "natural") echo 'style = "display:none;"'; ?>>
	<div class="col-md-12">
		<fieldset>
			<legend>
				Information de la société
			</legend>
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>
							Raison sociale <span class="symbol required"></span>
						</label>
						<?php
							$this->Form->inputDefaults(array('label' => false, 'div' => false));

							echo $this->Form->input('Company.name', array(
								'type' => 'text',
								'placeholder' => 'Veuillez saisir le nom de la société',
								'class' => 'form-control',
								'required' => true,
								'data-msg' => 'Ce champ est obligatoir'
							));
						?>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label>
							Type juridique <span class="symbol required"></span>
						</label>

						<?php
							echo $this->Form->input('Company.type', array(
								'options' => array(
									'sarl' => 'SARL',
									'sa' => 'SA',
									'eurl' => 'EURL',
									'snc' => 'SNC',
									'sas' => 'SAS'
								),
								'class' => 'js-example-basic-single js-states form-control',
								'required' => true,
								'data-msg' => 'Ce champ est obligatoir'
							));
						  ?>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>
							N° registre du commerce <span class="symbol required"></span>
						</label>
						<?php
							echo $this->Form->input('Company.number', array(
								'type' => 'text',
								'placeholder' => 'Veuillez saisir le n° de registre du commerce',
								'class' => 'form-control',
								'required' => true,
								'data-msg' => 'Ce champ est obligatoir'
							));
						  ?>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group custom_select">
						<label>
							Localité (Registre du commerce) <span class="symbol required"></span>
						</label>

						<?php
							echo $this->Form->input('Company.city_id', array(
								'style' => 'min-width:200px;',
								'empty' => true, 
								'options' => $cities,
								'class' => 'form-control',
								'required' => true,
								'data-msg' => 'Ce champ est obligatoir'
							));
						  ?>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>
						N° CNSS	 <span class="symbol required"></span>
						</label>
						<?php
							echo $this->Form->input('Company.cnss', array(
								'type' => 'text',
								'placeholder' => "Veuillez saisir le n° de l'inscription à la CNSS",
								'class' => 'form-control',
								'required' => true,
								'data-msg' => 'Ce champ est obligatoir'
							));
						  ?>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label>
							Adresse <span class="symbol required"></span>
						</label>
						<?php
							echo $this->Form->input('Company.address', array(
								'type' => 'text',
								'placeholder' => "Veuillez saisir l'adresse complet de la société",
								'class' => 'form-control',
								'required' => true,
								'data-msg' => 'Ce champ est obligatoir'
							));
						  ?>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>
							Capital <span class="symbol required"></span>
						</label>
						<?php
							echo $this->Form->input('Company.capital', array(
								'type' => 'text',
								'placeholder' => 'Veuillez saisir le capital de la société',
								'class' => 'form-control',
								'required' => true,
								'data-msg' => 'Ce champ est obligatoir'
							));
						  ?>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label>
							N° de patente <span class="symbol required"></span>
						</label>
						<?php
							echo $this->Form->input('Company.patente', array(
								'type' => 'text',
								'placeholder' => 'Veuillez saisir le n° de patente de la société',
								'class' => 'form-control',
								'required' => true,
								'data-msg' => 'Ce champ est obligatoir'
							));
						  ?>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>
							Téléphone <span class="symbol required"></span>
						</label>
						<?php
							echo $this->Form->input('Company.phone', array(
								'type' => 'text',
								'placeholder' => 'Veuillez saisir le n° de téléphone',
								'class' => 'form-control',
								'required' => true,
								'data-msg' => 'Ce champ est obligatoir'
							));
						  ?>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label>
							Fax
						</label>
						<?php
							echo $this->Form->input('Company.fax', array(
								'type' => 'text',
								'placeholder' => 'Veuillez saisir le n° de Fax',
								'class' => 'form-control',
								'required' => false
							));
						  ?>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>
							Email <span class="symbol required"></span>
						</label>
						<?php
							echo $this->Form->input('Company.email', array(
								'type' => 'email',
								'placeholder' => "Veuillez saisir l'email de la société",
								'class' => 'form-control',
								'required' => true,
								'data-msg' => 'Ce champ est obligatoir'
							));
						  ?>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label>
							Site internet
						</label>
						<?php
							echo $this->Form->input('Company.website', array(
								'type' => 'url',
								'placeholder' => 'Veuillez saisir le site internet de la société',
								'class' => 'form-control',
								'required' => false,
								'data-msg' => 'Entrer un site internet valide precédé par http://'
							));
						  ?>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-md-12">
					<div class="form-group">
						<label>
							Domaines d'activité de la société <span class="symbol required"></span>
						</label>
						<?php
							echo $this->Form->input('Company.domaine', array(
								'placeholder' => "Veuillez saisir les domaines d'activité de la société",
								'class' => 'form-control',
								'required' => true,
								'type' => 'textarea',
								'data-msg' => 'Ce champ est obligatoir',
								'style' => 'height:100px'
							));
						  ?>
					</div>
				</div>
			</div>
		</fieldset>
	</div>
</div>
<div class="row" id="step1_wizard_controle">
	<div class="col-md-12">
		<div class="form-group">
			<?php
				echo $this->Form->button('Suivant <i class="fa fa-arrow-circle-right"></i>', array(
							'type' => 'submit',
							'id' => 'step1_next_btn',
							'class' => 'btn btn-primary btn-o next-step btn-wide pull-right',
							'escape' => false,
						)
					);
			?>
		</div>
	</div>
</div>
<?php echo $this->Form->end(); ?>

<script>
<?php  $this->Html->scriptStart(array('inline' => false, 'block' => 'scriptBottom')); ?>

	jQuery(document).ready(function() {
		
		$('#step2_form').submit(function(e)
		{
	 		var postData = $(this).serializeArray();
			var formURL = $(this).attr("action");

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

				},
				error: function(jqXHR, textStatus, errorThrown) 
				{
					toastr.error("<?php echo __d('message_managment', 'An error occured please try again!'); ?>");
					$('#wizard').smartWizard("goBackward");
				}
			});	
			e.preventDefault();
			
			return false;		
		});

		$(document).on('change','.etablissement select' ,function(e){

			if($(this).select2('data')[0].text == 'Autre')
			{
				$(this).closest('div').find('input[type = "text"]').show();
			}
			else
			{
				$(this).closest('div').find('input[type = "text"]').hide();
			}
		});
		
		<?php if(!empty($this->request->data['Qualification'])){?>
				$('.etablissement select').trigger('change');
		<?php } ?>
		
	});

<?php $this->Html->scriptEnd(); ?>
</script>
<?php  
	echo $this->Form->create('Counselor', array(
				'url' => array(
					'admin' => false,
					'plugin' => 'profile_managment',
					'controller' => 'counselors',
					'action' => 'save_step2',
					'ext' => 'json'
				),
				'class' => 'smart-wizard form_validate',
				'id' => 'step2_form',
				'role' => 'form'
			)
		);
	$this->Form->inputDefaults(array('label' => false, 'div' => false, 'id' => false));
?>	
<div class="row">
	<div class="col-md-12">
		<fieldset>
			<legend>
				Information de contact
			</legend>
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>
							Téléphone de bureau </span>
						</label>
						<?php
							echo $this->Form->input('Counselor.office_phone', array(
								'type' => 'text',
								'placeholder' => 'Veuillez saisir le numéro de téléphone de bureau',
								'class' => 'form-control',
								'required' => false,
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
							echo $this->Form->input('Counselor.fax', array(
								'type' => 'text',
								'placeholder' => 'Veuillez saisir votre numéro de Fax',
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
							Téléphone mobile <span class="symbol required"></span>
						</label>
						<?php
							echo $this->Form->input('Counselor.mobile_phone', array(
								'type' => 'text',
								'placeholder' => 'Veuillez saisir votre numéro de téléphone mobile',
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
							Email <span class="symbol required"></span>
						</label>
						<?php
							echo $this->Form->input('Counselor.email', array(
								'type' => 'email',
								'placeholder' => 'Veuillez saisir votre email',
								'class' => 'form-control',
								'required' => true,
								'data-msg' => 'Ce champ est obligatoir',
								'readonly' => 'readonly',
								'value' => $user['email']
							));
						?>
					</div>
				</div>
			</div>

			<div class="form-group">
				<label>
					Adresse <span class="symbol required"></span>
				</label>
				<?php
					echo $this->Form->input('Counselor.address', array(
						'type' => 'text',
						'placeholder' => 'Veuillez saisir votre adresse',
						'class' => 'form-control',
						'required' => true,
						'data-msg' => 'Ce champ est obligatoir'
					));
				?>
			</div>
		</fieldset>
	</div>

	<div class="col-md-12">
		<fieldset>
			<legend>
				Informations personnel
			</legend>
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>
							Nom <span class="symbol required"></span>
						</label>
						<?php
							echo $this->Form->input('Counselor.last_name', array(
								'type' => 'text',
								'placeholder' => 'Veuillez saisir votre nom',
								'class' => 'form-control',
								'required' => false,
								'readonly' => 'readonly',
								'value' => $user['last_name']
							));
						?>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label>
							Prénom <span class="symbol required"></span>
						</label>
						<?php
							echo $this->Form->input('Counselor.first_name', array(
								'type' => 'text',
								'placeholder' => 'Veuillez saisir votre prénom',
								'class' => 'form-control',
								'required' => false,
								'readonly' => 'readonly',
								'value' => $user['first_name']
							));
						?>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-md-6">
					<div class="form-group custom_select">
						<label>
							Situation familiale
						</label>
						<?php
							echo $this->Form->input('Counselor.family_status', array(
								'options' => $family_statuses,
								'class' => 'form-control',
								'empty' => true,
								'required' => true,
								'data-msg' => 'Ce champ est obligatoir'
							));
						?>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group" style = "padding-top: 15px;">
						<div class="clip-radio radio-primary">
							<input type="radio" value="female" name="data[Counselor][gender]" id="us-female" <?php if($user['gender'] == "female") echo 'checked = "true"'?> disabled = 'disabled'>
							<label for="us-female">
								Femme
							</label>
							<input type="radio" value="male" name="data[Counselor][gender]" id="us-male" <?php if($user['gender'] == "male") echo 'checked = "true"'?> disabled = 'disabled'>
							<label for="us-male">
								Homme
							</label>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>
							Date de naissance <span class="symbol required"></span>
						</label>
						<p class="input-group input-append datepicker date">
							<?php
								echo $this->Form->input('Counselor.birthday', array(
									'type' => 'text',
									'class' => 'form-control',
									'readonly' => true,
									'required' => true,
									'data-msg' => 'Ce champ est obligatoir'
								));
							  ?>
							<span class="input-group-btn">
								<button type="button" class="btn btn-default">
									<i class="glyphicon glyphicon-calendar"></i>
								</button>
							</span>
						</p>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group custom_select">
						<label>
							Lieu de naissance <span class="symbol required"></span>
						</label>
						<?php
							echo $this->Form->input('Counselor.birth_city_id', array(
								'options' => $cities,
								'class' => 'form-control',
								'empty' => true,
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
							CIN <span class="symbol required"></span>
						</label>
						<?php
							echo $this->Form->input('Counselor.cin', array(
								'type' => 'text',
								'placeholder' => 'Veuillez saisir votre CIN',
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
							Ville Actuelle<span class="symbol required"></span>
						</label>
						<?php
							echo $this->Form->input('Counselor.city_id', array(
								'options' => $cities,
								'class' => 'form-control',
								'empty' => true,
								'required' => true,
								'data-msg' => 'Ce champ est obligatoir'
							));
						?>
					</div>
				</div>
			</div>
		</fieldset>
	</div>
	<div class="col-md-12">
		<?php 
			$div_count = (!empty($this->request->data['Qualification']))? count($this->request->data['Qualification']) : 1;
		?>
		<fieldset>
			<legend>
				Compétences et diplômes
			</legend>

			<div id="diplomes" class = "cv_item_container" index = "<?php echo $div_count-1; ?>">
				<?php for ($i=0; $i < $div_count; $i++) { ?>
				<div class = "cv_item">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group custom_select">
								<label>
									Diplôme <span class="symbol required"></span>
								</label>
								<?php
									echo $this->Form->input('Qualification.'.$i.'.diplome_id', array(
										'type' => 'select',
										'class' => 'form-control',
										'options' => $diplomes,
										'empty' => true,
										'required' => true,
										'data-msg' => 'Ce champ est obligatoir'
									));
								?>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group custom_select">
								<label>
									Specialité <span class="symbol required"></span>
								</label>
								<?php
									echo $this->Form->input('Qualification.'.$i.'.speciality_id', array(
										'type' => 'select',
										'class' => 'form-control',
										'options' => $specialities,
										'empty' => true,
										'required' => true,
										'data-msg' => 'Ce champ est obligatoir'
									));
								?>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group custom_select etablissement">
								<label>
									Etablissement <span class="symbol required"></span>
								</label>
								<?php
									echo $this->Form->input('Qualification.'.$i.'.establishment_id', array(
										'type' => 'select',
										'class' => 'form-control',
										'options' => $establishments,
										'empty' => true,
										'required' => true,
										'data-msg' => 'Ce champ est obligatoir'
									));
								?>

								<?php
									echo $this->Form->input('Qualification.'.$i.'.description', array(
										'type' => 'text',
										'class' => 'form-control',
										'required' => true,
										'data-msg' => 'Ce champ est obligatoir',
										'style' => 'margin-top:10px;display:none;'
									));
								?>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group custom_select">
								<label>
									Année <span class="symbol required"></span>
								</label>
								<?php
									echo $this->Form->input('Qualification.'.$i.'.year', array(
										'type' => 'select',
										'class' => 'form-control',
										'options' =>  array_combine(range(date("Y"), 1960), range(date("Y"), 1960)),
										'empty' => true,
										'required' => true,
										'data-msg' => 'Ce champ est obligatoir'
									));
								?>
							</div>
						</div>
					</div>
					<hr>
				</div>
				<?php } ?>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<a class="btn btn-wide btn-primary add_cv_item" onclick="event.preventDefault();"  href="#"><i class="fa fa-plus"></i> Ajouter un diplôme</a>
						</div>
					</div>
					<div class="col-md-6 a-r">
						<div class="form-group">
							<a class="btn btn-wide btn-red hide_button remove_cv_item" onclick="event.preventDefault();" href="#"><i class="fa fa-trash-o"></i> Supprimer le diplôme</a>
						</div>
					</div>
				</div>			
			</div>
		</fieldset>
	</div>

	<div class="col-md-12">
		<?php 
			$div_count = (!empty($this->request->data['ProfessionalExperience']))? count($this->request->data['ProfessionalExperience']) : 1;
		?>		
		<fieldset>
			<legend>
				Expérience professionnelle
			</legend>

			<div id="experiences" class = "cv_item_container" index = "<?php echo $div_count-1; ?>">

				<?php for ($i=0; $i < $div_count; $i++) { ?>
				<div  class = "cv_item">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>
									Nom de l’entreprise <span class="symbol required"></span>
								</label>
								<?php
									echo $this->Form->input('ProfessionalExperience.'.$i.'.organisation', array(
										'type' => 'text',
										'placeholder' => 'Veuillez saisir le nom de l’entreprise',
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
									Fonction <span class="symbol required"></span>
								</label>
								<?php
									echo $this->Form->input('ProfessionalExperience.'.$i.'.function', array(
										'type' => 'text',
										'placeholder' => 'Veuillez saisir la fonction occupé au sein de l’entreprise',
										'class' => 'form-control',
										'required' => true,
										'data-msg' => 'Ce champ est obligatoir'
									));
								?>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-4">
							<div class="form-group">
								<label>
									Du <span class="symbol required"></span>
								</label>
								<p class="input-group input-append datepicker date">
									<?php
										echo $this->Form->input('ProfessionalExperience.'.$i.'.start_date', array(
											'type' => 'text',
											'class' => 'form-control',
											'readonly' => true,
											'required' => true,
											'data-msg' => 'Ce champ est obligatoir'
										));
									  ?>
									<span class="input-group-btn">
										<button type="button" class="btn btn-default">
											<i class="glyphicon glyphicon-calendar"></i>
										</button>
									</span>
								</p>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="form-group">
								<label>
									Au <span class="symbol required"></span>
								</label>
								<p class="input-group input-append datepicker date">
									<?php
										echo $this->Form->input('ProfessionalExperience.'.$i.'.end_date', array(
											'type' => 'text',
											'class' => 'form-control',
											'readonly' => true,
											'required' => true,
											'data-msg' => 'Ce champ est obligatoir'
										));
									  ?>
									<span class="input-group-btn">
										<button type="button" class="btn btn-default">
											<i class="glyphicon glyphicon-calendar"></i>
										</button>
									</span>
								</p>
							</div>
						</div>
						<div class="col-sm-4 current_post">
							<div class="form-group">
								<div class="checkbox clip-check check-primary">
									<?php
										echo $this->Form->input('ProfessionalExperience.'.$i.'.is_actual', array(
											'type' => 'checkbox',
											'id' => 'is_actual_0'
										));
									  ?>
									<label for="is_actual_0">
										Ceci est mon travail actuel.
									</label>
								</div>
							</div>
						</div>
					</div>
					<hr>
				</div>
				<?php } ?>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<a class="btn btn-wide btn-primary add_cv_item" onclick="event.preventDefault();" href="#"><i class="fa fa-plus"></i> Ajouter expérience</a>
						</div>
					</div>
					<div class="col-md-6 a-r">
						<div class="form-group">
							<a class="btn btn-wide btn-red hide_button remove_cv_item" onclick="event.preventDefault();" href="#"><i class="fa fa-trash-o"></i> Supprimer expérience</a>
						</div>
					</div>
				</div>
			</div>

		</fieldset>
	</div>

	<div class="col-md-12">
		<?php 
			$div_count = (!empty($this->request->data['CounselorsLanguage']))? count($this->request->data['CounselorsLanguage']) : 1;
		?>
		<fieldset>
			<legend>
				Langues
			</legend>
			<div id="langues"  class = "cv_item_container" index = "<?php echo $div_count-1; ?>">

				<?php for ($i=0; $i < $div_count; $i++) { ?>
				<div class = "cv_item">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group custom_select" >
								<label>
									Langue <span class="symbol required"></span>
								</label>
								<?php
									echo $this->Form->input('CounselorsLanguage.'.$i.'.language', array(
										'type' => 'select',
										'options' => $languages,
										'class' => 'form-control',
										'required' => true,
										'empty' => true,
										'data-msg' => 'Ce champ est obligatoir'
									));
								?>
							</div>
						</div>
						<div class="col-md-6">
							<div class="row">
								<div class="col-sm-4">
									<div class="form-group custom_select">
										<label>
											Lire <span class="symbol required"></span>
										</label>
										<?php
											echo $this->Form->input('CounselorsLanguage.'.$i.'.read', array(
												'type' => 'select',
												'options' => $mentions,
												'class' => 'form-control',
												'required' => true,
												'empty' => true,
												'data-msg' => 'Ce champ est obligatoir'
											));
										?>
									</div>
								</div>

								<div class="col-sm-4">
									<div class="form-group custom_select">
										<label>
												Écrire <span class="symbol required"></span>
										</label>
										<?php
											echo $this->Form->input('CounselorsLanguage.'.$i.'.write', array(
												'type' => 'select',
												'options' => $mentions,
												'class' => 'form-control',
												'required' => true,
												'empty' => true,
												'data-msg' => 'Ce champ est obligatoir'
											));
										?>	
									</div>
								</div>

								<div class="col-sm-4">
									<div class="form-group custom_select">
										<label>
												Parler <span class="symbol required"></span>
										</label>
									<?php
											echo $this->Form->input('CounselorsLanguage.'.$i.'.speak', array(
												'type' => 'select',
												'options' => $mentions,
												'class' => 'form-control',
												'required' => true,
												'empty' => true,
												'data-msg' => 'Ce champ est obligatoir'
											));
										?>
									</div>
								</div>
							</div>
						</div>
					</div>
					<hr>
				</div>
				<?php } ?>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<a class="btn btn-wide btn-primary add_cv_item" onclick="event.preventDefault();"  href="#"><i class="fa fa-plus"></i> Ajouter langue</a>
						</div>
					</div>
					<div class="col-md-6 a-r">
						<div class="form-group">
							<a class="btn btn-wide btn-red hide_button remove_cv_item" onclick="event.preventDefault();" href="#"><i class="fa fa-trash-o"></i> Supprimer langue</a>
						</div>
					</div>
				</div>
			</div>
		</fieldset>
	</div>

	<div class="col-md-12">
		<?php 
			$div_count = (!empty($this->request->data['PublicationResearch']))? count($this->request->data['PublicationResearch']) : 1;
		?>		
		<fieldset>
			<legend>
				Publications et recherches
			</legend>

			<div id="publications" class = "cv_item_container" index = "<?php echo $div_count-1; ?>">

				<?php for ($i=0; $i < $div_count; $i++) { ?>
				<div  class = "cv_item">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>
									Titre
								</label>
								<?php
									echo $this->Form->input('PublicationResearch.'.$i.'.name', array(
										'type' => 'text',
										'placeholder' => 'Veuillez saisir le titre de la publication',
										'class' => 'form-control',
										'required' => false
									));
								?>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label>
									Date
								</label>
								<p class="input-group input-append datepicker date">
									<?php
										echo $this->Form->input('PublicationResearch.'.$i.'.event_date', array(
											'type' => 'text',
											'class' => 'form-control',
											'required' => false
										));
									?>
									<span class="input-group-btn">
										<button type="button" class="btn btn-default">
											<i class="glyphicon glyphicon-calendar"></i>
										</button>
									</span>
								</p>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label>
									Référence
								</label>
								<?php
									echo $this->Form->input('PublicationResearch.'.$i.'.description', array(
										'type' => 'textarea',
										'placeholder' => "Description",
										'class' => 'form-control',
										'rows' => 2,
										'required' => false
									));
								?>
							</div>
						</div>
					</div>
					<hr>
				</div>
				<?php } ?>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<a class="btn btn-wide btn-primary add_cv_item" onclick="event.preventDefault();" href="#"><i class="fa fa-plus"></i> Ajouter publication</a>
						</div>
					</div>
					<div class="col-md-6 a-r">
						<div class="form-group">
							<a class="btn btn-wide btn-red hide_button remove_cv_item" onclick="event.preventDefault();"  href="#"><i class="fa fa-trash-o"></i> Supprimer publication</a>
						</div>
					</div>
				</div>
			</div>
		</fieldset>
	</div>

	<div class="col-md-12">
		<?php 
			$div_count = (!empty($this->request->data['CommunityActivity']))? count($this->request->data['CommunityActivity']) : 1;
		?>		
		<fieldset>
			<legend>
				Activités associatives
			</legend>

			<div id="associatives" class = "cv_item_container" index = "<?php echo $div_count-1; ?>">

				<?php for ($i=0; $i < $div_count; $i++) { ?>
				<div class = "cv_item">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>
									Association
								</label>
								<?php
									echo $this->Form->input('CommunityActivity.'.$i.'.association', array(
										'type' => 'text',
										'placeholder' => 'Veuillez saisir le nom de l’association',
										'class' => 'form-control',
										'required' => false
									));
								?>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label>
									Qualilté 
								</label>
								<?php
									echo $this->Form->input('CommunityActivity.'.$i.'.name', array(
										'type' => 'text',
										'placeholder' => 'Veuillez saisir une qualilté',
										'class' => 'form-control',
										'required' => false,
									));
								?>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6">
							<div class="form-group">
								<label>
									Du 
								</label>
								<p class="input-group input-append datepicker date">
									<?php
										echo $this->Form->input('CommunityActivity.'.$i.'.start_date', array(
											'type' => 'text',
											'class' => 'form-control',
											'readonly' => true,
											'required' => false
										));
									  ?>
									<span class="input-group-btn">
										<button type="button" class="btn btn-default">
											<i class="glyphicon glyphicon-calendar"></i>
										</button>
									</span>
								</p>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label>
									Au
								</label>
								<p class="input-group input-append datepicker date">
									<?php
										echo $this->Form->input('CommunityActivity.'.$i.'.end_date', array(
											'type' => 'text',
											'class' => 'form-control',
											'readonly' => true,
											'required' => false
										));
									  ?>
									<span class="input-group-btn">
										<button type="button" class="btn btn-default">
											<i class="glyphicon glyphicon-calendar"></i>
										</button>
									</span>
								</p>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label>
									Activité de l'association
								</label>
								<?php
									echo $this->Form->input('CommunityActivity.'.$i.'.description', array(
										'type' => 'textarea',
										'placeholder' => "Description",
										'class' => 'form-control',
										'rows' => 2,
										'required' => false
									));
								?>
							</div>
						</div>
					</div>
					<hr>
				</div>
				<?php } ?>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<a class="btn btn-wide btn-primary add_cv_item" onclick="event.preventDefault();" href="#"><i class="fa fa-plus"></i> Ajouter une activité associative</a>
						</div>
					</div>
					<div class="col-md-6 a-r">
						<div class="form-group">
							<a class="btn btn-wide btn-red hide_button remove_cv_item" onclick="event.preventDefault();" href="#"><i class="fa fa-trash-o"></i> Supprimer l'activité associative</a>
						</div>
					</div>
				</div>
			</div>

		</fieldset>
	</div>

	<div class="col-md-12">
		<div class="form-group">
			<button class="btn btn-primary btn-o back-step btn-wide pull-left">
				<i class="fa fa-arrow-circle-left"></i>
				Retour
			</button>
			<button class="btn btn-primary btn-o next-step btn-wide pull-right">
				Suivant
				<i class="fa fa-arrow-circle-right"></i>
			</button>
		</div>
	</div>
</div>
<?php echo $this->Form->end(); ?>
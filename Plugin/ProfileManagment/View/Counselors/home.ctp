<script>

<?php  $this->Html->scriptStart(array('inline' => false, 'block' => 'scriptBottom')); ?>

	jQuery(document).ready(function() {		
		
		$('#change_password').submit(function(e)
		{
			if (!$('#change_password').valid()) {
					e.preventDefault();
			
					return false;	
			}

	 		var postData = $(this).serializeArray();
			var formURL = $(this).attr("action");
			$('#change_password').trigger('dialogLoader', 'show');
			
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
						$('#change_password').find('input[type = password]').val("");
					}
					else
					{
						toastr.error(response.message); 
					}
					$('#change_password').trigger('dialogLoader', 'hide');
				},
				error: function(jqXHR, textStatus, errorThrown) 
				{
					$('#change_password').trigger('dialogLoader', 'hide');
					toastr.error("<?php echo __d('message_managment', 'An error occured please try again!'); ?>");
				}
			});	
			e.preventDefault();
			
			return false;		
		});

		$('#edit_user').submit(function(e)
		{
			if (!$('#edit_user').valid()) {
				e.preventDefault();
			
				return false;	
			}
	 		var postData = $(this).serializeArray();
			var formURL = $(this).attr("action");
			$('#edit_user').trigger('dialogLoader', 'show');
			
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
					}
					$('#edit_user').trigger('dialogLoader', 'hide');
				},
				error: function(jqXHR, textStatus, errorThrown) 
				{
					$('#edit_user').trigger('dialogLoader', 'hide');
					toastr.error("<?php echo __d('message_managment', 'An error occured please try again!'); ?>");
				}
			});	
			e.preventDefault();
			
			return false;		
		});

        $('#edit_user').validate({
            errorElement: "span", // contain the error msg in a span tag
            errorClass: 'help-block',
            ignore: ':hidden',
            highlight: function (element) {
                $(element).closest('.help-block').removeClass('valid');
                // display OK icon
                $(element).closest('.form-group').removeClass('has-success').addClass('has-error').find('.symbol').removeClass('ok').addClass('required');
                // add the Bootstrap error class to the control group
            },
            unhighlight: function (element) { // revert the change done by hightlight
                $(element).closest('.form-group').removeClass('has-error');
                // set error class to the control group
            },
            success: function (label, element) {
                label.addClass('help-block valid');
                // mark the current input as valid and display OK icon
                $(element).closest('.form-group').removeClass('has-error').addClass('has-success').find('.symbol').removeClass('required').addClass('ok');
            }
        });
	
        $('#change_password').validate({
            errorElement: "span", // contain the error msg in a span tag
            errorClass: 'help-block',
            ignore: ':hidden',
			rules : {
                'data[User][password]' : {
                    minlength : 6
                },
                'data[User][verify_password]' : {
                    minlength : 6,
                    equalTo : "#UserPassword"
                }
            },
            highlight: function (element) {
                $(element).closest('.help-block').removeClass('valid');
                // display OK icon
                $(element).closest('.form-group').removeClass('has-success').addClass('has-error').find('.symbol').removeClass('ok').addClass('required');
                // add the Bootstrap error class to the control group
            },
            unhighlight: function (element) { // revert the change done by hightlight
                $(element).closest('.form-group').removeClass('has-error');
                // set error class to the control group
            },
            success: function (label, element) {
                label.addClass('help-block valid');
                // mark the current input as valid and display OK icon
                $(element).closest('.form-group').removeClass('has-error').addClass('has-success').find('.symbol').removeClass('required').addClass('ok');
            }
        });});

<?php $this->Html->scriptEnd(); ?></script>
<div class="checkout-wrap">
	<ul class="checkout-bar">

		<li class="first <?php if(in_array(1, $active_steps)) {echo 'current';}elseif(max($active_steps) > 1) {echo 'passed';}   ?>">
			Déposer une demande enligne
		</li>

		<li class="<?php if(in_array(2, $active_steps)) {echo 'current';}elseif(max($active_steps) > 2) {echo 'passed';}   ?>">Télécharger le PDF de documents</li>

		<li class="next <?php if(in_array(3, $active_steps)) {echo 'current';}elseif(max($active_steps) > 3) {echo 'passed';}   ?>">Imprimer et légaliser les documents</li>

		<li class="<?php if(in_array(4, $active_steps)) {echo 'current';}elseif(max($active_steps) > 4) {echo 'passed';}   ?>">Envoyer le dossier papier via la poste</li>

		<li class="<?php if(in_array(5, $active_steps)) {echo 'current';}elseif(max($active_steps) > 5) {echo 'passed';}   ?>">Suivre votre demande enligne</li>

	</ul>
</div>
<div class = "clearfix"></div>
<div class="row">
	<div class="col-md-12">
		<div class="tabbable">
			<ul class="nav nav-tabs tab-padding tab-space-3 tab-blue" id="myTab4" style = "margin-left: 0px;">
				<li class="active">
					<a data-toggle="tab" href="#panel_overview">
						Mes demandes d'agrément
					</a>
				</li>
				<li>
					<a data-toggle="tab" href="#panel_edit_account">
						Mon profile
					</a>
				</li>
				<li>
					<a data-toggle="tab" href="#panel_edit_password">
						Changer le mot de passe
					</a>
				</li>
				<li>
					<a data-toggle="tab" href="#panel_projects">
						Messagerie (Service de télédeclaration)
					</a>
				</li>
			</ul>
			<div class="tab-content">
				<div id="panel_overview" class="tab-pane fade in active">
					<a class="btn btn-success" href = "<?php echo Router::url('/add');?>" <?php if ($has_recent_request) echo 'disabled = "disabled"';?> >
					<i class="fa fa-edit"></i> Déposer une demande
					</a>
					<table class="table" id="projects" style = "margin-top:10px;">
						<thead>
							<tr>
								<th>N Dossier</th>
								<th class="hidden-xs">Date de dépot</th>
								<th class="hidden-xs">Progression (%) </th>
								<th class="hidden-xs center">Statut</th>
								<th class="hidden-xs center">Documents</th>
							</tr>
						</thead>
						<tbody>
							<?php if(count($requests) == 0) {?>
							<tr>
								<td colspan = "6">
									<h3 class="mainTitle" style = "text-align:center;">
									<i class = "ti-face-sad fa-2x" style = "  font-size: 25px;"></i>	Vous n'avez envoyé aucune demande d'agrément
									</h3>
								</td>
							</tr>
							<?php }else {?>
							<?php foreach ($requests as $key => $request) { ?>
							<tr>
								<th><?php echo $request['Request']['number']; ?></th>
								<th class="hidden-xs"><?php echo $request['Request']['event_date']; ?></th>
								<th class="hidden-xs"><div class="progress">
							        <div class="progress-bar progress-bar-success" style = "width:<?php echo $request['Status']['order'] / 8 * 100 ?>%"></div>
							    	</div>
							    </th>
								<th class="hidden-xs center"><?php echo $request['Status']['name']; ?></th>
								<th style = "width:120px;">
									<a href = "<?php echo Router::url(array(
									'admin' => false,
									'plugin' => 'profile_managment',
									'controller' => 'counselors',
									'action' => 'viewpdf',
									$request['Request']['id']
									)) ?>" class = "btn "><i class = "fa fa-file-pdf-o"></i> 
										Télécharger
									</a>
								</th>
							</tr>
						<?php }}?>
						</tbody>
					</table>
				</div>
				<div id="panel_edit_account" class="tab-pane fade">
						<?php  
							echo $this->Form->create('User', array(
										'url' => array(
											'admin' => false,
											'plugin' => 'profile_managment',
											'controller' => 'counselors',
											'action' => 'edit_user',
											'ext' => 'json'
										),
										'class' => 'form_validate',
										'id' => 'edit_user',
										'role' => 'form'
									)
								);
							$this->Form->inputDefaults(array('label' => false, 'div' => false));
						?>
						<fieldset>
							<legend>
								Information du compte
							</legend>
							<div class="row">
								<div class="col-md-8">
									<div class="form-group">
										<label>
										Prénom	 <span class="symbol required"></span>
										</label>
										<?php
											echo $this->Form->input('first_name', array(
												'type' => 'text',
												'placeholder' => "Veuillez saisir votre prénom",
												'class' => 'form-control',
												'required' => true,
												'data-msg' => 'Ce champ est obligatoir',
												'value' => $user['first_name']
											));
										  ?>
									</div>
									<div class="form-group">
										<label>
										Nom	 <span class="symbol required"></span>
										</label>
										<?php
											echo $this->Form->input('last_name', array(
												'type' => 'text',
												'placeholder' => "Veuillez saisir votre nom",
												'class' => 'form-control',
												'required' => true,
												'data-msg' => 'Ce champ est obligatoir',
												'value' => $user['last_name']
											));
										  ?>
									</div>
									<div class="form-group">
										<div class="clip-radio radio-primary">
											<input type="radio" value="female" name="data[User][gender]" id="us-female" <?php if($user['gender'] == "female") echo 'checked = "true"'?>>
											<label for="us-female">
												Femme
											</label>
											<input type="radio" value="male" name="data[User][gender]" id="us-male" <?php if($user['gender'] == "male") echo 'checked = "true"'?> >
											<label for="us-male">
												Homme
											</label>
										</div>
									</div>
									<div class="form-group">
										<label>
											Email	 <span class="symbol required"></span>
										</label>
										<?php
											echo $this->Form->input('email', array(
												'type' => 'email',
												'placeholder' => "Veuillez saisir votre email",
												'class' => 'form-control',
												'required' => false,
												'readonly' => 'readonly',
												'value' => $user['email']
											));
										  ?>
									</div>
									<div class="form-group">
										<label>
											N° de téléphone
										</label>
										<?php
											echo $this->Form->input('phone', array(
												'type' => 'text',
												'placeholder' => "Veuillez saisir votre n° de téléphone",
												'class' => 'form-control',
												'required' => false,
												'value' => $user['phone']
											));
										  ?>
									</div>
									<div class="form-actions">
										<?php 
										echo $this->Form->submit(__d('croogo', 'Sauvegarder'), array(
												'div' => false,
												'class' => 'btn btn-primary pull-right',
												'escape' => false
											)
										);
										?>
									</div>
								</div>
							</div>
						</fieldset>
					</form>
				</div>
				<div id="panel_edit_password" class="tab-pane fade">
						<?php  
							echo $this->Form->create('User', array(
										'url' => array(
											'admin' => false,
											'plugin' => 'profile_managment',
											'controller' => 'counselors',
											'action' => 'change_password',
											'ext' => 'json'
										),
										'class' => 'form_validate',
										'id' => 'change_password',
										'role' => 'form'
									)
								);
						?>
						<div class="row">
							<div class="col-md-8 box-forgot">
							<fieldset>
								<legend>
									Changer le mot de passe
								</legend>
								<div class="form-group">
									<span class="input-icon">
										<?php echo $this->Form->input('old_password', array( 'type' => 'password','label' => __d('croogo', 'Mot de passe actuel')));
										?>
									</span>
								</div>
								<div class="form-group">
									<span class="input-icon">
										<?php echo $this->Form->input('password', array('label' => __d('croogo', 'New password')));
										?>
									</span>
								</div>
								<div class="form-group">
									<span class="input-icon">
										<?php echo $this->Form->input('verify_password', array('type' => 'password', 'label' => __d('croogo', 'Verify Password')));
										?>
									</span>
								</div>
								<div class="form-actions">
									<?php 
									echo $this->Form->submit(__d('croogo', 'Sauvegarder'), array(
											'div' => false,
											'class' => 'btn btn-primary pull-right',
											'escape' => false
										)
									);
									?>
								</div>

							</fieldset>
							</div>
						</div>

					</form>
				</div>
				<div id="panel_projects" class="tab-pane fade">
					<?php
						echo $this->element('mailboxes', array(
							'messages' => $messages
							), array('plugin' => 'MessageManagment')
						);
					?>
					
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-12">
		<h4 class="alert-heading margin-bottom-10"><i class="ti-info"></i> Info!</h4>
		<ul class="margin-bottom-10">
			<li>Vous pouvez seulement déposer une seule demande à la fois.</li>
			<li>On devera recevera le dossier papier dans un délai d'un mois sinon votre dossier enligne sera rejeté.</li>
			<li>Si votre demande d'agrément a été refusée pour une raison ou bien d'une autre vous pouvez renvoyer une autre demande via le même compte aprés un délais de 3 mois.</li>
			<li>Toute essaye de triche ou de dépassement des régles de dépôt votre compte sera définitivement banni.</li>     
		</ul>
	</div>
</div>
<br>
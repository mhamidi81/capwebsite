<?php  $userId = AuthComponent::user('id');?>
<?php if ($this->CapTheme->isUserAutorized($userId, array('action' => 'admin_save_meeting_request_judgment', 'admin' => true, 'plugin' => 'request_managment', 'controller' => 'requests'))) {?>	
		<?php  echo $this->Form->create('MeetingsRequest',
		array('url' => array('controller' => 'requests', 'action' => 'admin_save_meeting_request_judgment', 'ext' => 'json'), 

			'id' => 'save_meeting_request_judgment_form')

		);?>
		<?php

			echo $this->Form->input('request_id', array( 
				'type' => 'hidden', 
				'value' => $request['Request']['id'],
			));
			echo $this->Form->input('meeting_id', array( 
				'type' => 'hidden', 
				'value' => $meeting_id,
			));
		?>
		<div class="form-group">
			<?php

				echo $this->Form->input('judgment_id', array(
					'label' => __('Avis'),
					'class' => 'form-control', 
					'type' => 'select',
					'options' => $judgments,
					'empty' => true,
					'required' => true,
					'selected' => (isset($meeting_request['MeetingsRequest']['judgment_id']))? $meeting_request['MeetingsRequest']['judgment_id'] : ''
				));
				?>
		</div>
		<div class="form-group">
				<?php
				echo $this->Form->input('description', array(
	 				'class' => 'form-control', 
					'type' => 'textarea',
					'label' => __('Commentaire'),
					'value' => (isset($meeting_request['MeetingsRequest']['description']))? $meeting_request['MeetingsRequest']['description'] : ''
				))
				?>					
		</div>
		<div class="form-group margin-bottom-0">
			<div class="margin-left-30" id = "send-meeting-judgment-toolbar">
			<?php 

			echo $this->Form->button(__d('request_managment', "Enregister et envoyer pour décision"), array('class' => 'btn btn-success btn-lg'));

			?>
			</div>
		</div>
	<?php echo $this->Form->end(); ?>
<?php }?>
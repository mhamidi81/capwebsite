<?php  $userId = AuthComponent::user('id');?>
<?php if ($this->CapTheme->isUserAutorized($userId, array('action' => 'admin_save_request_decision', 'admin' => true, 'plugin' => 'request_managment', 'controller' => 'requests'))) {?>	
		<?php  echo $this->Form->create('Request',
		array('url' => array('controller' => 'requests', 'action' => 'admin_save_request_decision', 'ext' => 'json'), 

			'id' => 'admin_save_request_decision')

		);?>
		<?php
			unset($judgments[3]);
			$judgments = array_combine($judgments, $judgments);
			echo $this->Form->input('request_id', array( 
				'type' => 'hidden', 
				'value' => $request['Request']['id'],
			));
		?>
		<div class="form-group">
			<?php
			echo $this->Form->input('judgment', array(
				'label' => __('Decision de Mr le ministre'),
				'class' => 'form-control', 
				'type' => 'select',
				'options' => $judgments,
				'empty' => true,
				'required' => true
			));
			?>
		</div>
		<div class="form-group">
			<?php
			echo $this->Form->input('Description', array(
 				'class' => 'form-control', 
				'type' => 'textarea',
				'label' => __('Commentaire')
			))
			?>					
		</div>
			<div class="form-group margin-bottom-0">
				<div class="margin-left-30" id = "send-meeting-judgment-toolbar">
				<?php 

				echo $this->Form->button(__d('request_managment', "Valider votre décision"), array('class' => 'btn btn-success btn-lg'));

				?>
				</div>
			</div>
	<?php echo $this->Form->end(); ?>
<?php }?>
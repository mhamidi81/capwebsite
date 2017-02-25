<?php  $userId = AuthComponent::user('id');?>
<?php 
$connected_memeber_judgment = array();
foreach ($members_judgments as $key => $member_judgment) {
	if($member_judgment['MembersRequest']['user_id'] == $userId)
	{
		$connected_memeber_judgment = $member_judgment['MembersRequest'];
		break;
	}
}
?>
<?php if ($this->CapTheme->isUserAutorized($userId, array('action' => 'save_member_request_judgment', 'admin' => true, 'plugin' => 'request_managment', 'controller' => 'requests'))) {?>
			<?php  echo $this->Form->create('MembersRequest',
			array('url' => array('controller' => 'requests', 'action' => 'save_member_request_judgment', 'ext' => 'json'), 

				'id' => 'save_member_request_judgment_form')

			);?>
			<?php

				echo $this->Form->input('request_id', array( 
					'type' => 'hidden', 
					'value' => $request['Request']['id'],
				));
			?>
			<div class="form-group">
				<?php

					echo $this->Form->input('judgment_id', array(
						'label' =>  __('Avis'),
						'class' => 'form-control', 
						'type' => 'select',
						'options' => $judgments,
						'empty' => true,
						'required' => true,
						'selected' => (isset($connected_memeber_judgment['judgment_id']))? $connected_memeber_judgment['judgment_id'] : ''
					));
					?>
			</div>
			<div class="form-group">
					<?php
					echo $this->Form->input('description', array(
		 				'class' => 'form-control', 
						'type' => 'textarea',
						'label' => __('Commentaire'),
						'div' => false,
						'value' => (isset($connected_memeber_judgment['description']))? $connected_memeber_judgment['description'] : ''
					))
					?>					
			</div>
			<div class="form-group margin-bottom-0">
				<div class="col-sm-offset-2 col-sm-10" id = "send-membre-judgment-toolbar">
				<?php 

				echo $this->Form->button(__d('request_managment', 'Envoyer votre avis'), array('class' => 'btn btn-success btn-lg'));
				?>
				</div>
			</div>
		<?php echo $this->Form->end(); ?>		
<?php }?>
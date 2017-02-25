<?php if (!empty($messages)): ?>
	<?php foreach ($messages as $message):?>
		<li id="<?php echo $message['Message']['id']; ?>" class="messages-item">
			<a href="#">
				<span class="messages-item-star" title="Mark as starred"><i class="fa fa-star"></i></span>
				<?php 
				if (!empty($message['Recipient']['image'])){
					echo $this->Html->image('../uploads/users/'.$message['Recipient']['image'], array(
						'class' =>'messages-item-avatar bordered border-primary',
						'alt' =>  $message['Recipient']['image'],
					));
				}else{
					echo $this->Html->image('../uploads/users/default-user.png', array(
						'class' =>'messages-item-avatar bordered border-primary',
						'alt' =>  'User', 
					));
				}
				?>
				<!--<img class="messages-item-avatar bordered border-primary" alt="John Stark" src="assets/images/avatar-6.jpg">-->
				<span class="messages-item-from">
					<?php echo $message['Recipient']['first_name'] .' '.$message['Recipient']['last_name'];?>
					<div class="msg hidden">&lt;<?php echo $message['Recipient']['email'];?>&gt;</div>
					<div class="msg hidden">&lt;<span id="<?php echo $message['Message']['recipie_id'];?>" class="email"><?php echo $message['Recipient']['email'];?></span>&gt;
					</div>
				</span>
				<div class="messages-item-time">
					<span class="text"><?php echo $message['Message']['created'];?></span>
				</div>
				<span class="messages-item-subject"><?php echo $message['Message']['title'];?></span>
				<span class="messages-item-content">
					<div class="msg hidden" ><?php echo $message['Message']['body'];?></div>
				</span>
			</a>
		</li>
	<?php endforeach;?>
	<div class="ajax-paginate">
	<?php
		if( $this->Paginator->counter(array('format' => ('{:pages}'))) > $this->Paginator->counter(array('format' => ('{:page}')))){
			echo $this->Html->link('Afficher plus de messages', '#', array(
				'class' => 'btn btn-wide btn-block btn-success',
				'id' => $this->Paginator->counter(array('format' => ('{:page}')))+1
			));
		};
	?>
	</div>
<?php endif; ?>
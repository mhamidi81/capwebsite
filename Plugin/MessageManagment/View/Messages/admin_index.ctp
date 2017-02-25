<?php echo $this->Html->script(array('pages-messages','../plugins/select2/select2.min'), array('block' => 'scriptBottom')); ?>
<?php echo $this->Html->css(array('../plugins/select2/select2.min'), array('block' => 'scriptBottom')); ?>

<style type="text/css">
.highlight .messages-item-subject {
	color: #000000;
	font-weight: bold;
}
.select2-container {
   z-index: 9999 !important;
}
#sendMessageDialog label{
   width: 160px !important;
}
#sendMessageDialog label[for="AddMessageTitle"]{
   width: 163px !important;
}
.ajax-paginate{
	background-color: #3395FF;
	color: #fff;
}
img[src=''] {
    display: none;
}

.active {
    font-weight: bold;
    color: #8e8e93;
}
</style>
<script>
<?php  $this->Html->scriptStart(array('inline' => false, 'block' => 'scriptBottom')); ?>
$(function(){

	Main.init();
	Messages.init();
	
	//multiselect select2
	function initSelect2(){
		$("#RecipientId").select2( {
			width:'70%',
			multiple: true,
			language: {
				inputTooShort: function () {
					return "Svp entrez un caractère ou plus ";
				},
				searching: function () {
					return 'Recherche';
				},
				noResults: function () {
					return 'Aucun résultat';
				},
				
			},
			ajax: {
				url: "<?php echo $this->Html->url(array(
					'plugin' => 'message_managment',
					'controller' => 'messages',
					'action' => 'get_users',
					'admin' => true, 
					'ext' => 'json')); 
				?>",
				dataType: 'json',
				type: "POST",
				delay: 250,
				data: function (term, page) {
					return {
						q: term
					};
				  },
				results: function (data, page) {
					return { results: data };
				}
			},
			escapeMarkup: function (markup) { return markup; }, // let our custom formatter work
			minimumInputLength: 1,
		});
	}
	
	initSelect2();

	 
	//lire message
	$(document).on('click','.messages-item',function(){
		$('.message-actions').removeClass('hidden');
		$(".message-id").html($(this).attr('id'));
		$(".message-time").html($(this).find(".messages-item-time").html());
		$(".message-from").html($(this).find(".messages-item-from").html()+$(this).find(".messages-item-from>.msg").html());
		$(".message-to").html($(".messages-item-to").html());
		$(".message-subject").html($(this).find(".messages-item-subject").html());
		$(".message-content").html($(this).find(".messages-item-content>.msg").html());
		$(".message-item-avatar").attr({
			'alt': $(this).find(".messages-item-avatar").attr('alt'),
			'src': $(this).find(".messages-item-avatar").attr('src')
		});
		//if ( $(this).attr("class").indexOf(' highlight ')==1) {}
		$(this).removeClass( "highlight" );
		$.ajax({
			
			url: "<?php echo $this->Html->url(array(
				'plugin' => 'message_managment',
				'controller' => 'messages',
				'action' => 'edit',
				'admin' => true, 
				'ext' => 'json')); 
			?>",
			data : {"id" : $(this).attr('id')},
			type  : 'POST',
			success : function(result){
				// success est toujours en place, bien sûr !
				unreadMessages();
			}
		});
		
	});
	
	//Supprimer message
	$(document).on('click','.email-reader .delete-msg',function(){
		
		if (
			$(".message-id").html()!='' &&
			confirm("Etes vous sures de vouloir supprimer ce message?")==true
		){
			$.ajax({
				url: "<?php echo $this->Html->url(array(
					'plugin' => 'message_managment',
					'controller' => 'messages',
					'action' => 'delete',
					'admin' => true, 
					'ext' => 'json')); 
				?>",
				data : {"id" : $(".message-id").html()},
				type  : 'POST',
				success : function(response){
					if(response.result == 'success'){
						
						toastr.success(response.message);
						$("#"+$(".message-id").html()).remove();
						initEmailReader();
						$('.message-actions').addClass('hidden');
					} else {
						
						toastr.error(response.message);
						
					}
					
					
				}
			});
		}
		
	});
	
	//Messages reçus
	$("#inbox-msg").click(function(){
		
		$.ajax({
			url: "<?php echo $this->Html->url(array(
				'plugin' => 'message_managment',
				'controller' => 'messages',
				'action' => 'get_inbox',
				'admin' => true
			));?>",
			success : function(data){
				$('.message-actions').addClass('hidden');
				$(".messages-list").html(data);
				initEmailReader();
			}
		});
	});

	//Messages envoyés
	$("#sentbox-msg").click(function(){
		

		$.ajax({
			url: "<?php echo $this->Html->url(array(
				'plugin' => 'message_managment',
				'controller' => 'messages',
				'action' => 'get_sentbox',
				'admin' => true));?>",
			success : function(data){
				$('.message-actions').addClass('hidden');
				$(".messages-list").html(data);
				initEmailReader();
			}
		});
	});

	// nombre de Messages  supprimés
	$("#trash-msg").click(function(){
		
		$.ajax({
			url: "<?php echo $this->Html->url(array(
				'plugin' => 'message_managment',
				'controller' => 'messages',
				'action' => 'get_trash',
				'admin' => true));?>",
			success : function(data){
				$('.message-actions').addClass('hidden');
				$(".messages-list").html(data);
				initEmailReader();
			}
		});
	});
	
	// Rechercher messages
	$("#searchMessage").keyup(function(){
		//alert($(".main-options>.active").attr("id"););
		$.ajax({
				url: "<?php echo $this->Html->url(array(
					'plugin' => 'message_managment',
					'controller' => 'messages',
					'action' => 'search',
					'admin' => true));?>",
				data : {
					"q" : $("#searchMessage").val(),
					"inbox" :$(".main-options>.active").attr("id")
				},
				type  : 'POST',
				success : function(data){
					$('.message-actions').addClass('hidden');
					$(".messages-list").html(data);
					initEmailReader();
				}
		});
	});

	// vider les email-reader
	function initEmailReader(){
		$(".message-id").html("");
		$(".message-time").html("");
		$(".message-from").html("");
		$(".message-to").html("");
		$(".message-subject").html("");
		$(".message-content").html("");
		$(".message-item-avatar").attr({
			'alt': "",
			'src': ""
		});
	}
	
	//unread message count
	function unreadMessages(){
		$.ajax({
				url: "<?php echo $this->Html->url(array(
					'plugin' => 'message_managment',
					'controller' => 'messages',
					'action' => 'get_unread',
					'admin' => true,
					'ext' => 'json'));?>",
				success : function(data){
					if (data==0) {
						$("#unread-msg-notif").removeAttr('class');
					}
					$("#unread-message").html(data);
				}
		});
	};
	
	//send message 
	$('#send_message_form').submit(function(e){
		
			e.preventDefault();
			var $form = $(this);
			var formURL = $form.attr("action");
		
			$.ajax({
				url : formURL,
				type: "POST",
				data : $form.serialize(),
				success:function(response) 
				{
					if(response.result == 'success'){
						toastr.success(response.message);
						$('#sendMessageDialog').find('input, select, textarea').val('');
						$("#RecipientId_").removeAttr('value');
						initSelect2();
						$("#RecipientId_").attr('name','data[Recipient][id]');
					} else {
						toastr.error(response.message);
					}
					$('#sendMessageDialog').modal('hide');
					$("#RecipientId_").attr('name','data[Recipient][id]');
				},
				error: function(jqXHR, textStatus, errorThrown) 
				{
					$('#sendMessageDialog').modal('hide');
					$("#RecipientId_").attr('name','data[Recipient][id]');
					toastr.error("<?php echo 'Une erreur s\'est produite, veuillez réessayer plus tard. !'; ?>");
				}
			});
			return false;
	});
	
	//contacter admin
	$('#contact_admin_message_form').submit(function(e){
		
			e.preventDefault();
			var $form = $(this);
			var formURL = $form.attr("action");

			$.ajax({
				url : formURL,
				type: "POST",
				data : $form.serialize(),
				success:function(response) 
				{
					if(response.result == 'success'){
						toastr.success(response.message);
						$('#contactAdminDialog').find('input, select, textarea').val('');
						$('#contactAdminDialog').hide();
					} else {
						toastr.error(response.message);
					}
					$('#contactAdminDialog').trigger('dialogLoader', 'hide');
				},
				error: function(jqXHR, textStatus, errorThrown) 
				{
					$('#contactAdminDialog').trigger('dialogLoader', 'hide');
					toastr.error("<?php echo 'Une erreur s\'est produite, veuillez réessayer plus tard. !'; ?>");
				}
			});
			return false;
	});
	//pagination des messagse
	$(document).on('click',".ajax-paginate>span>a",function(e){
		e.preventDefault();
			$.ajax({
					url: $(this).attr('href'),
					data : {"q" : $("#searchMessage").val()},
					type  : 'POST',
					success : function(data){
						
						if($(".ajax-paginate>span>a").attr('href').indexOf('<?php echo Router::url($this->here, true);?>')==1){
							$(".ajax-paginate").remove();
							$(".messages-list").append($(data).find(".messages-list").html());
						}else{
							$(".ajax-paginate").remove();
							$(".messages-list").append(data);
						}
						if ($(".message-id").html()=='')
							$('.message-actions').addClass('hidden');
						//initEmailReader();
					}
			});
		
	});
	
	//Repondre
	$(document).on('click', '.reply-msg', function(){

		$("#sendMessageDialog").modal('show');
		destinataireEmail=$(".message-from>.email").html();
		destinataireId=$(".message-from>.email").html();
		$("#RecipientId").html('<option value="'+destinataireId+'" selected="selected">'+destinataireEmail+'</option>').change();
		$("#RecipientId").prop('disabled' , 'true ');
		$("#RecipientId_").val(destinataireEmail);
		$("#RecipientId_").attr('name','data[Recipient][id][]');
		$("#MessageTitle").val('Re : '+$(".message-subject").html());
	});
	
	//Transferer
	$('.forward-msg').click(function(){
		$("#sendMessageDialog").modal('show');
		$("#MessageTitle").val($(".message-subject").html());
		$("#MessageBody").val($(".message-content").html());
		
	});
	
	
	//inistialiser les element de modal
	$(".modal").on('hidden.bs.modal', function(){
		$("#RecipientId").html('').change().removeAttr('disabled');
		$('input, textarea').val('');
		
	});
	
	//inistialiser les element de modal
	$(".main-options>li").click(function(){
		$(".main-options>li").removeClass("active");
		$(this).addClass('active');
	});
});

<?php $this->Html->scriptEnd(); ?>
</script>

<div class="app-content">
		<div class="wrap-content container" id="container">
			<div class="wrap-messages">
				<div id="inbox" class="inbox">
					<!-- start: EMAIL OPTIONS -->
					<div class="col email-options perfect-scrollbar">
						<div class="padding-15">
							<button class="btn btn-primary btn-block margin-bottom-30" data-toggle= "modal" data-target= "#sendMessageDialog"> Nouveau message </button>
							<!--<button class="btn btn-primary btn-block margin-bottom-30" data-toggle= "modal" data-target= "#contactAdminDialog"> contacter l'administrateur </button>-->
							<p class="email-options-title no-margin">
								NAVIGUER
							</p>
							<ul class="main-options padding-15">
								<li id="get_inbox" class="active">
									<a href="#">
										<span class="title"><i class="ti-import"></i>
										Boîte de réception
										</span>
										<span id="unread-message" class="badge pull-right">0</span>
									</a>
								</li>
								<li id="sentbox-msg">
									<a href="#">
										<span class="title"><i class="ti-upload"></i>
										Messages envoyés
										</span>
									</a>
								</li>
								<li id="trash-msg">
									<a href="#">
										<span class="title"><i class="ti-trash"></i> Corbeille</span>
									</a>
								</li>
							</ul>
						</div>
					</div>
					<!-- end: EMAIL OPTIONS -->
					<!-- start: EMAIL LIST -->
					<div class="col email-list">
						<div class="wrap-list">
							<div class="wrap-options">
								<div class="messages-options padding-15">
									<div class="btn-group">
										<button class="btn btn-primary btn-wide" type="button" data-toggle ="modal" data-target ="#sendMessageDialog">
											Nouveau message
										</button>
										<button class="btn btn-primary btn-wide" type="button" data-toggle ="modal" data-target ="#contactAdminDialog">
											contacter l'administrateur
										</button>
										<button class="btn btn-primary dropdown-toggle" type="button">
											<span class="caret"></span>
										</button>
										<ul role="menu" class="dropdown-menu dropdown-light">
											<li>
												<a href="#">
													<span class="title"><i class="ti-import"></i> Boîte de réception</span>
												</a>
											</li>
											<li>
												<a href="#">
													<span class="title"><i class="ti-upload"></i> Messages envoyés</span>
												</a>
											</li>
											<li>
												<a href="#">
													<span class="title"><i class="ti-trash"></i> Corbeille</span>
												</a>
											</li>
										</ul>
									</div>
									<button class="btn btn-transparent pull-right open-message-search">
										<i class="ti-search"></i>
									</button>
									<button class="btn btn-transparent pull-right close-message-search">
										<i class="ti-close"></i>
									</button>
								</div>
								<div class="messages-search">
									<form>
										<input id="searchMessage" type="text" placeholder="Rechercher messages..." class="form-control underline"/>
									</form>
								</div>
							</div>
							<ul class="messages-list perfect-scrollbar">
								<div class="hidden messages-item-to">
									<?php echo 'Destinataire : '. $recipients['Recipient']['first_name'].' '.$recipients['Recipient']['last_name']; ?>
								</div>
								<?php if (!empty($messages)): ?>
									<?php foreach ($messages as $message):?>
										<li id="<?php echo $message['Message']['id']; ?>" class="messages-item <?php if(!$message['Message']['status']) echo ' highlight' ; ?>">
											<a href="#">
												<span class="messages-item-star" title="Mark as starred"><i class="fa fa-star"></i></span>
												<?php 
												
												if(!empty($message['Sender']['image'])){
													echo $this->Html->image('../uploads/users/'.$message['Sender']['image'], array(
														'class' =>'messages-item-avatar bordered border-primary',
														'alt' =>  $message['Sender']['image'], 
													)); 
												}else{
													echo $this->Html->image('../uploads/users/default-user.png', array(
														'class' =>'messages-item-avatar bordered border-primary',
														'alt' =>  'User', 
													));
												}
												?>
												<span class="messages-item-from">
													<?php echo $message['Sender']['first_name'] .' '.$message['Sender']['last_name'];?>
													<div class="msg hidden">&lt;<span id="<?php echo $message['Message']['email_from'];?>" class="email"><?php echo $message['Sender']['email'];?></span>&gt;
													</div>
												</span>
												<div class="messages-item-time">
													<span class="text"><?php echo date('d-m-Y H:i:s', strtotime($message['Message']['created']));?></span>
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
										echo $this->Paginator->next(
											'Afficher plus de messages' ,
											array('tag'=>'span', 'class'=>'btn btn-wide btn-success btn-block'),
											'',
											array('class'=>'hidden')
										);
									?>
									</div>
								<?php endif; ?>
							</ul>
						</div>
					</div>
					<!-- end: EMAIL LIST -->
					<!-- start: EMAIL READER -->
					<div class="email-reader perfect-scrollbar">
						<div>
							<div class="message-actions hidden">
								<ul class="actions no-margin no-padding block">
									<li class="email-list-toggle">
										<a href="#"><i class="fa fa-angle-left"></i> tous les messages reçus </a>
									</li>
									<li class="actions-dropdown">
										<span class="dropdown">
											<a class="dropdown-toggle" href="">
												<i class="caret"></i>
											</a>
											<ul class="dropdown-menu dropdown-light">
												<li>
													<a href="#" class="reply-msg">
														Répondre
													</a>
												</li>
												<li>
													<a href="#" class="forward-msg">
														Transférer
													</a>
												</li>
												<li>
													<a href="#" class="delete-msg">
														Supprimer
													</a>
												</li>
											</ul> </span>
									</li>
									<li class="no-padding">
										<a href="#" class="reply-msg">
											Répondre
										</a>
									</li>
									<li class="no-padding">
										<a href="#" class="forward-msg">
											Transférer
										</a>
									</li>
									<li class="no-padding">
										<a href="#" class="delete-msg">
											Supprimer
										</a>
									</li>
								</ul>
							</div>
							<div class="message-header">
								<img class="message-item-avatar" src=""/>
								<div class="message-id hidden"></div>
								<div class="message-time"></div>
								<div class="message-from"></div>
								<div class="message-to"></div>
							</div>
							<div class="message-subject"></div>
							<div class="message-content"></div>
						</div>
					</div>
					<!-- end: EMAIL READER -->
				</div>
			</div>
		</div>
</div>
<div class="loader" data-initialize="loader">
	<?php echo $this->Html->image("loading-spinner-grey.gif"); ?>
	<span>&nbsp;&nbsp;Envoi en cours...</span>
</div>

<!--Composer message -->

<div class="modal fade" tabindex = "false" id="sendMessageDialog"  role="dialog" aria-hidden="true" aria-labelledby="MessageEdition" data-backdrop = "static">
 
	<?php  echo $this->Form->create('Message',
			array('url' => array('action' => 'add','admin'=>true, 'ext'=>'json'), 
				'id' => 'send_message_form')
			);?>
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">&times;</span>
					<span class="sr-only">
						<?php  echo __d('message_managment', 'Close');  ?>
					</span>
				</button>
				<h4 class="modal-title">
					<?php  echo __d('message_managment', 'Nouveau message');  ?>
				</h4>
			</div>

			<div class="modal-body"  style="overflow:hidden;">
			   <?php
				echo $this->Form->input('Recipient.id',array(
				 'label' => 'Destinataire',
				 'multiple'=>'multiple ','class'=>' form-control',
				 'options'=>'',
				 'required' => true,
				 'style' => ' margin-top: -30px;'
				 ));
				echo $this->Form->input('title', array(
				 'label' => 'Objet',
				 'id' => 'MessageTitle',
				 'required' => true
				));
				echo $this->Form->input('body', array(
				 'label' => false ,
				 'id' => 'MessageBody',
				 'cols' => 81,
				 'required' => true
				));
			   ?>
		   </div>
		  	<div class="loader" data-initialize="loader"></div>
			<div class="modal-footer">
				<?php 
				echo $this->Html->link(__d('message_managment', 'Annuler'), '#', array(
					'class' => 'btn btn-danger', 'data-dismiss' => 'modal'
				)); 
				echo $this->Form->button(__d('message_managment', 'Envoyer'), array(
					'class' => 'btn btn-primary'
				));
				?>
			</div>
		</div><!-- /.modal-content -->
  	</div><!-- /.modal-dialog -->
	<?php echo $this->Form->end(); ?>
</div><!-- /.modal -->

<!--Composer message contacter admin -->

<div class="modal fade" tabindex = "false" id="contactAdminDialog"  role="dialog" aria-hidden="true" aria-labelledby="MessageEdition" data-backdrop = "static">
 
	<?php  echo $this->Form->create('Message',
			array('url' => array('action' => 'contact','admin'=>true, 'ext'=>'json' ), 
				'id' => 'contact_admin_message_form')
			);?>
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">&times;</span>
					<span class="sr-only">
						<?php  echo __d('message_managment', 'Close');  ?>
					</span>
				</button>
				<h4 class="modal-title">
					<?php  echo __d('message_managment', 'Nouveau message');  ?>
				</h4>
			</div>

			<div class="modal-body"  style="overflow:hidden;">
			   <?php
				echo $this->Form->input('title', array(
				 'label' => 'Objet',
				 'id' => 'MessageTitle',
				 'required' => true
				));
				echo $this->Form->input('body', array(
				 'label' => false ,
				 'id' => 'MessageBody',
				 'cols' => 81,
				 'required' => true
				));
			   ?>
		   </div>
		  	<div class="loader" data-initialize="loader"></div>
			<div class="modal-footer">
				<?php 
				echo $this->Html->link(__d('message_managment', 'Annuler'), '#', array(
					'class' => 'btn btn-danger', 'data-dismiss' => 'modal'
				)); 
				echo $this->Form->button(__d('message_managment', 'Envoyer'), array(
					'class' => 'btn btn-primary'
				));
				?>
			</div>
		</div><!-- /.modal-content -->
  	</div><!-- /.modal-dialog -->
	<?php echo $this->Form->end(); ?>
</div><!-- /.modal -->
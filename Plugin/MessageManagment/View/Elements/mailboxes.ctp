<?php echo $this->Html->script(array('pages-messages'), array('block' => 'scriptBottom')); ?>

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
.ajax-paginate .btn{border-radius: 0;border-bottom: 1px solid #ccc;}
img[src=''] {
    display: none;
}

ul li.active {
    font-weight: bold;
    color: #8e8e93;
}
.messages-search form, .messages-search input{margin: 0 !important;}

.messages-item{  min-height: 50px;}

#messagerie{border: 1px solid #ccc;}

.messages-list {
    overflow-y: auto !important;
}

.modal .loader {
    background-color: white;
    border: 1px solid #ccc;
    display: none;
    left: 34%;
    padding: 10px 20px;
    position: absolute;
    top: 43%;
}
#pageLoader {
    background-color: white;
    border: 1px solid #ccc;
    display: none;
    left: 34%;
    padding: 10px 20px;
    position: absolute;
    top: 43%;
}
</style>
<script>
<?php  $this->Html->scriptStart(array('inline' => false, 'block' => 'scriptBottom')); ?>
$(function(){

	Messages.init();
	
	//lire message
	$(document).on('click','.messages-item',function(e){
		var that = this;
		$('.message-actions').removeClass('hidden');
		$(".message-id").html($(this).attr('id'));
		$(".message-time").html($(this).find(".messages-item-time").html());
		$(".message-from").html($(this).find(".messages-item-from").html());
		$(".message-to").html($(".messages-item-to").html());
		$(".message-subject").html($(this).find(".messages-item-subject").html());
		$(".message-content").html($(this).find(".messages-item-content>.msg").html());
		$(".message-item-avatar").attr({
			'alt': $(this).find(".messages-item-avatar").attr('alt'),
			'src': $(this).find(".messages-item-avatar").attr('src')
		});
		var mailbox = $('.main-options li.active').attr('id');

		if(mailbox == 'get_trash')
		{
			$('.message-actions').find('.reply-msg').parent().addClass('hidden');
			$('.message-actions').find('.remettre-msg').parent().removeClass('hidden');
			
		}
		else
		if(mailbox == 'get_sentbox')
		{
			$('.message-actions').find('.reply-msg').parent().addClass('hidden');
			$('.message-actions').find('.remettre-msg').parent().addClass('hidden');			
		}
		else
		{
			$('.message-actions').find('.reply-msg').parent().removeClass('hidden');
			$('.message-actions').find('.remettre-msg').parent().addClass('hidden');
		}

		//if ( $(this).attr("class").indexOf(' highlight ')==1) {}
		
		if($(that).hasClass( "highlight" ))
		{
			$.ajax({
				
				url: "<?php echo $this->Html->url(array(
					'plugin' => 'message_managment',
					'controller' => 'messages',
					'action' => 'view',
					'admin' => true, 
					'ext' => 'json')); 
				?>",
				data : {"id" : $(this).attr('id')},
				type  : 'POST',
				success : function(result){
					// success est toujours en place, bien sûr !
					if($(that).hasClass( "highlight" ))
					{
						$(that).removeClass( "highlight" );
						var unread_count = parseInt($("#unread-message").text());
						if(unread_count > 0)
						{
							$("#unread-message").text(unread_count-1)
						}
					}
				}
			});
		}

		e.preventDefault();
	});
	
	//Supprimer message
	$(document).on('click','.email-reader .delete-msg',function(e){
		
		if (
			$(".message-id").html()!='' &&
			confirm("Etes vous sures de vouloir supprimer ce message?")==true
		){
			// App.startPageLoading('Suppression en cours...');
			$('#pageLoader').show();
			
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
				success : function(response)
				{
					// App.stopPageLoading();
					$('#pageLoader').hide();
					
					if(response.result == 'success')
					{
						toastr.success(response.message);
						$("#"+$(".message-id").html()).remove();
						initEmailReader();
						$('.message-actions').addClass('hidden');
					} else 
					{
						toastr.error(response.message);
					}
				},
				error: function(jqXHR, textStatus, errorThrown) 
				{
					// App.stopPageLoading();
					$('#pageLoader').hide();
					toastr.error("<?php echo 'Une erreur s\'est produite, veuillez réessayer plus tard. !'; ?>");
				}
			});
		}
		e.preventDefault();
		
	});

	//Remettre message
	$(document).on('click','.remettre-msg',function(e){
		
		// App.startPageLoading();
		$('#pageLoader').show();
		
		$.ajax({
			url: "<?php echo $this->Html->url(array(
				'plugin' => 'message_managment',
				'controller' => 'messages',
				'action' => 'remettre',
				'admin' => true, 
				'ext' => 'json')); 
			?>",
			data : {"id" : $(".message-id").html()},
			type  : 'POST',
			success : function(response)
			{
				// App.stopPageLoading();
				$('#pageLoader').hide();
				if(response.result == 'success'){
					toastr.success(response.message);
					$("#"+$(".message-id").html()).remove();
					initEmailReader();
					$('.message-actions').addClass('hidden');
				} else {
					
					toastr.error(response.message);
					
				}
			},
			error: function(jqXHR, textStatus, errorThrown) 
			{
				// App.stopPageLoading();
				$('#pageLoader').hide();
				toastr.error("<?php echo 'Une erreur s\'est produite, veuillez réessayer plus tard. !'; ?>");
			}
		});

		e.preventDefault();
	});

	//Messages reçus
	$("#get_inbox").click(function(e){
		
		//vider la zone de recherche
		$('#searchMessage').val('');
		
		// App.startPageLoading('Chargement en cours...');
		$('#pageLoader').show();
		
		$.ajax({
			url: "<?php echo $this->Html->url(array(
				'plugin' => 'message_managment',
				'controller' => 'messages',
				'action' => 'get_inbox',
				'admin' => true
			));?>",
			success : function(data)
			{
				// App.stopPageLoading();
				$('#pageLoader').hide();
				$('.message-actions').addClass('hidden');
				$(".messages-list").html(data);
				initEmailReader();
			},
			error: function(jqXHR, textStatus, errorThrown) 
			{
				// App.stopPageLoading();
				$('#pageLoader').hide();
				toastr.error("<?php echo 'Une erreur s\'est produite, veuillez réessayer plus tard. !'; ?>");
			}
		});
		e.preventDefault();
	});

	//Messages envoyés
	$("#get_sentbox").click(function(e){
		
		//vider la zone de recherche
		$('#searchMessage').val('');

		// App.startPageLoading('Chargement en cours...');
		$('#pageLoader').show();
		
		$.ajax({
			url: "<?php echo $this->Html->url(array(
				'plugin' => 'message_managment',
				'controller' => 'messages',
				'action' => 'get_sentbox',
				'admin' => true));?>",
			success : function(data)
			{
				// App.stopPageLoading();
				$('#pageLoader').hide();
				$('.message-actions').addClass('hidden');
				$(".messages-list").html(data);
				initEmailReader();
			},
			error: function(jqXHR, textStatus, errorThrown) 
			{
				// App.stopPageLoading();
				$('#pageLoader').hide();
				toastr.error("<?php echo 'Une erreur s\'est produite, veuillez réessayer plus tard. !'; ?>");
			}
		});
		e.preventDefault();
	});

	// Messages  supprimés
	$("#get_trash").click(function(e){
		
		//vider la zone de recherche
		$('#searchMessage').val('');
		$('#pageLoader').show();
		
		//App.startPageLoading('Chargement en cours...');
		
		$.ajax({
			url: "<?php echo $this->Html->url(array(
				'plugin' => 'message_managment',
				'controller' => 'messages',
				'action' => 'get_trash',
				'admin' => true));?>",
			success : function(data)
			{
				// App.stopPageLoading();
				$('#pageLoader').hide();
				$('.message-actions').addClass('hidden');
				$(".messages-list").html(data);
				initEmailReader();
			},
			error: function(jqXHR, textStatus, errorThrown) 
			{
				$('#pageLoader').hide();
				toastr.error("<?php echo 'Une erreur s\'est produite, veuillez réessayer plus tard. !'; ?>");
			}
		});
		e.preventDefault();
	});
	
	// Rechercher messages
	$("#searchMessage").keyup(function(){

		var action = $('.main-options>li[class="active"]').attr('id');
		var query = $("#searchMessage").val();
		
		if ( query.length > 0 ){
			
			App.startPageLoading('Recherche en cours...');
			
			$.ajax({
					url: "<?php echo $this->Html->url(array(
						'plugin' => 'message_managment',
						'controller' => 'messages',
						'action' => 'search',
						'admin' => true));?>",
					data : {
						"q" : query,
						"inbox" : action,
					},
					type  : 'POST',
					success : function(data)
					{
						App.stopPageLoading();
						$('.message-actions').addClass('hidden');
						$(".messages-list").html(data);
						initEmailReader();
					},
					error: function(jqXHR, textStatus, errorThrown) 
					{
						App.stopPageLoading();
						toastr.error("<?php echo 'Une erreur s\'est produite, veuillez réessayer plus tard. !'; ?>");
					}
			}); 
		}else{
			$('#'+action).click();
		}
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
	
	//contacter admin
	$('#contact_admin_message_form').submit(function(e){
		
			e.preventDefault();
			var $form = $(this);
			var formURL = $form.attr("action");
			
			$('#contactAdminDialog').trigger('dialogLoader', 'show');
			
			$.ajax({
				url : formURL,
				type: "POST",
				data : $form.serialize(),
				success:function(response) 
				{
					$('#contactAdminDialog').trigger('dialogLoader', 'hide');
					
					if(response.result == 'success'){
						toastr.success(response.message);
						$('#contactAdminDialog').find('input, textarea').val('');
						$('#contactAdminDialog').modal('hide');
						var mailbox = $('.main-options li.active').attr('id');

						if(mailbox == 'sentbox-msg')
						{
							$("#sentbox-msg").trigger('click');
						}
						
					} else {
						toastr.error(response.message);
					}
					$('#contactAdminDialog').trigger('dialogLoader', 'hide');
				},
				error: function(jqXHR, textStatus, errorThrown) 
				{
					$('#contactAdminDialog').trigger('dialogLoader', 'hide');
					
					$('#contactAdminDialog').modal('hide');
					toastr.error("<?php echo 'Une erreur s\'est produite, veuillez réessayer plus tard. !'; ?>");
				}
			});
			return false;
	});
	//pagination des messagse
	$(document).on('click',".ajax-paginate>a",function(e){
		
		e.preventDefault();
		
		var that = $(this);
		var mailbox = $('.main-options>li[class="active"]').attr('id');
		var query =$("#searchMessage").val();
		
		var action =mailbox;
		if ( query.length > 0){
			action ='search';
		}
		
		var url;
		if (action =='get_inbox'){
			url="<?php echo $this->Html->url(array(
				'plugin' => 'message_managment',
				'controller' => 'messages',
				'action' => 'get_inbox',
				'admin' => true));?>";
		}
		if (action =='get_sentbox'){
			url="<?php echo $this->Html->url(array(
				'plugin' => 'message_managment',
				'controller' => 'messages',
				'action' => 'get_sentbox',
				'admin' => true));?>";
		}
		if (action =='get_trash'){
			url="<?php echo $this->Html->url(array(
				'plugin' => 'message_managment',
				'controller' => 'messages',
				'action' => 'get_trash',
				'admin' => true));?>";
		}
		if (action =='search'){
			url="<?php echo $this->Html->url(array(
				'plugin' => 'message_managment',
				'controller' => 'messages',
				'action' => 'search',
				'admin' => true));?>";
		}
		$.ajax({
			url: url,
			data : {
				"q" : query,
				"inbox" : mailbox,
				"page" : that.attr('id'),
			},
			type  : 'POST',
			success : function(data)
			{
				$(".ajax-paginate").remove();
				$(".messages-list").append(data);
			}
		});
		
	});
	
	//Repondre
	$(document).on('click', '.reply-msg', function(){

		$("#contactAdminDialog").modal('show');
		$("#MessageTitle").val('Re : '+$(".message-subject").html());
	});

	//inistialiser les element de modal
	$(".modal").on('hidden.bs.modal', function(){
		$('#contactAdminDialog').find('input, textarea').val('');
	});
	
	//inistialiser les element de modal
	$(".main-options>li").click(function(){
		$(".main-options>li").removeClass("active");
		$(this).addClass('active');
	});
	
	//Loader 
	
	$('#contactAdminDialog').on('dialogLoader', function(e, action)
	{
		if(action == 'hide')
		{
			$(this).find('.loader').hide();
		}
		else
		{
			$(this).find('.loader').show();
		}
	});
	
});

<?php $this->Html->scriptEnd(); ?>
</script>

<div class="app-content">
		<div class="wrap-content container" id="messagerie">
			<div class="wrap-messages">
				<div id="inbox" class="inbox">
					<!-- start: EMAIL OPTIONS -->
					<div class="col email-options perfect-scrollbar">
						<div class="padding-15">
							<button class="btn btn-primary btn-block margin-bottom-30" data-toggle= "modal" data-target= "#contactAdminDialog"> Contacter l'administration </button>
							<p class="email-options-title no-margin">
								Boîtes mails
							</p>
							<ul class="main-options padding-15">
								<li id="get_inbox" class="active">
									<a href="#">
										<span class="title"><i class="ti-import"></i>
										Boîte de réception
										</span>
										<span id="unread-message" class="badge pull-right"><?php echo $unread_count; ?></span>
									</a>
								</li>
								<li id="get_sentbox">
									<a href="#">
										<span class="title"><i class="ti-upload"></i>
										Messages envoyés
										</span>
									</a>
								</li>
								<li id="get_trash">
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
								<?php
									echo $this->element('inbox', array(
										'messages' => $messages
										), array('plugin' => 'MessageManagment')
									);
								?>
							</ul>
						<div id="pageLoader" class="loader" data-initialize="loader" style="display:none;">
							<?php echo $this->Html->image("loading-spinner-grey.gif"); ?>
							<span>&nbsp;&nbsp;Chargement en cours...</span>
						</div>
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
												<li class = "hidden">
													<a href="#" class="remettre-msg">
														Remettre
													</a>
												</li>
												<li>
													<a href="#" class="reply-msg">
														Répondre
													</a>
												</li>
												<li>
													<a href="#" class="delete-msg">
														Supprimer
													</a>
												</li>
											</ul> </span>
									</li>
									<li class = "no-padding hidden">
										<a href="#" class="remettre-msg">
											Remettre
										</a>
									</li>
									<li class="no-padding">
										<a href="#" class="reply-msg">
											Répondre
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

<!--Composer message -->


<!--Composer message contacter admin -->

<div class="modal fade" tabindex = "false" id="contactAdminDialog"  role="dialog" aria-hidden="true" aria-labelledby="MessageEdition" data-backdrop = "static">
 
	<?php  echo $this->Form->create('Message',
			array('url' => array('plugin' => 'message_managment', 'action' => 'contact','admin'=>true, 'ext'=>'json' ), 
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
		  	<div class="loader" data-initialize="loader">
				<?php echo $this->Html->image("loading-spinner-grey.gif"); ?>
				<span>&nbsp;&nbsp;Envoi en cours...</span>
			</div>
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
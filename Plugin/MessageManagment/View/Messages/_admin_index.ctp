<?php
$this->viewVars['title_for_layout'] = __d('message_managment', 'Messages');

$this->Html
	->addCrumb('', '/admin', array('icon' => 'home'))
	->addCrumb(__d('message_managment', 'Messages'), array('action' => 'index'));
?>

<script>

<?php  $this->Html->scriptStart(array('inline' => false, 'block' => 'scriptBottom')); ?>
var messageCrud = {
		datagrid : {},
		init : function(){
		     messageCrud.datagrid = $('#message_datagrid').DataTable({
		        "processing": true,
		        "serverSide": true,
		        "language": {
					"lengthMenu": "_MENU_ Enregistrements par page",
					"processing": '<?php echo $this->Html->image("loading-spinner-grey.gif"); ?><span>&nbsp;&nbsp;Loading...</span>',
					"sInfo": "",
					"sInfoEmpty": "",
					"zeroRecords" : 'aucun enregistrement trouvé' 
				},
		        "ajax": {
		        	url : '<?php echo $this->Html->url(array('action' => 'get_datagrid_data', 'ext' => 'json')); ?>',
		        	type: "POST",
		 			data : function ( d ) {
					  	var value = $('#MessageFilter').find('input[type = search]').val();
					  	var column = $('#MessageFilter').find('.hidden').val();
					  	
					  	if(column && value)
					  	{
					  		d['filter'] = {};
					  		d['filter'][column] = value;
					  	}	
		            }
		        },
				"sort": true,
				"filter": false,
				"columns": [
					{
						title: '<?php echo __d('message_managment', 'Id'); ?>',
						data: 'Message.id',
						sortable: true,
					},
					{
						title:  '<?php echo __d('message_managment', 'Sender'); ?>',
						data: 'Sender.name',
						sortable: true
					},
					{
						title:  '<?php echo __d('message_managment', 'Recipient'); ?>',
						data: 'Recipient.name',
						sortable: true
					},
					{
						title: '<?php echo __d('message_managment', 'Title'); ?>',
						data: 'Message.title',
						sortable: true
					},
					{
						title: '<?php echo __d('message_managment', 'Body'); ?>',
						data: 'Message.body',
						sortable: true
					},
					{
						title: '<?php echo __d('message_managment', 'Status'); ?>',
						data: 'Message.status',
						sortable: true
					}
				{
				title:  '<?php echo __d('request_managment', 'Actions'); ?>',
				data: null,
				sortable: false
			}],
				"columnDefs": [{
					"targets": [5],
					"width" : "230px",
					render: function (e, type, data, meta)
					{	
						var actions = [{
							'value': 'Détail',
							'attr': {
								'icon': 'folder-open-o',
								'class': "btn btn-xs btn-primary btn-open",
								'action-id': data.Message.id
							}
						}];

						actions.push({
							'value': 'Modifier',
							'attr': {
								'icon': 'pencil',
								'class': "btn btn-xs btn-primary btn-edit",
								'action-id': data.Message.id
							}
						});	

						actions.push({
							'value': 'Supprimer',
							'attr': {
								'icon': 'remove',
								'class': "btn btn-xs btn-danger btn-delete",
								'action-id': data.Message.id
							}
						});	
						return createButtonGroup(actions);
					}
				}],
		    });			
		},
		showDetail : function (elm) {
	        var tr = $(elm).closest('tr');
	        var row = messageCrud.datagrid.row( tr );
	 
	        if ( row.child.isShown() ) {
	            // This row is already open - close it
	            row.child.hide();
	            tr.removeClass('shown');
	        }
	        else {
	            // Open this row
	            row.child( messageCrud.detail(row.data()) ).show();
	            tr.addClass('shown');
	        }
	    },
		detail : function(d){

		    return '<table id = "message_row_detail" cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">'+
						
				'<tr>'+
				'<td><?php echo __d('message_managment', 'Id'); ?></td>'+
					'<td>'+d.Message.id+'</td>'+
				'</tr>'+			
				'<tr>'+
				'<td><?php echo __d('message_managment', 'Sender'); ?></td>'+
					'<td>'+d.Message.sender_id+'</td>'+
				'</tr>'+			
				'<tr>'+
				'<td><?php echo __d('message_managment', 'Recipient'); ?></td>'+
					'<td>'+d.Message.recipient_id+'</td>'+
				'</tr>'+			
				'<tr>'+
				'<td><?php echo __d('message_managment', 'Title'); ?></td>'+
					'<td>'+d.Message.title+'</td>'+
				'</tr>'+			
				'<tr>'+
				'<td><?php echo __d('message_managment', 'Body'); ?></td>'+
					'<td>'+d.Message.body+'</td>'+
				'</tr>'+			
				'<tr>'+
				'<td><?php echo __d('message_managment', 'Status'); ?></td>'+
					'<td>'+d.Message.status+'</td>'+
				'</tr>'+
				'</table>';	
		},
		addRow : function(row){
			var formURL = $('#add_message_form').attr("action");
			$('#message_datagrid').trigger('dialogLoader', 'show');
			$.ajax(
			{
				url : formURL,
				type: "POST",
				data : postData,
				success:function(response, textStatus, jqXHR) 
				{
					if(response.result == 'success')
					{
						messageCrud.datagrid.row.add(response.record).draw();
						toastr.success(response.message);
						$('#add_message_form').find('input, select').val('');
					}
					else
					{
						toastr.error(response.message); 
					}
					$('#message_datagrid').trigger('dialogLoader', 'hide');
					$('#MessageAddDialog').modal('hide'); 
				},
				error: function(jqXHR, textStatus, errorThrown) 
				{
					$('#message_datagrid').trigger('dialogLoader', 'hide');
					toastr.error("<?php echo __d('message_managment', 'An error occured please try again!'); ?>");
				}
			});
			
		},
		deleteRow : function(id, tr){

			$('#message_datagrid').trigger('loader', 'show');
			$.ajax(
			{
				url : '/delete.json',
				type: "POST",
				data : {id : id},
				success:function(response, textStatus, jqXHR) 
				{
					if(response.result == 'success')
					{
						messageCrud.datagrid.row(tr).remove().draw( false );
						toastr.success(response.message);
					}
					else
					{
						toastr.error(response.message); 
					}
					$('#message_datagrid').trigger('loader', 'hide');
				},
				error: function(jqXHR, textStatus, errorThrown) 
				{
					$('#message_datagrid').trigger('loader', 'hide');
					toastr.error("<?php echo __d('message_managment', 'An error occured please try again!'); ?>");
				}
			});
		},
		updateRow : function(data){
			var formURL = $('#edit_message_form').attr("action");
			$('#message_datagrid').trigger('dialogLoader', 'show')
			$.ajax(
			{
				url : formURL,
				type: "POST",
				data : data,
				success:function(response, textStatus, jqXHR) 
				{
					var tr = $('[action-id = '+response.record.Message.id+']').closest('tr'); 
					if(response.result == 'success')
					{
						messageCrud.datagrid.row(tr).data( response.record ).draw();
						toastr.success(response.message);
					}
					else
					{
						toastr.error(response.message); 
					}
					 $('#message_datagrid').trigger('dialogLoader', 'hide'); 
					$('#MessageEditDialog').modal('hide'); 
				},
				error: function(jqXHR, textStatus, errorThrown) 
				{
	  				$('#message_datagrid').trigger('dialogLoader', 'hide');
	  				toastr.error("<?php echo __d('message_managment', 'An error occured please try again!'); ?>");
				}
			});
		}
	}

	jQuery(document).ready(function() {
		messageCrud.init();

	 	$('#message_datagrid tbody').on('click', '.btn-open', function(){
	 		messageCrud.showDetail(this)
	 	});

		//datagrid ajax form 
		$('.messages').on('click', '.btn-delete', function(e)
		{
			var id = $(this).attr("action-id");
			var tr = $(this).closest("tr");
			
			if(confirm("<?php echo __d('message_managment', 'Are you sure'); ?>")){
				messageCrud.deleteRow(id, tr);
			}
			
			e.preventDefault();

			return false;
		});

		//datagrid ajax add form 
		$('#add_message_form').submit(function(e)
		{
			var postData = $(this).serializeArray();
			messageCrud.addRow(postData);
			e.preventDefault();

			return false;
		});

		//datagrid ajax edit form 
		$('#edit_message_form').submit(function(e)
		{
			var postData = $(this).serializeArray();
			messageCrud.updateRow(postData);
			e.preventDefault();

			return false;
		});

		$(document).on('click', '.btn-edit', function(event){
			$('#edit_message_form').find('input, select').val('');
			var data = messageCrud.datagrid.row($(this).closest('tr')).data();
			console.log(data);
			$('#edit_message_form input, #edit_message_form select').each(function(){
				
				if($(this).attr('id'))
				{	
					regex = /\[([^\]]*)]/g;
					keys = [];
					
					while (m = regex.exec($(this).attr('name'))) {
					  keys.push(m[1]);
					}

					if(data.hasOwnProperty(keys[0]) && data[keys[0]][keys[1]]){
						$(this).val(data[keys[0]][keys[1]]);
					}
				}
			});

			$('#MessageEditDialog').modal('show');
			
			event.preventDefault();
			return false;
		});

		$('#MessageFilter').on('click', 'a', function (e) {
		  	var field_name =  $(this).parent().attr('data-value')
		  	var field_label = $(this).text();
		  	$(this).closest('.datagrid-search').find('.hidden').val(field_name);
		  	$(this).closest('.datagrid-search').find('.selected-label').text(' ' +field_label);
		  	$(this).closest('.datagrid-search').find('input[type = search]').val("");
		  	$(this).closest('.datagrid-search').find('input[type = search]').attr('placeholder', 'Search by '+field_label);
		});

		$('#MessageFilter .search').on('click', '.btn', function (e) {
		  	messageCrud.datagrid.ajax.reload();
		});

		$('#MessageEditDialog').on('hidden.bs.modal', function (e) {
		  	$('#edit_message_form').clearForm();
		});

		$('#MessageAddDialog').on('hidden.bs.modal', function (e) {
		  	$('#add_message_form').clearForm();
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

<div class="messages index">
	<div class="datagrid" id="message_datagrid_container">
		<div class="datagrid-toolbar">
			<div class="col-xs-12 col-sm-6 col-md-8 no-padding">
				<!-- Button trigger modal -->
				<?php  echo $this->Croogo->adminAction(

						__d('message_managment', 'New Message'), '#',

						array('button' => 'primary', 'data-toggle' => 'modal', 'data-target' =>'#MessageAddDialog')

					);?>			</div>
			<div class="col-xs-6 col-md-4 no-padding">
			  	<div class="datagrid-search" id = "MessageFilter">
					<div class="input-group">
						<div class="input-group-btn selectlist" data-resize="auto" data-initialize="selectlist">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
								<span class="selected-label">Id</span>
								<span class="caret"></span>
								<span class="sr-only">Toggle Dropdown</span>
					 		</button>
							<ul class="dropdown-menu" role="menu">
												
								<li data-value="Message.id">	
									<a href="#">Id</a>
								</li>											
								<li data-value="Sender.name">	
									<a href="#">Sender</a>
								</li>											
								<li data-value="Recipient.name">	
									<a href="#">Recipient</a>
								</li>											
								<li data-value="Message.title">	
									<a href="#">Title</a>
								</li>											
								<li data-value="Message.body">	
									<a href="#">Body</a>
								</li>											
								<li data-value="Message.status">	
									<a href="#">Status</a>
								</li>												
							</ul>
							<input class="hidden hidden-field" name="column" readonly="readonly" aria-hidden="true" type="text" value = "Message.id">
						</div>
						<div class="search input-group">
							<input type="search" class="form-control" placeholder="<?php  echo __d('message_managment', 'Search by Id');  ?>"/>
						  	<span class="input-group-btn">
								<button class="btn btn-default" type="button">
							  		<span class="glyphicon glyphicon-search"></span>
							  		<span class="sr-only">
							  		<?php  echo __d('message_managment', 'Search');  ?>							 		</span>
								</button>
						  	</span>
						</div>
					</div>
			  	</div>
			</div>
			<div class = "clear"></div>
	  	</div>
		<table id="message_datagrid" class="display table-bordered"></table>
	</div>
</div>

<div class="modal fade" id="MessageAddDialog" tabindex="-1" role="dialog" aria-hidden="true" aria-labelledby="MessageEdition" data-backdrop = "static">
 
	<?php  echo $this->Form->create('Message',
			array('url' => array('action' => 'add', 'ext' => 'json'), 

				'id' => 'add_message_form')

			);?>	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">&times;</span>
					<span class="sr-only">
						<?php  echo __d('message_managment', 'Close');  ?>
					</span>
				</button>
				<h4 class="modal-title">
					<?php  echo __d('message_managment', 'Add Message');  ?>				</h4>
			</div>

			<div class="modal-body">
			<?php
				$this->Form->inputDefaults(array('label' => false, 'class' => 'span10'));
				echo $this->Form->input('sender_id', array(
					'label' => __d('message_managment', 'Sender'),
					'id' => 'AddMessageSenderId'
				));
				echo $this->Form->input('recipient_id', array(
					'label' => __d('message_managment', 'Recipient'),
					'id' => 'AddMessageRecipientId'
				));
				echo $this->Form->input('title', array(
					'label' => __d('message_managment', 'Title'),
					'id' => 'AddMessageTitle'
				));
				echo $this->Form->input('body', array(
					'label' => __d('message_managment', 'Body'),
					'id' => 'AddMessageBody'
				));
				echo $this->Form->input('status', array(
					'label' => __d('message_managment', 'Status'),
					'id' => 'AddMessageStatus'
				));
			?>
			</div>
		  	<div class="loader" data-initialize="loader"></div>
			<div class="modal-footer">
				<?php 

				echo $this->Html->link(__d('message_managment', 'Cancel'), '#', array('class' => 'btn btn-danger', 'data-dismiss' => 'modal')); 
 
				?>				<?php 

				echo $this->Form->button(__d('message_managment', 'Save'), array('class' => 'btn btn-primary'));

				?>			</div>
		</div><!-- /.modal-content -->
  	</div><!-- /.modal-dialog -->
<?php echo $this->Form->end(); ?></div><!-- /.modal -->

<div class="modal fade" id="MessageEditDialog" tabindex="-1" role="dialog" aria-hidden="true" aria-labelledby="MessageEdition" backdrop = "static">
	
	<?php  echo $this->Form->create('Message',
			array('url' => array('action' => 'edit', 'ext' => 'json'), 

				'id' => 'edit_message_form')

			);?> 

	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">&times;</span>
					<span class="sr-only">
						<?php  echo __d('message_managment', 'Close');  ?>					</span>
				</button>
				<h4 class="modal-title">
					<?php  echo __d('message_managment', 'Edit Message');  ?>				</h4>
	  		</div>
			<div class="modal-body">
			<?php
				echo $this->Form->input('id');
				$this->Form->inputDefaults(array('label' => false, 'class' => 'span10'));
				echo $this->Form->input('sender_id', array(
					'label' => __d('message_managment', 'Sender'),
					'id' => 'EditMessageSenderId'
				));
				echo $this->Form->input('recipient_id', array(
					'label' => __d('message_managment', 'Recipient'),
					'id' => 'EditMessageRecipientId'
				));
				echo $this->Form->input('title', array(
					'label' => __d('message_managment', 'Title'),
					'id' => 'EditMessageTitle'
				));
				echo $this->Form->input('body', array(
					'label' => __d('message_managment', 'Body'),
					'id' => 'EditMessageBody'
				));
				echo $this->Form->input('status', array(
					'label' => __d('message_managment', 'Status'),
					'id' => 'EditMessageStatus'
				));
			?>
			</div>
	  		<div class="loader"  data-initialize="loader"></div>
			<div class="modal-footer">
				<?php 

				echo $this->Html->link(__d('message_managment', 'Cancel'), '#', array('class' => 'btn btn-danger', 'data-dismiss' => 'modal')); 
 
				?>				<?php 

				echo $this->Form->button(__d('message_managment', 'Save'), array('class' => 'btn btn-primary'));

				?>			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
<?php echo $this->Form->end(); ?></div><!-- /.modal -->
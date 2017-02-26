<?php  $userId = AuthComponent::user('id');?>
<?php $user_role = $this->CapTheme->getConnectedUserRole(); ?>
<?php
$this->viewVars['title_for_layout'] = __d('request_managment', 'Requests');

$this->Html
	->addCrumb('', '/admin', array('icon' => 'home'))
	->addCrumb(__d('request_managment', "Demandes d'agrément"), array('action' => 'index'));
?>
<?php echo $this->Html->script(array('../plugins/Chart.js/Chart.min.js'), array('block' => 'scriptBottom'));?>
<script>
var connected_user_role = '<?php $user_role; ?>';
<?php  $this->Html->scriptStart(array('inline' => false, 'block' => 'scriptBottom')); ?>
var requestCrud = {
		datagrid : {},
		init : function(){
		     requestCrud.datagrid = $('#request_datagrid').DataTable({
		        "processing": true,
		        "serverSide": true,
		        "language": {
					"lengthMenu": "_MENU_",
					"processing": '<div  class = "loading-message loading-message-boxed"><?php echo $this->Html->image("loading-spinner-grey.gif"); ?><span>&nbsp;&nbsp;Operation en cours...</span></div>',
					"sInfo":'',
					"sInfoEmpty": "",
					"zeroRecords" : 'aucun enregistrement trouvé' 
				},
		        "ajax": {
		        	url : '<?php echo $this->Html->url(array('action' => 'get_datagrid_data', 'ext' => 'json')); ?>',
		        	type: "POST",
		 			data : function ( d ) {
					  	var value = $('#RequestFilter').find('input[type = search]').val();
					  	var column = $('#RequestFilter').find('.hidden').val();
					  	
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
						title: '<?php echo __d('request_managment', 'N°Dossier'); ?>',
						data: 'Request.number',
						sortable: true
					},
					{
						title: '<?php echo __d('request_managment', 'Personnalité juridique'); ?>',
						data: 'Request.requester_type',
						sortable: true,
					},
					{
						title:  '<?php echo __d('request_managment', 'Nom'); ?>',
						data: null,
						sortable: false
					},

					{
						title: '<?php echo __d('request_managment', 'Date de demande'); ?>',
						data: 'Request.event_date',
						sortable: true
					},
					{
						title:  '<?php echo __d('request_managment', 'Statut'); ?>',
						data: 'Status.name',
						sortable: true
					},
					{
						title:  '<?php echo __d('request_managment', 'Actions'); ?>',
						data: null,
						sortable: false
					}
				],
				"columnDefs": [
				{
					"targets": [3],
					render: function (e, type, data, meta)
					{	
						return moment(data.Request.event_date).format('DD-MM-YYYY');
					}
				},{
					"targets": [2],
					render: function (e, type, data, meta)
					{	
						return (data.Request.requester_type == 'natural')? data.Counselor.full_name : data.Company.name;
					}
				},{
					"targets": [5],
					"width" : "60px",
					render: function (e, type, data, meta)
					{	

						if(connected_user_role == 'director' || data.Status.alias != 'pending_postale_papers')
						{
							var actions = [{
								'value': 'Ouvrir',
								'attr': {
									'icon': 'folder-open-o',
									'class': "btn btn-xs btn-primary btn-open",
									'action-id': data.Request.id
								}
							}];

							return createButtonGroup(actions);	
						}
						else 
						{
							var actions = [{
								'value': 'Ouvrir',
								'attr': {
									'icon': 'folder-open-o',
									'class': "btn btn-xs btn-primary btn-open",
									'action-id': data.Request.id,
									'disabled' : true
								}
							}];

							return createButtonGroup(actions);							
						}
					}
				}],
		    });			
		},
		refreshDetail : function (elm) {
	        var tr = $(elm).closest('tr');
	        var row = requestCrud.datagrid.row( tr );
            row.child( requestCrud.open(row.data()) );
	    },
		showDetail : function (elm) {
	        var tr = $(elm).closest('tr');
	        var row = requestCrud.datagrid.row( tr );
	 
	        if ( row.child.isShown() ) {
	            // This row is already open - close it
	            row.child.hide();
	            tr.removeClass('shown');
	        }
	        else {
	            // Open this row
	            row.child( requestCrud.open(row.data())).show();
	            //row.child.addClass('counselor_profile_row');
	            tr.addClass('shown');
	        }
	    },
		open : function(d){
			$('#request_datagrid').trigger('dialogLoader', 'show');
			App.startPageLoading();
	 		$.get( "<?php echo $this->Html->url(array('action' => 'get_requester_data')); ?>/"+d.Request.id, function( data ) {
	 				App.stopPageLoading();
			 	  $('#profile'+d.Request.id).html(data);
			 	 // $('.panel-scroll').perfectScrollbar();
			});

			return '<div id = "profile'+d.Request.id+'" class = "panel panel-white profile"></div>';
		},
		updateRow : function(data){
			var formURL = $('#edit_request_form').attr("action");
			App.startPageLoading();
			$.ajax(
			{
				url : formURL,
				type: "POST",
				data : data,
				success:function(response, textStatus, jqXHR) 
				{
					var tr = $('[action-id = '+response.record.Request.id+']').closest('tr'); 
					if(response.result == 'success')
					{
						requestCrud.datagrid.row(tr).data( response.record ).draw();
						toastr.success(response.message);
					}
					else
					{
						toastr.error(response.message); 
					}
					 App.stopPageLoading(); 
					$('#RequestEditDialog').modal('hide'); 
				},
				error: function(jqXHR, textStatus, errorThrown) 
				{
	  				$('#request_datagrid').trigger('dialogLoader', 'hide');
	  				toastr.error("<?php echo __d('request_managment', 'An error occured please try again!'); ?>");
				}
			});
		}
	}

	jQuery(document).ready(function() {
		requestCrud.init();

	 	$('#request_datagrid tbody').on('click', '.btn-open', function(){
	 		requestCrud.showDetail(this);
	 	});

		$(document).on('submit', '#admin_save_request_decision', function(e)
		{
			var self = this;
			var postData = $(this).serializeArray();
			App.startPageLoading();
			$.ajax(
			{
				url : $(this).attr('action'),
				data : postData,
				type: "POST",
				success:function(response, textStatus, jqXHR) 
				{ 
					App.stopPageLoading();
					
					if(response.result == 'success')
					{
						toastr.success(response.message);
						var request_id = $('#RequestRequestId').val();
						//var opened_tab = $(".nav-tabs li.active:first");
						requestCrud.refreshDetail($('button[action-id = '+request_id+']'));
					}
					else
					{
						toastr.error(response.message); 
					}
				},
				error: function(jqXHR, textStatus, errorThrown) 
				{
	  				App.stopPageLoading();
	  				toastr.error("<?php echo __d('request_managment', 'An error occured please try again!'); ?>");
				}
			});
			e.preventDefault();

			return false;
		});
		
		$(document).on('submit', '#save_member_request_judgment_form', function(e)
		{
			var self = this;
			var postData = $(this).serializeArray();
			App.startPageLoading();
			$.ajax(
			{
				url : $(this).attr('action'),
				data : postData,
				type: "POST",
				success:function(response, textStatus, jqXHR) 
				{ 
					App.stopPageLoading();
					
					if(response.result == 'success')
					{
						toastr.success(response.message);
						var request_id = $('#MembersRequestRequestId').val();
						//var opened_tab = $(".nav-tabs li.active:first");
						requestCrud.refreshDetail($('button[action-id = '+request_id+']'));
					}
					else
					{
						toastr.error(response.message); 
					}
				},
				error: function(jqXHR, textStatus, errorThrown) 
				{
	  				App.stopPageLoading();
	  				toastr.error("<?php echo __d('request_managment', 'An error occured please try again!'); ?>");
				}
			});
			e.preventDefault();

			return false;
		});	
		$(document).on('click', '.btn-completely-received', function(e)
		{
			var self = this;
			App.startPageLoading();
			$.ajax(
			{
				url : "<?php echo $this->Html->url(array('action' => 'receive_request_completely', 'ext' => 'json')); ?>",
				type: "POST",
				data : {
					id : $(this).attr('request-id')
				},
				success:function(response, textStatus, jqXHR) 
				{ 
					App.stopPageLoading();
					
					if(response.result == 'success')
					{
						$('div#profile_validation_toolbar').hide();
						$('div#pending_completely_toolbar').show();
						requestCrud.datagrid.ajax.reload();
						toastr.success(response.message);
					}
					else
					{
						toastr.error(response.message); 
					}
				},
				error: function(jqXHR, textStatus, errorThrown) 
				{
	  				App.stopPageLoading();
	  				toastr.error("<?php echo __d('request_managment', 'An error occured please try again!'); ?>");
				}
			});
			e.preventDefault();

			return false;
		});

		$(document).on('click', '.btn-validate-papers-reception', function(e)
		{
			bootbox.prompt({
				title: "Veuillez scanner le code à barre via la douchette",
				className: "bootbox-custom-prompt",
				value: "<?php echo hash('md5', 1); ?>",
				buttons: {
					confirm: {
						label: "Valider",
						className: "btn-left btn-primary",
					},
					cancel: {
						label: "Annuler",
						className: "btn-right btn-default"
					},
				},
				callback: function(result) {
					
					if (result) {
						App.startPageLoading();
						
						$.ajax(
						{
							url : "<?php echo $this->Html->url(array('action' => 'validate_document_reception', 'ext' => 'json')); ?>",
							type: "POST",
							data : {qr_code : result},
							success:function(response, textStatus, jqXHR) 
							{ 
								App.stopPageLoading();
								
								if(response.result == 'success')
								{
									requestCrud.datagrid.ajax.reload();
									toastr.success(response.message);
								}
								else
								{
									toastr.error(response.message); 
								}
							},
							error: function(jqXHR, textStatus, errorThrown) 
							{
				  				App.stopPageLoading();
				  				toastr.error("<?php echo __d('request_managment', 'An error occured please try again!'); ?>");
							}
						});					
					}
				}
			});
		});

		$(document).on('click', '.btn-validate-profile', function(e)
		{	
			var self = this;
			var valid = true;
			var documents = $(this).closest('.profile').find('.btn-show-document');
			
			if(documents.length == 0) {
				valid = false;
			}
			
			$(documents).each(function(){
				
				if($(this).find('.badge-success').length == 0)
				{
					var invalid_document = $(this).text();
					App.alert('Veuillez valider svp le document « ' + invalid_document + ' »');
					valid = false;
					return false;
				}
			});

			var validated_document_length = $(this).closest('.profile').find('.badge-success');
			
			if (valid && confirm('Vous êtes sûr de vouloir envoyer ce dossier à la direction')) {				
				var request_id = $(self).attr('request-id');
				App.startPageLoading();
				
				$.ajax(
				{
					url : "<?php echo $this->Html->url(array('action' => 'validate_requester', 'ext' => 'json')); ?>",
					type: "POST",
					data : {id : request_id},
					success:function(response, textStatus, jqXHR) 
					{ 
						App.stopPageLoading();
						
						if(response.result == 'success')
						{
							requestCrud.datagrid.ajax.reload();
							toastr.success(response.message);
						}
						else
						{
							toastr.error(response.message); 
						}
					},
					error: function(jqXHR, textStatus, errorThrown) 
					{
		  				App.stopPageLoading();
		  				toastr.error("<?php echo __d('request_managment', 'An error occured please try again!'); ?>");
					}
				});
			}
			e.preventDefault();
		});

		$(document).on('click', '.btn-invalidate-profile', function(e)
		{
			var request_id = $(this).attr('request-id');
			$('#dialog_counselor_completion').data('request_id', request_id);
			$('#dialog_counselor_completion').modal('show');
			e.preventDefault();
		});

		$(document).on('submit', '#request_completely_form', function(e)
		{
			var request_id = $('#dialog_counselor_completion').data('request_id');
			App.startPageLoading();
			
			$.ajax(
			{
				url : $(this).attr('action'),
				type: "POST",
				data : {
					id : request_id,
					title :  $('#completion_subject').val(),
					body : $('#completion_message').val()
				},
				success:function(response, textStatus, jqXHR) 
				{ 
					App.stopPageLoading();
					
					if(response.result == 'success')
					{
						$('div#profile_validation_toolbar').hide();
						$('div#pending_completely_toolbar').show();
						$('#dialog_counselor_completion').modal('hide');
						requestCrud.datagrid.ajax.reload();
						toastr.success(response.message);
					}
					else
					{
						toastr.error(response.message); 
					}
				},
				error: function(jqXHR, textStatus, errorThrown) 
				{
	  				App.stopPageLoading();
	  				toastr.error("<?php echo __d('request_managment', 'An error occured please try again!'); ?>");
				}
			});
			e.preventDefault();

			return false;
		});
	
		$(document).on('click', '.btn-validate-company-document', function(e)
		{
			var company_document_id = $(this).closest('.panel-document-wrapper').attr('request-document-id');
			var document_id = $(this).closest('.panel-document-wrapper').attr('document-id');
			var self = this;
			App.startPageLoading();
			
			$.ajax(
			{
				url : "<?php echo $this->Html->url(array('plugin' => 'company_managment', 'admin' => true, 'controller' => 'companies_documents','action' => 'validate_document', 'ext' => 'json')); ?>",
				type: "POST",
				data : {id : company_document_id},
				success:function(response, textStatus, jqXHR) 
				{ 
					App.stopPageLoading();
					
					if(response.result == 'success')
					{
						$(self).closest('.profile').find('button[target-id = '+document_id+']').append('<span class="badge badge-success"><i class = "ti-check"></i></span>');
						$(self).hide();
						$(self).prev().show();
						toastr.success(response.message);
					}
					else
					{
						toastr.error(response.message); 
					}
				},
				error: function(jqXHR, textStatus, errorThrown) 
				{
	  				App.stopPageLoading();
	  				toastr.error("<?php echo __d('request_managment', 'An error occured please try again!'); ?>");
				}
			});
			e.preventDefault();
		});

		$(document).on('click', '.btn-reset-company-document-validation', function(e)
		{
			var counselor_document_id = $(this).closest('.panel-document-wrapper').attr('request-document-id');
			var document_id = $(this).closest('.panel-document-wrapper').attr('document-id');
			var self = this;
			App.startPageLoading();
			$.ajax(
			{
				url : "<?php echo $this->Html->url(array('plugin' => 'company_managment', 'admin' => true, 'controller' => 'companies_documents','action' => 'invalidate_document', 'ext' => 'json')); ?>",
				type: "POST",
				data : {id : counselor_document_id},
				success:function(response, textStatus, jqXHR) 
				{ 
					App.stopPageLoading();
					
					if(response.result == 'success')
					{
						$(self).closest('.profile').find('button[target-id = '+document_id+']').find('span.badge').remove();
						$(self).hide();
						$(self).next().show();
						toastr.success(response.message);
					}
					else
					{
						toastr.error(response.message); 
					}
				},
				error: function(jqXHR, textStatus, errorThrown) 
				{
	  				App.stopPageLoading();
	  				toastr.error("<?php echo __d('request_managment', 'An error occured please try again!'); ?>");
				}
			});
			e.preventDefault();
		});

		$(document).on('click', '.btn-validate-counselor-document', function(e)
		{
			var counselor_document_id = $(this).closest('.panel-document-wrapper').attr('request-document-id');
			var document_id = $(this).closest('.panel-document-wrapper').attr('document-id');
			var self = this;
			App.startPageLoading();
			
			$.ajax(
			{
				url : "<?php echo $this->Html->url(array('plugin' => 'profile_managment', 'admin' => true, 'controller' => 'counselors_documents','action' => 'validate_document', 'ext' => 'json')); ?>",
				type: "POST",
				data : {id : counselor_document_id},
				success:function(response, textStatus, jqXHR) 
				{ 
					App.stopPageLoading();
					
					if(response.result == 'success')
					{
						$(self).closest('.profile').find('button[target-id = '+document_id+']').append('<span class="badge badge-success"><i class = "ti-check"></i></span>');
						$(self).hide();
						$(self).prev().show();
						toastr.success(response.message);
					}
					else
					{
						toastr.error(response.message); 
					}
				},
				error: function(jqXHR, textStatus, errorThrown) 
				{
	  				App.stopPageLoading();
	  				toastr.error("<?php echo __d('request_managment', 'An error occured please try again!'); ?>");
				}
			});
			e.preventDefault();
		});

		$(document).on('click', '.btn-reset-counselor-document-validation', function(e)
		{
			var counselor_document_id = $(this).closest('.panel-document-wrapper').attr('request-document-id');
			var document_id = $(this).closest('.panel-document-wrapper').attr('document-id');
			var self = this;
			App.startPageLoading();
			$.ajax(
			{
				url : "<?php echo $this->Html->url(array('plugin' => 'profile_managment', 'admin' => true, 'controller' => 'counselors_documents','action' => 'invalidate_document', 'ext' => 'json')); ?>",
				type: "POST",
				data : {id : counselor_document_id},
				success:function(response, textStatus, jqXHR) 
				{ 
					App.stopPageLoading();
					
					if(response.result == 'success')
					{
						$(self).closest('.profile').find('button[target-id = '+document_id+']').find('span.badge').remove();
						$(self).hide();
						$(self).next().show();
						toastr.success(response.message);
					}
					else
					{
						toastr.error(response.message); 
					}
				},
				error: function(jqXHR, textStatus, errorThrown) 
				{
	  				App.stopPageLoading();
	  				toastr.error("<?php echo __d('request_managment', 'An error occured please try again!'); ?>");
				}
			});
			e.preventDefault();
		});

		$(document).on('click', '.btn-show-document', function(e)
		{
			var id = $(this).attr("target-id");
			$(this).parent().parent().find('.btn').removeClass('current');
			$(this).addClass('current');
			$(this).closest('.profile').find('.panel-document-wrapper').hide();
			$(this).closest('.profile').find('div[document-id = '+id+']').show();
			e.preventDefault();
		});


		$('#RequestFilter').on('click', 'a', function (e) {
		  	var field_name =  $(this).parent().attr('data-value')
		  	var field_label = $(this).text();
		  	$(this).closest('.datagrid-search').find('.hidden').val(field_name);
		  	$(this).closest('.datagrid-search').find('.selected-label').text(' ' +field_label);
		  	$(this).closest('.datagrid-search').find('input[type = search]').val("");
		  	$(this).closest('.datagrid-search').find('input[type = search]').attr('placeholder', 'Chercher par '+field_label);
		});

		$('#RequestFilter .search').on('click', '.btn', function (e) {
		  	requestCrud.datagrid.ajax.reload();
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

<div class="requests index">
	<div class="datagrid" id="request_datagrid_container">
		<div class="datagrid-toolbar">
			<div class="col-xs-12 col-sm-6 col-md-8 no-padding">
				<?php if ($this->CapTheme->isUserAutorized($userId, array('action' => 'admin_validate_document_reception', 'admin' => true, 'plugin' => 'request_managment', 'controller' => 'requests'))) {?>
				<a href="#" class="btn btn-default btn-validate-papers-reception">
					<i class = "ti-layout-column4-alt"></i> 
					Scan du code à barre
				</a>
				<?php } ?>
			</div>
			<div class="col-xs-6 col-md-4 no-padding">
			  	<div class="datagrid-search" id = "RequestFilter">
					<div class="input-group">
						<div class="input-group-btn selectlist" data-resize="auto" data-initialize="selectlist">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
								<span class="selected-label">N°dossier</span>
								<span class="caret"></span>
								<span class="sr-only">Toggle Dropdown</span>
					 		</button>
							<ul class="dropdown-menu" role="menu">																	
								<li data-value="Request.number">	
									<a href="#">N°dossier</a>
								</li>										
								<li data-value="Request.event_date">	
									<a href="#">Date de demande</a>
								</li>											
							</ul>
							<input class="hidden hidden-field" name="column" readonly="readonly" aria-hidden="true" type="text" value = "Request.id">
						</div>
						<div class="search input-group">
							<input type="search" class="form-control" placeholder="<?php  echo __d('request_managment', 'Chercher par N°dossier');  ?>"/>
						  	<span class="input-group-btn">
								<button class="btn btn-default" type="button">
							  		<span class="glyphicon glyphicon-search"></span>
							  		<span class="sr-only">
							  		<?php  echo __d('request_managment', 'Chercher');  ?>							 		
							  		</span>
								</button>
						  	</span>
						</div>
					</div>
			  	</div>
			</div>
			<div class = "clear"></div>
	 	</div>
		<table id="request_datagrid" class="display table-bordered"></table>
	</div>
</div>
<div class="modal fade" id="dialog_counselor_completion" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<form action = "<?php echo $this->Html->url(array('admin' => true, 'action' => 'completely_required', 'ext' => 'json')); ?>" id = "request_completely_form">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Complétion du dossier</h4>
				</div>
				<div class="modal-body">
					<div class="form-group required">
						<label for = "completion_subject" >Sujet</label>
						<input id = "completion_subject" type = "text" class="form-control" required = "required">
					</div>

					<div class="form-group required">
						<label for = "completion_subject" >Message</label>
						<textarea id = "completion_message" class="form-control required" rows = "3" required = "required"></textarea>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary btn-o" data-dismiss="modal">
						Annuler
					</button>
					<button type="submit" class="btn btn-primary">
						Envoyer
					</button>
				</div>
			</form>
		</div>
	</div>
</div>

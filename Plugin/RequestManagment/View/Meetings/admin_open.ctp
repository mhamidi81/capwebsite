<?php
$this->viewVars['title_for_layout'] = __d('request_managment', 'Réunion');

$this->Html
	->addCrumb('', '/admin', array('icon' => $this->Theme->getIcon('home')))
	->addCrumb('Réunions', array('action' => 'index'))
	->addCrumb(__d('request_managment', 'Réunion du %s', date('d-m-Y' ,strtotime($meeting['Meeting']['event_date']))), '#');
?>
<?php echo $this->Html->script(array('../plugins/Chart.js/Chart.min.js'), array('block' => 'scriptBottom'));?>
<script>
var Meeting = <?php echo json_encode($meeting['Meeting']); ?>;
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
		        	url : '<?php echo $this->Html->url(array('controller' => 'requests' ,'action' => 'get_datagrid_data_for_meeting', 'ext' => 'json')); ?>',
		        	type: "POST",
		 			data : function ( d ) {
					  	var value = $('#RequestFilter').find('input[type = search]').val();
					  	var column = $('#RequestFilter').find('.hidden').val();
					  	d['filter'] = {};
					  	if(column && value)
					  	{
					  		
					  		d['filter'][column] = value;
					  	}	
					  	
					  	if(PendingRequestCrud.schujuled_for_meeting.length == 0)
					  	{
					  		PendingRequestCrud.schujuled_for_meeting = [-1];
					  	}

					  	d['filter']['Request.id'] = PendingRequestCrud.schujuled_for_meeting;
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
						"width" : "140px",
						render: function (e, type, data, meta)
						{	
							var actions = [{
								'value': 'Ouvrir',
								'attr': {
									'icon': 'folder-open-o',
									'class': "btn btn-xs btn-primary btn-open",
									'action-id': data.Request.id
								}
							}];
							var deleteBtn = {
							'value': 'Supprimer',
							'attr': {
								'icon': 'remove',
								'class': "btn btn-xs btn-danger btn-delete",
								'action-id': data.Request.id
								}
							}

							if(data.Status.alias !== "commission_meeting")
							{
								deleteBtn.attr['disabled'] = true;
							}

							actions.push(deleteBtn);

							return createButtonGroup(actions);
						}
					}
				],
		    });			
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
	            row.child( requestCrud.open(row.data()) ).show();
	            //row.child.addClass('counselor_profile_row');
	            tr.addClass('shown');
	        }
	    },
		open : function(d){
			$('#request_datagrid').trigger('dialogLoader', 'show');
			App.startPageLoading();
	 		$.get( "<?php echo $this->Html->url(array('controller' => 'requests' ,'action' => 'get_requester_data')); ?>/"+d.Request.id+'/'+<?php echo $meeting_id; ?>, function( data ) {
	 				App.stopPageLoading();
			 	  $('#profile'+d.Request.id).html(data);
			});

			return '<div id = "profile'+d.Request.id+'" class = "panel panel-white profile"></div>';
		},
		deleteRow : function(id, tr){

			App.startPageLoading();
			$.ajax(
			{
				url : '<?php echo Router::url(array('action' => 'delete_meeting_request', 'ext' => 'json')); ?>',
				type: "POST",
				data : {id : id, meeting_id : <?php echo $meeting_id; ?>},
				success:function(response, textStatus, jqXHR) 
				{
					App.stopPageLoading();
					if(response.result == 'success')
					{
						toastr.success(response.message);
						PendingRequestCrud.schujuled_for_meeting.splice(PendingRequestCrud.schujuled_for_meeting.indexOf(id), 1);
						requestCrud.datagrid.ajax.reload();
					}
					else
					{
						toastr.error(response.message); 
					}
					$('#request_datagrid').trigger('loader', 'hide');
				},
				error: function(jqXHR, textStatus, errorThrown) 
				{
					$('#request_datagrid').trigger('loader', 'hide');
					toastr.error("<?php echo __d('request_managment', 'An error occured please try again!'); ?>");
				}
			});
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
	var PendingRequestCrud = {
		schujuled_for_meeting : <?php echo json_encode($request_ids); ?>,
		datagrid : false,
		rows_selected : [],
		getData : function(){
			$('#MeetingRequestsEditDialog').trigger('dialogLoader', 'show');
			$.ajax(
			{
				url : '<?php echo $this->Html->url(array('controller' => 'requests', 'action' => 'admin_get_pending_request_datagrid_data', 'ext' => 'json')); ?>',
				type: "POST",
				data : {'length' : 100},
				success:function(response, textStatus, jqXHR) 
				{	
					PendingRequestCrud.init(response);
					$('#MeetingRequestsEditDialog').trigger('dialogLoader', 'hide');
				}
			});
		},
		init : function(data){
			
			if(PendingRequestCrud.datagrid)
			{
				PendingRequestCrud.datagrid.destroy();
				PendingRequestCrud.rows_selected = [];
			}
			
		    PendingRequestCrud.datagrid = $('#pending_request_datagrid').DataTable({
		        "processing": true,
		        "serverSide": false,
		        "language": {
					"lengthMenu": "",
					"processing": '<div  class = "loading-message loading-message-boxed"><?php echo $this->Html->image("loading-spinner-grey.gif"); ?><span>&nbsp;&nbsp;Operation en cours...</span></div>',
					"sInfo":'',
					"sInfoEmpty": "",
					"zeroRecords" : 'aucune demande trouvée' 
				},
				"data" : data.data,
				"sort": true,
				"filter": false,
				"columns": [
					{
						title:  '<input name="select_all" value="1" type="checkbox">',
						data: null,
						sortable: false
					},				
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
						title: '<?php echo __d('request_managment', 'Date de demande'); ?>',
						data: 'Request.event_date',
						sortable: true
					},
					{
						title:  '<?php echo __d('request_managment', 'Demandeur'); ?>',
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
							return (data.Request.requester_type == 'natural')? 'Moral' : 'Physique';
						}
					},{
					'targets': [0],
					'className': 'text-center',
					'render': function (data, type, full, meta){
						return '<input type="checkbox">';
					}
					},{
					"targets": [4],
					render: function (e, type, data, meta)
					{	

						return (data.Request.requester_type == 'natural')? data.Counselor.first_name+' '+data.Counselor.last_name : data.Company.name;
					}
				}],
				'order': [1, 'asc'],
				'rowCallback': function(row, data, dataIndex){
					// Get row ID
					var rowId = data[0];

					// If row ID is in the list of selected row IDs
					if($.inArray(rowId, requestCrud.rows_selected) !== -1){
						$(row).find('input[type="checkbox"]').prop('checked', true);
						$(row).addClass('selected');
					}
				}
		    });
			// Handle table draw event
		   PendingRequestCrud.datagrid.on('draw', function(){
		      // Update state of "Select all" control
		      PendingRequestCrud.updateDataTableSelectAllCtrl();
		   });
		},
		updateDataTableSelectAllCtrl: function(){

			var $table             = PendingRequestCrud.datagrid.table().node();
			var $chkbox_all        = $('tbody input[type="checkbox"]', $table);
			var $chkbox_checked    = $('tbody input[type="checkbox"]:checked', $table);
			var chkbox_select_all  = $('thead input[name="select_all"]', $table).get(0);

			// If none of the checkboxes are checked
			if($chkbox_checked.length === 0){
				chkbox_select_all.checked = false;
				
				if('indeterminate' in chkbox_select_all){
					chkbox_select_all.indeterminate = false;
				}

			// If all of the checkboxes are checked
			} else if ($chkbox_checked.length === $chkbox_all.length){
			chkbox_select_all.checked = true;
				
				if('indeterminate' in chkbox_select_all){
					chkbox_select_all.indeterminate = false;
				}
			// If some of the checkboxes are checked
			} else 
			{
				chkbox_select_all.checked = true;
				if('indeterminate' in chkbox_select_all){
					chkbox_select_all.indeterminate = true;
				}
			}
		}
	};
	var MembersCrud = {
		schujuled_for_meeting : <?php echo json_encode($members_ids); ?>,
		datagrid : false,
		rows_selected : [],
		getData : function(){
			$('#MeetingMembersEditDialog').trigger('dialogLoader', 'show');
			$.ajax(
			{
				url : '<?php echo $this->Html->url(array('plugin' => 'user_managment' ,'controller' => 'users', 'action' => 'get_datagrid_data', 'ext' => 'json')); ?>',
				type: "POST",
				data : {'filter' : {'Role.alias' : 'commission_member'}, 'length' : 100},
				success:function(response, textStatus, jqXHR) 
				{
					MembersCrud.init(response);
					MembersCrud.updateDataTableSelectAllCtrl();
					$('#MeetingMembersEditDialog').trigger('dialogLoader', 'hide');

				}
			});
		},
		init : function(data){
			
			if(MembersCrud.datagrid)
			{
				MembersCrud.datagrid.destroy();
			}

			MembersCrud.rows_selected = MembersCrud.schujuled_for_meeting;	

		    MembersCrud.datagrid = $('#commission_members_datagrid').DataTable({
		        "processing": true,
		        "serverSide": false,
		        "language": {
					"lengthMenu": "",
					"processing": '<div  class = "loading-message loading-message-boxed"><?php echo $this->Html->image("loading-spinner-grey.gif"); ?><span>&nbsp;&nbsp;Operation en cours...</span></div>',
					"sInfo":'',
					"sInfoEmpty": "",
					"zeroRecords" : "aucune membre de commission n'a été trouvé"
				},
				"data" : data.data,
				"sort": true,
				"filter": false,
				"columns": [
					{
						title:  '<input name="select_all" value="1" type="checkbox">',
						data: null,
						sortable: false
					},				
					{
						title: '<?php echo __d('request_managment', 'Prénom'); ?>',
						data: 'User.first_name',
						sortable: true
					},
					{
						title: '<?php echo __d('request_managment', 'Nom'); ?>',
						data: 'User.last_name',
						sortable: true,
					}
				],
				"columnDefs": [{
					'targets': [0],
					'className': 'text-center',
					'render': function (data, type, full, meta){
						return '<input type="checkbox">';
					}
				}],
				'order': [1, 'asc'],
				'rowCallback': function(row, data, dataIndex){
					// Get row ID
					var rowId = data.User.id;
					
					// If row ID is in the list of selected row IDs
					if($.inArray(rowId, MembersCrud.rows_selected) !== -1){
						$(row).find('input[type="checkbox"]').prop('checked', true);
						$(row).addClass('selected');
					}
				}
		    });

			// Handle table draw event
			MembersCrud.datagrid.on('draw', function(){
				// Update state of "Select all" control
				MembersCrud.updateDataTableSelectAllCtrl();
			});	
		},
		updateDataTableSelectAllCtrl: function(){

			var $table             = MembersCrud.datagrid.table().node();
			var $chkbox_all        = $('tbody input[type="checkbox"]', $table);
			var $chkbox_checked    = $('tbody input[type="checkbox"]:checked', $table);
			var chkbox_select_all  = $('thead input[name="select_all"]', $table).get(0);

			// If none of the checkboxes are checked
			if($chkbox_checked.length === 0){
				chkbox_select_all.checked = false;
				
				if('indeterminate' in chkbox_select_all){
					chkbox_select_all.indeterminate = false;
				}

			// If all of the checkboxes are checked
			} else if ($chkbox_checked.length === $chkbox_all.length){
			chkbox_select_all.checked = true;
				
				if('indeterminate' in chkbox_select_all){
					chkbox_select_all.indeterminate = false;
				}
			// If some of the checkboxes are checked
			} else 
			{
				chkbox_select_all.checked = true;
				if('indeterminate' in chkbox_select_all){
					chkbox_select_all.indeterminate = true;
				}
			}
		}
	};	

	jQuery(document).ready(function() {
		requestCrud.init();

	 	$('#request_datagrid tbody').on('click', '.btn-open', function(){
	 		requestCrud.showDetail(this)
	 	});

		$(document).on('submit', '#save_meeting_request_judgment_form', function(e)
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
						requestCrud.datagrid.ajax.reload();
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

		$(document).on('click', '#pending_request_datagrid tbody input[type="checkbox"]', function(e){

	      var $row = $(this).closest('tr');

	      // Get row data
	      var data = PendingRequestCrud.datagrid.row($row).data();
	      // Get row ID
	      var rowId = data.Request.id;

	      // Determine whether row ID is in the list of selected row IDs 
	      var index = $.inArray(rowId, PendingRequestCrud.rows_selected);

	      // If checkbox is checked and row ID is not in list of selected row IDs
	      if(this.checked && index === -1){
	         PendingRequestCrud.rows_selected.push(rowId);

	      // Otherwise, if checkbox is not checked and row ID is in list of selected row IDs
	      } else if (!this.checked && index !== -1){
	         PendingRequestCrud.rows_selected.splice(index, 1);
	      }

	      if(this.checked){
	         $row.addClass('selected');
	      } else {
	         $row.removeClass('selected');
	      }

	      // Update state of "Select all" control
	      PendingRequestCrud.updateDataTableSelectAllCtrl();

	      // Prevent click event from propagating to parent
	      e.stopPropagation();
		});

		$(document).on('click', '#commission_members_datagrid tbody input[type="checkbox"]', function(e){
	      var $row = $(this).closest('tr');

	      // Get row data
	      var data = MembersCrud.datagrid.row($row).data();

	      // Get row ID
	      var rowId = data.User.id;

	      // Determine whether row ID is in the list of selected row IDs 
	      var index = $.inArray(rowId, MembersCrud.rows_selected);

	      // If checkbox is checked and row ID is not in list of selected row IDs
	      if(this.checked && index === -1){
	         MembersCrud.rows_selected.push(rowId);

	      // Otherwise, if checkbox is not checked and row ID is in list of selected row IDs
	      } else if (!this.checked && index !== -1){
	         MembersCrud.rows_selected.splice(index, 1);
	      }

	      if(this.checked){
	         $row.addClass('selected');
	      } else {
	         $row.removeClass('selected');
	      }

	      // Update state of "Select all" control
	      MembersCrud.updateDataTableSelectAllCtrl();

	      // Prevent click event from propagating to parent
	      e.stopPropagation();
		});

	   // Handle click on "Select all" control
	   $(document).on('click', 'input[name="select_all"]', function(e){
		
			if(this.checked){
				$(this).closest('table').find('input[type="checkbox"]:not(:checked)').trigger('click');
			} else {
				$(this).closest('table').find('input[type="checkbox"]:checked').trigger('click');
			}

	    	// Prevent click event from propagating to parent
			e.stopPropagation();
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

		//datagrid ajax add form 
		$('#edit_meeting_form').submit(function(e)
		{
			var mysql_date = false; 
			var postData = $(this).serializeArray();

			$(postData).each(function(key, datum){
				
				if(datum.name == "data[Meeting][event_date]")
				{
					mysql_date = moment(postData[key]['value'], 'DD-MM-YYYY hh:mm:ss').format('YYYY-MM-DD hh:mm:ss');
					postData[key]['value'] = mysql_date;
					
				}
			});

			var formURL = $('#edit_meeting_form').attr("action");
			$('#MeetingEditDialog').trigger('dialogLoader', 'show');
			
			$.ajax(
			{
				url : formURL,
				type: "POST",
				data : postData,
				success:function(response, textStatus, jqXHR) 
				{
					if(response.result == 'success')
					{
						Meeting.event_date = mysql_date;
						var fr_date = moment(Meeting.event_date, 'YYYY-MM-DD hh:mm:ss').format('DD-MM-YYYY hh:mm:ss');
						$('#breadcrumb-container').find('a:last').html('Réunion du '+fr_date);
						toastr.success(response.message);
					}
					else
					{
						toastr.error(response.message); 
					}
					$('#MeetingEditDialog').trigger('dialogLoader', 'hide');
					$('#MeetingEditDialog').modal('hide'); 
				},
				error: function(jqXHR, textStatus, errorThrown) 
				{
					$('#MeetingEditDialog').trigger('dialogLoader', 'hide');
					toastr.error("<?php echo __d('request_managment', 'An error occured please try again!'); ?>");
				}
			});

			e.preventDefault();
			return false;
		});
		//datagrid ajax add form 
		$('#edit_meeting_members_form').submit(function(e)
		{
		    if(MembersCrud.rows_selected.length == 0)
       		{
       			$('#MeetingMembersEditDialog').find('.alert').show();
       			e.preventDefault();
       			return false;
       		}
       		else
       		{
       			$('#MeetingMembersEditDialog').find('.alert').hide();
       		}

			var postData = $(this).serializeArray();

			$(MembersCrud.rows_selected).each(function(key, id){
				postData.push({name : "data[MeetingsUser][][user_id]", value : id});
			});

			var formURL = $('#edit_meeting_members_form').attr("action");
			$('#MeetingMembersEditDialog').trigger('dialogLoader', 'show');
			
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
						MembersCrud.schujuled_for_meeting = MembersCrud.rows_selected;
					}
					else
					{
						toastr.error(response.message); 
					}
					$('#MeetingMembersEditDialog').trigger('dialogLoader', 'hide');
					$('#MeetingMembersEditDialog').modal('hide'); 
				},
				error: function(jqXHR, textStatus, errorThrown) 
				{
					$('#MeetingMembersEditDialog').trigger('dialogLoader', 'hide');
					toastr.error("<?php echo __d('request_managment', 'An error occured please try again!'); ?>");
				}
			});

			e.preventDefault();
			return false;
		});	
		//datagrid ajax add form 
		$('#edit_meeting_requests_form').submit(function(e)
		{
			var postData = $(this).serializeArray();

		    if(PendingRequestCrud.rows_selected.length == 0)
       		{
       			$('#MeetingRequestsEditDialog').find('.alert').show();
       			e.preventDefault();
       			return false;
       		}
       		else
       		{
       			$('#MeetingRequestsEditDialog').find('.alert').hide();
       		}

			$(PendingRequestCrud.rows_selected).each(function(key, id){
				postData.push({name : "data[MeetingsRequest][][request_id]", value : id});
			});

			var formURL = $('#edit_meeting_requests_form').attr("action");
			$('#MeetingRequestsEditDialog').trigger('dialogLoader', 'show');
			
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
						PendingRequestCrud.schujuled_for_meeting = PendingRequestCrud.schujuled_for_meeting.concat(PendingRequestCrud.rows_selected);
						requestCrud.datagrid.ajax.reload();
						$('#MeetingRequestsEditDialog').trigger('dialogLoader', 'hide');
						$('#MeetingRequestsEditDialog').modal('hide');
					}
					else
					{
						toastr.error(response.message); 
					}
					$('#MeetingRequestsEditDialog').trigger('dialogLoader', 'hide');
					$('#MeetingRequestsEditDialog').modal('hide'); 
				},
				error: function(jqXHR, textStatus, errorThrown) 
				{
					$('#MeetingRequestsEditDialog').trigger('dialogLoader', 'hide');
					toastr.error("<?php echo __d('request_managment', 'An error occured please try again!'); ?>");
				}
			});

			e.preventDefault();
			return false;
		});

		$('#MeetingEditDialog').on('shown.bs.modal', function (e) {
		  	$('#EditMeetingName').val("<?php echo $subject; ?>");
		  	var fr_date = moment(Meeting.event_date, 'YYYY-MM-DD hh:mm:ss').format('DD-MM-YYYY hh:mm:ss');
		  	 $('#EditMeetingEventDate').data("DateTimePicker").useCurrent(false);
		  	 //$('#EditMeetingEventDate').data("DateTimePicker").setDate(fr_date);
		  	$('#EditMeetingEventDate').val(fr_date);
		});

		$('#MeetingMembersEditDialog').on('shown.bs.modal', function (e) {
			MembersCrud.getData();
		});	

		$('#MeetingRequestsEditDialog').on('shown.bs.modal', function (e) {
			PendingRequestCrud.getData();
		});	

		$('.modal').on('dialogLoader', function(e, action){

			if(action == 'hide')
			{
				$(this).find('.loader').hide();
			}
			else
			{
				$(this).find('.loader').show();
			}
		});	

		//datagrid ajax form 
		$('.requests').on('click', '.btn-delete', function(e)
		{
			var id = $(this).attr("action-id");
			var tr = $(this).closest("tr");
			
			if(confirm("<?php echo __d('request_managment', 'Vous êtes sur de vouloir retirer ce dossier de la réunion'); ?>")){
				requestCrud.deleteRow(id, tr);
			}
			
			e.preventDefault();

			return false;
		});	
	});

<?php $this->Html->scriptEnd(); ?></script>

<div class="requests index">
	<div class="datagrid" id="request_datagrid_container">
		<div class="datagrid-toolbar">
			<div class="col-xs-12 col-sm-6 col-md-8 no-padding">
				<!-- Button trigger modal -->
				<?php if(date('Y-m-d', strtotime($meeting['Meeting']['event_date'])) >= date('Y-m-d')){ ?>
				
				<li class="btn-group">
				<button data-close-others="true" data-delay="1000" data-hover="dropdown" data-toggle="dropdown" class="btn btn-xs blue dropdown-toggle '+disabled+'" type="button" >
					<span>Actions</span><i class="fa fa-angle-down"></i></button>
					<ul role="menu" class="dropdown-menu" >
						<li>
							<a href="#" class="btn-state" data-toggle = 'modal' data-target = '#MeetingEditDialog'>Editer la date de la réunion'</a>
						</li>
						<li>
							<a href="#" class="btn-state" data-toggle = 'modal' data-target = '#MeetingMembersEditDialog'>
								Editer les Membres invités'</a>
						</li>
						<li>
							<a href="#" class="btn-state" data-toggle = 'modal' data-target = '#MeetingRequestsEditDialog' >Editer les Dossiers à traiter
							</a>
						</li>
						</ul>
					</li>
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
							</ul>
							<input class="hidden hidden-field" name="column" readonly="readonly" aria-hidden="true" type="text" value = "Request.number">
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
<div class="modal fade" id="MeetingEditDialog" tabindex="-1" role="dialog" aria-hidden="true" aria-labelledby="MeetingEdition" backdrop = "static">
	
		<?php  
			echo $this->Form->create('Meeting',
				array('url' => array('controller' => 'meetings', 'action' => 'edit', 'ext' => 'json'), 
				'id' => 'edit_meeting_form', 'file' => true));
			echo $this->Form->hidden('id', array('value' => $meeting_id));
		?> 
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">&times;</span>
					<span class="sr-only">
						<?php  echo __d('user_managment', 'Close');  ?>					</span>
				</button>

				<h4 class="modal-title" style = "display:inline-block">
					<?php  echo __d('user_managment', "Edition d'une réunion");  ?>				
				</h4>
	  		</div>
			<div class="modal-body">
			<?php
				$this->Form->inputDefaults(array('label' => false, 'class' => 'form-control'));
				echo $this->Form->input('event_date', array(
					'label' => __d('request_managment', 'Date de réunion'),
					'id' => 'EditMeetingEventDate',
					'type' => 'text',
					'class' => 'datetimepicker',
					'minDate' => 0,
					'required' => true,
					'value' => $meeting['Meeting']['event_date']
				));
				echo $this->Form->input('name', array(
					'label' => __d('request_managment', 'Sujet de réunion'),
					'id' => 'EditMeetingName',
					'type' => 'text',
					'required' => true,
					'value' => $subject
				));
				echo $this->Form->input('message', array(
					'label' => __d('request_managment', 'Description'),
					'id' => 'EditMeetingDescription',
					'value' => $body,
					'required' => true,
					'type' => 'textarea'
				));
			?>
			</div>
	  		<div class="loader"  data-initialize="loader">
	  			<?php echo $this->Html->image("loading-spinner-grey.gif"); ?><span>&nbsp;&nbsp;Operation en cours...</span>
	  		</div>
			<div class="modal-footer">
				<?php 

				echo $this->Html->link(__d('user_managment', 'Annuler'), '#', array('class' => 'btn btn-danger', 'data-dismiss' => 'modal')); 
 
				?>				<?php 

				echo $this->Form->button(__d('user_managment', 'Sauvegarder'), array('class' => 'btn btn-primary'));

				?>			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
	<?php echo $this->Form->end(); ?>
</div><!-- /.modal -->

<div class="modal fade" id="MeetingMembersEditDialog" tabindex="-1" role="dialog" aria-hidden="true" aria-labelledby="MeetingEdition" backdrop = "static">
	
		<?php  echo $this->Form->create('Meeting',
			array('url' => array('controller' => 'meetings', 'action' => 'update_meeting_members', 'ext' => 'json'), 

			'id' => 'edit_meeting_members_form')
		);
		echo $this->Form->hidden('id', array('value' => $meeting_id));
		?> 
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">&times;</span>
					<span class="sr-only">
						<?php  echo __d('user_managment', 'Close');  ?>					</span>
				</button>

				<h4 class="modal-title" style = "display:inline-block">
					<?php  echo __d('user_managment', "Edition des membre de la commission");  ?>				
				</h4>
	  		</div>
			<div class="modal-body">
				<div class="alert alert-danger">
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
					Selectionner svp les membres de la commission
				</div>
				<table id="commission_members_datagrid" class="display table-bordered"></table>
			</div>
	  		<div class="loader"  data-initialize="loader">
	  			<?php echo $this->Html->image("loading-spinner-grey.gif"); ?><span>&nbsp;&nbsp;Operation en cours...</span>
	  		</div>
			<div class="modal-footer">
				<?php 

				echo $this->Html->link(__d('user_managment', 'Annuler'), '#', array('class' => 'btn btn-danger', 'data-dismiss' => 'modal')); 
 
				?>				<?php 

				echo $this->Form->button(__d('user_managment', 'Sauvegarder'), array('class' => 'btn btn-primary'));

				?>			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
	<?php echo $this->Form->end(); ?>
</div><!-- /.modal -->

<div class="modal fade" id="MeetingRequestsEditDialog" tabindex="-1" role="dialog" aria-hidden="true" aria-labelledby="MeetingEdition" backdrop = "static">
	
		<?php  
		echo $this->Form->create('Meeting',
			array('url' => array('controller' => 'meetings', 'action' => 'update_meeting_requests', 'ext' => 'json'), 

			'id' => 'edit_meeting_requests_form')

		);
		echo $this->Form->hidden('id', array('value' => $meeting_id));
		?> 
		
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">&times;</span>
					<span class="sr-only">
						<?php  echo __d('user_managment', 'Close');  ?>					</span>
				</button>

				<h4 class="modal-title" style = "display:inline-block">
					<?php  echo __d('user_managment', "Demandes à traitées");  ?>				
				</h4>
	  		</div>
			<div class="modal-body">
				<div class="alert alert-danger">
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
					Séléctionner svp les demandes d'agrément à traiter!
					
				</div>
				<table id="pending_request_datagrid" class="display table-bordered"></table>
			</div>
	  		<div class="loader"  data-initialize="loader">
	  			<?php echo $this->Html->image("loading-spinner-grey.gif"); ?><span>&nbsp;&nbsp;Operation en cours...</span>
	  		</div>
			<div class="modal-footer">
				<?php 

				echo $this->Html->link(__d('user_managment', 'Annuler'), '#', array('class' => 'btn btn-danger', 'data-dismiss' => 'modal')); 
 
				?>				<?php 

				echo $this->Form->button(__d('user_managment', 'Sauvegarder'), array('class' => 'btn btn-primary'));

				?>			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
	<?php echo $this->Form->end(); ?>
</div><!-- /.modal -->
<?php
echo $this->Html->script(array(
	'../plugins/jquery-smart-wizard/jquery.smartWizard.js'
), array('block' => 'scriptBottom'));
?>
<?php
$this->viewVars['title_for_layout'] = __d('request_managment', 'Meetings');

$this->Html
	->addCrumb('', '/admin', array('icon' => 'home'))
	->addCrumb(__d('request_managment', 'Réunion'), array('action' => 'index'));
?>

<script>

<?php  $this->Html->scriptStart(array('inline' => false, 'block' => 'scriptBottom')); ?>

var FormWizard = {
    wizardContent : $('#wizard'),
    wizardForm : $('#add_meeting_form'),
    numberOfSteps : $('.swMain > ul > li').length,
    init : function () {
        // function to initiate Wizard Form
        FormWizard.wizardContent.smartWizard({
            selected: 0,
            keyNavigation: false,
            onLeaveStep: FormWizard.leaveAStepCallback,
            onShowStep: FormWizard.onShowStep,
        });
        var numberOfSteps = 0;
    },
    onShowStep : function (obj, context) {
    	if(context.toStep == FormWizard.numberOfSteps){
    		$('.anchor').children("li:nth-child(" + context.toStep + ")").children("a").removeClass('wait');
            //displayConfirm();
    	}
        $(".next-step").unbind("click").click(function (e) {
            e.preventDefault();
            FormWizard.wizardContent.smartWizard("goForward");
        });
        $(".back-step").unbind("click").click(function (e) {
            e.preventDefault();
            FormWizard.wizardContent.smartWizard("goBackward");
        });
        $(".go-first").unbind("click").click(function (e) {
            e.preventDefault();
            FormWizard.wizardContent.smartWizard("goToStep", 1);
        });
        $(".finish-step").unbind("click").click(function (e) {
            e.preventDefault();
            FormWizard.onFinish(obj, context);
        });
    },
    leaveAStepCallback : function (obj, context) {
        return FormWizard.validateSteps(context.fromStep, context.toStep);

        // return false to stay on step and true to continue navigation
    },
    onFinish : function (obj, context) {
        if (FormWizard.validateSteps(3, 4)) {
            $('.anchor').children("li").last().children("a").removeClass('wait').removeClass('selected').addClass('done').children('.stepNumber').addClass('animated tada');
            $('#add_meeting_form').submit();
        }
    },
    validateSteps : function (stepnumber, nextstep) {
        var isStepValid = false;
        
       
        if (nextstep > stepnumber) {
        	
           if(stepnumber == 1)
           {
	            if (FormWizard.wizardForm[0].checkValidity()) { // validate the form

	                for (var i=stepnumber; i<=nextstep; i++){
	        		$('.anchor').children("li:nth-child(" + i + ")").not("li:nth-child(" + nextstep + ")").children("a").removeClass('wait').addClass('done').children('.stepNumber').addClass('animated tada');
	        		}
	                //focus the invalid fields
	                isStepValid = true;
	                return true;
	            }
	            else
	            {
	            	$('#add_meeting_submit_btn').trigger('click');
	            }           	
           }
           
           if(stepnumber == 2)
           {
           		if(requestCrud.rows_selected.length == 0)
           		{
           			$('#step-2').find('.alert').show();
           			return false;
           		}
           		else
           		{
           			$('#step-2').find('.alert').hide();
           			 isStepValid = true;
	                return true;
           		}
           }

           if(stepnumber == 3)
           {
           		if(membersCrud.rows_selected.length == 0)
           		{
           			$('#step-3').find('.alert').show();
           			return false;
           		}
           		else
           		{
           			$('#step-3').find('.alert').hide();
           			 isStepValid = true;
	                return true;
           		}
           }
        } else if (nextstep < stepnumber) {
        	for (i=nextstep; i<=stepnumber; i++){
        		$('.anchor').children("li:nth-child(" + i + ")").children("a").addClass('wait').children('.stepNumber').removeClass('animated tada');
        	}
            
            return true;
        } 
    },
   	validateAllSteps : function () {
        var isStepValid = true;
        // all step validation logic
        return isStepValid;
    }
}

var membersCrud = {
	datagrid : false,
	rows_selected : [],
	getData : function(){
		$.ajax(
		{
			url : '<?php echo $this->Html->url(array('plugin' => 'user_managment' ,'controller' => 'users', 'action' => 'get_datagrid_data', 'ext' => 'json')); ?>',
			type: "POST",
			data : {'filter' : {'Role.alias' : 'commission_member'}, 'length' : 100},
			success:function(response, textStatus, jqXHR) 
			{	

				$.each(response.data, function(key, datum){
					membersCrud.rows_selected.push(datum.User.id);
				});

				membersCrud.init(response);
				membersCrud.updateDataTableSelectAllCtrl();
			}
		});
	},
	init : function(data){
		
		if(membersCrud.datagrid)
		{
			membersCrud.datagrid.destroy();
			membersCrud.rows_selected = [];
		}
			

	    membersCrud.datagrid = $('#commission_members_datagrid').DataTable({
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
				if($.inArray(rowId, membersCrud.rows_selected) !== -1){
					$(row).find('input[type="checkbox"]').prop('checked', true);
					$(row).addClass('selected');
				}
			}
	    });

		// Handle table draw event
		membersCrud.datagrid.on('draw', function(){
			// Update state of "Select all" control
			membersCrud.updateDataTableSelectAllCtrl();
		});	
	},
	updateDataTableSelectAllCtrl: function(){

		var $table             = membersCrud.datagrid.table().node();
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

var requestCrud = {
	datagrid : false,
	rows_selected : [],
	getData : function(){
		$.ajax(
		{
			url : '<?php echo $this->Html->url(array('controller' => 'requests', 'action' => 'admin_get_pending_request_datagrid_data', 'ext' => 'json')); ?>',
			type: "POST",
			data : {'length' : 100},
			success:function(response, textStatus, jqXHR) 
			{	
				requestCrud.init(response);
			}
		});
	},
	init : function(data){
		
		if(requestCrud.datagrid)
		{
			requestCrud.datagrid.destroy();
			requestCrud.rows_selected = [];
		}
			
	    requestCrud.datagrid = $('#request_datagrid').DataTable({
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
	   requestCrud.datagrid.on('draw', function(){
	      // Update state of "Select all" control
	      requestCrud.updateDataTableSelectAllCtrl();
	   });
	},
	updateDataTableSelectAllCtrl: function(){

		var $table             = requestCrud.datagrid.table().node();
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

var meetingCrud = {
		datagrid : {},
		init : function(){
		     meetingCrud.datagrid = $('#meeting_datagrid').DataTable({
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
					  	var value = $('#MeetingFilter').find('input[type = search]').val();
					  	var column = $('#MeetingFilter').find('.hidden').val();
					  	
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
						title: '<?php echo __d('request_managment', 'Numéro'); ?>',
						data: 'Meeting.id',
						sortable: true,
					},
					{
						title: '<?php echo __d('request_managment', 'Date de réunion'); ?>',
						data: 'Meeting.event_date',
						sortable: true
					},
					{
					title:  '<?php echo __d('request_managment', 'Actions'); ?>',
					data: null,
					sortable: false
				}],
				"columnDefs": [
				{
					"targets": [1],
					render: function (e, type, data, meta)
					{	
						if(moment(data.Meeting.event_date).isValid())
						{
							return moment(data.Meeting.event_date).format('DD-MM-YYYY hh:mm:ss');
						}
						else
						{
							return '';
						}
						
					}
				},{
					"targets": [2],
					"width" : "230px",
					render: function (e, type, data, meta)
					{	
						var actions = [{
							'value': 'Ouvrir',
							'attr': {
								'icon': 'folder-open-o',
								'class': "btn btn-xs btn-primary btn-open",
								'action-id': data.Meeting.id
							}
						}];

						/*actions.push({
							'value': 'Modifier',
							'attr': {
								'icon': 'pencil',
								'class': "btn btn-xs btn-primary btn-edit",
								'action-id': data.Meeting.id
							}
						});*/

						actions.push({
							'value': 'Supprimer',
							'attr': {
								'icon': 'remove',
								'class': "btn btn-xs btn-danger btn-delete",
								'action-id': data.Meeting.id
							}
						});

						return createButtonGroup(actions);
					}
				}],
		    });			
		},
		showDetail : function (elm) {
	        var tr = $(elm).closest('tr');
	        var row = meetingCrud.datagrid.row( tr ).data();
	 		location.href = Croogo.basePath+'/admin/request_managment/meetings/open/'+row.Meeting.id;
	    },
		addRow : function(postData){
			var formURL = $('#add_meeting_form').attr("action");
			$('#meeting_datagrid').trigger('dialogLoader', 'show');
			$.ajax(
			{
				url : formURL,
				type: "POST",
				data : postData,
				success:function(response, textStatus, jqXHR) 
				{
					if(response.result == 'success')
					{
						meetingCrud.datagrid.row.add(response.record).draw();
						toastr.success(response.message);
						$('#add_meeting_form').find('input, select').val('');
					}
					else
					{
						toastr.error(response.message); 
					}
					$('#meeting_datagrid').trigger('dialogLoader', 'hide');
					$('#MeetingAddDialog').modal('hide'); 
				},
				error: function(jqXHR, textStatus, errorThrown) 
				{
					$('#meeting_datagrid').trigger('dialogLoader', 'hide');
					toastr.error("<?php echo __d('request_managment', 'An error occured please try again!'); ?>");
				}
			});
			
		},
		deleteRow : function(id, tr){

			$('#meeting_datagrid').trigger('loader', 'show');
			$.ajax(
			{
				url : '<?php echo Router::url(array('action' => 'delete', 'ext' => 'json')); ?>',
				type: "POST",
				data : {id : id},
				success:function(response, textStatus, jqXHR) 
				{
					if(response.result == 'success')
					{
						meetingCrud.datagrid.row(tr).remove().draw( false );
						toastr.success(response.message);
					}
					else
					{
						toastr.error(response.message); 
					}
					$('#meeting_datagrid').trigger('loader', 'hide');
				},
				error: function(jqXHR, textStatus, errorThrown) 
				{
					$('#meeting_datagrid').trigger('loader', 'hide');
					toastr.error("<?php echo __d('request_managment', 'An error occured please try again!'); ?>");
				}
			});
		},
		updateRow : function(data){
			var formURL = $('#edit_meeting_form').attr("action");
			$('#meeting_datagrid').trigger('dialogLoader', 'show')
			$.ajax(
			{
				url : formURL,
				type: "POST",
				data : data,
				success:function(response, textStatus, jqXHR) 
				{
					var tr = $('[action-id = '+response.record.Meeting.id+']').closest('tr'); 
					if(response.result == 'success')
					{
						meetingCrud.datagrid.row(tr).data( response.record ).draw();
						toastr.success(response.message);
					}
					else
					{
						toastr.error(response.message); 
					}
					 $('#meeting_datagrid').trigger('dialogLoader', 'hide'); 
					$('#MeetingEditDialog').modal('hide'); 
				},
				error: function(jqXHR, textStatus, errorThrown) 
				{
	  				$('#meeting_datagrid').trigger('dialogLoader', 'hide');
	  				toastr.error("<?php echo __d('request_managment', 'An error occured please try again!'); ?>");
				}
			});
		}
}

jQuery(document).ready(function() {
	meetingCrud.init();
	FormWizard.init();

	$(document).on('click', '#request_datagrid tbody input[type="checkbox"]', function(e){

      var $row = $(this).closest('tr');

      // Get row data
      var data = requestCrud.datagrid.row($row).data();
      // Get row ID
      var rowId = data.Request.id;

      // Determine whether row ID is in the list of selected row IDs 
      var index = $.inArray(rowId, requestCrud.rows_selected);

      // If checkbox is checked and row ID is not in list of selected row IDs
      if(this.checked && index === -1){
         requestCrud.rows_selected.push(rowId);

      // Otherwise, if checkbox is not checked and row ID is in list of selected row IDs
      } else if (!this.checked && index !== -1){
         requestCrud.rows_selected.splice(index, 1);
      }

      if(this.checked){
         $row.addClass('selected');
      } else {
         $row.removeClass('selected');
      }

      // Update state of "Select all" control
      requestCrud.updateDataTableSelectAllCtrl();

      // Prevent click event from propagating to parent
      e.stopPropagation();
	});

	$(document).on('click', '#commission_members_datagrid tbody input[type="checkbox"]', function(e){
      var $row = $(this).closest('tr');

      // Get row data
      var data = membersCrud.datagrid.row($row).data();

      // Get row ID
      var rowId = data.User.id;

      // Determine whether row ID is in the list of selected row IDs 
      var index = $.inArray(rowId, membersCrud.rows_selected);

      // If checkbox is checked and row ID is not in list of selected row IDs
      if(this.checked && index === -1){
         membersCrud.rows_selected.push(rowId);

      // Otherwise, if checkbox is not checked and row ID is in list of selected row IDs
      } else if (!this.checked && index !== -1){
         membersCrud.rows_selected.splice(index, 1);
      }

      if(this.checked){
         $row.addClass('selected');
      } else {
         $row.removeClass('selected');
      }

      // Update state of "Select all" control
      membersCrud.updateDataTableSelectAllCtrl();

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

 	$('#meeting_datagrid tbody').on('click', '.btn-open', function(){
 		meetingCrud.showDetail(this)
 	});

	//datagrid ajax form 
	$('.meetings').on('click', '.btn-delete', function(e)
	{
		var id = $(this).attr("action-id");
		var tr = $(this).closest("tr");
		
		if(confirm("<?php echo __d('request_managment', 'Are you sure'); ?>")){
			meetingCrud.deleteRow(id, tr);
		}
		
		e.preventDefault();

		return false;
	});

	//datagrid ajax add form 
	$('#add_meeting_form').submit(function(e)
	{
		
		var postData = $(this).serializeArray();

		$(postData).each(function(key, datum){
			
			if(datum.name == "data[Meeting][event_date]")
			{
				postData[key]['value'] = moment(postData[key]['value'], 'DD-MM-YYYY hh:mm:ss').format('YYYY-MM-DD hh:mm:ss');
			}
		});

		$(membersCrud.rows_selected).each(function(key, id){
			postData.push({name : "data[MeetingsUser][][user_id]", value : id});
		});

		$(requestCrud.rows_selected).each(function(key, id){
			postData.push({name : "data[MeetingsRequest][][request_id]", value : id});
		});
		meetingCrud.addRow(postData);
		e.preventDefault();

		return false;
	});

	//datagrid ajax edit form 
	$('#edit_meeting_form').submit(function(e)
	{
		var postData = $(this).serializeArray();
		meetingCrud.updateRow(postData);
		e.preventDefault();

		return false;
	});

	$(document).on('click', '.btn-edit', function(event){
		$('#edit_meeting_form').find('input, select').val('');
		var data = meetingCrud.datagrid.row($(this).closest('tr')).data();

		$('#edit_meeting_form input, #edit_meeting_form select').each(function(){
			
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

		$('#MeetingEditDialog').modal('show');
		
		event.preventDefault();
		return false;
	});

	$('#MeetingFilter').on('click', 'a', function (e) {
	  	var field_name =  $(this).parent().attr('data-value')
	  	var field_label = $(this).text();
	  	$(this).closest('.datagrid-search').find('.hidden').val(field_name);
	  	$(this).closest('.datagrid-search').find('.selected-label').text(' ' +field_label);
	  	$(this).closest('.datagrid-search').find('input[type = search]').val("");
	  	$(this).closest('.datagrid-search').find('input[type = search]').attr('placeholder', 'Chercher par '+field_label);
	});

	$('#MeetingFilter .search').on('click', '.btn', function (e) {
	  	meetingCrud.datagrid.ajax.reload();
	});

	$('#MeetingEditDialog').on('hidden.bs.modal', function (e) {
	  	
	});

	$('#MeetingAddDialog').on('shown.bs.modal', function (e) {
  		requestCrud.getData();
		membersCrud.getData();
	  	$('#AddMeetingName').val("Réunion de traitement des demandes d'agrément");
	  	$('#AddMeetingEventDate').val('');
	});

	$('#MeetingAddDialog').on('hidden.bs.modal', function (e) {
		FormWizard.wizardContent.smartWizard('goToStep', 1);
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

<div class="meetings index">
	<div class="datagrid" id="meeting_datagrid_container">
		<div class="datagrid-toolbar">
			<div class="col-xs-12 col-sm-6 col-md-8 no-padding">
				<!-- Button trigger modal -->
				<?php  echo $this->Croogo->adminAction(

						__d('request_managment', 'Ajouter une réunion'), '#',

						array('button' => 'primary', 'data-toggle' => 'modal', 'data-target' =>'#MeetingAddDialog')

					);?>			
			</div>
			<div class="col-xs-6 col-md-4 no-padding">
			  	<div class="datagrid-search" id = "MeetingFilter">
					<div class="input-group">
						<div class="input-group-btn selectlist" data-resize="auto" data-initialize="selectlist">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
								<span class="selected-label">Numéro</span>
								<span class="caret"></span>
								<span class="sr-only">Toggle Dropdown</span>
					 		</button>
							<ul class="dropdown-menu" role="menu">		
								<li data-value="Meeting.id">	
									<a href="#">Numéro</a>
								</li>																						
								<li data-value="Meeting.event_date">
									<a href="#">Date de réunion</a>
								</li>												
							</ul>
							<input class="hidden hidden-field" name="column" readonly="readonly" aria-hidden="true" type="text" value = "Meeting.id">
						</div>
						<div class="search input-group">
							<input type="search" class="form-control" placeholder="<?php  echo __d('request_managment', 'Chercher par Numéro');  ?>"/>
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
		<table id="meeting_datagrid" class="display table-bordered"></table>
	</div>
</div>
<div class="modal fade" id="MeetingAddDialog" tabindex="-1" role="dialog" aria-hidden="true" aria-labelledby="MeetingEdition" backdrop = "static">
	<div class="modal-dialog modal-lg">
	<button type="button" class="close" data-dismiss="modal" aria-label="Close" style = "position: absolute;right: 8px;z-index: 1;">
		<span aria-hidden="true">×</span>
	</button>
		<div class="modal-content">
		<?php  echo $this->Form->create('Meeting',
					array('url' => array('action' => 'add', 'ext' => 'json'), 

						'id' => 'add_meeting_form' , 'class' => 'smart-wizard' )

					);?>
				<div id="wizard" class="swMain">
					<!-- start: WIZARD SEPS -->
					<ul class="anchor">
						<li>
							<a href="#step-1" class="selected" isdone="1" rel="1">
								<div class="stepNumber">
									1
								</div>
								<span class="stepDesc"><small> Informations générales </small></span>
							</a>
						</li>
						<li>
							<a href="#step-2" class="disabled" isdone="0" rel="2">
								<div class="stepNumber">
									2
								</div>
								<span class="stepDesc"> <small> Demandes d'agrément </small></span>
							</a>
						</li>
						<li>
							<a href="#step-3" class="disabled" isdone="0" rel="3">
								<div class="stepNumber">
									3
								</div>
								<span class="stepDesc"> <small> Membres de commission </small> </span>
							</a>
						</li>
					</ul>
					<div id="step-1" class="content">
						<div class="modal-body">
						<?php
							$this->Form->inputDefaults(array('label' => false, 'class' => 'form-control'));
							echo $this->Form->input('event_date', array(
								'label' => __d('request_managment', 'Date de réunion'),
								'id' => 'AddMeetingEventDate',
								'type' => 'text',
								'class' => 'datetimepicker',
								'minDate' => 0,
								'required' => true
							));
							echo $this->Form->input('name', array(
								'label' => __d('request_managment', 'Sujet de réunion'),
								'id' => 'AddMeetingName',
								'type' => 'text',
								'required' => true,
								'value' => "Réunion de traitement des demandes d'agrément"
							));
							echo $this->Form->input('Message', array(
								'label' => __d('request_managment', 'Description'),
								'id' => 'AddMeetingDescription',
								'value' => "Vous êtes conviés à la réunion de traitement des demandes d' agéement",
								'required' => true,
								'type' => 'textarea'
							));
						?>
						</div>
						<div class="modal-footer">
							<button class="btn btn-primary btn-o next-step btn-wide pull-right">
								Suivant <i class="fa fa-arrow-circle-right"></i>
							</button>
							<div class = "clear"></div>
						</div>
					</div>
					<div id="step-2" class="content">
						<div class="modal-body">
							<div class="alert alert-danger">
								<button type="button" class="close" data-dismiss="alert" aria-label="Close">
									<span aria-hidden="true">×</span>
								</button>
								Séléctionner svp les demandes d'agrément à traiter!
								
							</div>
							<table id="request_datagrid" class="display table-bordered"></table>
						</div>
						<div class="modal-footer">
							<button class="btn btn-primary btn-o next-step btn-wide pull-right">
								Suivant <i class="fa fa-arrow-circle-right"></i>
							</button>
							<button class="btn btn-primary btn-o back-step btn-wide pull-right">
								<i class="fa fa-arrow-circle-left"></i> Précédent
							</button>
							<div class = "clear"></div>
						</div>
					</div>
					<div id="step-3" class="content">
						<div class="modal-body">
							<div class="alert alert-danger">
								<button type="button" class="close" data-dismiss="alert" aria-label="Close">
									<span aria-hidden="true">×</span>
								</button>
								Selectionner svp les membres de la commission à inviter
							</div>
							<table id="commission_members_datagrid" class="display table-bordered"></table>
						</div>
						<div class="modal-footer">
							<button class="btn btn-primary btn-o finish-step btn-wide pull-right">
								Terminer <i class="fa fa-arrow-circle-right"></i>
							</button>
							<button class="btn btn-primary btn-o back-step btn-wide pull-right">
								<i class="fa fa-arrow-circle-left"></i> Précédent
							</button>
							<div class = "clear"></div>
						</div>
					</div>
				</div>
				<input type = "submit" class = "no-display" id = "add_meeting_submit_btn">
			<?php echo $this->Form->end(); ?>
		</div>
	</div>
</div>
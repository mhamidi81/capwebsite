<script>
<?php  $this->Html->scriptStart(array('inline' => false, 'block' => 'scriptBottom')); ?>

$(document).ready(function() {
	$(".fancybox").fancybox();
	var photos_paths = {
		counselor_photo  : "<?php echo Configure::read('counselor_photo_web_path'); ?>",
		counselor_document : "<?php echo Configure::read('counselor_document_web_path'); ?>",
		company_document  :"<?php echo Configure::read('company_document_web_path'); ?>",
		company_logo : "<?php echo Configure::read('company_document_web_path'); ?>"
	};

	function initFileUploader(target){
		$(target).fileupload({
	        dataType: 'json',
	        autoUpload: true,
	        acceptFileTypes: /(\.|\/)(jpe?g|png)$/i,
	        maxFileSize: 5242880,
	        disableImageResize: /Android(?!.*Chrome)|Opera/
	            .test(window.navigator.userAgent),
	        previewMaxWidth: 100,
	        previewMaxHeight: 80,
	        previewCrop: true
	    }).on('fileuploadsubmit', function (e, data) {
	    	var file = data.files[0];
	    	var context = $(e.target).closest('fieldset');
	    	$(context).find('.alert-danger').hide();
		    $(context).find('table').show();
		    $(context).find('table').find('button').attr('disabled', 'disabled');
		    $(context).find('span.name').text(file.name);
		    $(context).find('.fileinput-button').attr('disabled', 'disabled');
			var type = ($(e.target).attr('document-type'));
	        
		    if(file.preview) {
				 $(context).find('span.preview').html(file.preview);
	        }

		    var document_id = ($(e.target).attr('document-id'));
		    data.formData = {type : type, document_id : document_id};

		}).on('fileuploadprogressall', function (e, data) {
			 var context = $(e.target).closest('fieldset');
			 $(context).find('span.size').text((data.loaded/1024).toFixed(0));
	        var progress = parseInt(data.loaded / data.total * 100, 10);
	        $(context).find('.progress-bar').css(
	            'width',
	            progress + '%'
	        );
	    }).on('fileuploaddone', function (e, data) {

	    	var context = $(e.target).closest('fieldset');
	    	var type = ($(e.target).attr('document-type'))

	    	if(data.result.result == "success" )
	    	{

				$(context).find('button').removeAttr('disabled');
				$(context).find('span.preview canvas').wrap( '<a href="'+photos_paths[type]+data.result['filename']+'" class="fancybox"></a>' );
				$(e.target).find(".fancybox").fancybox();
	    	}
	    	else
	    	{
		    	$(context).find('table').hide();
		        $(context).find('.alert-danger').show();
		        $(context).find('.fileinput-button').removeAttr('disabled');
	    	}
	    	
	        /*if (data.result.url) {
                var link = $('<a>')
                    .attr('target', '_blank')
                    .prop('href', file.url);
                $(data.context.children()[index])
                    .wrap(link);
	        }*/

	    }).on('fileuploadfail', function (e, data) {
	    	var context = $(e.target).closest('fieldset');
	    	$(context).find('table').hide();
	        $(context).find('.alert-danger').show();
	        $(context).find('.fileinput-button').removeAttr('disabled');
	    }).prop('disabled', !$.support.fileInput)
	        .parent().addClass($.support.fileInput ? undefined : 'disabled');	
	}

	$(document).on('click', '.add_cv_item', function(e)
	{
		var container = $(this).closest('.cv_item_container');
		var item = $(container).find('.cv_item:last');
		var target = $(item).find('.cv_upload');
		initCvFileUploader(target);
	});

	$(document).on('click', '.delete_uploaded_file_btn', function(e)
	{	
		var target = $(this).closest('fieldset').find('input[type = file]');
		var document_id = $(target).attr('document-id');
		var document_type = $(target).attr('document-type');
		var context = $(target).closest('fieldset');
 		var postData = $(this).serializeArray();
		var formURL = "<?php echo Router::url(array(
			'admin' => false,
			'plugin' => 'profile_managment',
			'controller' => 'counselors',
			'action' => 'delete_file',
			'ext' => 'json'
		)); ?>";

		$('#step3_form').trigger('dialogLoader', 'show');
		
		$.ajax(
		{
			url : formURL,
			type: "POST",
			data : {type : document_type, document_id : document_id},
			success:function(response, textStatus, jqXHR) 
			{
				if(response.result == 'success')
				{
					toastr.success(response.message);
				    $(context).find('table').hide();
				    $(context).find('.fileinput-button').removeAttr('disabled');
				}
				else
				{
					toastr.error(response.message); 

				}

			},
			error: function(jqXHR, textStatus, errorThrown) 
			{
				toastr.error("<?php echo __d('counselor_managment', 'Une erreur est survenue lors de la supression du ficher!'); ?>");
			}
		});	
		e.preventDefault();
		
		return false;		
	});

	$('#step3_form').submit(function(e)
	{
 		var postData = $(this).serializeArray();
		var formURL = $(this).attr("action");

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
				}
				else
				{
					toastr.error(response.message); 
					$('#wizard').smartWizard("goBackward");
				}

			},
			error: function(jqXHR, textStatus, errorThrown) 
			{
				toastr.error("<?php echo __d('message_managment', 'An error occured please try again!'); ?>");
				$('#wizard').smartWizard("goBackward");
			}
		});	
		e.preventDefault();
		
		return false;		
	});

	initFileUploader('.fileupload');
});

<?php $this->Html->scriptEnd(); ?>
</script>
<div class="col-md-12">
	<fieldset>
		<legend>
			Téléverser votre photo
		</legend>

		<div class="alert alert-success">
			<p>
				Formats autorisés : 
				<br>
				JPG, PNG - Taille max : 5 Mo.
			</p>
		</div>
		<div class="row">
			<div class="col-md-12">
				<span class="btn btn-success fileinput-button" <?php if(!empty($this->request->data['Counselor']['image'])) { echo 'disabled = "disabled"';}?>>
					<i class="glyphicon glyphicon-upload"></i> 
					<span>Sélectionner votre photo...</span>
					<input class="fileupload" type="file" document-type = 'counselor_photo' document-id = "-1" name="file" data-url="<?php echo Router::url(array(
							'admin' => false,
							'plugin' => 'profile_managment',
							'controller' => 'counselors',
							'action' => 'upload'
						)); ?>" accept = ".png,.jpeg,.jpg">
				</span>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<br/>
				<div class="alert alert-danger" style = "display:none">
					<strong>Oops! Une erreur est survenue lors du téléversement.</strong>
				</div>
				<?php if(empty($this->request->data['Counselor']['image'])) {?>
				<table role="presentation" class="table table-striped" style = "display:none;">
					<tbody class="files">
						<tr class="template-upload fade in">
							<td style = "width:115px;"><span class="preview"></span></td>
							<td><span class="name"></span></td>
							<td style = "width:200px;"><span class="size"></span> KB
							    <div class="progress">
							        <div class="progress-bar progress-bar-success" ></div>
							    </div>
							</td>
							<td style = "width:115px;" >
							<button class="btn btn-warning delete_uploaded_file_btn">
							<i class="glyphicon glyphicon-ban-circle"></i>
							<span>Supprimer</span>
							</button>
							
							</td>
						</tr>
					</tbody>
				</table>
				<?php }else{ 
				?>
				<table role="presentation" class="table table-striped">
					<tbody class="files">
						<tr class="template-upload fade in">
							<td style = "width:115px;">
								<span class="preview">
									<a href="<?php echo Configure::read('counselor_photo_web_path').$this->request->data['Counselor']['image'];?>" class="fancybox">
										<img src="<?php echo Configure::read('counselor_photo_web_path').$this->request->data['Counselor']['image'];?>" >
									</a>
								</span>
							</td>
							<td>
								<span class="name">
									<?php echo $this->request->data['Counselor']['image'];?>
								</span>
							</td>
							<td style = "width:200px;">
								<span class="size">
									<?php echo filesize(Configure::read('counselor_photo_abs_path').$this->request->data['Counselor']['image'])/1000; ?>
								</span> KB
							    <div class="progress">
							        <div class="progress-bar progress-bar-success" style = "width:100%"></div>
							    </div>
							</td>
							<td style = "width:115px;" >
							<button class="btn btn-warning delete_uploaded_file_btn">
							<i class="glyphicon glyphicon-ban-circle"></i>
							<span>Supprimer</span>
							</button>
							
							</td>
						</tr>
					</tbody>
				</table>
				<?php } ?>
			</div>
		</div>
	</fieldset>	
	<div class="col-md-12">
		<?php 

		foreach ($documents_type_counselor as $key => $document) { 
			$has_document = false;

			if(!empty($this->request->data['CounselorsDocument']))
			foreach ($this->request->data['CounselorsDocument'] as $key => $c_document) { 
				if ($c_document['document_id'] == $document['Document']['id']) { $has_document = true; 
					break;
				}
			}
		?>
		<fieldset>
			<legend>
				<?php echo $document['Document']['title']; ?>
			</legend>

			<div class="alert alert-success">
				<p>
					Formats autorisés : 
					<br>
					JPG, PNG - Taille max : 5 Mo.
				</p>
			</div>
			<div class="row">
				<div class="col-md-12">
					<span class="btn btn-success fileinput-button" <?php if($has_document){ echo 'disabled = "disabled"';}?>>
						<i class="glyphicon glyphicon-upload"></i> 
						<span>Sélectionner le document...</span>
						<input class="fileupload" type="file" name="file" data-url="<?php echo Router::url(array(
								'admin' => false,
								'plugin' => 'profile_managment',
								'controller' => 'counselors',
								'action' => 'upload'
							)); ?>" document-type = "counselor_document" document-id = "<?php echo $document['Document']['id']; ?>" accept = ".png,.jpeg,.jpg">
					</span>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<br/>
					<div class="alert alert-danger" style = "display:none">
						<strong>Ops! Une erreur est survenue lors du téléversement.</strong>
					</div>
					<?php if($has_document){ ?>
						<table role="presentation" class="table table-striped">
							<tbody class="files">
								<tr class="template-upload fade in">
									<td style = "width:115px;">
										<span class="preview">
											<a href="<?php echo Configure::read('counselor_document_web_path').$c_document['filename'];?>" class="fancybox">
												<img src="<?php echo Configure::read('counselor_document_web_path').$c_document['filename'];?>" >
											</a>
										</span>
									</td>
									<td>
										<span class="name">
											<?php echo $c_document['filename'];?>
										</span>
									</td>
									<td style = "width:200px;">
										<span class="size">
										<?php echo filesize(Configure::read('counselor_document_abs_path').$c_document['filename'])/1000; ?>
										</span> KB
									    <div class="progress">
									        <div class="progress-bar progress-bar-success"  style = "width:100%"></div>
									    </div>
									</td>
									<td style = "width:115px;" >
									<button class="btn btn-warning delete_uploaded_file_btn">
									<i class="glyphicon glyphicon-ban-circle"></i>
									<span>Supprimer</span>
									</button>
									
									</td>
								</tr>
							</tbody>
						</table>
					<?php } ?>
					<?php if(!$has_document){ ?>
						<table role="presentation" class="table table-striped" style = "display:none">
							<tbody class="files">
								<tr class="template-upload fade in">
									<td style = "width:115px;"><span class="preview"></span></td>
									<td><span class="name"></span></td>
									<td style = "width:200px;"><span class="size"></span> KB
									    <div class="progress">
									        <div class="progress-bar progress-bar-success"></div>
									    </div>
									</td>
									<td style = "width:115px;" >
									<button class="btn btn-warning delete_uploaded_file_btn">
									<i class="glyphicon glyphicon-ban-circle"></i>
									<span>Supprimer</span>
									</button>
									
									</td>
								</tr>
							</tbody>
						</table>
					<?php }  ?>
				</div>
			</div>
		</fieldset>		
		<?php } ?>
	</div>
	<div class="col-md-12 cv_item_container" id = "company_documents_uploader" <?php if(empty($request) || $request['Request']['requester_type'] == "natural") echo 'style = "display:none;"'; ?> >
		
		<fieldset>
			<legend>
				Logo de la société
			</legend>

			<div class="alert alert-success">
				<p>
					Formats autorisés : 
					<br>
					JPG, PNG - Taille max : 5 Mo.
				</p>
			</div>
			<div class="row">
				<div class="col-md-12">
					<span class="btn btn-success fileinput-button" <?php if(!empty($this->request->data['Company']['logo'])){ echo 'disabled = "disabled"';}?>>
						<i class="glyphicon glyphicon-upload"></i> 
						<span>Sélectionner le logo...</span>
						<input class = "fileupload" type="file" name="file" data-url="<?php echo Router::url(array(
								'admin' => false,
								'plugin' => 'profile_managment',
								'controller' => 'counselors',
								'action' => 'upload'
							)); ?>" document-type = "company_logo" document-id = "-1" accept = ".png,.jpeg,.jpg">
					</span>
				</div>
				<div class="col-md-6">
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<br/>
					<div class="alert alert-danger" style = "display:none">
						<strong>Ops! Une erreur est survenue lors du téléversement.</strong>
					</div>
				<?php if(empty($this->request->data['Company']['logo'])) {?>
					<table role="presentation" class="table table-striped" style = "display:none;">
						<tbody class="files">
							<tr class="template-upload fade in">
								<td style = "width:115px;"><span class="preview"></span></td>
								<td><span class="name"></span></td>
								<td style = "width:200px;"><span class="size"></span> KB
								    <div class="progress">
								        <div class="progress-bar progress-bar-success"></div>
								    </div>
								</td>
								<td style = "width:115px;" >
								<button class="btn btn-warning delete_uploaded_file_btn">
								<i class="glyphicon glyphicon-ban-circle"></i>
								<span>Supprimer</span>
								</button>
								
								</td>
							</tr>
						</tbody>
					</table>
				<?php }else{ ?>
				<table role="presentation" class="table table-striped">
					<tbody class="files">
						<tr class="template-upload fade in">
							<td style = "width:115px;">
								<span class="preview">
									<a href="<?php echo Configure::read('company_document_web_path').$this->request->data['Counselor']['image'];?>" class="fancybox">
										<img src="<?php echo Configure::read('company_document_web_path').$this->request->data['Company']['logo'];?>" >
									</a>
								</span>
							</td>
							<td>
								<span class="name">
									<?php echo $this->request->data['Company']['logo'];?>
								</span>
							</td>
							<td style = "width:200px;">
								<span class="size">
									<?php echo filesize(Configure::read('company_document_abs_path').$this->request->data['Company']['logo'])/1000; ?>
								</span> KB
							    <div class="progress">
							        <div class="progress-bar progress-bar-success" style = "width:100%"></div>
							    </div>
							</td>
							<td style = "width:115px;" >
							<button class="btn btn-warning delete_uploaded_file_btn">
							<i class="glyphicon glyphicon-ban-circle"></i>
							<span>Supprimer</span>
							</button>
							
							</td>
						</tr>
					</tbody>
				</table>
				<?php } ?>					
				</div>
			</div>
		</fieldset>	

		<?php 

		foreach ($documents_type_company as $key => $document) { 
		
			$has_document = false;
			if(isset($this->request->data['CompaniesDocument']))
			foreach ($this->request->data['CompaniesDocument'] as $key => $c_document) {
				if ($c_document['edocument_id'] == $document['Edocument']['id']) { $has_document = true; 
				}
			}
		?>
		<fieldset>
			<legend>
				<?php echo $document['Edocument']['title']; ?>
			</legend>

			<div class="alert alert-success">
				<p>
					Formats autorisés : 
					<br>
					JPG, PNG - Taille max : 5 Mo.
				</p>
			</div>
			<div class="row">
				<div class="col-md-12">
					<span class="btn btn-success fileinput-button" <?php if($has_document){ echo 'disabled = "disabled"';}?>>
						<i class="glyphicon glyphicon-upload"></i> 
						<span>Sélectionner le document...</span>
						<input class = "fileupload" type="file" name="file" data-url="<?php echo Router::url(array(
								'admin' => false,
								'plugin' => 'profile_managment',
								'controller' => 'counselors',
								'action' => 'upload'
							)); ?>" document-type = "company_document" document-id = "<?php echo $document['Edocument']['id']; ?>" accept = ".png,.jpeg,.jpg">
					</span>
				</div>
				<div class="col-md-6">
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<br/>
					<div class="alert alert-danger" style = "display:none">
						<strong>Ops! Une erreur est survenue lors du téléversement.</strong>
					</div>
					<?php if($has_document){ ?>
					<table role="presentation" class="table table-striped">
						<tbody class="files">
							<tr class="template-upload fade in">
								<td style = "width:115px;">
									<span class="preview">
										<a href="<?php echo Configure::read('company_document_web_path').$c_document['filename'];?>" class="fancybox">
											<img src="<?php echo Configure::read('company_document_web_path').$c_document['filename'];?>" >
										</a>
									</span>
								</td>
								<td>
									<span class="name">
										<?php echo $c_document['filename'];?>
									</span>
								</td>
								<td style = "width:200px;">
									<span class="size">
									<?php echo filesize(Configure::read('company_document_abs_path').$c_document['filename'])/1000; ?>
									</span> KB
								    <div class="progress">
								        <div class="progress-bar progress-bar-success"  style = "width:100%"></div>
								    </div>
								</td>
								<td style = "width:115px;" >
									<button class="btn btn-warning delete_uploaded_file_btn">
									<i class="glyphicon glyphicon-ban-circle"></i>
									<span>Supprimer</span>
									</button>
								
								</td>
							</tr>
						</tbody>
					</table>
					<?php } ?>
					<?php if(!$has_document){ ?>
					<table role="presentation" class="table table-striped" style = "display:none;">
						<tbody class="files">
							<tr class="template-upload fade in">
								<td style = "width:115px;"><span class="preview"></span></td>
								<td><span class="name"></span></td>
								<td style = "width:200px;"><span class="size"></span> KB
								    <div class="progress">
								        <div class="progress-bar progress-bar-success"></div>
								    </div>
								</td>
								<td style = "width:115px;" >
								<button class="btn btn-warning delete_uploaded_file_btn">
								<i class="glyphicon glyphicon-ban-circle"></i>
								<span>Supprimer</span>
								</button>
								
								</td>
							</tr>
						</tbody>
					</table>
					<?php } ?>
				</div>
			</div>
		</fieldset>		
		<?php } ?>
	</div>
	<div class="form-group">
		<button class="btn btn-primary btn-o back-step btn-wide pull-left">
			<i class="fa fa-circle-arrow-left"></i>
			Retour
		</button>
		<button class="btn btn-primary btn-o next-step btn-wide pull-right">
			Suivant
			<i class="fa fa-arrow-circle-right"></i>
		</button>
	</div>
</div>
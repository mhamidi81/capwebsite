<div class="panel-body">
	<div class="tabbable">
		<ul id="company_<?php echo $company['Company']['id']; ?>_tabs" class="nav nav-tabs nav-justified">
			<li class="active">
				<a href="#company_cv_<?php echo $company['Company']['id']; ?>_tab" data-toggle="tab" aria-expanded="true">
					Informations générales
				</a>
			</li>
			<li>
				<a href="#company_documents_<?php echo $company['Company']['id']; ?>_tab" data-toggle="tab" aria-expanded="false">
					Documents
				</a>
			</li>
		</ul>
		<div class="tab-content">
			<div class="tab-pane fade active in" id="company_cv_<?php echo $company['Company']['id']; ?>_tab">

				<div class="user-left">
					<div class="col-sm-5 col-md-4">
						<div class="center">
							<div class="user-image">
								<div class="fileinput-new thumbnail">
									<?php echo $this->html->image('../uploads/'.$company['Company']['logo']); ?>
								</div>
							</div>
							<h4><?php echo $company['Company']['name'];?></h4>
							<hr>
						</div>
					</div>
					<div class="col-sm-7 col-md-8">
						<table class="table table-condensed">
							<tbody>
								<tr>
									<td>Raison Sociale : </td>
									<td><?php echo $company['Company']['name'];?></td>
								</tr>
								<tr>
									<td>statut juridique : </td>
									<td><?php echo $company['Company']['type'];?></td>
								</tr>
								<tr>
									<td>Téléphone : </td>
									<td><?php echo $company['Company']['phone'];?></td>
								</tr>
								<tr>
									<td>Adresse : </td>
									<td><?php echo $company['Company']['address'];?></td>
								</tr>
								<tr>
									<td>Ville : </td>
									<td><?php echo $company['City']['name'];?></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class = "clear"></div>
				</div>
			</div>
			<div class="tab-pane fade in" id="company_documents_<?php echo $company['Company']['id']; ?>_tab">
				<div class="row space10">
					<?php foreach ($companies_documents as $key => $document) :?>
					<div class="col-sm-<?php echo 12/count($documents);?>">
						<button class="btn btn-icon margin-bottom-5 btn-show-document btn-block light_gray <?php if ($key == 0) echo 'current'; ?>" target-id = "<?php echo $document['Edocument']['id'];?>">
							<i class="<?php echo $document['Edocument']['icon'];?> block text-primary text-extra-large margin-bottom-10"></i>
							<?php echo $document['Edocument']['name'];?>
							<?php foreach ($company['CompaniesDocument'] as $key => $company_document){
								if($company_document['edocument_id'] == $document['Edocument']['id']){
									if($company_document['is_valid']){ ?>
									<span class="badge badge-success"><i class = "ti-check"></i></span>
							<?php }}} ?>
						</button>
					</div>
					<?php endforeach;?>
				</div>
				<div class="panel panel-white light_gray profile-documents">
					<?php foreach ($companies_documents as $key => $document) :?>
						<?php foreach ($company['CompaniesDocument'] as $key => $company_document){
							if($company_document['edocument_id'] == $document['Edocument']['id']){
						?>
						<div class = "panel-document-wrapper" style = "<?php if($key > 0){echo 'display:none';} ?>" document-id = "<?php echo $document['Edocument']['id']; ?>" request-document-id = "<?php echo $company_document['id']; ?>" >
								<div class="panel-heading border-light">
									<h4 class="panel-title"><?php echo $document['Edocument']['name']; ?></h4>
									<?php if($request['Status']['id'] < 4): ?>
									<ul class="panel-heading-tabs border-light">
										<li class="panel-tools">
											<a href="#" class="btn btn-lg btn-warning btn-reset-company-document-validation" style = "<?php if(!$company_document['is_valid']) echo 'display:none;' ?>">
												<i class="ti-close"></i>
													Annuler la validation
											</a>
											<a href="#" class="btn btn-lg btn-success btn-validate-company-document" style = "<?php if($company_document['is_valid']) echo 'display:none;' ?>">
												<span class = "ti-check"></span>
													Valider le documment
											</a>
										</li>
									</ul>
									<?php endif; ?>
								</div>
							<div class = "panel-body document-thumbnail">
							<?php
									echo $this->Html->image('../uploads/'.$company_document['filename']);
							?>
							</div>
					</div>
					<?php
							}
						 }
						 ?>
					<?php endforeach;?>
				</div>
			</div>
		</div>
	</div>
</div>
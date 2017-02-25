<?php 
	$userId = AuthComponent::user('id');
	$user_role = $this->CapTheme->getConnectedUserRole(); 
?>
<?php if(in_array($user_role, array('admin_cap', 'director', 'minister', 'commission_member'))){ ?>
<?php if(in_array($user_role, array('admin_cap', 'director', 'minister')) && !empty($meeting_request['MeetingsRequest']['judgment_id'])){ ?>
		<fieldset class="meeting-judgment-container">

			<legend>Avis de la commission nationale de conseil agricole</legend>
			<p>Avis <strong><?php echo $meeting_request['Judgment']['name']; ?></strong></p>
			<p>
				<?php echo $meeting_request['MeetingsRequest']['description']; ?>
			</p>
			<div class="panel-group accordion" id="accordion">
				<div class="panel panel-white">
					<div class="panel-heading">
						<h5 class="panel-title">
						<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded = "false">
							<i class="icon-arrow"></i> Afficher le détails des avis des membres de la commission
						</a></h5>
					</div>
					<div id="collapseOne" class="panel-collapse collapse" aria-expanded = "false">
						<div class="panel-body">
							<table style = "border-spacing: 10px;border-collapse: separate;" >
								<?php foreach ($members_judgments as $key => $member_judgment) :?>
								<?php if($key % 2 == 0){ echo '<tr>'; } ?>
									<td style = "width:50%;position:relative;">
										<table >
											<tr>
												<td style = "text-align:center; width:150px;">
													<?php echo $this->Html->image('../uploads/establishments/'.$member_judgment['User']['Establishment']['logo'], array('style' => 'max-width:100px;')); ?><br>
													<?php echo $member_judgment['User']['Establishment']['name']; ?> (<?php echo $member_judgment['User']['Establishment']['abreviation']; ?>)
												</td>
												<td style = "vertical-align: top;">
													<div>
														<strong><?php echo $member_judgment['Judgment']['name']; ?></strong>
														<p><?php echo $member_judgment['MembersRequest']['description']; ?></p>			
														<div style = "  position: absolute;bottom: 5px;right: 10px;">
															<small><?php echo 'par '.$member_judgment['User']['first_name'].' '.$member_judgment['User']['last_name'].' le '.$member_judgment['MembersRequest']['event_date']; ?></small>
														</div>
													</div>
												</td>
											</tr>
										</table>
									</td>
								<?php if($key % 2 != 0){ echo '</tr>'; } ?>
								<?php if($key % 2 == 0 && count($members_judgments) == $key + 1){ echo '<td></td></tr>'; } ?>
								<?php endforeach; ?>
							</table>
						</div>
					</div>
				</div>
			</div>
		</fieldset>
<?php }else {
if(!empty($members_judgments)){ ?>
<table style = "border-spacing: 10px;border-collapse: separate;" >
	<?php foreach ($members_judgments as $key => $member_judgment) :
		
		if($user_role == 'commission_member' && $member_judgment['User']['id'] !== $userId)
		{
			continue;
		}

		 if($key % 2 == 0){ echo '<tr>'; } ?>
		<td style = "width:50%;position:relative;">
			<table >
				<tr>
					<td style = "text-align:center; width:150px;">
						<?php echo $this->Html->image('../uploads/establishments/'.$member_judgment['User']['Establishment']['logo'], array('style' => 'max-width:100px;')); ?><br>
						<?php echo $member_judgment['User']['Establishment']['name']; ?> (<?php echo $member_judgment['User']['Establishment']['abreviation']; ?>)
					</td>
					<td style = "vertical-align: top;">
						<div>
							<strong><?php echo $member_judgment['Judgment']['name']; ?></strong>
							<p><?php echo $member_judgment['MembersRequest']['description']; ?></p>			
							<div style = "  position: absolute;bottom: 5px;right: 10px;">
								<small><?php echo 'par '.$member_judgment['User']['first_name'].' '.$member_judgment['User']['last_name'].' le '.$member_judgment['MembersRequest']['event_date']; ?></small>
							</div>
						</div>
					</td>
				</tr>
			</table>
		</td>
	<?php if($key % 2 != 0){ echo '</tr>'; } ?>
	<?php if($key % 2 == 0 && count($members_judgments) == $key + 1){ echo '<td></td></tr>'; } ?>
	<?php endforeach; ?>
</table>
<?php } else { ?>
<div class="col-sm-8">
	<h1 class="mainTitle">Aucun avis</h1>
	<span class="mainDescription">Use this page to start from scratch and put your custom content</span>
</div>
<?php }} ?>
<?php } ?>
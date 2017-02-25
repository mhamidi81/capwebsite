<?php 
	$this->layout = "custom_layout";
	$this->assign('breadcrumb_title', 'Contact');
	$this->assign('breadcrumb_description', 'Contacter nous pour toute information');
?>

<div class="row">
	<div class="twelve columns ">
		<div class="gdl-page-content">
			<h1 class = "mainTitle" style = "padding-left: 0px;">Contacts </h1>
			<h3>Pour nous contacter, veuillez remplir le formulaire ci-dessous </h3>
			<p>
				<?php echo $contact['Contact']['body']; ?>
			</p>
		</div>
	</div>
	<div class="clear"></div>
</div>

<div class="row">
	<div class="twelve columns ">
		<div class="contact-form-wrapper">
			<?php if ($contact['Contact']['message_status']): ?>
					<?php
						echo $this->Form->create('Message', array(
							'url' => array(
								'plugin' => 'contacts',
								'controller' => 'contacts',
								'action' => 'view',
								$contact['Contact']['alias'],
							),
							array('class' => 'gdl-contact-form', 'escape' => false)
						));
						echo '<ol class="forms">'.
								'<li class="form-input">'.
									$this->Form->input('Message.name', array('label' => __d('croogo', 'Your name'), 'class' => 'require-field form-control')).
									''.
								'</li>'.
								'<li class="form-input">'.
									$this->Form->input('Message.email', array('label' => __d('croogo', 'Your email'), 'class' => 'require-field email form-control')).
									''.
								'</li>'.
								'<li class="form-input">'.
									$this->Form->input('Message.title', array('label' => __d('croogo', 'Subject'), 'class' => 'form-control')).
								'</li>'.
								'<li class="form-textarea">'.
									$this->Form->input('Message.body', array('type' => 'textarea', 'label' => __d('croogo', 'Message'), 'class' => 'require-field')).
									''.
								'</li>'.
								'<li class="sending-result" id="sending-result">'.
									'<div class="message-box-wrapper green"></div>'.
								'</li>';

								if ($contact['Contact']['message_captcha']):
									echo $this->Recaptcha->display_form();
								endif;

						echo	'<li class="buttons">
									<button type="submit" class="btn btn-primary">Envoyer</button>
									<div class="contact-loading"></div>
								</li>';

						//echo $this->Form->end(__d('croogo', 'Send'));
						echo '</ol>';
					?>
				</form>
			<?php endif; ?>
			<div class="clear"></div>
		</div>	
	</div>
	<div class="clear"></div>
</div>
<div class="row">
	<div class="twelve columns ">
		<?php echo $this->element('map'); ?> 
	</div>
</div>

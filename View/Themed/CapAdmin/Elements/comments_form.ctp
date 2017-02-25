<div id="respond" class="comment-form">

	<h3 id="reply-title"><?php echo __d('croogo', 'Add new comment'); ?></h3>

	<?php
		$type = $types_for_layout[$data[$model]['type']];

		if ($this->request->params['controller'] == 'comments') {
			$backLink = $this->Html->link(__d('croogo', 'Go back to original post') . ': ' . $data[$model]['title'], $data[$model]['url']);
			echo $this->Html->tag('p', $backLink, array('class' => 'back'));
		}

		$formUrl = array(
			'plugin' => 'comments',
			'controller' => 'comments',
			'action' => 'add',
			'Node',
			$data[$model]['id'],
		);
		if (isset($parentId) && $parentId != null) {
			$formUrl[] = $parentId;
		}

		echo $this->Form->create('Comment', array('url' => $formUrl));
			if ($this->Session->check('Auth.User.id')) {

				/*
				echo $this->Form->input('Comment.name', array(
					'label' => __d('croogo', 'Name'),
					'value' => $this->Session->read('Auth.User.name'),
					'readonly' => 'readonly',
				));
				echo $this->Form->input('Comment.email', array(
					'label' => __d('croogo', 'Email'),
					'value' => $this->Session->read('Auth.User.email'),
					'readonly' => 'readonly',
				));
				echo $this->Form->input('Comment.website', array(
					'label' => __d('croogo', 'Website'),
					'value' => $this->Session->read('Auth.User.website'),
					'readonly' => 'readonly',
				));
				echo $this->Form->input('Comment.body', array('label' => false));
				*/

				echo '<div class="comment-form-author">'.
						$this->Form->input('Comment.name', array('div' => false, 'readonly' => 'readonly', 'value' => $this->Session->read('Auth.User.name'), 'size' => '30', 'tabindex' => '1', 'label' => __d('croogo', 'Name'))).
						'<span class="required">*</span>'.
						'<div class="clear"></div>'.
					'</div>'.
					'<div class="comment-form-email">'.
						$this->Form->input('Comment.email', array('div' => false, 'readonly' => 'readonly', 'value' => $this->Session->read('Auth.User.email'), 'size' => '30', 'tabindex' => '2', 'label' => __d('croogo', 'Email'))).
						'<span class="required">*</span>'.
						'<div class="clear"></div>'.
					'</div>'.
					'<div class="comment-form-url">'.
						$this->Form->input('Comment.website', array('div' => false, 'readonly' => 'readonly', 'value' => $this->Session->read('Auth.User.website'), 'size' => '30', 'tabindex' => '3', 'label' => __d('croogo', 'Website'))).
						'<span class="required">*</span>'.
						'<div class="clear"></div>'.
					'</div>'.
					'<div class="clear"></div>'.
					'<p></p>'.
					'<div class="comment-form-comment">'.
						$this->Form->input('Comment.body', array('aria-required' => 'true', 'label' => false)).
					'</div>';
			} else {

				echo '<div class="comment-form-author">'.
						$this->Form->input('Comment.name', array('div' => false, 'size' => '30', 'tabindex' => '1', 'label' => __d('croogo', 'Name'))).
						'<span class="required">*</span>'.
						'<div class="clear"></div>'.
					'</div>'.
					'<div class="comment-form-email">'.
						$this->Form->input('Comment.email', array('div' => false, 'size' => '30', 'tabindex' => '2', 'label' => __d('croogo', 'Email'))).
						'<span class="required">*</span>'.
						'<div class="clear"></div>'.
					'</div>'.
					'<div class="comment-form-url">'.
						$this->Form->input('Comment.website', array('div' => false, 'size' => '30', 'tabindex' => '3', 'label' => __d('croogo', 'Website'))).
						'<span class="required">*</span>'.
						'<div class="clear"></div>'.
					'</div>'.
					'<div class="clear"></div>'.
					'<p></p>'.
					'<div class="comment-form-comment">'.
						$this->Form->input('Comment.body', array('aria-required' => 'true', 'label' => false)).
					'</div>';

				//echo $this->Form->input('Comment.name', array('size' => '30', 'tabindex' => '1', 'label' => __d('croogo', 'Name')));
				//echo $this->Form->input('Comment.email', array('label' => __d('croogo', 'Email')));
				//echo $this->Form->input('Comment.website', array('label' => __d('croogo', 'Website')));
				//echo $this->Form->input('Comment.body', array('aria-required' => 'true', 'label' => false));
			}

			if ($type['Type']['comment_captcha']) {
				echo $this->Recaptcha->display_form();
			}

			echo '<p class="form-submit">'.
				//'<input name="submit" type="submit" id="submit" value="Post Comment">'.
				$this->Form->end(__d('croogo', 'Post comment')).
			'</p>';
			//echo $this->Form->end(__d('croogo', 'Post comment'));
	?>
</div>
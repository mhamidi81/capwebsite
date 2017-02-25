<li class="comment byuser comment-author-admin bypostauthor even thread-even depth-1" id="comment-<?php echo $comment['Comment']['id']; ?>">
	<div class="comment-body">
		<div class="comment-avartar">
			<?php echo $this->Html->image('http://www.gravatar.com/avatar/' . md5(strtolower($comment['Comment']['email'])) . '?s=60', array('class' => 'avatar avatar-60 photo', 'height' => '60', 'width' => '60')); ?>
		</div>

		<div class="comment-context">
			<div class="comment-head">
				<span class="comment-author"><?php echo $comment['Comment']['name']; ?></span>
				<span class="comment-date post-info-color"><?php echo $this->Time->format(Configure::read('Comment.date_time_format'), $comment['Comment']['created'], null, Configure::read('Site.timezone')); ?></span>
				<span class="comment-reply">
					<?php
						if ($level <= Configure::read('Comment.level')) {
							echo $this->Html->link(__d('croogo', 'Reply'), array(
										'plugin' => 'comments',
										'controller' => 'comments',
										'action' => 'add',
										'Node',
										$node['Node']['id'],
										$comment['Comment']['id'],
									),
							array('class' => 'comment-reply-link')
							);
						}
					?>
				</span> 
			</div>
			<div class="comment-content">
				<p>
					<?php echo nl2br($this->Text->autoLink($comment['Comment']['body'])); ?>
				</p>
			</div>
		</div>
		<div class="clear"></div>
	</div><!-- end of comment body -->   
</li>

<?php
	if (isset($comment['children']) && count($comment['children']) > 0) {
		foreach ($comment['children'] as $childComment) {
			//echo $this->element('comment', array('comment' => $childComment, 'level' => $level + 1));
		}
	}
?>
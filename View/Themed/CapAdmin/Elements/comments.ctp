<?php
	$commentHeading = $node['Node']['comment_count'] . ' ';
	if ($node['Node']['comment_count'] <= 1) {
		$commentHeading .= __d('croogo', 'Comment');
	} else {
		$commentHeading .= __d('croogo', 'Comments');
	}
	echo '<div id="comments" class="comment-title gdl-link-title gdl-title">'.
			//$this->Html->tag('h3', $commentHeading).
			$commentHeading.
		'</div>';
	echo '<ol class="comment-list">';
				foreach ($comments as $comment) {
					echo $this->element('comment', array('comment' => $comment, 'level' => 1));
				}
	echo '</ol>';
?>

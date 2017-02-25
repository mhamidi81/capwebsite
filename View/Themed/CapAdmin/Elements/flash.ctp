<?php
$class = isset($class) ? $class : null;
$escape = isset($escape) ? $escape : true;

if ($escape):
	$message = h($message);
endif;

?>

<?php 
	if($class == 'success')
	{
		echo '<div class="message-box-wrapper green">'.
				'<div class="message-box-title">'.
					$message.
				'</div>'.
			'</div>';
	}
	elseif($class == 'warning')
	{
		echo '<div class="message-box-wrapper yellow">'.
				'<div class="message-box-title">'.
					$message.
				'</div>'.
			'</div>';
	}
	elseif($class == 'info')
	{
		echo '<div class="message-box-wrapper blue">'.
				'<div class="message-box-title">'.
					$message.
				'</div>'.
			'</div>';
	}
	elseif($class == 'error')
	{
		echo '<div class="message-box-wrapper red">'.
				'<div class="message-box-title">'.
					$message.
				'</div>'.
			'</div>';
	}
	elseif($class = 'error-message')
	{
		echo '<div class="message-box-wrapper red">'.
				'<div class="message-box-title">'.
					$message.
				'</div>'.
			'</div>';
	}
	else
	{
		echo '<div class="'.$class.'">'.$message.'</div>';
	}
 ?>


<?php 
	$this->Nodes->set($node);
	$this->layout = "default";
	$this->assign('breadcrumb_title', $this->Nodes->field('title'));
?>
<?php echo $this->Nodes->body(); ?>

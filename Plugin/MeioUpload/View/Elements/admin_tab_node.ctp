<?php
	echo $this->Form->input('filename', array('type' => 'file', 'required' => false, 'label'=>__d('theme','Photo',true), 'onchange'=>'readURL(this);'));
    echo $this->Form->input('dir', array('type' => 'hidden'));
    echo $this->Form->input('mimetype', array('type' => 'hidden'));
    echo $this->Form->input('filesize', array('type' => 'hidden'));

/*
* preview the filename before uploadin
*/


if ($this->request->params['action'] == 'admin_add') 
{
	//echo  $this->Html->image('logo.png', array('id'=>'preview_img'));
}

if ($this->request->params['action'] == 'admin_edit') {
	$post_img = $this->request->data['Node']['filename'];

	if (!empty($post_img))
	{
		$preview_img = PHOTOS_PATH . '/' . $post_img;
		echo  $this->Html->image($preview_img, array('id'=>'preview_img'));
	}
	
}

?>
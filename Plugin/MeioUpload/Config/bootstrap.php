<?php
	Croogo::hookComponent('Node', 'MeioUpload.MeioUpload');
	Croogo::hookHelper('Nodes', 'MeioUpload.MeioUpload');
	
    Croogo::hookBehavior('Node', 'MeioUpload.MeioUpload', 
						array('filename' =>
								array('thumbsizes' => 
										array('large' => array('width'=>250,'maxDimension'=>'w'), 
											  'small' => array('width'=>100,'maxDimension'=>'w'),
											  '400x400' => array('width'=>400, 'height' => 400, 'maxDimension'=>'w'),
											  '620x240' => array('width'=>620, 'height' => 240, 'maxDimension'=>'w')
						))));

   Croogo::hookAdminTab('Nodes/admin_add', __d('meio_upload','Upload',true), 'MeioUpload.admin_tab_node');
   Croogo::hookAdminTab('Nodes/admin_edit',__d('meio_upload','Upload',true), 'MeioUpload.admin_tab_node');
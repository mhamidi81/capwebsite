<?php

define('PHOTOS_PATH','/uploads/node/images/');

//Croogo::hookRoutes('Example');
//Croogo::hookBehavior('Node', 'Example.Example', array());
Croogo::hookComponent('*', 'CapMaroc.Cap');
//Croogo::hookHelper('*', array('CapMaroc.Youtube', 'CapMaroc.Video', 'CapMaroc.Vkeyboard'));
Croogo::hookHelper('*', array('CapMaroc.Youtube', 'CapMaroc.Video'));
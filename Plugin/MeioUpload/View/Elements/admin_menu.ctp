<ul>
    <li><?php echo $html->link('<span class="ui-icon ui-icon-image"></span>' . __('Themes', true), array('plugin' => 'extensions', 'controller' => 'extensions_themes', 'action' => 'index'), array('escape' => false)); ?></li>
    <li><?php echo $html->link('<span class="ui-icon ui-icon-script"></span>' . __('Locales', true), array('plugin' => 'extensions', 'controller' => 'extensions_locales', 'action' => 'index'), array('escape' => false)); ?></li>
    <li><?php echo $html->link('<span class="ui-icon ui-icon-gear"></span>' . __('Plugins', true), array('plugin' => 'extensions', 'controller' => 'extensions_plugins', 'action' => 'index'), array('escape' => false, 'class' => Configure::read('Admin.menus') ? 'separator' : '', 'escape' => false)); ?></li>
</ul>
				?>

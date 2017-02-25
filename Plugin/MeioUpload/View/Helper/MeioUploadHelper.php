<?php

/**
 * Example Helper
 *
 * An example hook helper for demonstrating hook system.
 *
 * @category Helper
 * @package  Croogo
 * @version  1.0
 * @author   Fahad Ibnay Heylaal <contact@fahad19.com>
 * @license  http://www.opensource.org/licenses/mit-license.php The MIT License
 * @link     http://www.croogo.org
 */
class MeioUploadHelper extends AppHelper {

    /**
     * Other helpers used by this helper
     *
     * @var array
     * @access public
     */
    public $helpers = array(
        'Html',
        'Layout',
        'Image'
    );

    /**
     * Before render callback. Called before the view file is rendered.
     *
     * @return void
     */
    public function beforeNodeInfo() 
    {
        // 'dir' => '/home/buuutnet/public_html/cdn/images/node/images/thumb/',
        // 'dir' => '/Volumes/Data/htdoc/buuut{DS}cdn{DS}images{DS}{ModelName}{DS}images',
        // $current_path = ROOT . '/cdn/images/node/images/thumb';

        $imageThumb="";
        if ($this->params['action'] == 'view') {
            $image = trim($this->Layout->node('filename'));
            if (isset($image) && $image !== '') {
                return '<div id="imageview">' . $this->Html->image(PHOTOS_PATH . '/thumb/big/' . $this->Layout->node('filename'), 
                            array('alt'=>$this->Layout->node('title'),'rel'=>"image_src",'type'=>"image/jpeg",'class' => 'big')) . '</div>';
            }
        } else
        if ($this->params['action'] == 'term' or
            $this->params['action'] == 'index' or (($this->params['action'] == 'promoted') and 
                (isset($this->params['paging']['Node']['page']) and $this->params['paging']['Node']['page'] > 1))) {
            ?>  
            <?php
            $image = trim($this->Layout->node('filename'));
            if (isset($image) && $image !== '') {
                return '<div class="image_small node-thumb">' . $this->Html->image(PHOTOS_PATH . '/thumb/small/' . $this->Layout->node('filename'), 
                        array('alt'=>'botola :'.$this->Layout->node('title'),'class' => 'small')) . '</div>';
            }
        } else
        if ($this->params['action'] == 'promoted') {
            $image = trim($this->Layout->node('filename'));
            if(Configure::read('Site.slider') == 1){
                if (isset($image) && ($image !== '') && ($this->Layout->node('imgclass') !== 'none')) {
                $imageThumb = $this->Html->image(PHOTOS_PATH . '/thumb/small/' . $this->Layout->node('filename'), 
                                array(
                                'alt'=>'botola :'.$this->Layout->node('title'),
                                'class' => 'small'));
            }
                    ?>

                    <div class="image_small node-thumb">
                        <?php echo $imageThumb; ?>
                    </div> 
            <?php      
            }else{
                if (isset($image) && ($image !== '') && ($this->Layout->node('imgclass') !== 'none')) {
                $imageThumb = $this->Html->image(PHOTOS_PATH . '/' . 
                            $this->Layout->node('imgclass') . '/' . $this->Layout->node('filename'), 
                                array(
                                'alt'=>'botola :'.$this->Layout->node('title'),
                                'class' => $this->Layout->node('imgclass')));
            }
                    ?>
                    <div class="image_<?php echo $this->Layout->node('imgclass'); ?> node-thumb">
                        <?php   echo $imageThumb; ?>
                    </div> 
        <?php   }

            }
        }
    }
?>
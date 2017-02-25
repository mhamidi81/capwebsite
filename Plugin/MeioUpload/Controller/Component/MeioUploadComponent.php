<?php
/**
 * Example Component
 *
 * An example hook component for demonstrating hook system.
 *
 * @category Component
 * @package  Croogo
 * @version  1.0
 * @author   Fahad Ibnay Heylaal <contact@fahad19.com>
 * @license  http://www.opensource.org/licenses/mit-license.php The MIT License
 * @link     http://www.croogo.org
 */

//App::import('Vendor', 'VideoWidget.VideoWidget', array('file' => 'VideoWidget.php'));

class MeioUploadComponent extends Component  {
/**
 * Called after the Controller::beforeFilter() and before the controller action
 *
 * @param object $controller Controller with components to startup
 * @return void
 */
    public function startup(Controller $controller) {
        
    }
/**
 * Called after the Controller::beforeRender(), after the view class is loaded, and before the
 * Controller::render()
 *
 * @param object $controller Controller with components to beforeRender
 * @return void
 */    

    public function beforeRender(Controller $controller) {
       if (substr($controller->action, 0, 5) !='admin'){
		$last_photo = $this->last_photo($controller);
		$controller->set(compact('last_photo'));
	}
    }
		function last_photo(Controller $controller){
      /*
		   $photo = $controller->Node->find('first', array(
			'conditions' => array(
				//'Node.type' => 'photos',
				'Node.status' => '1',
				'Node.terms LIKE' => '%"photo-highlite"%'
			),
			'fields' => array('filename','id','dir','title','path'),
			'order' => array(
			'Node.id' => 'DESC',
			),
			'cache' => array(
			   'name' => 'nodes_last_photo',
			  'config' => 'nodes_view',
			),'recursive' => '-1',
			));
		return $photo;*/
		}
		
/**
 * Called after Controller::render() and before the output is printed to the browser.
 *
 * @param object $controller Controller with components to shutdown
 * @return void
 */
    public function shutdown(Controller $controller) {
    }
	   /* public function getSources(){

       $sources = array(
          'YouTube'     => array(
              'url'   => "http://www.youtube.com/v/::id::&autoplay=::autoplay::&loop=0&rel=0",
			  'thumb' => "http://i2.ytimg.com/vi/::id::/0.jpg"
          ),

          'Vimeo'       => array(
              'url'   => "http://vimeo.com/moogaloop.swf?clip_id=::id::&amp;server=vimeo.com&amp;loop=0&amp;fullscreen=1&amp;autoplay=::autoplay::"
          ),

          'MySpace'     => array(
              'url'   => "http://mediaservices.myspace.com/services/media/embed.aspx/m=::id::,t=1,mt=video,ap=::autoplay::"
          ),

          'Veoh'        => array(
              'url'   => "http://www.veoh.com/static/swf/webplayer/WebPlayer.swf?version=AFrontend.5.4.2.20.1002&permalinkId=::id::&player=videodetailsembedded&id=anonymous&videoAutoPlay=::autoplay::"
          ),

          'Blip'        => array(
              'url'   => "http://blip.tv/play/::id::"
          ),

           'Viddler' => array(
               'url'        => "http://www.viddler.com/player/::id::",
               'flashvar1'  => "<param name=\"flashvars\" value=\"autoplay=t\" />",
               'flashvar2'  => 'flashvars="autoplay=t" '
           ),
           'DailyMotion' => array(
               'url' => "http://www.dailymotion.com/swf/::id::&autoStart=::autoplay::&related=0",
			   'thumb' => "http://www.dailymotion.com/thumbnail/320x240/video/::id::"
           ),
//           'Revver' => array(
//               'url' => "http://flash.revver.com/player/1.0/player.swf?mediaId=::id::&autoStart=::autoplay::"
//           ),
//           'Google' => array(
//               'url'        => "http://video.google.com/googleplayer.swf?docid=::id::&hl=en&fs=true"
//               //'flashvar2'  => 'FlashVars="autoPlay=true&playerMode=embedded"'
//           )
        );

        return $sources;
    }

*/
    
}
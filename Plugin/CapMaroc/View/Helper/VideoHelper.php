<?php

App::uses('Helper', 'View/Helper');
App::uses('HtmlHelper', 'View/Helper');


/**
* @version 1.1
* @author Josh Hundley
* @author Jorge Orpinel <jop@levogiro.net> (changes)
*/

class VideoHelper extends HtmlHelper{

	public $channel;
	public $id;
	public $width='640px';
	public $height='360px';
	public $streaming_sites=array('youtube', 'dailymotion', 'metacafe', 'vimeo');

	function videoTag($url, $option=array())
	{
		$this->setChannel($url);
		return $this->videoHtml($url);
	}
	
	public function setChannel($url)
	{
		for($i=0;$i<count($this->streaming_sites);$i++)
		{
			if(strpos($url, $this->streaming_sites[$i])==true)
			{
				$this->channel=$this->streaming_sites[$i];
				break;
			}
		}
		$this->setVideoId($url);
	}

	public function setVideoId($url)
	{
		$id=0;
		if ($this->channel=="youtube")
		{
			$id=$this->getYTid($url);
		}
		elseif ($this->channel=="vimeo")
		{
			$tab=explode('/',$url);
			$id=$tab[count($tab)-1];
		}
		elseif($this->channel=="dailymotion")
		{
			$tab=explode('/',$url);
			$id=$tab[count($tab)-1];
			if(strpos('#',$id)) 
			{
				$tab=explode('#',$id);
				$id=$tab[0]; 
			}
		}
		elseif($this->channel=="metacafe")
		{
			if(preg_match("/((http:\/\/)?(www\.)?metacafe\.com)(\/watch\/)(\d+)(.*)/i", $url, $match))
			{
				$id=$match[5];
			}
		}
		$this->id=$id;
	}

	public function videoThumb($url, $size)
	{
		$this->setChannel($url);
		if ($this->channel=="youtube")
		{
			$url="http://i2.ytimg.com/vi/".$this->id."/".$size.".jpg";
		}
		elseif ($this->channel=="vimeo")
		{
			$array = unserialize(file_get_contents("http://vimeo.com/api/v2/video/".$this->id.".php"));
			$url = $array[0]['thumbnail_medium'];
		}
		elseif($this->channel=="dailymotion")
		{
			$url="http://www.dailymotion.com/thumbnail/160x120/video/".$this->id;
		}
		elseif($this->channel=="metacafe")
		{
			$array = explode('/',$url);
			$url = "http://s4.mcstatic.com/thumb/" . $this->id . "/0/6/videos/0/6/" . $array[count($array) - 2] . ".jpg"; 
		}
		return $url;
	}

	public function videoThumbShared($url)
	{
		$this->setChannel($url);
		if ($this->channel=="youtube")
		{
			$url="http://i2.ytimg.com/vi/".$this->id."/0.jpg";
		}
		elseif ($this->channel=="vimeo")
		{
			$array = unserialize(file_get_contents("http://vimeo.com/api/v2/video/".$this->id.".php"));
			//$url1 = "http://vimeo.com/api/clip/".$this->id."/php";
			//$contents = @file_get_contents($url1);
			//$array = @unserialize(trim($contents));
			$url = $array[0]['thumbnail_medium'];
		}
		elseif($this->channel=="dailymotion")
		{
			$url="http://www.dailymotion.com/thumbnail/160x120/video/".$this->id;
		}
		elseif($this->channel=="metacafe")
		{
			$array = explode('/',$url);
			$url = "http://s4.mcstatic.com/thumb/" . $this->id . "/0/6/videos/0/6/" . $array[count($array) - 2] . ".jpg"; 
		}
		return $url;
	}
	
	function videoHtml($url)
	{
		if ($this->channel=="vimeo")
		{
			$tab = explode('/',$url);
			$id = $tab[count($tab) - 1];
			$url = "http://vimeo.com/moogaloop.swf?clip_id=" . $id;
		}
		elseif($this->channel=="dailymotion")
		{
			$tab = explode('/',$url);
			$id = $tab[count($tab) - 1];
			$url = "http://www.dailymotion.com/swf/" . $id;
		}
		elseif($this->channel=="metacafe")
		{
			$tab = explode('/',$url);
			$id = $tab[count($tab) - 1];
			$url = "http://www.metacafe.com/fplayer/" . $tab[count($tab) - 3] . "/" . $tab[count($tab) - 2] . ".swf";
		}

		$streaming_sites=array(
			'youtube2'	=>	'<object width="'.$this->width.'" height="'.$this->height.'">
							<param name="movie" value="'.$url.'"></param>
							<param name="allowFullScreen" value="true"></param>
							<param name="allowscriptaccess" value="always"></param>
							<embed src="'.$url.'"
							type="application/x-shockwave-flash" allowscriptaccess="always"
							allowfullscreen="true" width="425" height="'.$this->height.'"></embed>
							</object>',

			'youtube'	=>	$this->YoutubeVideoPlayer($url),

			'dailymotion'	=>	'<object width="' . $this->width . '" height="' . $this->height . '">
								<param name="movie" value="' . $url . '" />
								<param name="allowFullScreen" value="true" />
								<param name="allowScriptAccess" value="always" />
								<embed src="' . $url . '" 
								type="application/x-shockwave-flash" width="' . $this->width . '" 
								height="' . $this->height . '" allowFullScreen="true" allowScriptAccess="always"></embed>
								</object>',

			'metacafe'	=>	'<embed src="'.$url.'"
							width="'.$this->width.'" height="'.$this->height.'" wmode="transparent" 
							pluginspage="http://www.macromedia.com/go/getflashplayer" 
							type="application/x-shockwave-flash" allowFullScreen="true"
							allowScriptAccess="always" name="Metacafe">
							</embed>',

/*
							$array = explode('/',$url);
			'metacafe'	=>	'<embed flashVars="playerVars=autoPlay=no" 
							src="http://www.metacafe.com/fplayer/'. $this->id .'/"'. $array[count($array) - 2] .'.swf" 
							width="'.$this->width.'" 
							height="'.$this->height.'" wmode="transparent" allowFullScreen="true" 
							allowScriptAccess="always" name="Metacafe_8456223" 
							pluginspage="http://www.macromedia.com/go/getflashplayer" 
							type="application/x-shockwave-flash">
							</embed>',

							*/


			'vimeo'		=>	'<object width="'.$this->width.'" height="'.$this->height.'">
							<param name="allowfullscreen" value="true" />
							<param name="allowscriptaccess" value="always" />
							<param name="movie" value="'.$url.'&amp;server=vimeo.com&amp;show_title=1&amp;
							show_byline=1&amp;show_portrait=0&amp;color=&amp;fullscreen=1" />
							<embed src="'.$url.'&amp;server=vimeo.com&amp;show_title=1&amp;
							show_byline=1&amp;show_portrait=0&amp;color=&amp;fullscreen=1" 
							type="application/x-shockwave-flash" allowfullscreen="true" 
							allowscriptaccess="always" width="'.$this->width.'" height="'.$this->height.'"></embed>
							</object>',

			'megaupload'	=>	'<object width="'.$this->width.'" height="'.$this->height.'">
								<param name="movie" value="'.$url.'"></param>
								<param name="allowFullScreen" value="true"></param>
								<embed src="'.$url.'"
								type="application/x-shockwave-flash" allowfullscreen="true"
								width="'.$this->width.'" height="'.$this->height.'"></embed>
								</object>'
		); 
		
		return $streaming_sites[$this->channel];
	}
	

	public function getYTid($ytURL) 
	{
		$ytvIDlen = 11; // This is the length of YouTube's video IDs
		$idStarts = strpos($ytURL, "?v=")+3;
		if($idStarts === FALSE)
			$idStarts = strpos($ytURL, "&v=")+3;

		if($idStarts === FALSE)
		$idStarts +=3;
		$ytvID = substr($ytURL, $idStarts, $ytvIDlen);
		return $ytvID;
	}

/**
*
* Youtube Helper
* Carly Marie
* 1.4
* MIT License (http://www.opensource.org/licenses/mit-license.php)
*
*/

	    // An array of Youtube API's this helper will use
    public $apis = array(
        'image'  => 'http://i.ytimg.com/vi/%s/%s.jpg', // Location of youtube images
        'player' => 'http://www.youtube.com/v/%s?%s'   // Location of youtube player
    );

    // All these settings can be changed on the fly using the $player_variables option in the video function
    public $player_variables = array(
        'type'              => 'application/x-shockwave-flash',
        'class'             => 'youtube',
        'width'             => 455,          // Sets player width
        'height'            => 400,          // Sets player height
        'allowfullscreen'   => 'true',       // Gives script access to fullscreen (This is required for the fs player setting to work)
        'allowscriptaccess' => 'always',
        'wmode'             => 'transparent' // Ensures player stays under overlays such as lightbox/fancybox
    );

    // All these settings can be changed on the fly using the $player_settings option in the video function
    public $player_settings = array(
        'fs'        => true,   // Enables / Disables fullscreen playback
        'hd'        => true,   // Enables / Disables HD playback (Chromeless player does not support this setting)
        'egm'       => false,  // Enables / Disables advanced context (Right-Click) menu
        'rel'       => false,  // Enables / Disables related videos at the end of the video
        'loop'      => false,  // Loops video once its finished
        'start'     => 0,      // Start the video at X seconds
        'version'   => 3,      // For chromeless player set version to 3
        'autoplay'  => false,  // Automatically starts video when page is loaded
        'autohide'  => false,  // Automatically hides controls once the video begins
        'controls'  => true,   // Enables / Disables player controls (Chromeless Only)
        'showinfo'  => false,  // Enables / Disables information like the title before the video starts playing
        'disablekb' => false,  // Enables / Disables keyboard controls
        'theme'     => 'light' // Dark / Light style themes
    );

    // Outputs Youtube video image
    public function YoutubeThumbnail($url, $size = 'thumb', $options = array()) 
    {
        // Sets the video ID for the image API
        $video_id = $this->getVideoId($url);

        // Humanized array of allowed image sizes
        $accepted_sizes = array(
            'thumb'  => 'default', // 120px x 90px
            'large'  => 0,         // 480px x 360px
            'thumb1' => 1,         // 120px x 90px at position 25%
            'thumb2' => 2,         // 120px x 90px at position 50%
            'thumb3' => 3          // 120px x 90px at position 75%
        );

        // Build url to image file
        $image_url = sprintf($this->apis['image'], $video_id, $accepted_sizes[$size]);

        return $this->image($image_url, $options);
    }

    // Outputs embedded Youtube player
    public function YoutubeVideoPlayer($url, $settings = array(), $variables = array()) 
    {
        // Sets the video ID for the player API
        $video_id = $this->getVideoId($url);

        // Sets flash player settings if different than default
        $settings  = array_merge($this->player_settings, $settings);

        // Sets flash player variables if different than default
        $variables = array_merge($this->player_variables, $variables);

        // Sets src variable for a valid object
        $variables['src'] = sprintf($this->apis['player'], $video_id, http_build_query($settings));

        // Returns embedded video
        return $this->tag('object',
            $this->tag('param', null, array('name' => 'movie',             'value' => $variables['src'])).
            $this->tag('param', null, array('name' => 'allowFullScreen',   'value' => $variables['allowfullscreen'])).
            $this->tag('param', null, array('name' => 'allowscriptaccess', 'value' => $variables['allowscriptaccess'])).
            $this->tag('param', null, array('name' => 'wmode',             'value' => $variables['wmode'])).
            $this->tag('embed', null, $variables), array(
                'width'  => $variables['width'],
                'height' => $variables['height'],
                'data'   => $variables['src'],
                'type'   => $variables['type'],
                'class'  => $variables['class']
            )
        );
    }

    // Extracts Video ID's from a Youtube URL
    public function getVideoId($url = null)
    {
        parse_str(parse_url($url, PHP_URL_QUERY), $params);
        return (isset($params['v']) ? $params['v'] : $url);
    }


}
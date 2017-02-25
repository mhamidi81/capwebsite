<?php
App::import('Vendor', 'phpqrcode'.DS.'qrlib');

// Component defined in 'QrCode' plugin
class QRHelper extends AppHelper{

	function text($content = '') {
		ob_start();
		QRcode::png($content, null);
		$imageString = base64_encode(ob_get_contents());
		ob_end_clean();

		return "data:image/png;base64,$imageString";
    }   
}
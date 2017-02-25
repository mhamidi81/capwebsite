<?php

App::import('Vendor', 'tcpdf', array('file' => 'tcpdf/tcpdf.php'));
App::import('Vendor', 'phpqrcode'.DS.'qrlib');

class XTCPDF  extends TCPDF { 

    var $xheadertext  = ''; 
    var $xheadercolor = array(0,0,200); 
    var $xfootertext  = 'Copyright 2015 © Ministre de l’Agriculture et de la Pêche Maritime.'; 
    var $xfooterfont  = PDF_FONT_NAME_MAIN ; 
    var $xfooterfontsize = 8 ; 
    var $uniquekey = -1;

    /** 
    * Overwrites the default header 
    * set the text in the view using 
    *    $fpdf->xheadertext = 'YOUR ORGANIZATION'; 
    * set the fill color in the view using 
    *    $fpdf->xheadercolor = array(0,0,100); (r, g, b) 
    * set the font in the view using 
    *    $fpdf->setHeaderFont(array('YourFont','',fontsize)); 
    */ 
    function Header() 
    { 

        $this->SetY(3);
        $image_file = '../webroot/img/logo.jpg';
        $this->Image($image_file, 5,3, 60,30, 'JPG', '', 'L', false, 200, '', false, false, 0, false, false, false);
        //$this->RoundedRect(140, 3, 56, 32, 2, '1111', '', array('width' => 0.4), '');
        $tmp_image = '../webroot/img/tmp.png';

        /*$data = base64_decode(preg_replace('#^data:image/\w+;base64,#i', '', $this->generate_qr_image($this->uniquekey)));
        file_put_contents($tmp_image, $data);
        $this->Image($tmp_image, 173,4, 50,30, 'PNG', '', 'L', false, false, 600, false, false, '' , true, false, false);*/
        
        $data = file_get_contents("http://localhost/capwebsite/barcode.php?text=".$this->uniquekey.'&size=100');
        file_put_contents($tmp_image, $data);
        $this->Image($tmp_image, 119,10, 0,20, 'PNG', '', 'L', false, false, 600, false, false, '' , true, false, false);
        unlink($tmp_image);          
    } 
 

    function generate_qr_image($content = '') {
        ob_start();
        QRcode::png($content, null, null);
        $imageString = base64_encode(ob_get_contents());
        ob_end_clean();

        return "data:image/png;base64,$imageString";
    }

    /** 
    * Overwrites the default footer 
    * set the text in the view using 
    * $fpdf->xfootertext = 'Copyright Â© %d YOUR ORGANIZATION. All rights reserved.'; 
    */ 
    function Footer() 
    { 
        $year = date('Y'); 
        $footertext = sprintf($this->xfootertext, $year); 
        $this->SetY(-20); 
        $this->SetTextColor(0, 0, 0); 
        $this->SetFont($this->xfooterfont,'',$this->xfooterfontsize); 
        $this->Cell(0,8, $footertext,'T',1,'C'); 
    } 
} ?>
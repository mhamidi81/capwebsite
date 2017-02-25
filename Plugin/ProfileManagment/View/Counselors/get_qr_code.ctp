<?php

App::import('Vendor', 'Autoloader', array('file' => 'PhpWord/Autoloader.php'));
\PhpOffice\PhpWord\Autoloader::register();

// Creating the new document...
$phpWord = new \PhpOffice\PhpWord\PhpWord();
$phpWord->setDefaultFontName('Times New Roman');
$phpWord->setDefaultFontSize(12);
$tmp_image = 'files/qr_code.png';
$plugin_webroot_path = Router::url('/simple_survey/files/', true);
$logo = $plugin_webroot_path.$custom_link["SisSurvey"]["SisClientLogo"]["file"];
$data = base64_decode(preg_replace('#^data:image/\w+;base64,#i', '', $this->QR->text($link)));
file_put_contents($tmp_image, $data);
// New portrait section
$section = $phpWord->addSection();
$filename = 'coupon_lien_'.$custom_link['SisQuestionnaireCustomLink']['number'].'.docx';
// Add first page header
$header = $section->addHeader();
$header->firstPage();
$table = $header->addTable();
$table->addRow();
$cell = $table->addCell(1);
$table->addCell(1)->addImage($logo, array('width' => 200, 'align' => 'left'));
$cell = $table->addCell(4500);
$table->addCell(4500)->addImage($tmp_image, array('width' => 100, 'align' => 'right'));
// New portrait section
$section->addTextBreak(4);
$section->addText(htmlspecialchars($custom_link['SisQuestionnaireCustomLink']['title'], ENT_COMPAT, 'UTF-8'), array('bold' => true, 'size' => 26));
$section->addTextBreak(2);
$section->addText(htmlspecialchars($custom_link['SisQuestionnaireCustomLink']['description'], ENT_COMPAT, 'UTF-8'), array('size' => 14));
$section->addTextBreak(2);
$section->addText(htmlspecialchars($link, ENT_COMPAT, 'UTF-8'), array('size' => 12));
// Add footer
$footer = $section->addFooter();
$footer->addPreserveText(htmlspecialchars('Page {PAGE} of {NUMPAGES}.', ENT_COMPAT, 'UTF-8'), null, array('alignment' => 'center'));
$footer->addLink('https://github.com/PHPOffice/PHPWord', htmlspecialchars('PHPWord on GitHub', ENT_COMPAT, 'UTF-8'));


// Saving the document as OOXML file...
$xmlWriter = \PhpOffice\PhpWord\IOFactory::createWriter($phpWord, 'Word2007');
$temp_file = tempnam(sys_get_temp_dir(), 'PHPWord');
$xmlWriter->save($temp_file);
header('Content-Disposition: attachment; filename="'.$filename.'"');
header('Content-Transfer-Encoding: binary');
header('Expires: 0');
header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
header('Pragma: public');
header('Content-Length: ' . filesize($temp_file));
flush();
readfile($temp_file);
unlink($temp_file);
unlink($tmp_image);
exit;
?>
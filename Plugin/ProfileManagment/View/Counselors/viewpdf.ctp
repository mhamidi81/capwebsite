<?php
App::import('Vendor','xtcpdf');

$tcpdf = new XTCPDF();
$textfont = 'freesans'; // looks better, finer, and more condensed than 'dejavusans' 
$tcpdf->SetAuthor("KBS Homes & Properties at http://kbs-properties.com"); 
$tcpdf->SetAutoPageBreak( false ); 
$tcpdf->setHeaderFont(array($textfont,'',40)); 
$tcpdf->xheadercolor = array(150,0,0); 
$tcpdf->uniquekey = md5($request['Request']['id']);


$tcpdf->AddPage();
$tcpdf->SetY(32);
$tcpdf->Cell(0, 0, 'N° ' .$request['Request']['number'].' du '.date('d-m-Y', strtotime($request['Request']['event_date'])), 0, 0, 'R');
$tcpdf->SetY(45);
$tcpdf->SetFont('dejavusans', 'B', 18);
$tcpdf->RoundedRect(50, 43, 110, 12, 2, '1111', '', array('width' => 0.4), '');
$tcpdf->Cell(0, 0, 'Déclaration sur l’honneur', 0, 1, 'C');
$tcpdf->ln(20);
$tcpdf->SetFont('dejavusans', '', 12);

if($request['Request']['requester_type'] == 'legal')
{
	
	$tcpdf->SetFont('dejavusans', 'B', 11);
	$tcpdf->Cell(38, 0, 'Je soussigné : ', 0, 0, 'L');
	$tcpdf->SetFont('dejavusans', '', 11);

	$tcpdf->Cell(0, 0, $counselor['Counselor']['first_name'].' '.$counselor['Counselor']['last_name'], 0, 1, 'L');
	
	$tcpdf->ln();
	$tcpdf->SetFont('dejavusans', 'B', 11);
	$tcpdf->Cell(75, 0, 'Agit au nom et pour le compte : ', 0, 0, 'L');
	$tcpdf->SetFont('dejavusans', '', 11);
	$tcpdf->Cell(0, 0, $request['Company']['name'].'  '.strtoupper($request['Company']['type']), 0, 1, 'L');

	$tcpdf->ln();
	$tcpdf->SetFont('dejavusans', 'B', 11);
	$tcpdf->Cell(40, 0, 'Au capital de : ', 0, 0, 'L');
	$tcpdf->SetFont('dejavusans', '', 11);
	$tcpdf->Cell(0, 0, $request['Company']['capital'], 0, 1, 'L');

	$tcpdf->ln();
	$tcpdf->SetFont('dejavusans', 'B', 11);
	$tcpdf->cell(95, 0, 'Adresse du siège social de la société : ', 0, 0, 'L');
	$tcpdf->SetFont('dejavusans', '', 12);
	$tcpdf->Multicell(0, 0, $request['Company']['address'], 0, 'C');
	$tcpdf->ln();
	$tcpdf->SetFont('dejavusans', 'B', 11);
	$tcpdf->Cell(70, 0, 'Affilié à la CNSS sous le n° : ', 0, 0, 'L');
	$tcpdf->SetFont('dejavusans', '', 12);
	$tcpdf->Cell(0, 0, $request['Company']['cnss'], 0, 1, 'L');

	$tcpdf->ln();
	$tcpdf->SetFont('dejavusans', 'B', 11);
	$tcpdf->Cell(80, 0, 'Inscrite au registre du commerce : ', 0, 0, 'L');
	$tcpdf->SetFont('dejavusans', '', 11);
	$tcpdf->Cell(40, 0, $request['Company']['City']['name'], 0, 0, 'L');
	$tcpdf->SetFont('dejavusans', 'B', 11);
	$tcpdf->Cell(30, 0, 'sous le n° : ', 0, 0, 'L');
	$tcpdf->SetFont('dejavusans', '', 11);
	$tcpdf->Cell(50, 0, $request['Company']['number'], 0, 1, 'L');

	$tcpdf->ln();
	$tcpdf->SetFont('dejavusans', 'B', 11);
	$tcpdf->Cell(40, 0, 'N° de patente : ', 0, 0, 'L');
	$tcpdf->SetFont('dejavusans', '', 11);
	$tcpdf->Cell(0, 0, $request['Company']['patente'], 0, 1, 'L');

	$tcpdf->ln();
	$tcpdf->SetFont('dejavusans', 'B', 11);
	$tcpdf->Cell(40, 0, 'Numéro de tél : ', 0, 0, 'L');
	$tcpdf->SetFont('dejavusans', '', 11);
	$tcpdf->Cell(0, 0, $request['Company']['phone'], 0, 1, 'L');

	$tcpdf->ln();
	$tcpdf->SetFont('dejavusans', 'B', 11);
	$tcpdf->Cell(43, 0, 'Numéro du fax : ', 0, 0, 'L');
	$tcpdf->SetFont('dejavusans', '', 11);
	$tcpdf->Cell(0, 0, $request['Company']['fax'], 0, 1, 'L');

	$tcpdf->ln();
	$tcpdf->SetFont('dejavusans', 'B', 11);
	$tcpdf->Cell(58, 0, 'Adresse électronique : ', 0, 0, 'L');
	$tcpdf->SetFont('dejavusans', '', 11);
	$tcpdf->Cell(0, 0, $request['Company']['email'], 0, 1, 'L');
	$tcpdf->ln(10);
}
else
{
	$tcpdf->SetFont('dejavusans', 'B', 12);
	$tcpdf->Cell(38, 0, 'Je soussigné : ', 0, 0, 'L');
	$tcpdf->SetFont('dejavusans', '', 12);
	$tcpdf->Cell(0, 0, $request['Counselor']['first_name'].' '.$request['Counselor']['last_name'], 0, 1, 'L');
	
	$tcpdf->ln();
	$tcpdf->SetFont('dejavusans', 'B', 12);
	$tcpdf->Cell(103, 0, 'Numéro de la carte nationale d’identité : ', 0, 0, 'L');
	$tcpdf->SetFont('dejavusans', '', 12);
	$tcpdf->Cell(0, 0, $request['Counselor']['cin'], 0, 1, 'L');

	$tcpdf->ln();
	$tcpdf->SetFont('dejavusans', 'B', 12);
	$tcpdf->Cell(64, 0, 'Adresse du domicile élu : ', 0, 0, 'L');
	$tcpdf->SetFont('dejavusans', '', 12);
	$tcpdf->Multicell(0, 0, $request['Counselor']['address'], 0, 'C');
	$tcpdf->ln(1);
	$tcpdf->SetFont('dejavusans', 'B', 12);
	$tcpdf->Cell(35, 0, 'Téléphone : ', 0, 0, 'L');
	$tcpdf->SetFont('dejavusans', '', 12);
	$tcpdf->Cell(0, 0, $request['Counselor']['mobile_phone'], 0, 1, 'L');

	$tcpdf->ln();
	$tcpdf->SetFont('dejavusans', 'B', 12);
	$tcpdf->Cell(58, 0, 'Adresse électronique : ', 0, 0, 'L');
	$tcpdf->SetFont('dejavusans', '', 12);
	$tcpdf->Cell(0, 0, $request['Counselor']['email'], 0, 1, 'L');

	$tcpdf->ln(4);
	$tcpdf->Cell(0, 0, 'Agissant en mon nom et à mon compte,', 0, 1, 'L');
	$tcpdf->ln(20);
}
	
	$tcpdf->SetFont('dejavusans', 'B', 12);
	$tcpdf->Cell(0, 0, 'Déclare sur l’honneur que', 0, 1, 'L');
	$tcpdf->ln(5);
	$tcpdf->SetFont('dejavusans', '', 11);
	$tcpdf->Cell(6, 0, '1.', 0, 0, 'L');
	$tcpdf->Multicell(0, 2, "je m'engage à exercer  la profession de conseiller agricole conformément aux dispositions de la loi n° 62-12 relative à l'organisation de la profession de conseiller agricole et de ses textes d’application", 0, 'L');
	$tcpdf->ln(4);
	$tcpdf->Cell(6, 0, '2.', 0, 0, 'L');
	$tcpdf->Multicell(0, 2, "je m'engage à informer  l’administration de tout changement sur les données déclarées auparavant et sur  n' importe quel sujet en relation avec l’exercice de  la profession de conseiller agricole  dans un délai  n’excédant pas trente (30) jours ;", 0, 'L');
	$tcpdf->ln(4);
	$tcpdf->Cell(6, 0, '3.', 0, 0, 'L');
	$tcpdf->Multicell(0, 2, "Je certifie l’exactitude des renseignements contenus dans la présente déclaration sur l’honneur et dans toutes les pièces contenues  dans mon dossier de demande d’agrément ;", 0, 'L');
	$tcpdf->ln(10);

	$tcpdf->Cell(0, 0, 'Fait à …………………………., le………………………….', 0, 1, 'R');
	$tcpdf->ln(4);
	$tcpdf->Cell(180, 0, 'Signature et cachet de l’intéressé', 0, 1, 'R');
	
	$tcpdf->SetPrintHeader(false);
	$tcpdf->SetPrintFooter(false);
	
	$tcpdf->AddPage();
	$tcpdf->SetY(3);
    $image_file = Configure::read('counselor_photo_abs_path').$counselor['Counselor']['image'];
    $extension = (strpos(strtolower($counselor['Counselor']['image']), '.png') !== false)? 'PNG': 'JPG';
    $tcpdf->Image($image_file, 5,3, 40,30, $extension, '', 'L', false, 200, '', false, false, 0, false, false, false);
 
	
	$tcpdf->SetFont('dejavusans', 'B', 18);
	$tcpdf->RoundedRect(80, 12, 80, 12, 2, '1111', '', array('width' => 0.4), '');
	$tcpdf->SetXY(40, 14);
	$tcpdf->Cell(0, 0, 'Curriculum Vitae', 0, 1, 'C');

	$tcpdf->SetY(45);

	$tcpdf->SetFont('dejavusans', 'BU', 11);
	$tcpdf->Cell(0, 0, 'Données personnelles :', 0, 1, 'L');
	$tcpdf->ln(2);

	$tcpdf->SetFont('dejavusans', '', 10);

	$tcpdf->SetX(20);
 	$tcpdf->Cell(50, 0, 'Prénom ', 0, 0, 'L');
	$tcpdf->Cell(0, 0, ': '.$counselor['Counselor']['first_name'], 0, 1, 'L');
	$tcpdf->ln();

	$tcpdf->SetX(20);
 	$tcpdf->Cell(50, 0, 'Nom ', 0, 0, 'L');
	$tcpdf->Cell(0, 0, ': '.$counselor['Counselor']['last_name'], 0, 1, 'L');
	$tcpdf->ln();

	$tcpdf->SetX(20);
 	$tcpdf->Cell(50, 0, 'Date de naissance ', 0, 0, 'L');
	$tcpdf->Cell(0, 0, ': '.date('d-m-Y', strtotime($counselor['Counselor']['birthday'])), 0, 1, 'L');
	$tcpdf->ln();

	$tcpdf->SetX(20);
 	$tcpdf->Cell(50, 0, 'Lieu de naissance ', 0, 0, 'L');
	$tcpdf->Cell(0, 0, ': '.$counselor['BirthCity']['name'], 0, 1, 'L');
	$tcpdf->ln();

	$tcpdf->SetX(20);
 	$tcpdf->Cell(50, 0, 'Situation familiale ', 0, 0, 'L');
	$tcpdf->Cell(0, 0, ': '.$family_statuses[$counselor['Counselor']['family_status']], 0, 1, 'L');
	$tcpdf->ln();

	$tcpdf->SetX(20);
	$tcpdf->Cell(50, 0, 'N° de la Carte Nationale', 0, 0, 'L');
	$tcpdf->Cell(0, 0, ': '.$counselor['Counselor']['cin'], 0, 1, 'L');

	$tcpdf->SetX(10);
	$tcpdf->ln(2);
	$tcpdf->SetFont('dejavusans', 'BU', 11);
	$tcpdf->Cell(0, 0, 'Coordonnées :', 0, 1, 'L');
	$tcpdf->ln(2);
	$tcpdf->SetFont('dejavusans', '', 10);

	$tcpdf->SetX(20);
 	$tcpdf->Cell(0, 0, 'Adresse :    '.$counselor['Counselor']['address'], 0, 1, 'L');
	$tcpdf->ln();

	$tcpdf->SetX(20);
 	$tcpdf->Cell(0, 0, 'Numéro de téléphone fixe :    '.$counselor['Counselor']['office_phone'], 0, 1, 'L');
	$tcpdf->ln();

	$tcpdf->SetX(20);
 	$tcpdf->Cell(0, 0, 'Numéro de téléphone portable :    '.$counselor['Counselor']['mobile_phone'], 0, 1, 'L');
	$tcpdf->ln();

	$tcpdf->SetX(20);
 	$tcpdf->Cell(0, 0, 'Email :    '.$counselor['Counselor']['email'], 0, 1, 'L');
	$tcpdf->ln();

	$tcpdf->SetX(20);
 	$tcpdf->Cell(0, 0, 'Fax :    '.$counselor['Counselor']['fax'], 0, 1, 'L');
 	$tcpdf->ln();

	/***************************dîplome *************************/
	$dimensions = $tcpdf->getPageDimensions();
	$tcpdf->SetX(10);
	$tcpdf->ln(2);

	if ($tcpdf->GetY() + 30 + $dimensions['bm'] > $dimensions['hk']) {
		$tcpdf->AddPage();
	}

	$tcpdf->SetFont('dejavusans', 'BU', 11);
	$tcpdf->Cell(0, 0, 'Compétences et diplômes :', 0, 1, 'L');
	$tcpdf->ln(4);
	$tcpdf->SetFont('dejavusans', '', 9);
	
	$hasborder = false; 
	
	$tcpdf->MultiCell(60, 6, 'Diplôme' ,'LRBT','L',0,0);
	$tcpdf->MultiCell(20, 6, 'Année' ,'LRBT','L',0,0);
	$tcpdf->MultiCell(55, 6, 'Etablissement' ,'LRBT','L',0,0);
	$tcpdf->MultiCell(55, 6, 'Spécialité' ,'LRBT','L',0,0);	 
	$tcpdf->ln(6);

	foreach($counselor['Qualification'] as $row) {
		$rowcount = 0;
	 
		//work out the number of lines required
		$rowcount = max($tcpdf->getNumLines($row['Diplome']['name'], 60),$tcpdf->getNumLines($row['Establishment']['name'], 55),$tcpdf->getNumLines($row['Speciality']['name'], 55));
	 
		$startY = $tcpdf->GetY();
	 
		if (($startY + $rowcount * 6) + $dimensions['bm'] > ($dimensions['hk'])) {
			//this row will cause a page break, draw the bottom border on previous row and give this a top border
			//we could force a page break and rewrite grid headings here
			if ($hasborder) {
				$hasborder = false;
			} else {
				$tcpdf->Cell(190,0,'','T'); //draw bottom border on previous row
				$tcpdf->Ln();
			}
			$tcpdf->AddPage();
			$borders = 'LTR';
		} elseif ((ceil($startY) + $rowcount * 6) + $dimensions['bm'] == floor($dimensions['hk'])) {
			//fringe case where this cell will just reach the page break
			//draw the cell with a bottom border as we cannot draw it otherwise
			$borders = 'LRB';	
			$hasborder = true; //stops the attempt to draw the bottom border on the next row
		} else {
			//normal cell
			$borders = 'LR';
		}
	 
		//now draw it
		$tcpdf->MultiCell(60,$rowcount * 6,$row['Diplome']['name'],$borders,'L',0,0);
		$tcpdf->MultiCell(20,$rowcount * 6,$row['year'],$borders,'L',0,0);
		$tcpdf->MultiCell(55,$rowcount * 6,$row['Establishment']['name'],$borders,'L',0,0);
		$tcpdf->MultiCell(55,$rowcount * 6,$row['Speciality']['name'],$borders,'L',0,0);
	 
		$tcpdf->Ln();
	}
 	$tcpdf->Cell(190,0,'','T');  //last bottom border
 	/***************************end dîplome *************************/

	/***************************Expériences professionnelles *************************/

	$tcpdf->SetX(10);
	$tcpdf->ln(2);
	
	if ($tcpdf->GetY() + 30 + $dimensions['bm'] > $dimensions['hk']) {
		$tcpdf->AddPage();
	}
	
	$tcpdf->SetFont('dejavusans', 'BU', 11);
	$tcpdf->Cell(0, 0, 'Expériences professionnelles :', 0, 1, 'L');
	$tcpdf->ln(4);
	$tcpdf->SetFont('dejavusans', '', 9);

	$hasborder = false; 
	
	$tcpdf->MultiCell(60, 6, 'Fonctions' ,'LRBT','L',0,0);
	$tcpdf->MultiCell(60, 6, 'Période (de……à...........)' ,'LRBT','L',0,0);
	$tcpdf->MultiCell(70, 6, 'Administration ou établissement' ,'LRBT','L',0,0);
	$tcpdf->ln(6);

	foreach($counselor['ProfessionalExperience'] as $row) {
		$rowcount = 0;
	 	
	    $row['end_date'] = (!empty($row['end_date']))? date('d-m-Y', strtotime($row['end_date'])) : '';
	    $row['start_date'] = (!empty($row['start_date']))? date('d-m-Y', strtotime($row['start_date'])) : '';

		//work out the number of lines required
		$rowcount = max($tcpdf->getNumLines($row['function'], 60),$tcpdf->getNumLines($row['start_date'].' '.$row['end_date'], 60),$tcpdf->getNumLines($row['organisation'], 70));
	 
		$startY = $tcpdf->GetY();
	 
		if (($startY + $rowcount * 6) + $dimensions['bm'] > ($dimensions['hk'])) {
			//this row will cause a page break, draw the bottom border on previous row and give this a top border
			//we could force a page break and rewrite grid headings here
			if ($hasborder) {
				$hasborder = false;
			} else {
				$tcpdf->Cell(190,0,'','T'); //draw bottom border on previous row
				$tcpdf->Ln();
			}
			$borders = 'LTR';
			$tcpdf->AddPage();
		} elseif ((ceil($startY) + $rowcount * 6) + $dimensions['bm'] == floor($dimensions['hk'])) {
			//fringe case where this cell will just reach the page break
			//draw the cell with a bottom border as we cannot draw it otherwise
			$borders = 'LRB';	
			$hasborder = true; //stops the attempt to draw the bottom border on the next row
		} else {
			//normal cell
			$borders = 'LR';
		}
	 
		//now draw it
		$tcpdf->MultiCell(60,$rowcount * 6,$row['function'],$borders,'L',0,0);
		$tcpdf->MultiCell(60,$rowcount * 6,$row['start_date'].' à '.$row['end_date'],$borders,'L',0,0);
		$tcpdf->MultiCell(70,$rowcount * 6,$row['organisation'],$borders,'L',0,0);
	 
		$tcpdf->Ln();
	}
 	$tcpdf->Cell(190,0,'','T');  //last bottom border
 	/***************************end Expériences professionnelles *************************/

	/*************************** Publications et recherches *************************/
	if(!empty($counselor['PublicationResearch'])){

		$tcpdf->SetX(10);
		$tcpdf->ln(2);

		if ($tcpdf->GetY() + 30 + $dimensions['bm'] > $dimensions['hk']) {
			$tcpdf->AddPage();
		}

		$tcpdf->SetFont('dejavusans', 'BU', 11);
		$tcpdf->Cell(0, 0, 'Publications et recherches :', 0, 1, 'L');
		$tcpdf->ln(4);
		$tcpdf->SetFont('dejavusans', '', 9);
		$tcpdf->MultiCell(80, 6, 'Titre' ,'LRBT','L',0,0);
		$tcpdf->MultiCell(30, 6, 'Date' ,'LRBT','L',0,0);
		$tcpdf->MultiCell(80, 6, 'Description' ,'LRBT','L',0,0);
		$tcpdf->ln(6);

		$hasborder = false;

		foreach($counselor['PublicationResearch'] as $row) {
			$rowcount = 0;
		 
			//work out the number of lines required
			$rowcount = max($tcpdf->getNumLines($row['name'], 80),$tcpdf->getNumLines($row['event_date'], 30),$tcpdf->getNumLines($row['description'], 80));

			 $row['event_date'] = (!empty($row['event_date']))? date('d-m-Y', strtotime($row['event_date'])) : '';
		 
			$startY = $tcpdf->GetY();
		 
			if (($startY + $rowcount * 6) + $dimensions['bm'] > ($dimensions['hk'])) {
				//this row will cause a page break, draw the bottom border on previous row and give this a top border
				//we could force a page break and rewrite grid headings here
				if ($hasborder) {
					$hasborder = false;
				} else {
					$tcpdf->Cell(190,0,'','T'); //draw bottom border on previous row
					$tcpdf->Ln();
				}
				$tcpdf->AddPage();
				$borders = 'LTR';
			} elseif ((ceil($startY) + $rowcount * 6) + $dimensions['bm'] == floor($dimensions['hk'])) {
				//fringe case where this cell will just reach the page break
				//draw the cell with a bottom border as we cannot draw it otherwise
				$borders = 'LRB';	
				$hasborder = true; //stops the attempt to draw the bottom border on the next row

			} else {
				//normal cell
				$borders = 'LR';
			}

			//now draw it
			$tcpdf->MultiCell(80,$rowcount * 6,$row['name'],$borders,'L',0,0);
			$tcpdf->MultiCell(30,$rowcount * 6,$row['event_date'],$borders,'L',0,0);
			$tcpdf->MultiCell(80,$rowcount * 6,$row['description'],$borders,'L',0,0);
		 
			$tcpdf->Ln();
		}
	 	$tcpdf->Cell(190,0,'','T');  //last bottom border
 	}
 	/***************************end Publications et recherches *************************/

	/*************************** Activités associatives *************************/
	if(!empty($counselor['CommunityActivity'])){
		$tcpdf->SetX(10);
		$tcpdf->ln(2);

		if ($tcpdf->GetY() + 30 + $dimensions['bm'] > $dimensions['hk']) {
			$tcpdf->AddPage();
		}

		$tcpdf->SetFont('dejavusans', 'BU', 11);
		$tcpdf->Cell(0, 0, 'Activités associatives :', 0, 1, 'L');
		$tcpdf->ln(4);
		$tcpdf->SetFont('dejavusans', '', 9);

		$dimensions = $tcpdf->getPageDimensions();
		$hasBorder = false; 

		
		$tcpdf->MultiCell(60, 6, 'Titre' ,'LRBT','L',0,0);
		$tcpdf->MultiCell(50, 6, 'Association' ,'LRBT','L',0,0);
		$tcpdf->MultiCell(25, 6, 'Date' ,'LRBT','L',0,0);
		$tcpdf->MultiCell(55, 6, 'Description' ,'LRBT','L',0,0);
		$tcpdf->ln(6);

		foreach($counselor['CommunityActivity'] as $row) {
			$rowcount = 0;
		 
			//work out the number of lines required
			$rowcount = max($tcpdf->getNumLines($row['name'], 80),$tcpdf->getNumLines($row['association'], 30),$tcpdf->getNumLines($row['description'], 80));
		    
		    $row['start_date'] = (!empty($row['start_date']))? date('d-m-Y', strtotime($row['start_date'])) : '';
			$startY = $tcpdf->GetY();
		 
			if (($startY + $rowcount * 6) + $dimensions['bm'] > ($dimensions['hk'])) {
				//this row will cause a page break, draw the bottom border on previous row and give this a top border
				//we could force a page break and rewrite grid headings here
				if ($hasborder) {
					$hasborder = false;
				} else {
					$tcpdf->Cell(190,0,'','T'); //draw bottom border on previous row
					$tcpdf->Ln();
				}
				$borders = 'LTR';
				$tcpdf->AddPage();
			} elseif ((ceil($startY) + $rowcount * 6) + $dimensions['bm'] == floor($dimensions['hk'])) {
				//fringe case where this cell will just reach the page break
				//draw the cell with a bottom border as we cannot draw it otherwise
				$borders = 'LRB';	
				$hasborder = true; //stops the attempt to draw the bottom border on the next row
				$tcpdf->AddPage();
			} else {
				//normal cell
				$borders = 'LR';
			}
		 
			//now draw it
			$tcpdf->MultiCell(60,$rowcount * 6,$row['name'],$borders,'L',0,0);
			$tcpdf->MultiCell(50,$rowcount * 6,$row['association'],$borders,'L',0,0);
			$tcpdf->MultiCell(25,$rowcount * 6,$row['start_date'],$borders,'L',0,0);
			$tcpdf->MultiCell(55,$rowcount * 6,$row['description'],$borders,'L',0,0);
		 
			$tcpdf->Ln();
		}
	 	$tcpdf->Cell(190,0,'','T');  //last bottom border
 	}
 	/***************************end Activités associatives *************************/

 	/***************************Langues * *************************/
 	$tcpdf->SetX(10);
	$tcpdf->ln(2);

	if ($tcpdf->GetY() + 30 + $dimensions['bm'] > $dimensions['hk']) {
		$tcpdf->AddPage();
	}

	$tcpdf->SetFont('dejavusans', 'BU', 11);
	$tcpdf->Cell(0, 0, 'Langues :', 0, 1, 'L');
	$tcpdf->ln(4);
	$tcpdf->SetFont('dejavusans', '', 9);


	foreach($counselor['CounselorsLanguage'] as $row) {
		//now draw it
		$tcpdf->MultiCell(0, 0 ,$row['language'].' : (Lire : '.$row['read'].'), (Ecrire : '.$row['write'].'), (Parlé : '.$row['speak'].')' ,'','L',0,0);
		$tcpdf->Ln(6);
	}
 	/***************************end Langues  ***********************/

echo $tcpdf->Output('filename.pdf', 'D');
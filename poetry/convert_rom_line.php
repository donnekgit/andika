<?php

/* 
*********************************************************************
Copyright Kevin Donnelly 2012.
kevindonnelly.org.uk
This file is part of Andika!, a set of tools for writing Swhili in Arbic script..

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License or the GNU
Affero General Public License as published by the Free Software
Foundation, either version 3 of the License, or (at your option)
any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
and the GNU Affero General Public License along with this program.
If not, see <http://www.gnu.org/licenses/>.
*********************************************************************
*/ 

mb_internal_encoding("UTF-8");
include("./includes/fns.php");
// include("./andika/config.php");

$poem="maisha-mume";
$poemlines=file("poetry/{$poem}.txt", FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);

$fp = fopen("poetry/outputs/{$poem}_swahili.tex", "w") or die("Can't create the file");

$header=file_get_contents("poetry/tex/poem_header.tex");
fwrite($fp, $header);
fwrite($fp, "\n");

$title=file_get_contents("poetry/tex/poem_title.tex");
fwrite($fp, $title);
fwrite($fp, "\n");

foreach ($poemlines as $poemline)
{
// 	echo $poemline."\n";
	
	$numtext=explode(".", $poemline);
	$num=$numtext[0];
	
	$vipande=explode("-", $numtext[1]);
	
	echo $num."\n";
	
	$ab=$vipande[0]." * ".$vipande[1];
	$roman_ab=trim($ab);
	$prepped=prep_rom($roman_ab);
	$translit=rom2ar($prepped);
	$arabic_ab=html_entity_decode(preg_replace("/U\+([0-9A-F]{4,5})/", "&#x\\1;", $translit), ENT_NOQUOTES, 'UTF-8');
	
	echo $arabic_ab."\n";
	echo $roman_ab."\n";
	
	//fwrite($fp, "\\textarabic{".$arabic_ab."} & \\\\ \n");
	fwrite($fp, "\\textarabic{".$arabic_ab."} & \\textarabic{".convert_numbers($num)."} \\\\ \n");
	fwrite($fp, "\\nopagebreak \T{".$roman_ab."} & \T{".$num."a/b} \\\\ \n");
	
	$cd=$vipande[2]." * ".$vipande[3];
	$roman_cd=trim($cd);
	$prepped=prep_rom($roman_cd);
	$translit=rom2ar($prepped);
	$arabic_cd=html_entity_decode(preg_replace("/U\+([0-9A-F]{4,5})/", "&#x\\1;", $translit), ENT_NOQUOTES, 'UTF-8');
	
	echo $arabic_cd."\n";
	echo $roman_cd."\n";
	
	fwrite($fp, "\\textarabic{".$arabic_cd."} & \\\\ \n");
	fwrite($fp, "\\nopagebreak \T{".$roman_cd."} & \T{".$num."c/d} \\\\ \n");

	fwrite($fp, "[8mm] \n\n");

	echo "\n";
}

$prefooter=file_get_contents("poetry/tex/poem_prefooter.tex");
fwrite($fp, $prefooter);
fwrite($fp, "\n");

$footer=file_get_contents("poetry/tex/poem_footer.tex");
fwrite($fp, $footer);
fwrite($fp, "\n");

fclose($fp);

exec("xelatex -interaction=nonstopmode -output-directory=poetry/outputs poetry/outputs/{$poem}_swahili.tex 2>&1");

?>
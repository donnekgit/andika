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

$target="Hamad.txt";

// Open the file we'll write the conversion to.
$fp = fopen("conversions/{$target}_converted", "w");

// Read the prepped contents in.
$lines=file("$target");
foreach ($lines as $line)
{
	// Mark penultimate syllables in the standard orthography, and a few other things.
	$prepped=prep_rom($line);
	//echo $prepped;
	
	$translit=rom2ar($prepped, $no_sukun);
// 	$translit=rom2ar($prepped, 1);
	//echo $translit."<br />";
	
// 	// Show sukun on long waw and yeh if that option has been ticked.
// 	if (isset($_POST['longvowel']))
// 	{
// 		$translit=waw_yeh_sukun($translit);
// 	}

	$arabic=html_entity_decode(preg_replace("/U\+([0-9A-F]{4,5})/", "&#x\\1;", $translit), ENT_NOQUOTES, 'UTF-8');
	
// 	// Convert numbers separately, and only if that option has been ticked.
// 	if (isset($_POST['numbers']))
// 	{
// 		$arabic=preg_replace("/([0-9]+)/e", "convert_numbers('$1')", $arabic);
// 	}

	//echo $arabic."\n";
	$line="$arabic";
	
	fwrite($fp, $line);
}

fclose($fp);

?>
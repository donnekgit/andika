<?php

/* 
*********************************************************************
Copyright Kevin Donnelly 2012.
kevindonnelly.org.uk
This file is part of Andika!, a set of tools for writing Swahili in Arbic script.

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

// Get the web address.
$webtrans=trim($_POST['webtrans']);
//echo $webtrans."<br />";

// Pass the option not to show sukun if that option has been ticked. 
$no_sukun=$_POST['sakani'];
//echo $no_sukun."<br />";

// Check the web address is clean.
for ($i=0; $i<strlen($webtrans); $i++) 
{
	//$letter=$webtrans[$i];
	//echo $letter."\n";
	if (!preg_match("%[-a-zA-Z0-9_:./']%u", $webtrans[$i]))
	{
		echo "<h6>Only alphanumeric characters, full-stops (.), hyphens (-), underscores (_), single quotes ('), colons (:) and slashes (/) are allowed in the web address.</h6>";
		exit;
	}
}

// IMPORTANT: You need to allow access to the webtrans holding directory.
$newname=basename($webtrans);
//echo $newname."<br />";

// Download the webpage into the webtrans holding directory.
// Escaped quotes handle single quotes in words like "ng'ombe".
// -k (--convert-links) keeps the downloaded links pointing to the original web-based files.
// --no-cache ensures a fresh copy is taken every time, rather than using cached copies.
// -O outputs the download to a file.
system("wget -k --no-cache \"$webtrans\" -O webtrans/\"$newname\"");

// Read the contents into PHP.
$webpage=file_get_contents("webtrans/$newname");

// Format the contents, ready for conversion.
$webpage=format_for_trans($webpage);

// Write out the contents again.
file_put_contents("webtrans/{$newname}_ar.txt", $webpage);

// Get rid of blank lines.
// Escaped quotes handle single quotes in words like "ng'ombe".
exec("sed -i '/^$/d' webtrans/\"{$newname}\"_ar.txt");

// Open the file we'll write the conversion to.
$fp = fopen("webtrans/{$newname}_ar_done.html", "w");

// Read the prepped contents in.
$lines=file("webtrans/{$newname}_ar.txt");
foreach ($lines as $line)
{
	if (!preg_match("/^</", $line))  // If the line is not HTML stuff ...
	{
		// $line=lose_c($line);  // Convert c to s/k - stops lines getting messed up when there are English words (eg hyperlink references) in them.  UPDATE: Using kaf with three dots instead, which will allow round-tripping.
		
		// Mark penultimate syllables in the standard orthography, and a few other things.
		$prepped=prep_rom($line);
		//echo $prepped;
		
		$translit=rom2ar($prepped, $no_sukun);
		//echo $translit."<br />";
		
		// Show sukun on long waw and yeh if that option has been ticked.
		if (isset($_POST['longvowel']))
		{
			$translit=waw_yeh_sukun($translit);
		}

		$arabic=html_entity_decode(preg_replace("/U\+([0-9A-F]{4,5})/", "&#x\\1;", $translit), ENT_NOQUOTES, 'UTF-8');
		
		// Convert numbers separately, and only if that option has been ticked.
		if (isset($_POST['numbers']))
		{
			$arabic=preg_replace("/([0-9]+)/e", "convert_numbers('$1')", $arabic);
		}

		//echo $arabic."\n";
		$line="<span style=\"font-family: Scheherazade; font-size: 25px; text-align: right; line-height: 1.5;\">".$arabic."</span>";
		
		fwrite($fp, $line);
	}
	else  // If the line is HTML stuff, just write it out unaltered.
	{
		fwrite($fp, $line);
	}
}

fclose($fp);

// Fix the title of the page.
// Escaped quotes handle single quotes in words like "ng'ombe".
exec("sed -ri 's/<title>/<title>Conversion/' webtrans/\"{$newname}\"_ar_done.html");

// Give two links where the converted and original pages can be opened.

echo "<img alt=\"spinner\" id=\"spinner\" src=\"images/ajax-loader.gif\" style=\"display:none;\" />";

echo "<h6>Click to see the <a href=\"webtrans/{$newname}_ar_done.html\" target=_blank>converted webpage</a> in a new window or tab.</h6>";

echo "<em>(Click to see the <a href=\"$webtrans\" target=_blank> original webpage</a> in a new window or tab.</em>)";

?>
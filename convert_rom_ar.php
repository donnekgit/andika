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

$mystring=trim($_POST['rom_ar_in']);
//echo $mystring."<br />";

// Pass the option not to show sukun into rom2ar() if that option has been ticked. 
$no_sukun=$_POST['sakani'];
//echo $no_sukun."<br />";

//$line=lose_c($line);  // Convert c to s/k - stops lines getting messed up when there are English words (eg hyperlink references) in them.  Using gaf instead, which will allow round-tripping.

// Truncate the text to 900 characters, and strip HTML/PHP tags.
$mystring=strip_tags(substr($mystring, 0, 900));

// Move line-breaks out of the way.
$mystring=preg_replace("/\n/", "###", $mystring);

// Mark penultimate syllables in the standard orthography, and a few other things.
$prepped=prep_rom($mystring);
// echo preg_replace("/###/", "<br />", $prepped)."<br />";

$translit=rom2ar($prepped, $no_sukun);
// echo preg_replace("/###/", "<br />", $translit)."<br />";

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

// Bring back the line-breaks.
$arabic=preg_replace("/###/", "<br />", $arabic);

echo "<p class=\"swahili\">";
echo $arabic."<br />";
echo "</p>";

?>
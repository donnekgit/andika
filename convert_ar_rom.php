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

$input=trim($_POST['ar_rom_in']);
//echo $mystring."<br />";

// Truncate the text to 900 characters, and strip HTML/PHP tags.
$input=strip_tags(substr($input, 0, 900));

// Retain line-breaks.
$input=nl2br($input);

// Give a one-to-one transliteration of the Arabic glyphs into Roman letters.
$translit=ar2rom($input);
echo "ar2rom:<br /> ".$translit."<br />";

// Now smooth the transliteration to give a standard transcription.
// The most obvious smoother is for the standard Swahili orthography.
// But others are possible, eg for close transcription.
$standard=standardise($translit);
$close=close_trans($translit);

//echo "Standard: ".$standard."<br />";

echo "<p class=\"\">";
echo "close:<br />".$close."<br /><br />";
echo "Standard:<br />".$standard."<br />";
echo "</p>";

?>
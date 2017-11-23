<?php

/* 
*********************************************************************
Copyright Kevin Donnelly 2012-2017.
kevindonnelly.org.uk
This file is part of Andika!, a set of tools for writing Swahili in Arabic script.

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

include("./andika/config.php");
include("./includes/fns.php");

// ===== Accept the arguments from the command-line. =====
$poem=$argv[1];  // Take the name of the poem from the command-line argument.
if (empty($argv[1]))
{
    echo "\nYou need to specify the name of the poem.\nAdd it to the end of the line.\n\n";
    exit;
}
$words=$poem."_words";  // Name of the words table: poem_words.
$action=$argv[2];  // Action to be taken: clear, fill.
$filler=$argv[3];  // Tag to be inserted in the noshow field.

$stanzas=$argv[4];  // Stanzas to be targetted.
$locs=$argv[5];  // Locations in the stanzas. 
// $poss=$argv[6];  //Positions in the locations (this allows individual words to be marked as noshow.  Probably not usedful - it would be easier to do single words manually, since you have to get the location data for them anyway.

if (preg_match("/all/", $stanzas))
{
    $stanzaphrase="";
}
else
{
    $stanzasin=buildseq($stanzas);
    $stanzaphrase="where stanza in ($stanzasin)";
}

if (isset($locs))
{
    $locsin=buildseq($locs);
    $locphrase="and loc in ($locsin)";
}
else
{
    $locphrase="";
}

// if (isset($poss))
// {
//     $possin=buildseq($poss);
//     $posphrase="and pos in ($possin)";
// }
// else
// {
//     $posphrase="";
// }
    
//===== Clear existing noshow marks. =====
if (preg_match("/clear/", $action))
{
    if (preg_match("/all/", $stanzas))
    {
	$sql_f=query("update $words set noshow='';");
    }
   else
    {
	$sql_f=query("update $words set noshow='' $stanzaphrase $locphrase;");
    }
}

//===== Fill existing noshow marks. =====
if (preg_match("/fill/", $action))
{
    if (preg_match("/all/", $stanzas))
    {
	$sql_f=query("update $words set noshow='$filler';");
    }
    else
    {
	$sql_f=query("update $words set noshow='$filler' $stanzaphrase $locphrase;");
    }
}

?>
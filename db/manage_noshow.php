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
$words=$poem."_words";  // Name of the words table: poem_words.
$action=$argv[2];  // Action to be taken: clear, fill.
$stanzas=$argv[3];  // Stanzas to be targetted: all, or a stanza list - a comma-separated list of numbers with NO spaces, which can also include ranges separated by a hyphen.
$locs=$argv[4];  // Locations in the stanzas.  Optional, unless you are specifying a tag other than "ar".  A comma-separated list of lower-case letters with NO spaces, which can also include ranges separated by a hyphen.
$tag=$argv[5];  // Tag to be inserted in the noshow field.  Optional, in which case "ar" will be used as the tag.

if (!isset($tag) and $action=="fill")  // If the tag is empty and the action is fill, use "ar".
{
    $tag="ar";
}
elseif ($action=="clear")  // If the action is clear, empty the tag.  Not strictly necessary, but here to fix cases where the command may be rerun with a tag still on the end of the line.
{
    $tag="";
}

$line="update $words set noshow='$tag'";  // Start the SQL query.

if (preg_match("/all/", $stanzas))  // If the target is all ...
{
    if (isset($locs))  // ... and locations are given ...
    {
	$locseq=buildseq($locs);  // ... expand the locations list ...
	$line=$line." where loc in ($locseq);";  // ... and insert it into a where clause.
    }
    else
    {
	$line=$line.";";  // Otherwise, end the query.
    }
}
else
{
    $stanzaseq=buildseq($stanzas);  // If the target is a list of stanzas, expand it ...
    
    if (isset($locs))  // ... and if locations are given ...
    {
	$locseq=buildseq($locs);  // ... expand the locations list ...
	$line=$line." where stanza in ($stanzaseq) and loc in ($locseq);";  // ... and insert both stanzas and locations into a where clause.
    }
    else
    {
	$line=$line." where stanza in ($stanzaseq);";  // Otherwise, insert just the stanzas into a where clause.
    }
}

// echo $line."\n";
$sql=query("$line");  // Run the final SQL query to apply the changes.

?>
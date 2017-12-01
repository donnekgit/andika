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

// This script picks out words following -a, many of which will be descriptives (ie adjectival).

include("./andika/config.php");
include("./includes/fns.php");

$poem=$argv[1];  // Take the name of the poem from the command-line argument.
if (empty($argv[1]))
{
    echo "\nYou need to specify the name of the poem.\nAdd it to the end of the line.\n\n";
    exit;
}

$words="{$poem}_words";

$sql=query("select stanza, loc, position, standard from $words where root='-a' order by standard, stanza, loc, position;");
while ($row=pg_fetch_object($sql))
{
    $stanza=$row->stanza;
    $loc=$row->loc;
    $position=$row->position;
    $standard=$row->standard;
    
    $following=$position+1;
    
    echo $stanza." ".$loc." ".$standard." ";
    
    $sql2=query("select standard from $words where stanza=$stanza and loc='$loc' and position='$following';");
    while ($row2=pg_fetch_object($sql2))
    {
	$follword=$row2->standard;
	
	echo $follword."\n";
    }
}

?>
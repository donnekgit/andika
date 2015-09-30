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

// This script picks out the rhyming (final words in each stanza, and tags them according to derivation (Bantu or Arabic).

include("./andika/config.php");
include("./includes/fns.php");

$poem=$argv[1];  // Take the name of the poem from the command-line argument.
if (empty($argv[1]))
{
    echo "\nYou need to specify the name of the poem.\nAdd it to the end of the line.\n\n";
    exit;
}

$words="{$poem}_words";
$arcolloc="{$poem}_arcolloc";

$sql=query("select stanza from $words group by stanza order by stanza;");
while ($row=pg_fetch_object($sql))
{
    $stanza=$row->stanza;
   
    $sql2=query("select loc, lg, standard from $words where stanza=$stanza and slot='final' order by loc;");
    while ($row2=pg_fetch_object($sql2))
    {
	$loc=$row2->loc;
	$lg=$row2->lg;
	$standard=$row2->standard;
	
	$lg=($lg=='ar' ? 'ar' : 'ba');
	$lg_line.=$lg." ";
	$standard_line.=$standard." ";
    }
    
    $standard_line=trim($standard_line);
    $lg_line=trim($lg_line);
    
    echo $stanza." ".$lg_line." ".$standard_line."\n";
    $sql_i=query("insert into $arcolloc (stanza, lgline, standard) values ($stanza, '$lg_line', '$standard_line');");
    
    unset($standard_line, $lg_line);  
}

?>
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

// This script converts the words of each line to POS equivalents.

include("./andika/config.php");
include("./includes/fns.php");

$poem=$argv[1];  // Take the name of the poem from the command-line argument.
if (empty($argv[1]))
{
    echo "\nYou need to specify the name of the poem.\nAdd it to the end of the line.\n\n";
    exit;
}

$words="{$poem}_words";
$postable="{$poem}_poslist";

$sql=query("select stanza, loc from $words group by stanza, loc order by stanza, loc;");
while ($row=pg_fetch_object($sql))
{
    $stanza=$row->stanza;
    $loc=$row->loc;
    
    $sql_w=query("select * from $words where stanza=$stanza and loc='$loc' order by position;");  
    while ($row_w=pg_fetch_object($sql_w))
    {
	$standard=preg_replace("/~/", "", $row_w->standard);
	$position=$row_w->position;
	$root=$row_w->root;
	$pos=$row_w->pos;
	
	$standard_line.=$standard." ";
	$root_line.=$root." ";
	$pos_line.=$pos." ";
    }
    
    $standard_line=trim($standard_line);
    $root_line=trim($root_line);
    $pos_line=trim($pos_line);
    echo $stanza.$loc.": ".$pos_line."\n";
    
    $sql_i=query("insert into $postable (stanza, loc, posline, standard, root) values ($stanza, '$loc', '$pos_line', '$standard_line', '$root_line');");
    
    unset($standard_line, $root_line, $pos_line);  
}

?>
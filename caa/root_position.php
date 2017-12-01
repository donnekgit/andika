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

// This script collects counts for how often particular words occur finally and non-finally.

include("./andika/config.php");
include("./includes/fns.php");

$poem=$argv[1];  // Take the name of the poem from the command-line argument.
if (empty($argv[1]))
{
    echo "\nYou need to specify the name of the poem.\nAdd it to the end of the line.\n\n";
    exit;
}

$words="{$poem}_words";
$fin_nonfin="{$poem}_fin_nonfin";
$root_position="{$poem}_root_position";

$sql=query("select root from $fin_nonfin group by root order by root;");
while ($row=pg_fetch_object($sql))
{
    $root=$row->root;

    // nonfinal roots, abc lines
    $sql2=query("select * from $fin_nonfin where root='$root' order by standard;");
    while ($row2=pg_fetch_object($sql2))
    {
	$nonfinal+=$row2->nonfinal;
	$final+=$row2->final;
	$snonfinal+=$row2->snonfinal;
	$sfinal+=$row2->sfinal;
	
	$words.=$row2->standard.", ";
	$lg=$row2->lg;
    }

    $total=$nonfinal+$final+$snonfinal+$sfinal;
    $words=substr($words, 0, -2);
    echo $root." ".$nonfinal." ".$final." ".$snonfinal." ".$sfinal." ".$words."\n";
    $sql_i=query("insert into $root_position (root, nonfinal, final, snonfinal, sfinal, words, lg, total) values ('$root', $nonfinal, $final, $snonfinal, $sfinal, '$words', '$lg', $total);");
    
    unset($nonfinal, $final, $snonfinal, $sfinal, $words);  
}

?>
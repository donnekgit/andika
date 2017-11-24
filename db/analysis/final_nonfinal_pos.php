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
$fin_nonfin_pos="{$poem}_fin_nonfin_pos";

$sql=query("select pos, root, lg from $words where root!='???' group by pos, root, lg order by pos, lg, root;");
while ($row=pg_fetch_object($sql))
{
    $pos=$row->pos;
    $root=$row->root;
    $lg=$row->lg;

    // nonfinal roots, abc lines
    $sql2=query("select count(pos) from $words where pos='$pos' and root='$root' and slot!='final' and loc!='d';");
    while ($row2=pg_fetch_object($sql2))
    {
	$nonfinal=$row2->count;
    }

    // final roots, abc lines 
    $sql3=query("select count(pos) from $words where pos='$pos' and root='$root' and slot='final' and loc!='d';");
    while ($row3=pg_fetch_object($sql3))
    {
	$final=$row3->count;
    }
    
    // nonfinal roots, d line
    $sql4=query("select count(pos) from $words where pos='$pos' and root='$root' and slot!='final' and loc='d';");
    while ($row4=pg_fetch_object($sql4))
    {
	$snonfinal=$row4->count;
    }
    
    // final roots, d line
    $sql5=query("select count(pos) from $words where pos='$pos' and root='$root' and slot='final' and loc='d';");
    while ($row5=pg_fetch_object($sql5))
    {
	$sfinal=$row5->count;
    }
    
    echo $pos." ".$root." ".$nonfinal." ".$final." ".$snonfinal." ".$sfinal."\n";
    $sql_i=query("insert into $fin_nonfin_pos (pos, root, lg, nonfinal, final, snonfinal, sfinal) values ('$pos', '$root', '$lg', $nonfinal, $final, $snonfinal, $sfinal);");
    
    unset($nonfinal, $final, $snonfinal, $sfinal);  
}

?>
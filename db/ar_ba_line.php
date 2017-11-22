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

// This script assembles each line in standard transcription, and also assembles an equivalent part-of-speech line and a derivation line, along with giving the wordcount in each line.

// Note that for analysis, this table was enriched with other data about syntax.

include("./andika/config.php");
include("./includes/fns.php");

$poem=$argv[1];  // Take the name of the poem from the command-line argument.
if (empty($argv[1]))
{
    echo "\nYou need to specify the name of the poem.\nAdd it to the end of the line.\n\n";
    exit;
}

$words="{$poem}_words";
$ar_ba_line="{$poem}_ar_ba_line";

$wordcount=0;

$sql=query("select stanza, loc from $words group by stanza, loc order by stanza, loc;");
while ($row=pg_fetch_object($sql))
{
    $stanza=$row->stanza;
    $loc=$row->loc;
    
    $sql2=query("select position, lg, standard, pos from $words where stanza=$stanza and loc='$loc' order by position;");
    while ($row2=pg_fetch_object($sql2))
    {
	$lg=$row2->lg;
	$standard=$row2->standard;
	$pos=$row2->pos;

	$lg=($lg=='ar' ? 'ar' : 'ba');
	$lg_line.=$lg." ";
	$standard_line.=$standard." ";
	$pos_line.=$pos." ";
	$wordcount++;
    }
    
    $standard_line=trim($standard_line);
    $lg_line=trim($lg_line);
    $pos_line=trim($pos_line);
    
    echo $stanza." ".$loc.": ".$lg_line." - ".$standard_line." (".$wordcount.")\n";
    $sql_i=query("insert into $ar_ba_line (stanza, loc, lgline, standard, posline, wordcount) values ($stanza, '$loc', '$lg_line', '$standard_line', '$pos_line', $wordcount);");
    
    unset($standard_line, $lg_line, $pos_line, $wordcount);
}

?>
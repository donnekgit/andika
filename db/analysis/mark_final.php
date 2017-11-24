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

/* This script marks the final (rhyming) word in each line, so that these words can be used in further analysis. */

include("./andika/config.php");
include("./includes/fns.php");

$poem=$argv[1];  // Take the name of the poem from the command-line argument.
if (empty($argv[1]))
{
    echo "\nYou need to specify the name of the poem.\nAdd it to the end of the line.\n\n";
    exit;
}

$words="{$poem}_words";

$sql=query("select stanza, loc from $words group by stanza, loc order by stanza, loc;");
while ($row=pg_fetch_object($sql))
{
    $stanza=$row->stanza;
    $loc=$row->loc;

    $sql_w=query("select max(position) from $words where stanza=$stanza and loc='$loc';");
    while ($row_w=pg_fetch_object($sql_w))
    {
	$max=$row_w->max;
	echo $stanza.$loc.$max.": ";

	$sql_m=query("select word_id, standard from $words where stanza=$stanza and loc='$loc' and position=$max;");
	while ($row_m=pg_fetch_object($sql_m))
	{
	    $standard=$row_m->standard;
	    echo $standard."\n";
	    $final_word=$row_m->word_id;
	    $sql_i=query("update $words set slot='final' where word_id=$final_word;");
	}
    }
}

?>
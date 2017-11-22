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

// This script reads across word annotations from one MS table to another.
// Run as: php db/read-across.php table-you-want-to-be-populated table-you-want-to-take-the-entries-from
// Needs more work, eg to ensure that readings for emended words are not carried over.

include("./andika/config.php");
include("./includes/fns.php");

$poem=$argv[1];  // Take the name of the poem from the command-line argument.
if (empty($argv[1]))
{
    echo "\nYou need to specify the name of the poem.\nAdd it to the end of the line.\n\n";
    exit;
}
$from=$argv[2];

$ra_to="{$poem}_words";
$ra_from="{$from}_words";

// Get words in the 'to' table where the standard transcription has been edited.
$sql=query("select edstan from $ra_to where edstan!='' and edstan!='~' group by edstan order by edstan;");
while ($row=pg_fetch_object($sql))
{
    $edstan=$row->edstan;

    // Get words in the 'from' table which have not been edited.
    $sql2=query("select * from $ra_from where standard='$edstan' limit 1;");
    while ($row2=pg_fetch_object($sql2))
    {
	$root=$row2->root;
	$pos=$row2->pos;
	$slot=$row2->slot;
	$lg=$row2->lg;
	$tense=$row2->tense;
	$neg=$row2->neg;

	$sql_i=query("update $ra_to set root='$root', pos='$pos', lg='$lg', tense='$tense' where edstan='$edstan';");
	echo "Inserting ".$root." against ".$edstan."\n";
    }
        
    // Get words in the 'from' table which have been edited.
    $sql3=query("select * from $ra_from where edstan='$edstan' limit 1;");
    while ($row3=pg_fetch_object($sql3))
    {
	$root=$row3->root;
	$pos=$row3->pos;
	$slot=$row3->slot;
	$lg=$row3->lg;
	$tense=$row3->tense;
	$neg=$row3->neg;

	$sql_i=query("update $ra_to set root='$root', pos='$pos', lg='$lg', tense='$tense' where edstan='$edstan';");
	echo "Inserting ".$root." against ".$edstan."\n";
    }
}

// Get words in the 'to' table where the standard transcription has not been edited.
$sql=query("select standard from $ra_to where edstan='' group by standard order by standard;");
while ($row=pg_fetch_object($sql))
{
    $standard=$row->standard;
    
    // Get words in the 'from' table which have not been edited.
    $sql4=query("select * from $ra_from where standard='$standard' limit 1;");
    while ($row4=pg_fetch_object($sql4))
    {
	$root=$row4->root;
	$pos=$row4->pos;
	$slot=$row4->slot;
	$lg=$row4->lg;
	$tense=$row4->tense;
	$neg=$row4->neg;

	$sql_i=query("update $ra_to set root='$root', pos='$pos', lg='$lg', tense='$tense' where standard='$standard';");
	echo "Inserting ".$root." against ".$standard."\n";
    }
    
    // Get words in the 'from' table which have been edited.
    $sql5=query("select * from $ra_from where edstan='$standard' limit 1;");
    while ($row5=pg_fetch_object($sql5))
    {
	$root=$row5->root;
	$pos=$row5->pos;
	$slot=$row5->slot;
	$lg=$row5->lg;
	$tense=$row5->tense;
	$neg=$row5->neg;

	$sql_i=query("update $ra_to set root='$root', pos='$pos', lg='$lg', tense='$tense' where standard='$standard';");
	echo "Inserting ".$root." against ".$edstan."\n";
    }
}

?>
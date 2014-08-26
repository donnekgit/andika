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

include("./includes/fns.php");
include("./andika/config.php");

//$poem="kiswahili";
$words="{$poem}_words";
$notes="{$poem}_notes";
$backup="{$poem}_backup";

// Do a backup of the words table first, just in case.
drop_existing_table($backup);
$sql_b=query("create table $backup as select * from $words");

// Extract any notes added to the previous wordification.
// Drop any existing notes table, and recreate it.
// Unfortunately, PostgreSQL doesn't support using "if not exists" with "as select ".
drop_existing_table($notes);
$sql_n=query("create table $notes as select stanza, pos, location, lemma, segment, variant, note, root, english from $words where lemma!='' or segment!='' or variant !='' or note !='' or root!='' or english !='';");
//  IMPORTANT: If you add fields (columns) here, add them manually to the table as well, otherwise this query will fail ("column "whatever" does not exist"), the notes will not be copied into a new table, and will therefore be lost.  Remember also to add the field to integrate_notes.php.

// Create the poemwords table.
include("poetry/create_poemwords.php");

$sql=query("select * from $poem order by stanza, pos");
while ($row=pg_fetch_object($sql))
{
	$i=1;
	$arabic_bits=explode(' ', trim($row->arabic));
	foreach ($arabic_bits as $arabic_value)
	{
		echo $arabic_value."\n";
		$arabic_value=trim($arabic_value);
		$sql_a=query("insert into $words (stanza, pos, location, arabic) values ('$row->stanza', '$row->pos', '$i', '$arabic_value');");
        $i=++$i; 
	}
	
	$j=1;
	$close_bits=explode(' ', pg_escape_string(trim($row->close)));
	foreach ($close_bits as $close_value)
	{
		echo $close_value."\n";
		$sql_c=query("update $words set close='$close_value' where stanza=$row->stanza and pos='$row->pos' and location=$j;");
		$j=++$j; 
	}
	
	$k=1;
	$standard_bits=explode(' ', pg_escape_string(trim($row->standard)));
	foreach ($standard_bits as $standard_value)
	{
		$sql_c=query("update $words set standard='$standard_value' where stanza=$row->stanza and pos='$row->pos' and location=$k;");
		$k=++$k; 
	}
}

// Add back any notes from the previous wordification.
// Worth putting this here to avoid the following situation:
// - the poem is reimported and rewordified (perhaps because of corrections to the transcription);
// - because of an oversight, existing notes are not added back to the new wordification;
// - the new wordification deletes the notes table (top of this script);
// - it then creates a new notes table, but this will be empty because the notes fields in the new wordification are empty;
// - the existing notes are therefore lost. :-(
include("poetry/integrate_notes.php");

// Segment words based on segment, and put them into a new field for analysis purposes.
include("poetry/segment_words.php");

?>
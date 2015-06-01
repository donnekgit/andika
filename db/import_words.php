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

/*
This script wordifies the lines in a poem table.  Run it as: 
php db/import_words.php name_of_poem
Note that this script restores all fields except arabic, standard and close from a backed-up copy of the previous version of the table.  This means that once you have imported a table, if you then make changes to (eg) the transliteration routine for standard spelling (standardise) and reimport, the results of the changes will not show up - they will be written into the table, but then overwritten when the restore from backup is made.  To avoid this, and do a completely fresh import, comment out the two lines at the top and bottom of the script.
*/

include("./includes/fns.php");
include("./andika/config.php");

$poem=$argv[1];  // Take the name of the poem from the command-line argument.
if (empty($argv[1]))
{
    echo "\nYou need to specify the name of the poem.\nAdd it to the end of the line.\n\n";
    exit;
}
$words="{$poem}_words";
$backup="{$poem}_backup";

// Do a backup of the words table - edits will be reapplied from here.
drop_existing_table($backup);

// ===== Fresh import =====
// Comment out the following line to do a completely fresh import:
$sql_b=query("create table $backup as select * from $words");
// ======================

// Re-create the poemwords table.
include("db/create_poemwords.php");

$sql=query("select * from $poem order by stanza, loc");
while ($row=pg_fetch_object($sql))
{
	$i=1;
	$arabic_bits=explode(' ', trim($row->arabic));
	foreach ($arabic_bits as $arabic_value)
	{
		echo $arabic_value."\n";
		$arabic_value=trim($arabic_value);
		$sql_a=query("insert into $words (msno, stanza, loc, position, arabic) values ($row->msno, $row->stanza, '$row->loc', '$i', '$arabic_value');");
		$i=++$i; 
	}
	
	$j=1;
	$close_bits=explode(' ', pg_escape_string(trim($row->close)));
	foreach ($close_bits as $close_value)
	{
		echo $close_value."\n";
		$sql_c=query("update $words set close='$close_value' where stanza=$row->stanza and loc='$row->loc' and position=$j;");
		$j=++$j; 
	}
	
	$k=1;
	$standard_bits=explode(' ', pg_escape_string(trim($row->standard)));
	foreach ($standard_bits as $standard_value)
	{
		$sql_c=query("update $words set standard='$standard_value' where stanza=$row->stanza and loc='$row->loc' and position=$k;");
		$k=++$k; 
	}
}

// Put back any edits.
echo "\nRe-integrating previous edits.\n\n";

// ===== Fresh import =====
// Comment out the following line to do a completely fresh import:
$sql_n=query("update $words w set (edclose, edstan, emend, variant, note, root, english) = (b.edclose, b.edstan, b.emend, b.variant, b.note, b.root, b.english) from $backup b where w.stanza=b.stanza and w.loc=b.loc and w.position=b.position;");
// ======================

// To insert new stanzas (eg from a new MS) into the middle of existing stanzas, edit them as a separate document first, setting the stanza number to suit, eg 5 stanzas which run from 116 to 120, and import as a table.  Then move the numbering of existing stanzas forward (update stanza set stanza=stanza+5 where stanza>115), and copy the new stanzas into the poem table (insert into existing_stanzas select * from new_stanzas).

?>
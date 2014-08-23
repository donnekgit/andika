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

// Uncomment if running standalone.
// include("./includes/fns.php");
// include("./andika/config.php");
// 
// $poem="vita_vikuu";
// $words="{$poem}_words";

$sql=query("update $words set word=close;");  // Move the words.

$sql=query("select * from $words where lemma!='';");  // Fix the lemmas.
while ($row=pg_fetch_object($sql))
{
	$lemma=$row->lemma;
	$lemma=pg_escape_string(preg_replace("/#/", "", $lemma));
	$sql_l=query("update $words set word='$lemma' where word_id=$row->word_id;");
}

$sql=query("select * from $words where segment!='';");  // Remove the segment
while ($row=pg_fetch_object($sql))
{
	$segment=$row->segment;
	$word=$row->word;
	$word=pg_escape_string(preg_replace("/$segment/", "", $word));
	$sql_w=query("update $words set word='$word' where word_id=$row->word_id;");
}

$sql=query("update $words set arword=arabic;");  // Move the Arabic words.

$sql=query("select * from $words where segment!='';");  // Remove the Arabic segment
while ($row=pg_fetch_object($sql))
{
	$segment=rom2ar($row->segment, 0);
	$segment=html_entity_decode(preg_replace("/U\+([0-9A-F]{4,5})/", "&#x\\1;", $segment), ENT_NOQUOTES, 'UTF-8');
	$arword=$row->arword;
	$arword=pg_escape_string(preg_replace("/$segment/", "", $arword));
	$sql_w=query("update $words set arword='$arword' where word_id=$row->word_id;");
}

// This is a bit messy, since we create ANOTHER column to hold the segmented close words, but this time without lemma corrections.  Nevertheless, it's the only way to ensure the proper part of the close transcription is highlighted in the concordance when there has been a lemma correction, because the close transcription itself does not feature lemma corrections, eg milḥi in namilḥi will not be highlighted, because word has been lemma-corrected to miliḥi.  Perhaps needs to be rethought.

$sql=query("update $words set clword=close;");  // Move the words.

$sql=query("select * from $words where segment!='';");  // Remove the segment
while ($row=pg_fetch_object($sql))
{
	$segment=$row->segment;
	$clword=$row->clword;
	$clword=pg_escape_string(preg_replace("/$segment/", "", $clword));
	$sql_w=query("update $words set clword='$clword' where word_id=$row->word_id;");
}

?>
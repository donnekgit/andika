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
/*
$poem="vita_vikuu";
$words="{$poem}_words";
$notes="{$poem}_notes";*/

$sql="select * from $notes order by stanza, pos, location";
$result=pg_query($db_handle,$sql) or die("Can't get the items");
while ($row=pg_fetch_object($result))
{
	$lemma=pg_escape_string($row->lemma);
	$variant=pg_escape_string($row->variant);
	$note=pg_escape_string($row->note);
	$root=pg_escape_string($row->root);
	$english=pg_escape_string($row->english);

	$sql_n=query("update $words set lemma='$lemma', segment='$row->segment',  variant='$variant', note='$note', root='$root', english='$english' where stanza=$row->stanza and pos='$row->pos' and location=$row->location;");
}

?>
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

header('content-type: text/html; charset: utf-8'); 
mb_internal_encoding("UTF-8");

include("../../includes/fns.php");
include("../../andika/config.php");

// include("../../includes/header.php");

$poem="vita_vikuu";
$words="{$poem}_words";

$ngramword=pg_escape_string(trim($_GET['ngramword']));

echo "<table>";

$sql=query("select word_id from $words where word='$ngramword' order by word_id;");
while ($row=pg_fetch_object($sql))
{
	$target=$row->word_id;
	$before1=$target-1;
	$after1=$target+1;
	
	$sql_t=query("select * from $words where word_id=$target;");
	while ($row_t=pg_fetch_object($sql_t))
	{
		$artarget=$row_t->arabic;
		$cltarget=$row_t->close;
		$target_stanza=$row_t->stanza;
	}

	$sql_b=query("select * from $words where word_id=$before1;");
	while ($row_b=pg_fetch_object($sql_b))
	{
		$arbefore1=$row_b->arabic;
		$clbefore1=$row_b->close;
		$before1_stanza=$row_b->stanza;
	}
	
	$sql_a=query("select * from $words where word_id=$after1;");
	while ($row_a=pg_fetch_object($sql_a))
	{
		$arafter1=$row_a->arabic;
		$clafter1=$row_a->close;
		$after1_stanza=$row_a->stanza;
	}
	
	echo "<tr>
	<td></td>
	<td><div class=\"sm_swahili\">".$arafter1."</div></td>
	<td><div class=\"sm_swahili\"><span style=\"color: red;\">".$artarget."</span></div></td>
	<td><div class=\"sm_swahili\">".$arbefore1."</div></td>
	<td><div class=\"sm_swahili\">".convert_numbers($target_stanza)."</div></td>
	</tr>";
	echo "<tr>
	<td>".$target_stanza."</td>
	<td><div class=\"right\">".$clbefore1."</div></td>
	<td><div class=\"right\"><span style=\"color: red;\">".$cltarget."</span></div></td>
	<td><div class=\"right\">".$clafter1."</div></td>
	<td></td>";
}

echo "</table><br /><br />";

// include("../../includes/footer.php");

?>
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

$poem="vita_vikuu";
$words="{$poem}_words";

$textword=pg_escape_string(trim($_GET['textword']));

echo "<table>";

$lines=array('a', 'b', 'c', 'd');  // Set up an array so that we can read the stanza lines in order.
$sql=query("select * from $words where word='$textword';");
while ($row=pg_fetch_object($sql))
{
	foreach ($lines as $line)
	{
		$sql_w=query("select * from $words where stanza=$row->stanza and pos='$line' order by pos, location;");
		while ($row_w=pg_fetch_object($sql_w))
		{
			$arabic_line.=$row_w->arabic." ";
			$close_line.=$row_w->close." ";
			$english_line.=$row_w->english." ";
		}
		
		$arabic[$line]=trim($arabic_line);
		$close[$line]=trim($close_line);
		$english[$line]=trim($english_line);
		unset($arabic_line, $close_line, $english_line);
	}
	
	$arabic_stanza=$arabic[a]." * ".$arabic[b]." * ".$arabic[c]." * ".$arabic[d]."<br />";
	$close_stanza=$close[a]." * ".$close[b]." * ".$close[c]." * ".$close[d]."<br />";
	$english_stanza=$english[a]." * ".$english[b]." * ".$english[c]." * ".$english[d]."<br />";

	$artarget=$row->arword;
	$arabic_done=preg_replace("/($artarget)/", "<span style=\"color: red;\">$1</span>", $arabic_stanza);
	
	$closetarget=$row->clword;
	$close_done=preg_replace("/($closetarget)/", "<span style=\"color: red;\">$1</span>", $close_stanza);
	
	echo "<tr><td><div class=\"sm_swahili\">".$arabic_done."</div></td><td>$row->stanza</td></tr>";
	echo "<tr><td><div class=\"right\">".$close_done."</div></td><td></td></tr>";
	echo "<tr><td><div class=\"translation\">".$english_stanza."</div></td><td></td></tr>";
}

echo "</table><br /><br />";

?>
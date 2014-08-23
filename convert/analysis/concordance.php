<?php
header('content-type: text/html; charset: utf-8'); 
mb_internal_encoding("UTF-8");

include("../includes/fns.php");
include("../andika/config.php");

$poem="vita_vikuu";
$words="{$poem}_words";

$textword=pg_escape_string(trim($_GET['textword']));

echo "<table>\n\n";

$lines=array('a', 'b', 'c', 'd');  // Set up an array so that we can read the stanza lines in order.
$sql=query("select stanza, arabic, close from $words where word~'^$textword$';");
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

	$arword=$row->arabic;
	$arabic_done=preg_replace("/($arword)/", "<span style=\"color: red;\">$1</span>", $arabic_stanza);
	
	$closeword=$row->close;
	$close_done=preg_replace("/($closeword)/", "<span style=\"color: red;\">$1</span>", $close_stanza);
	
	echo "<tr>\n<td><div class=\"sm_swahili\">".$arabic_done."</div></td>\n<td>$row->stanza</td>\n</tr>\n";
	echo "<tr>\n<td><div class=\"right\">".$close_done."</div></td>\n<td></td>\n</tr>\n";
	echo "<tr>\n<td><div class=\"translation\">".$english_stanza."</div></td>\n<td></td>\n</tr>\n";
}

echo "</table>\n\n";

?>
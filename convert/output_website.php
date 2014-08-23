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

$poem="vita_vikuu";
$words="{$poem}_words";

$fp = fopen("poetry/outputs/{$poem}_website.html", "w") or die("Can't create the file");

// $header="<html>
// <header>
// <meta charset=\"UTF-8\">
// <link rel=\"stylesheet\" type=\"text/css\" href=\"../../css/kickstart.css\" media=\"all\" />
// <link rel=\"stylesheet\" type=\"text/css\" href=\"../../style.css\" media=\"all\" />
// <title></title>
// </header>
// <body style=\"background: #fff;\">
// \n";
$header=file_get_contents("./poetry/html/tex_header.php");
fwrite($fp, $header);

fwrite($fp, "<table class=\"poem\">\n\n");

//fwrite($fp, $title);

$lines=array('a', 'b', 'c', 'd');  // Set up an array so that we can read the stanza lines in order.
$fn=1;  // Start a counter for the footnote numbers.
$sql=query("select stanza from $words group by stanza order by stanza;");
while ($row=pg_fetch_object($sql))
{
	foreach ($lines as $line)
	{
		$sql_w=query("select * from $words where stanza=$row->stanza and pos='$line' order by pos, location;");
		while ($row_w=pg_fetch_object($sql_w))
		{
			$close_word=$row_w->close;
			$repl=$row_w->segment;
			$note=$row_w->note;
			$variant=$row_w->variant;

			if ($row_w->lemma!='')  // handle lemma fixes - replace the text with the lemma entry
			{
				$close_word=preg_replace("/#(.*)#/", "<span style=\"color: purple;\">$1</span>", $row_w->lemma);
			}
			
			if ($row_w->segment!='')  // handle segmentation
			{
				$close_word=preg_replace("/($repl)(.*)/", "$1 $2", $close_word);
			}
			
			if ($row_w->variant!='')  // handle variant readings
			{
				$variant=preg_replace("/@(.*)@/U", "<span class=\"sm_swahili\">$1</span>", $variant);
				$variant=preg_replace("/#(.*)#/U", "<span class=\"note\"><em>$1</em></span>", $variant);
				
				$close_word="<span class=\"tooltip-top\" data-content=\"#var_".$row_w->standard."\"><span style=\"background:#eee;\">".$close_word."</span></span><span class=\"tooltip-content\" id=\"var_".$row_w->standard."\">".$variant."</span>";
			}
			
			if ($row_w->note!='')  // handle notes - hyperlink the note number, store the endnotes
			{
				$note=preg_replace("/@(.*)@/U", "<span class=\"sm_swahili\">$1</span>", $note);
				$note=preg_replace("/#(.*)#/U", "<span class=\"note\"><em>$1</em></span>", $note);
				
				// Tooltip settings (background colours, etc) need to be changed in tiptip.css.  You also need to change the Webkit hacks section there so that Chromium and Rekonq are covered..
				$close_word=$close_word."<span class=\"tooltip-top\" data-content=\"#fn".$fn."\"><sup><span style=\"color: red;\">(".$fn.")</span></sup></span><div class=\"tooltip-content\" id=\"fn".$fn."\">".$note."</div>";
				$fn++;
			}
		
			$arabic_line.=$row_w->arabic." ";
			$close_line.=$close_word." ";
			$english_line.=$row_w->english." ";
		}
		
		$arabic[$line]=trim($arabic_line);
		$close[$line]=trim($close_line);
		$english[$line]=trim($english_line);
		unset($arabic_line, $close_line, $english_line);
	}
	
	// Green for the close transcription is switched to blue to fit in better with the page colours.
	fwrite($fp, "<tr>\n<td><div class=\"swahili\">".$arabic[a]." * ".$arabic[b]."</div></td>\n<td><div class=\"swahili\">".convert_numbers($row->stanza)."</div></td>\n</tr>\n");
	fwrite($fp, "<tr>\n<td><div class=\"close\"><span style=\"color:#4d99e0;\">".$close[a]." * ".$close[b]."</span></div></td>\n<td><div class=\"close\"><span style=\"color:#4d99e0;\">".$row->stanza."a/b</span></div></td>\n</tr>\n");
	fwrite($fp, "<tr>\n<td><div class=\"translation\">".$english[a]." ".$english[b]."</div></td>\n<td>&nbsp;</td>\n</tr>\n");
	fwrite($fp, "<tr>\n<td><div class=\"swahili\">".$arabic[c]." * ".$arabic[d]."</div></td>\n<td>&nbsp;</td>\n</tr>\n");
	fwrite($fp, "<tr>\n<td><div class=\"close\"><span style=\"color:#4d99e0;\">".$close[c]." * ".$close[d]."</span></div></td>\n<td><div class=\"close\"><span style=\"color:#4d99e0;\">".$row->stanza."c/d</span></div></td>\n</tr>\n");
	fwrite($fp, "<tr>\n<td><div class=\"translation\">".$english[c]." ".$english[d]."</div></td>\n<td>&nbsp;</td>\n</tr>\n\n");
	fwrite($fp, "<tr class=\"stanza_divider\">\n<td >&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n\n");

}

fwrite($fp, "</table>\n\n");

$header=file_get_contents("./poetry/html/tex_footer.php");
fwrite($fp, $footer);

fclose($fp);

?>
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
// $poem="jaafari";
$words="{$poem}_words";

$fp = fopen("poetry/outputs/{$poem}.tex", "w") or die("Can't create the file");

$header=file_get_contents("poetry/tex/poem_header.tex");
fwrite($fp, $header);
fwrite($fp, "\n");

$title=file_get_contents("poetry/tex/poem_title.tex");
fwrite($fp, $title);
fwrite($fp, "\n");

$lines=array('a', 'b', 'c', 'd');  // Set up an array so that we can read the stanza lines in order.
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

			if ($row_w->lemma!='')  // handle lemma fixes - replace the text with the lemma entry
			{
				$close_word=preg_replace("/#(.*)#/", "}\I{\$1}\T{", $row_w->lemma);
			}
			
			if ($row_w->segment!='')  // handle segmentation
			{
				$close_word=preg_replace("/($repl)(.*)/", "$1 $2", $close_word);
			}
			
			if ($row_w->note!='')  // handle notes - hyperlink the note number, store the endnotes
			{
				$note=preg_replace("/@(.*)@/U", "\AS{\$1}", $note);
				$note=preg_replace("/#(.*)#/U", "{\E{\$1}}", $note);
				$close_word=$close_word."\\footnote{".$note."}";
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
	
	fwrite($fp, "\\textarabic{".$arabic[a]." * ".$arabic[b]."} & \\textarabic{".convert_numbers($row->stanza)."} \\\\ \n");
	fwrite($fp, "\\nopagebreak \T{".$close[a]." * ".$close[b]."} & \T{".$row->stanza."a/b} \\\\ \n");
	fwrite($fp, "\\nopagebreak \E{".$english[a]." ".$english[b]."} & \\\\ \n");
	fwrite($fp, "\\textarabic{".$arabic[c]." * ".$arabic[d]."} & \\\\ \n");
	fwrite($fp, "\\nopagebreak \T{".$close[c]." * ".$close[d]."} & \T{".$row->stanza."c/d} \\\\ \n");
	fwrite($fp, "\\nopagebreak \E{".$english[c]." ".$english[d]."} & \\\\ [8mm] \n");
	fwrite($fp, "\n");
}

$footer=file_get_contents("poetry/tex/poem_footer.tex");
fwrite($fp, $footer);
fwrite($fp, "\n");

fclose($fp);

exec("xelatex -interaction=nonstopmode -output-directory=poetry/outputs poetry/outputs/{$poem}.tex 2>&1");

?>
<?php

include("./includes/fns.php");
include("./andika/config.php");

$poem="vita_vikuu";
$words="{$poem}_words";

$fp = fopen("poetry/outputs/{$poem}_odt.html", "w") or die("Can't create the file");

$header="<html>
<header>
<meta charset=\"UTF-8\">
<link rel=\"stylesheet\" type=\"text/css\" href=\"../../css/kickstart.css\" media=\"all\" />
<link rel=\"stylesheet\" type=\"text/css\" href=\"../../style.css\" media=\"all\" />
<title></title>
</header>
<body style=\"background: #fff;\">
\n";
fwrite($fp, $header);

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

			if ($row_w->lemma!='')  // handle lemma fixes - replace the text with the lemma entry
			{
				$close_word=preg_replace("/#(.*)#/", "<span style=\"color: blue;\">$1</span>", $row_w->lemma);
			}
			
			if ($row_w->segment!='')  // handle segmentation
			{
				$close_word=preg_replace("/($repl)(.*)/", "$1 $2", $close_word);
			}
			
			if ($row_w->note!='')  // handle notes - hyperlink the note number, store the endnotes
			{
				$note=preg_replace("/@(.*)@/U", "<span class=\"sm_swahili\">$1</span>", $note);
				$note=preg_replace("/#(.*)#/U", "<span class=\"note\">$1</span>", $note);
				
				$close_word=$close_word." <a href=\"#fn".$fn."\" name=\"fn".$fn."source\"><span style=\"color: red;\">[".$fn."]</span></a> ";
				$endnotes.="<a href=\"#fn".$fn."source\" name=\"fn".$fn."\"><span style=\"color: red;\">[".$fn."]</span></a> ".$note."<br />\n";
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

	fwrite($fp, "<div class=\"swahili\"><span class=\"translation\">".$row->stanza."</span> ".convert_numbers($row->stanza)."</div>\n");
	fwrite($fp, "<div class=\"swahili\">".$arabic[a]." * ".$arabic[b]."</div>\n");
	fwrite($fp, "<div class=\"close\">".$close[a]." * ".$close[b]."</div>\n");
	fwrite($fp, "<div class=\"translation\">".$english[a]." ".$english[b]."</div>\n");
	fwrite($fp, "<div class=\"swahili\">".$arabic[c]." * ".$arabic[d]."</div>\n");
	fwrite($fp, "<div class=\"close\">".$close[c]." * ".$close[d]."</div>\n");
	fwrite($fp, "<div class=\"translation\">".$english[c]." ".$english[d]."</div>\n");
	fwrite($fp, "<br />\n\n");

}

fwrite($fp, "<div class=\"note\">".$endnotes."</span>");

fwrite($fp, "</body>\n</html>\n");
fwrite($fp, $footer);

fclose($fp);

?>
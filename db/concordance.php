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
This script generates a concordance of words.
First, create a concordance table by combining all the entries from the word table for each MS:
create table jaafari_concordance as select 'Y' as source, * from jaafari_words union all select 'R' as source, * from jaafari_r_words;
*/

include("./andika/config.php");
include("./includes/fns.php");

$poem=$argv[1];  // Take the name of the poem from the command-line argument.
if (empty($argv[1]))
{
    echo "\nYou need to specify the name of the poem.\nAdd it to the end of the line.\n\n";
    exit;
}

$words="{$poem}_concordance";
$colour1="mygreen";  // Colour for the Arabic text if desired.
$prev="z";

exec("mkdir -p db/outputs/".$poem);

// Open the tex file.
$fp = fopen("db/outputs/$poem/{$poem}_concordance.tex", "w") or die("Can't create the file");

// Write in the header.
$header=file_get_contents("db/tex/tex_header.tex");
fwrite($fp, $header);
fwrite($fp, "\n");

fwrite($fp, "\\begin{Large}Concordance of words in \\textcolor{{$colour1}}{\\AS{أُتٖنْزِ وَ جَعْفَر}}, \\Tr{uṯēnzi wa ja'far}, \\E{The Ballad of Ja'far}\\end{Large} \\\\[10mm] \n\n");

// Collect all the words in standard spelling from the table.  "arabic" is required to allow for different Arabic-script spelling of the standard word,
$sql=query("select standard, close, arabic from $words where standard!='~' group by standard, close, arabic order by standard, close;");
while ($row=pg_fetch_object($sql))
{
    $arabic=$row->arabic;
    $standard=$row->standard;
    $close=$row->close;
    //echo $close." - ".$arabic."\n";
    
    fwrite($fp, "\\noindent\\textcolor[RGB]{220,220,220}{\\rule{\\textwidth}{0.2pt}} \\\\[2mm]\n");
    fwrite($fp, $standard." \\dots\\ \\textarabic{\\textcolor{{$colour1}}{".$arabic."}} \\dots\\ ".$close."\n\n");

    // Get a list of all the locations for each standard+arabic word combination.
    $sql_e=query("select source, stanza, loc from $words where standard='$standard' and arabic='$arabic' order by stanza, loc, source;");
    while ($row_e=pg_fetch_object($sql_e))
    {
	$source=$row_e->source;
	$stanza=$row_e->stanza;
	$loc=$row_e->loc;
	//echo $source.$stanza.$loc." - ".$standard."\n";

	// Get all the words in each line and arrange them in order.
        $sql_w=query("select * from $words where source='$source' and stanza=$stanza and loc='$loc' order by position;");  
        while ($row_w=pg_fetch_object($sql_w))
        {
	    $arabic=$row_w->arabic;
	    $standard=preg_replace("/~/", "", $row_w->standard);
	    $close=preg_replace("/~/", "", $row_w->close);
	    $emend=$row_w->emend;
	    $variant=$row_w->variant;
	    $note=$row_w->note;
	    $root=$row_w->root;
	    $english=$row_w->english;
	    
	   //echo $standard."\n";
    	
	    // Use either edclose or standard as the main transliteration, depending on initial user input. 
	    if ($argv[2]=="close")
	    {
		$trans="$close";
	    }
	    else
	    {
		$trans="$standard";
	    }
    	
	    if ($emend!='')  // Add emended readings.
	    {
		$trans="\\Em{".$trans."}";
		//$emend_this="Emend to \\Swa{".$emend."}.";
	    }
    	
	    $arabic_line.=$arabic." ";
	    $close_line.=$close." ";
	    $trans_line.=$trans." ";  
	    $english_line.=$english." ";
        }
        
        echo $trans_line;
//         fwrite($fp, $source.$stanza.$loc.": ".$trans_line." \\dots\\ \\textarabic{\\textcolor{{$colour1}}{".$arabic_line."}} [".$close_line."] \\hspace*{\\fill} ".$emend_this." \n\n");
	fwrite($fp, $source.$stanza.$loc.": ".$trans_line." \\dots\\ \\textarabic{\\textcolor{{$colour1}}{".$arabic_line."}} \\dots\\ ".$close_line."\n\n");
        unset($arabic_line, $close_line, $trans_line, $english_line, $emend_this);

        echo "\n";
    }
}

// Close off the document.
fwrite($fp, "\\end{document}\n");
fclose($fp);

// Compile the tex file into a pdf.
echo "Doing layout...\n";
exec("xelatex -interaction=nonstopmode -output-directory=db/outputs/$poem db/outputs/$poem/{$poem}_concordance.tex 2>&1");
echo "The document should be ready now.\n";

?>
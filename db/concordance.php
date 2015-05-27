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

include("./andika/config.php");
include("./includes/fns.php");

$poem=$argv[1];  // Take the name of the poem from the command-line argument.
if (empty($argv[1]))
{
    echo "\nYou need to specify the name of the poem.\nAdd it to the end of the line.\n\n";
    exit;
}

$words="{$poem}_words";
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

// Collect the content from the table.
$sql=query("select edclose, arabic from $words group by edclose, arabic order by edclose;");  // Collect all the stanza numbers.
while ($row=pg_fetch_object($sql))
{
    $edclose=pg_escape_string($row->edclose);
    $arabic=$row->arabic;
    
    fwrite($fp, "\\noindent\\textcolor[RGB]{220,220,220}{\\rule{\\textwidth}{0.2pt}} \\\\[2mm]\n");
    fwrite($fp, $edclose." \\dots\\ \\textarabic{\\textcolor{{$colour1}}{".$arabic."}} \n\n");

    $sql_e=query("select stanza, loc from $words where edclose='$edclose' and arabic='$arabic';");
    while ($row_e=pg_fetch_object($sql_e))
    {
	$stanza=$row_e->stanza;
	$loc=$row_e->loc;

        $sql_w=query("select * from $words where stanza=$stanza and loc='$loc' order by position;");  // Collect the words of each kipande.
        while ($row_w=pg_fetch_object($sql_w))
        {
	    $arabic=$row_w->arabic;
	    $close=$row_w->close;
	    $standard=preg_replace("/~/", "", $row_w->standard);
	    $edclose=preg_replace("/~/", "", $row_w->edclose);
	    $emend=$row_w->emend;
	    $variant=$row_w->variant;
	    $note=$row_w->note;
	    $root=$row_w->root;
	    $english=$row_w->english;
    	
	    // Use either edclose or standard as the main transliteration, depending on initial user input. 
	    if ($argv[2]=="standard")
	    {
		$trans="$standard";
	    }
	    else
	    {
		$trans="$edclose";
	    }
    	
	    if ($emend!='')  // Add emended readings.
	    {
		$trans="\\Em{".$trans."}";
		$emend_this="Emend to \\Swa{".$emend."}.";  // Add final space in case there are other footnotes, in the event you are not using the footmisc package.  This will use the \Swa{} font (green Biolinum) - change it to another font if desired.
	    }
    	
	    $arabic_line.=$arabic." ";
	    $close_line.=$close." ";
	    $trans_line.=$trans." ";  
	    //$english_line.=$english." ";
        }
        
        echo $trans_line;
        fwrite($fp, $stanza.$loc.": ".$trans_line." \\dots\\ \\textarabic{\\textcolor{{$colour1}}{".$arabic_line."}} \\hspace*{\\fill} ".$emend_this." \n\n");
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
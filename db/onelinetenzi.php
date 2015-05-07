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
$stanza_contents="";  // set up a holder for the contents of the whole stanza
// $columns="rrl";  // Set up the columns for the main table which will hold the text.
$columns="cl"; 
$colour1="mygreen";  // Colour for the Arabic text if desired.
$prev="z";

$first_half=array('a', 'c', 'e', 'g', 'i', 'k', 'm', 'o', 'q', 's', 'u', 'w', 'y');  // vipande which signify the beginning of a line

exec("mkdir -p db/outputs/".$poem);

// Open the tex file.
$fp = fopen("db/outputs/$poem/{$poem}.tex", "w") or die("Can't create the file");

// Write in the header.
$header=file_get_contents("db/tex/tex_header.tex");
fwrite($fp, $header);
fwrite($fp, "\n");

// Insert a title file specific to this poem if it exists.
if (file_exists("convert/inputs/$poem/{$poem}_title.tex"))
{
    $title=file_get_contents("convert/inputs/$poem/{$poem}_title.tex");
}
fwrite($fp, $title);
fwrite($fp, "\n\n\n");

// Set up the layout.
//fwrite($fp, "\begin{longtable}{{$columns}} \n\n");
// fwrite($fp, "\makebox[8cm][r]{} & & \makebox[8cm][r]{} \\\\ \n\n"); 
fwrite($fp, "\begin{center} \n\n");

// Collect the content from the table.
//$sql=query("select stanza from $words where stanza between 200 and 220 group by stanza order by stanza;");  // Collect all the stanza numbers.
$sql=query("select stanza from $words group by stanza order by stanza;");  // Collect all the stanza numbers.
while ($row=pg_fetch_object($sql))
{
    $stanza=$row->stanza;
    
    // Set up check for stanzas with odd numbers of lines - get the letter matching the maximum kipande.
    $sql_nk=query("select max(loc) from $words where stanza=$stanza;");
    while ($row_nk=pg_fetch_object($sql_nk))
    {
	$maxkip=$row_nk->max;
    }
    
    $sql_loc=query("select distinct loc from $words where stanza=$stanza order by loc;");
    while ($row_loc=pg_fetch_object($sql_loc))
    {
        $prev=$kipande;
        $kipande=$row_loc->loc;
        
        $sql_w=query("select * from $words where stanza=$stanza and loc='$kipande' order by position;");  // Collect the words of each kipande.
        while ($row_w=pg_fetch_object($sql_w))
        {
            $arabic=$row_w->arabic;
            $close=$row_w->close;
            $standard=preg_replace("/~/", "", $row_w->standard);
            $edclose=preg_replace("/~/", "", $row_w->edclose);
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
            
            if ($variant!='')  // Add variant readings.
            {
                $trans=$trans."\\footnote{".$variant."} ";  // Final space in case there are other footnotes.
            }
            
            if ($note!='')  // Add notes.
            {
                $trans=$trans."\\footnote{".$note."} ";  // Final space in case there are other footnotes.
            }
            
            $arabic_line.=$arabic." ";
            $close_line.=$close." ";
            $trans_line.=$trans." ";  
            $english_line.=$english." ";
        }
        if ($prev!=$kipande)
        {
	    $arabic_line=$arabic_line." * ";
	    $close_line=$close_line." * ";
            $trans_line=$trans_line." * ";  
            //$english_line=$english_line." * ";
	}
    }
    
    $arabic_line=substr($arabic_line, 0, -3);
    $close_line=substr($close_line, 0, -3);
    $trans_line=substr($trans_line, 0, -3);  
    //$english_line=substr($english_line, 0, -3); 
    
    echo $trans_line;
    fwrite($fp, "\\textarabic{(".convert_numbers($stanza).") \\textcolor{{$colour1}}{".$arabic_line."}} \\\\* \n");
//     fwrite($fp, $close_line." & ".$stanza." \\\\* \n");
    fwrite($fp, "(".$stanza.") ".$trans_line." \\\\* \n");
    fwrite($fp, "\E{".$english_line."} \\\\ \n");
    unset($arabic_line, $close_line, $trans_line, $english_line);
    
    fwrite($fp, "\\\\[8mm] \n\n");
    echo "\n";
}

// Close off the layout.
//fwrite($fp, "\\end{longtable} \n\n");
fwrite($fp, "\\end{center} \n\n");


// ===== Endnotes =====
// If you need endnotes instead of footnotes, uncomment the following three lines.
// Remember to uncomment the two lines in andika/db/tex/tex_header.tex as well.
// $endnotes=file_get_contents("db/tex/endnotes.tex");
// fwrite($fp, $endnotes);
// fwrite($fp, "\n");
// ==================

// Print any references.
fwrite($fp, "\\renewcommand{\bibname}{References} \n");
fwrite($fp, "\\begingroup \n");
fwrite($fp, "\\printbibliography \n");
fwrite($fp, "\\endgroup \n\n");

// Close off the document.
fwrite($fp, "\\end{document}\n");
fclose($fp);

// Compile the tex file into a pdf.  In contrast to convert, we need to do a couple of passes because of biblatex.
echo "Doing initial layout...\n";
exec("xelatex -interaction=nonstopmode -output-directory=db/outputs/$poem db/outputs/$poem/{$poem}.tex 2>&1");
// echo "Integrating citations...\n";
// exec("biber db/outputs/$poem/$poem 2>&1");
// echo "Doing final layout...\n";
// exec("xelatex -interaction=nonstopmode -output-directory=db/outputs/$poem db/outputs/$poem/{$poem}.tex 2>&1");
echo "The document should be ready now.\n";

?>
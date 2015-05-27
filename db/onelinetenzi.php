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
fwrite($fp, "\begin{center} \n\n");

// Collect the content from the table.
//$sql=query("select stanza from $words where stanza between 200 and 220 group by stanza order by stanza;");
$sql=query("select msno, stanza from $words group by stanza, msno order by stanza;");  // Collect all the stanza numbers.
while ($row=pg_fetch_object($sql))
{
    $stanza=$row->stanza;  // Stanza number assigned by the import - always correct.
    $msno=$row->msno;  // Stanza number written on the MS - can be incorrect.
    
    $sql_loc=query("select distinct loc from $words where stanza=$stanza order by loc;");
    while ($row_loc=pg_fetch_object($sql_loc))
    {
        $prev=$kipande;
        $kipande=$row_loc->loc;
        
        $sql_w=query("select * from $words where stanza=$stanza and loc='$kipande' order by position;");  // Collect the words of each kipande.
        while ($row_w=pg_fetch_object($sql_w))
        {
            $arabic=$row_w->arabic;
            $standard=$row_w->standard;
            $edstan=$row_w->edstan;
            $close=$row_w->close;
            $edclose=$row_w->edclose;
            $emend=$row_w->emend;
            $variant=$row_w->variant;
            $note=$row_w->note;
            $root=$row_w->root;
            $english=$row_w->english;
            
            if ($edclose!='')  // If the automatic close transliteration has been edited, bring that in instead.  Replace deleted words (~) with a blank.
            {
		$close=preg_replace("/~/", "", $edclose);
            }
            
            if ($edstan!='')  // If the automatic close transliteration has been edited, bring that in instead.  Replace deleted words (~) with a blank.
            {
		$standard=preg_replace("/~/", "", $edstan);
            }
            
            if ($emend!='')  // Mark emended readings.  If the standard reading has been emended, mark that by entering any character (eg *) in the emend column, and the emended word will then be marked with a dotted underline.  This allows you to distinguish emendations from typographical editing of the reading (eg capitalising proper names).
            {
                //$edclose="\\Em{".$edclose."}";  // This and the next line are retained for reference purposes.
                //$edclose=$edclose."\\footnote{Emend to \\Swa{".$emend."}.}";  // This will use the \Swa{} font (green Biolinum) - change it to another font if desired.
                $standard="\\dotuline{".$standard."}";
            }
            
            if ($variant!='')  // Add variant readings.
            {
                $close=$close."\\footnote{".$variant."}";
            }
            
            if ($note!='')  // Add notes.
            {
                $standard=$standard."\\footnote{".$note."}";
            }
            
            $arabic_line.=$arabic." ";
            //$edclose_line=$edclose." ".$edclose_line;  // This leaves the words of the close transliteration going right to left, following the Arabic script.  Also change the lines below to: $edclose_line=" * ".$edclose_line; and $edclose_line= substr($edclose_line, 3); This approach was shelved in favour of the reverse line below, which allows all the lines to remain the same.
	    $standard_line.=$standard." ";  
            $close_line.=$close." ";  
            $english_line.=$english." ";
        }
        if ($prev!=$kipande)  // Add an asterisk when the kipande is complete.
        {
	    $arabic_line=$arabic_line." * ";
            $standard_line=$standard_line." * ";  
            $close_line=$close_line." * ";
	}
    }
    
    // Remove the trailing asterisk from the 4-vipande line.
    $arabic_line=substr($arabic_line, 0, -3);
    $close_line=substr($close_line, 0, -3);
    // Reverse the words of the close transliteration so that it goes right-to-left, following the Arabic script (http://docstore.mik.ua/orelly/webprog/pcook/ch01_05.htm).  If you want left-to-right, comment out this line.
    $close_line=join(' ',array_reverse(explode(' ',$close_line)));  
    $standard_line=substr($standard_line, 0, -3);  
    
    echo $standard_line;
    fwrite($fp, "\\textarabic{(".convert_numbers($stanza).") \\textcolor{{$colour1}}{".$arabic_line."}} \\\\* \n");
    //fwrite($fp, "\\SPSB{".$msno."}{".$msno."} (".$stanza.") ".$trans_line." \\\\* \n");
   // To get an Arabic-script text only, comment out the following 3 lines, and delete the \\\\* from the \textarabic line above.  You also need to adjust the poem_title.tex file if there is one.
    fwrite($fp, " \\OLTcl{".$close_line."} \\\\* \n");
    fwrite($fp, "\\SB{".$msno."} (\\textbf{".$stanza."}) \\OLTst{".$standard_line."} \\\\* \n");    
    fwrite($fp, "\E{".$english_line."} \\\\ \n");
    unset($arabic_line, $close_line, $edclose_line, $standard_line, $edstan_line, $english_line);
        
    fwrite($fp, "\\\\[8mm] \n\n");
    echo "\n";
}

// Close off the layout.
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
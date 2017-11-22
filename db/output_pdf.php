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

$collection=explode("+", $argv[2]);  // Take a list of options from the second command-line argument (if any) - these should be separated by a +.
// The options are as follows:
// justify: the default layout of the poem text is to centre it, but this option will right-justify it.
// nocolour: the default colour for the Arabic script is green (though this can be changed by editing this script), but this option will print the Arabic script in black.
// close-lr: the default is to print a transcription into standard Swahili, but this option will add a line giving a close transcription  reading from left to right.
//print_r($collection);

$words="{$poem}_words";
$stanza_contents="";  // Set up a holder for the contents of the whole stanza.
if (in_array("justify", $collection))  // If this option is passed in ...
{
    $columns="rl";  // ... the poem text will be right-justified in the text area.
}
else
{
    $columns="cl";  // Otherwise, the default is to centre the poem text in the text area.
}

if (in_array("nocolour", $collection))  // If this option is passed in ...
{
    $colour1="black";  // ... colour for the Arabic script will be removed.
}
else
{
    $colour1="mygreen";  // Otherwise, the default is to use green for the Arabic script.
}

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
fwrite($fp, "\begin{longtable}{{$columns}} \n\n");
// fwrite($fp, "\makebox[8cm][r]{} & & \makebox[8cm][r]{} \\\\ \n\n"); 

// Collect the content from the table.
//$sql=query("select stanza from $words where stanza between 200 and 220 group by stanza order by stanza;");  // Print selected stanzas.
$sql=query("select stanza from $words group by stanza order by stanza;");  // Collect all the stanza numbers.
while ($row=pg_fetch_object($sql))
{
    $stanza=$row->stanza;  // Stanza number assigned by the import - always correct.
    
    // Set up check for stanzas with odd numbers of lines - get the letter matching the maximum kipande.
    $sql_nk=query("select max(loc) from $words where stanza=$stanza;");
    while ($row_nk=pg_fetch_object($sql_nk))
    {
	$maxkip=$row_nk->max;
    }
    
    $sql_loc=query("select distinct loc from $words where stanza=$stanza order by loc;");
    while ($row_loc=pg_fetch_object($sql_loc))
    {
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
            $english=$row_w->english;
            
             if ($edclose!='')  // If the automatic close transliteration has been edited, bring that in instead.  Replace deleted words (~) with a blank.
            {
		$close=preg_replace("/~/", "", $edclose);
            }
            
            if ($edstan!='')  // If the automatic standard transliteration has been edited, bring that in instead.  Replace deleted words (~) with a blank.
            {
		$standard=preg_replace("/~/", "", $edstan);
            }
            
            if ($emend!='')  // Mark emended readings.  If the standard reading needs to be emended, write the emendation in the emend column, and that, together with a dotted underline, will be read in instead.  This allows you to distinguish emendations from typographical editing of the reading (eg capitalising proper names).
            {
                $standard="\\dotuline{".$emend."}";
            }
            
            if ($variant!='')  // Add variant readings.
            {
                $close=$close."\\footnote{".$variant."} ";  // Final space in case there are other variants.
            }
            
            if ($note!='')  // Add notes.
            {
                $standard=$standard."\\footnote{".$note."} ";  // Final space in case there are other footnotes.
            }
            
            // Concatenate the words in that kipande.
            $arabic_line.=$arabic." ";
            $standard_line.=$standard." "; 
            $close_line.=$close." ";
            $english_line.=$english." ";
        }

        if (in_array($kipande, $first_half))  // If the kipande is the first in the line, set it up as "a".
        {
            $first_kip=$kipande;
            $a_arabic=trim($arabic_line);
            $a_standard=trim($standard_line);
            $a_close=trim($close_line);
            $a_english=trim($english_line);
            unset($arabic_line, $standard_line, $close_line, $english_line);  // Clear the contents of the first kipande.
        }
        else  // If the kipande is the second in the line, set it up as "b".  Also include the numbering here (since we're reading left to right, the numbering has to come after the second kipande.
        {
            $standard_kip=$first_kip."/".$kipande;
            $close_kip=$kipande."/".$first_kip;
            $b_arabic=trim($arabic_line);
            $b_standard=trim($standard_line);
            $b_close=trim($close_line);
            $b_english=trim($english_line);
            $double=1;
        }

        if ($double==1)  // We have two kipande on the line, so print them.
        {
	    fwrite($fp, "\\textcolor{{$colour1}}{\\textarabic{".$a_arabic." * ".$b_arabic."}} & ");

            if (substr($close_kip, 0, 1)=="b") // Only put an Arabic number against the first line of the stanza (with two kipande to each line, the first line of the stanza ends with kipande b).
            {
                fwrite($fp, "\\textarabic{".convert_numbers($stanza)."} \\\\* \n");
            }
            else
            {
                fwrite($fp, " \\\\* \n");  
            }
            
            if (in_array("close-lr", $collection))  // If this option is passed in, a close transcription reading left to right will be included.
	    {
		fwrite($fp, "\\textcolor{{$colour1}}{\OLTcl{".$a_close." * ".$b_close."}} & \\\\* \n");
	    }
	    
	    if (in_array("close-rl", $collection))  // If this option is passed in, a close transcription reading right to left (ie following th Arabic script) will be included.
	    {
		$a_close=join(' ', array_reverse (explode (' ', $a_close)));  // Reverse the order of words in the first kipande.
		$b_close=join(' ', array_reverse (explode (' ', $b_close)));  // Reverse the order of words in the second kipande.
		fwrite($fp, "\\textcolor{{$colour1}}{\OLTcl{".$b_close." * ".$a_close."}} & \\\\* \n");
	    }
	    
            if (!in_array("nostandard", $collection))  // Print the standard transcription by default, unless this option is passed in.
            // Note that if this option is used, no variants or notes will be printed, because they are linked to the standard transcription.
	    {
		fwrite($fp, $a_standard." * ".$b_standard." & ".$stanza.$standard_kip." \\\\* \n");
	    }
            
	    if (!in_array("noenglish", $collection))  // Print any English translation by default, unless this option is passed in.
	    {
		fwrite($fp, "\E{".$a_english." ".$b_english."} & \\\\[2mm] \n");
	    }
           
            echo $stanza.$close_kip.": ".$a_standard." + ".$b_standard."\n";
            unset($double, $arabic_line, $standard_line, $close_line, $english_line);
        }
        elseif ($kipande==$maxkip)  // handle stanzas with an odd number of vipande
	// if the line doesn't have two vipande ($double), check if its loc is the last loc of the stanza, and if it is, print it anyway
        {
	    // FIXME: needs rewriting.
	    //fwrite($fp, " & \\textarabic{".$a_arabic."} & ");
	    fwrite($fp, "\multicolumn{2}{r}{\\textcolor{{$colour1}}{\\textarabic{".$a_arabic."}}} & ");
	    //fwrite($fp, " & \\textcolor{{$colour1}}{\\textarabic{".$a_arabic."}} & ");
	    fwrite($fp, " \\\\* \n");
	   // fwrite($fp, " & \\Tr{".$a_close."} &  \Tr{".$stanza.$kipande."} \\\\* \n");
           // fwrite($fp, "\multicolumn{2}{r}{\Swa{".$a_trans."}} & \Swa{".$stanza.$kipande."} \\\\* \n");
            fwrite($fp, "\multicolumn{2}{r}{".$a_trans."} & ".$stanza.$kipande." \\\\* \n");
            fwrite($fp, "\multicolumn{2}{r}{\E{".$a_english."}} & \\\\ \n");
            
	    echo $stanza.$kipande.": ".$a_trans."\n";
        }  
    }
    
    fwrite($fp, "\\\\[6mm] \n\n");
    echo "\n";
}

// Close off the layout.
fwrite($fp, "\\end{longtable} \n\n");

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
echo "Typesetting complete.\n";

?>
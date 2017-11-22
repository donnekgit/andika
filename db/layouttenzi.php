<?php

/* 
*********************************************************************
Copyright Kevin Donnelly 2015.
kevindonnelly.org.uk
This file is part of Andika!, a set of tools for writing Swahili in Arabic script.

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
This script is called from stacktenzi.php, and generates a layout for each stanza of an utenzi.
*/

// Collect the content from the table.
//$sql=query("select stanza from $words where stanza between 200 and 220 group by stanza order by stanza;");  // Print selected stanzas.
$sql=query("select msno, stanza from $words where stanza=$stanza group by stanza, msno order by stanza;");  // Collect all the stanza numbers.
while ($row=pg_fetch_object($sql))
{
    //$stanza=$row->stanza;  // Stanza number assigned by the import - always correct.
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
            
            if ($edstan!='')  // If the automatic standard transliteration has been edited, bring that in instead.  Replace deleted words (~) with a blank.
            {
		$standard=preg_replace("/~/", "", $edstan);
            }
            
            if ($emend!='')  // Mark emended readings.  If the standard reading has been emended, mark that by entering any character (eg *) in the emend column, and the emended word will then be marked with a dotted underline.  This allows you to distinguish emendations from typographical editing of the reading (eg capitalising proper names).
            // //FIXME: Write the entire emendation in the emend column, and read that in instead (as in output_pdf.php).
            {
                //$edclose="\\Em{".$edclose."}";  // This and the next line are retained for reference purposes.
                //$edclose=$edclose."\\footnote{Emend to \\Swa{".$emend."}.}";  // This will use the \Swa{} font (green Biolinum) - change it to another font if desired.
                $standard="\\dotuline{".$standard."}";
            }
            
            if ($variant!='')  // Add variant readings.
            {
                $close=$close."\\footnote{".$variant."} ";  // Final space in case there are other variants.
            }
            
            if ($note!='')  // Add notes.
            {
                $standard=$standard."\\footnote{".$note."} ";  // Final space in case there are other footnotes.
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
    fwrite($fp, "\\textarabic{".$arconsol." \\textcolor{{$colour}}{".$arabic_line."}} ".$bar." \\\\* \n");
    //fwrite($fp, "\\SPSB{".$msno."}{".$msno."} (".$stanza.") ".$trans_line." \\\\* \n");
   // To get an Arabic-script text only, comment out the following 3 lines, and delete the \\\\* from the \textarabic line above.  You also need to adjust the poem_title.tex file if there is one.
    fwrite($fp, "\\textcolor{{$colour}}{\\OLTcl{".$close_line."}} \\\\* \n");
    fwrite($fp, "\\MS{".$msv." ".$stanza." [".$msno."]} ".$consol." \\OLTst{".$standard_line."} \\\\* \n");    
    fwrite($fp, "\E{".$english_line."} \\\\ \n");
    unset($arabic_line, $close_line, $edclose_line, $standard_line, $edstan_line, $english_line);
        
    fwrite($fp, "\\\\[6mm] \n\n");
    echo "\n";
}    

?>
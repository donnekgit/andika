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

$poem="kiswahili";
// $poem="jaafari";
//echo $poem."\n";

$words="{$poem}_words";

$columns="rrl";  // Set up the columns for the main table which will hold the text.
$vipande_no=8;  // Number of vipande in a stanza.
include("tex/pdf_open.php");  // Open the tex file.

$stanza_contents="";  // set up a holder for the contents of the whole stanza
$vipande=array('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p');  // letters to signify location of the kipande in the stanza
// Truncate the array of vipande letters to the total number of vipande in the stanza.  (NOTE: if you put $vipande= at the front of the line, $vipande will contain the cut pieces, not the ones you want to keep!)
array_splice($vipande, $vipande_no);
$first_half=array('a', 'c', 'e', 'g', 'i', 'k', 'm', 'o');  // vipande we want to have at the beginning of a line

$sql=query("select stanza from $words group by stanza order by stanza;");  // Collect all the stanza numbers.
while ($row=pg_fetch_object($sql))
{
    $stanza_no=$row->stanza;
    foreach ($vipande as $kipande)
    {
        $sql_w=query("select * from $words where stanza=$stanza_no and pos='$kipande' order by pos, location;");  // Collect the words of each kipande.
        while ($row_w=pg_fetch_object($sql_w))
        {
            $kipande=$row_w->pos;
            $close_word=$row_w->close;
            $standard_word=$row_w->standard;
            $particle=$row_w->segment;
            $note=$row_w->note;
            
            // Edit the close transcription.
            if ($row_w->lemma!='')  // handle lemma fixes (eg epenthetic vowels)- replace the text with the lemma entry
            {
                $close_word=preg_replace("/#(.*)#/", "}\I{\$1}\Tr{", $row_w->lemma);
            }
            
            if ($particle!='')  // handle segmentation - separate particles from the word they are attached to, and connect them when they are not attached (~)
            {
                if ($particle=="~")
                {
                    $standard_word=$standard_word."~";
                }
                else
                {
                    $standard_word=preg_replace("/($particle)(.*)/", "$1 $2", $standard_word);
                }
            }
            
            if ($note!='')  // handle notes - hyperlink the note number, store the endnotes
            {
                $note=preg_replace("/@(.*)@/U", "\AS{\$1}", $note);
                $note=preg_replace("/#(.*)#/U", "{\E{\$1}}", $note);
                $standard_word=$standard_word."\\footnote{".$note."}";
            }
            
            $arabic_line.=$row_w->arabic." ";
            $close_line.=$close_word." ";
            $standard_line.=$standard_word." ";
            $english_line.=$row_w->english." ";
        }
        
        $arabic[$kipande]=trim($arabic_line);
        $close[$kipande]=trim($close_line);
        $standard[$kipande]=trim(preg_replace("/~ /", "", $standard_line));
        $english[$kipande]=trim($english_line);
        
        unset($arabic_line, $close_line, $standard_line, $english_line);
   
        if (in_array($kipande, $first_half))
        {
            $this_kip=$kipande;
            $a_arabic=$arabic[$kipande];
            $a_close=$close[$kipande];
            $a_standard=$standard[$kipande];
            $a_english=$english[$kipande];
        }
        else
        {
            $this_kip.="/".$kipande;
            $b_arabic=$arabic[$kipande];
            $b_close=$close[$kipande];
            $b_standard=$standard[$kipande];
            $b_english=$english[$kipande];
            $double=1;
        }
        
        if($double==1)  // we have two kipande on the line, so print them
        {
            fwrite($fp, "\\textarabic{".$b_arabic."} & \\textarabic{".$a_arabic."} & ");
            if (substr($this_kip, 0, 1)=="a") // only put an Arabic number against the first line of the stanza
            {
                fwrite($fp, "\\textarabic{".convert_numbers($stanza_no)."} \\\\* \n");
            }
            else
            {
                fwrite($fp, " \\\\* \n");  
            }
            fwrite($fp, "\Tr{".$b_close."} & \\Tr{".$a_close."} & \\\\* \n");
            fwrite($fp, "\multicolumn{2}{r}{\S{".$a_standard." * ".$b_standard."}} & \S{".$row->stanza.$this_kip."} \\\\* \n");
            fwrite($fp, "\multicolumn{2}{r}{\E{".$a_english." ".$b_english."}} & \\\\[2mm] \n");
           
            echo $stanza_no.$this_kip.": ".$a_close." * ".$b_close."\n";
        }
        
        unset($double);
    }
    
    fwrite($fp, "\\\\[8mm] \n\n");
    echo "\n";
}

include("tex/pdf_close.php");

?>
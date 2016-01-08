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
This script collects data from a MS for a concordance based on roots.
Run as: php db/fill_root_concordance <name of MS>.
Remember to change the insertion query to match the MS.
Also, the table name is hardwired to jaafari_root_concordance - change this if desired.
The SQL to create the table is:
CREATE TABLE jaafari_root_concordance 
(
  id         serial PRIMARY KEY NOT NULL,
  ms         varchar(5),
  stanza     INT,
  loc        varchar(1),
  root       varchar(25),
  pos        varchar(20),
  target	varchar(50),
  trans   	 varchar(100),
  arabic     varchar(100),
  close	varchar(100),
  english    varchar(200)
);
*/

include("./andika/config.php");
include("./includes/fns.php");
 
$poem=$argv[1];  // Take the name of the poem from the command-line argument.
if (empty($argv[1]))
{
    echo "\nYou need to specify the name of the poem.\nAdd it to the end of the line.\n\n";
    exit;
}

// $ms=$argv[2];  // Take the name of the poem from the command-line argument.
// if (empty($argv[2]))
// {
//     echo "\nYou need to specify the ms of the poem.\nAdd it to the end of the line.\n\n";
//     exit;
// }
// $ms=strtolower($ms);  // Enforce lower case.

$words="{$poem}_words";
//$root_con="{$poem}_root_concordance";

// Collect all unique root and part-of-speech combinations from the table.
$sql=query("select root, pos from $words where edstan!='~' and root!='' group by root, pos order by root, pos;");
while ($row=pg_fetch_object($sql))
{
    $root=$row->root;
    $pos=$row->pos;
    echo $root." (".$pos.")\n";
    
    // Get a list of all the locations for each root+pos combination.
    $sql_e=query("select * from $words where root='$root' and pos='$pos' order by standard, stanza, loc;");
    while ($row_e=pg_fetch_object($sql_e))
    {
	$stanza=$row_e->stanza;
	$loc=$row_e->loc;
	$target=$row_e->standard;
	$edtarg=$row_e->edstan;
	if ($edtarg!='')  // If the automatic standard transliteration has been edited, bring that in instead.  Replace deleted words (~) with a blank.
	{
	    $target=preg_replace("/~/", "", $edtarg);
	}

	// Get all the words in each line and arrange them in order.
        $sql_w=query("select * from $words where stanza=$stanza and loc='$loc' order by position;");  
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
	    $root_w=$row_w->root;
	    $english=$row_w->english;
	       
	    if ($edclose!='')  // If the automatic close transliteration has been edited, bring that in instead.  Replace deleted words (~) with a blank.
            {
		$close=preg_replace("/~/", "", $edclose);
            }
            
            if ($edstan!='')  // If the automatic standard transliteration has been edited, bring that in instead.  Replace deleted words (~) with a blank.
            {
		$standard=preg_replace("/~/", "", $edstan);
            }
    	
	    // Use either edclose or standard as the main transliteration, depending on initial user input. 
	    if ($argv[2]=="close")
	    {
		$trans="$close";
	    }
	    else
	    {
		$trans="$standard";
	    }
    	
	    if ($emend!='')  // Mark emended readings.
	    {
		$trans="\\Em{".$trans."}";
		//$emend_this="Emend to \\Swa{".$emend."}.";
	    }
    	
	    //echo $root_w." - ".$root."\n";
	    if ($root_w==$root)
	    {
		//$trans="\\textcolor{red}{".$trans."}}";
		$trans="#".$trans."#";
	    }
	    
	    $arabic_line.=$arabic." ";
	    $close_line.=$close." ";
	    $trans_line.=$trans." ";  
	    $english_line.=$english." ";
        }
        
	$trans_line=preg_replace("/ +/", " ", $trans_line);  // Remove multiple spaces in the transcription (from blanking edstan).
	$english_line=pg_escape_string($english_line);  // Handle apostrophes in the English.
	
	$sql_i=query("insert into jaafari_root_concordance (ms, stanza, loc, root, pos, target, trans, arabic, close, english) values ('R', $stanza, '$loc', '$root', '$pos', '$target', '$trans_line', '$arabic_line', '$close_line', '$english_line');");
	
	echo $trans_line."\n";

        unset($arabic_line, $close_line, $trans_line, $english_line, $emend_this);
    }
}

?>
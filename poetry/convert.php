<?php

/* 
*********************************************************************
Copyright Kevin Donnelly 2012-2014.
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
This script converts Swahili poems in Arabic script into Roman script, and vice versa, adding an automatically
generated transcription.  For more information, see includes/optionhandling.php, or type: php poetry/import_swa.php -h
*/

// Initialise required stuff.
include("./andika/config.php");
include("./includes/fns.php");
//include("./includes/optionhandling.php");
require_once 'poetry/QueryPath-2.1.2-minimal/QueryPath.php';

// Debug: check options and variables.
//print_r($options)."\n";
//echo $input."\n";
echo $poem."\n";
echo $type."\n";
echo $vipande_no."\n";
echo $output."\n";
echo $layout."\n";
echo $columns."\n";
echo $script."\n";

// Locate the input file, depending on extension.
if ($type=="odt")
{
    $file="zip://poetry/inputs/".$poem.".".$type."#content.xml";
}
elseif ($type=="txt")
{
    $file="poetry/inputs/".$poem.".".$type;
}

// Set up a dir for each poem's output.
exec("mkdir -p poetry/outputs/".$poem);

// For database import, set up a table for each poem.
if ($output=="db")
{
    include("poetry/create_poemlines.php");
}

// Set up stanza furniture.
$stanza_no=1;  // start stanza counter
$stanza_contents="";  // set up a holder for the contents of the whole stanza
$vipande=array('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p');  // letters to signify location of the kipande in the stanza
// Truncate the array of vipande letters to the total number of vipande in the stanza.  (NOTE: if you put $vipande= at the front of the line, $vipande will contain the cut pieces, not the ones you want to keep!)
array_splice($vipande, $vipande_no);
// print_r($vipande);
$first_half=array('a', 'c', 'e', 'g', 'i', 'k', 'm', 'o');  // vipande we want to have at the beginning of a line

// Read the lines in the file into an array, based on extension.
if ($type=="odt")
{
    foreach (qp($file)->find('text|p') as $line) 
    {
        $poemlines[]=$line->text();
    }
}
elseif ($type=="txt")
{    
    $poemlines=file($file);
}

// Open the output file.
if ($output=="pdf")
{
    include("tex/pdf_open.php");  // Open the tex file.
}
elseif ($output=="txt")
{
    $fp=fopen("poetry/outputs/$poem/{$poem}.txt", "w") or die("Can't create the file");
}

// Read each line of the array and handle it.
foreach ($poemlines as $poemline)
{
    if (strlen(trim($poemline)) > 0) // there's text on the line ...  ("empty" lines in a txt file contain a \n character, so we have to trim that off)
    {
        $stanza_contents.=trim($poemline)." * ";  // Stick together all the vipande, separated by *.
    }
    else // it's a blank line preceding a new stanza, so print out the previous stanza 
    {
        echo "\n".$stanza_no."\n";

        $this_stanza=array_filter(array_map('trim', explode("*", $stanza_contents)));  // Split the stanza at * and import the pieces into an array.
        //print_r($this_stanza);
        $this_stanza=array_combine($vipande, $this_stanza);  // Set the values of $vipande as the keys of $this_stanza.
        
        foreach ($this_stanza as $key=>$stanza_line)
        // Read each line of the stanza, and feed them to different layout options.
        // All three layout choices are available only for pdf output (-o=pdf).
        // If -o=txt output is specified, includes/optionhandling.php constrains txt layout to vip-star, and db layout to kip-line if -o=db is specified.
        {
            if ($layout=="vip-space")
            {
                include("layouts/vip-space_{$script}.php");
            }
            elseif ($layout=="vip-star")
            {
                include("layouts/vip-star_{$script}.php");
            } 
            elseif ($layout=="kip-line")
            {
                include("layouts/kip-line_{$script}.php");
            }
        }
        
        // Put a spacer between stanzas, depending on extension.
        if ($output=="pdf")
        {
            fwrite($fp, "\\\\[8mm] \n\n");
        }
        elseif ($output=="txt")
        {
            fwrite($fp, "\n");
        }
        
        unset($stanza_contents);  //clear the board for the next loop
        $stanza_no++;  // increment the stanza number
    }
}

// Close off the output, depending on extension.
if ($output=="pdf")
{
    include("tex/pdf_close.php");
}
elseif ($output=="txt")
{
    fclose($fp);
}

?>
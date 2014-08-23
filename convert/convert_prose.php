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

$shortopts="i:v:o::l::s::th";  // short options are a string
$longopts=array("input:", "vipande:", "output::", "layout::", "script::", "transcription", "help");  // long options are an array
$options = getopt($shortopts, $longopts);  
if (isset($options["i"]))
{
    $input=explode(".", $options["i"]);
}
elseif (isset($options["input"]))
{
    $input=explode(".", $options["input"]);
}
if ($options["o"]=="pdf" or $options["output"]=="pdf")
{
    $output="pdf";
    if (empty($options["l"]) or empty($options["layout"]))
    {
        $layout="vip-space";
        $columns="rrl";
    }
}
$poem=$input[0];
$type=$input[1];

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
    include("tex/prose_pdf_open.php");  // Open the tex file.
}
elseif ($output=="txt")
{
    $fp=fopen("poetry/outputs/$poem/{$poem}.txt", "w") or die("Can't create the file");
}

$stanza_no=1;

// Read each line of the array and handle it.
foreach ($poemlines as $poemline)
{
    $translit=ar2rom(trim($poemline)); // transliterate
    $standard=trim(standardise($translit));  // apply standard transcription
    $roman=trim(close_trans($translit));  // apply close phonetic transcription
    
    if ($output=="pdf")
    {
        fwrite($fp, "\\textarabic{".$poemline."} & ");
        fwrite($fp, "\\textarabic{".convert_numbers($stanza_no)."} \\\\* \n");  // * disallows a pagebreak after this row
        fwrite($fp, "\Tr{".$roman."} & \Tr{".$stanza_no."}\\\\* \n");
        //fwrite($fp, "\S{".$standard."} & \S{".$stanza_no."} \\\\ \n");
    }
    elseif ($output=="txt")
    {
        fwrite($fp, $poemline."\n");
        fwrite($fp, $roman."\n");
        //fwrite($fp, $standard."\n");
//         if (isset($options["t"]))
//         {
//             fwrite($fp, $standard."\n");
//         }
    }
        
    $stanza_no++;  // increment the stanza number
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
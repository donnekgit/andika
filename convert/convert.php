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
generated transcription.
*/

// Handle input coming from convert.sh.
// -----------------------------------------------
$collection=explode("+", $argv[1]);
// print_r($collection);

list($input, $script, $genre, $vipande_no, $output, $layout, $columns, $transtxt)=$collection;

$pathparts = pathinfo($input);
$inpath=$pathparts["dirname"];  // path
$input=$pathparts["basename"];  // filename
$poem=$pathparts["filename"];  // filename without the extension
$type=$pathparts["extension"];  // extension

$script=lcfirst($script);

// Check options and variables.
// -----------------------------------
print_r($options)."\n";
echo $input."\n";
echo $poem."\n";
echo $type."\n";
echo $script."\n";
echo $genre."\n";
echo $vipande_no."\n";
echo $output."\n";
echo $layout."\n";
echo $columns."\n";
echo $transtxt."\n";

// Set up an array for optionhandling.php, to retain the alternative of CLI input.
// Needs further work -- optionhandling.php needs revision.
// if (!empty($collections))
// { 
//     $options=array("i"=>$input, "s"=>$script, "g"=>$genre, "v"=>$vipande_no, "o"=>$output, "l"=>$layout, "input"=>$input, "script"=>$script, "genre"=>$genre, "vipande"=>$vipande_no, "output"=>$output, "layout"=>$layout);
// }

// Initialise required stuff.
// -----------------------------
include("./andika/config.php");
include("./includes/fns.php");
// include("./includes/optionhandling.php");
require_once 'convert/QueryPath-2.1.2-minimal/QueryPath.php';

// Check options and variables.
// ------------------------------------
// print_r($options)."\n";
// echo $input."\n";
// echo $poem."\n";
// echo $type."\n";
// echo $script."\n";
// echo $genre."\n";
// echo $vipande_no."\n";
// echo $output."\n";
// echo $layout."\n";
// echo $columns."\n";
// echo $roman."\n";

// Locate the input file, depending on extension.
// --------------------------------------------------------
if ($type=="odt")
{
    $file="zip://convert/inputs/".$poem.".".$type."#content.xml";
}
elseif ($type=="txt")
{
    $file="convert/inputs/".$poem.".".$type;
}

// Set up a dir for each file's output.
// -----------------------------------------
exec("mkdir -p convert/outputs/".$poem);

// For database import, set up a table for each file.
// -----------------------------------------------------------
if ($output=="db")
{
    include("convert/create_poemlines.php");
}

// Read the lines in the file into an array, based on extension.
// ------------------------------------------------------------------------
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
// --------------------------
if ($output=="pdf")
{
    $fp = fopen("convert/outputs/$poem/{$poem}.tex", "w") or die("Can't create the file");
    $header=file_get_contents("convert/tex/tex_header.tex");
    fwrite($fp, $header);
    fwrite($fp, "\n");
    if ($genre=="Prose")
    {
        fwrite($fp, "\\begin{flushright}\n\n");
    }
    elseif ($genre=="Poetry")
    {
        fwrite($fp, "\begin{longtable}{{$columns}} \n\n");
        fwrite($fp, "\makebox[8cm][r]{} & & \makebox[8cm][r]{} \\\\ \n\n"); 
    }
}
elseif ($output=="txt")
{
    $fp=fopen("convert/outputs/$poem/{$poem}.txt", "w") or die("Can't create the file");
}
elseif ($output=="odt")
{
    $fp=fopen("convert/odt/content.xml", "w") or die("Can't create the file");
    $header=file_get_contents("convert/odt/odt_header.txt");
    fwrite($fp, $header);
}

// Branch depending on the genre.
if ($genre=="Prose")
{
    include("proseconvert.php");
}
elseif ($genre=="Poetry")
{
    include("poemconvert.php");
} 

?>
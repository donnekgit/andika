<?php

/* 
*********************************************************************
Copyright Kevin Donnelly 2015.
kevindonnelly.org.uk
This file is part of Andika!, a set of tools for writing Swahili in Arabic script..

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
This script uses the _runord table to create a "stacked" printout of the text from all the MSs as aligned in _runord.  It gets basic MS info (eg table name, MS identifier, colour) from the _mslist table, so the only constraint is that this must have entries in it for all the MSs that are in _runord, otherwise the script will halt execution midway through.  

*/

include("./andika/config.php");
include("./includes/fns.php");

$poem=$argv[1];  // Take the name of the poem from the command-line argument.
if (empty($argv[1]))
{
    echo "\nYou need to specify the name of the poem.\nAdd it to the end of the line.\n\n";
    exit;
}

// Get all the MS columns from the _runord table and put them in an array.
$sql_col=query("select column_name from information_schema.columns where table_name='{$poem}_runord';");
while ($row_col=pg_fetch_object($sql_col))
{
    $mss[]=$row_col->column_name;
}
array_shift($mss); // Get rid of the id column.
unset($mss[0]);  // Get rid of the runord column, simultaneously re-indexing the array to 1.

exec("mkdir -p db/outputs/".$poem);

// Open the tex file.
$fp = fopen("db/outputs/$poem/{$poem}_stacked.tex", "w") or die("Can't create the file");

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

fwrite($fp, "\\noindent\\textcolor[RGB]{220,220,220}{\\rule{\\textwidth}{0.2pt}} \\\\[2mm]\n\n");

// Set up the layout.
fwrite($fp, "\begin{center} \n\n");

$sql_ro=query("select * from {$poem}_runord order by runord;");
while ($row_ro=pg_fetch_object($sql_ro))
{
    $runord=$row_ro->runord;
    
    $firstcol=0;
    foreach ($mss as $ms)
    {
	$roms=$row_ro->$ms;
	if ($roms!='')  // If there is a stanza listed in the column ...
	{
	     if ($firstcol!=1)  // ... and $firstcol is not already set, then add the numbers furniture.
	    {
		$consol="(\\textbf{".$runord."})";  // consolidated Roman number in brackets
		$arconsol="(".convert_numbers($runord).")";  // consolidated Arabic number in brackets
	    }
	    $msv=strtoupper($ms);  // Uppercased MS version (eg Y, R).
	    $stanza=$roms;  // Stanza number of that MS version.
	    
	    $sql_lc=query("update {$poem}_mslist set msid=lower(msid);");   // Lowercase the MS identifiers in case the user has entered them in uppercase by mistake.
	    $sql_d=query("select * from {$poem}_mslist where msid='$ms';");  // IMPORTANT: the _mslist table must contain entries for each MS represented in the _runord table, or the script will halt here.
	    while ($row_d=pg_fetch_object($sql_d))
	    {
		$words=$row_d->mstable."_words";
		$colour=$row_d->colour;
	    }
	    
	    include("layouttenzi.php");  // Do the heavy lifting on the layout. 
	    
	    $firstcol=1;  // Set $firstcol, because the leader MS stanza has now had the numbers furniture added.
	}

	unset ($msv, $colour, $stanza, $words, $consol, $arconsol);
    }

    fwrite($fp, "\\noindent\\textcolor[RGB]{220,220,220}{\\rule{\\textwidth}{0.2pt}} \\\\[5mm]\n\n");  // Print a divider between each stanza stack.
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
exec("xelatex -interaction=nonstopmode -output-directory=db/outputs/$poem db/outputs/$poem/{$poem}_stacked.tex 2>&1");
// echo "Integrating citations...\n";
// exec("biber db/outputs/$poem/$poem 2>&1");
// echo "Doing final layout...\n";
// exec("xelatex -interaction=nonstopmode -output-directory=db/outputs/$poem db/outputs/$poem/{$poem}.tex 2>&1");
echo "The document should be ready now.\n";

?>
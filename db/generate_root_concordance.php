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
This script generates a concordance based on roots.
First, create a concordance table by combining all the entries from the word table for each MS:
create table jaafari_concordance as select 'Y' as source, * from jaafari_words union all select 'R' as source, * from jaafari_r_words;
*/

include("./andika/config.php");
include("./includes/fns.php");
 
$poem=$argv[1];  // Take the name of the poem from the command-line argument.
if (empty($argv[1]))
{
    echo "\nYou need to specify the name of the poem.\nAdd it to the end of the line.\n\n";
    exit;
}

$words="{$poem}_root_concordance";
$colour1="mygreen";  // Colour for the Arabic text if desired.

exec("mkdir -p db/outputs/".$poem);

// Open the tex file.
$fp = fopen("db/outputs/$poem/{$poem}_root_concordance.tex", "w") or die("Can't create the file");

// Write in the header.
$header=file_get_contents("db/tex/tex_header.tex");
fwrite($fp, $header);
fwrite($fp, "\n");

fwrite($fp, "\\begin{Large}Concordance of words in \\textcolor{{$colour1}}{\\AS{أُتٖنْزِ وَ جَعْفَر}}, \\Tr{uṯēnzi wa ja'far}, \\E{The Ballad of Ja'far}\\end{Large} \\\\[10mm] \n\n");

// Collect all the words in standard spelling from the table.
$sql=query("select root, pos from $words group by root, pos order by root, pos;");
while ($row=pg_fetch_object($sql))
{
    $root=$row->root;
    $pos=$row->pos;
    echo $root." (".$pos.")\n";
	
    fwrite($fp, "\\noindent\\textcolor[RGB]{220,220,220}{\\rule{\\textwidth}{0.2pt}} \\\\[2mm]\n");
    fwrite($fp, $root." (".$pos.")\n\n");
    
    // Get a list of all the locations for each root+pos combination.
    $sql_e=query("select * from jaafari_root_concordance where root='$root' and pos='$pos' order by target, trans, stanza, loc, ms;");
    while ($row_e=pg_fetch_object($sql_e))
    {
	$ms=$row_e->ms;
	$stanza=$row_e->stanza;
	$loc=$row_e->loc;
	$trans=preg_replace("/#(.+)#/U", "\\textcolor{red}{\\1}", $row_e->trans);
	$arabic=$row_e->arabic;
	$close=$row_e->close;
	$english=$row_e->english;
	
        echo $trans."\n";
        
	fwrite($fp, $ms.$stanza.$loc.": ".$trans." \\dots\\ \\textarabic{\\textcolor{{$colour1}}{".$arabic."}} \\dots\\ ".$close."\n\n");
    }
}

// Close off the document.
fwrite($fp, "\\end{document}\n");
fclose($fp);

// Compile the tex file into a pdf.
echo "Doing layout...\n";
exec("xelatex -interaction=nonstopmode -output-directory=db/outputs/$poem db/outputs/$poem/{$poem}_root_concordance.tex 2>&1");
echo "The document should be ready now.\n";

?>
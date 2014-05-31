<?php

// Set up the output tex file, which will be compiled to produce the pdf.

$fp = fopen("poetry/outputs/$poem/{$poem}.tex", "w") or die("Can't create the file");

$header=file_get_contents("poetry/tex/poem_header.tex");
fwrite($fp, $header);
fwrite($fp, "\n");

if (file_exists("poetry/tex/{$poem}_title.tex"))  // Call a title file specific to this poem if it exists ....
{
    $title=file_get_contents("poetry/tex/{$poem}_title.tex");
}
else  // ... otherwise, just use the name of the poem as the title.
{
    $prepped=prep_rom(trim($poem));
    $translit=rom2ar($prepped);
    $name=html_entity_decode(preg_replace("/U\+([0-9A-F]{4,5})/", "&#x\\1;", $translit), ENT_NOQUOTES, 'UTF-8');
    $title="\begin{longtable}{r}\n\\textfarsi{{$name}} \\\\*\n\T{{$poem}} \\\\\n\cdashline{1-1}[1pt/3pt] \\\\\n[6mm]\n\\end{longtable}\n\n";
}
fwrite($fp, $title);
fwrite($fp, "\n");

fwrite($fp, "\begin{longtable}{{$columns}} \n\n");

?>
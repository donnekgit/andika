<?php

// Set up the output tex file, which will be compiled to produce the pdf.
// This handles prose, where each line is read in sequence and converted.

$fp = fopen("poetry/outputs/$poem/{$poem}.tex", "w") or die("Can't create the file");

$header=file_get_contents("poetry/tex/poem_header.tex");
fwrite($fp, $header);
fwrite($fp, "\n");

fwrite($fp, "\begin{longtable}{{rl}} \n\n");

?>
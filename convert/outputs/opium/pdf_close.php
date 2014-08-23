<?php

// Close off the output tex file.
if (file_exists("poetry/tex/{$poem}_footer.tex"))  // Call a footer file specific to this poem if it exists ....
{
    $footer="poetry/tex/{$poem}_footer.tex";
}
else  // ... otherwise, just use the default footer.
{
    $footer="poetry/tex/tex_footer.tex";
}

$footer=file_get_contents($footer);
fwrite($fp, $footer);
fwrite($fp, "\n");

fclose($fp);

// Compile the tex file into a pdf.
exec("xelatex -interaction=nonstopmode -output-directory=poetry/outputs/$poem poetry/outputs/$poem/{$poem}.tex 2>&1");

?>

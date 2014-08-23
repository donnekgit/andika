<?php

// Close off the output tex file.
if (file_exists("convert/tex/{$poem}_footer.tex"))  // Call a footer file specific to this poem if it exists ....
{
    $footer="convert/tex/{$poem}_footer.tex";
}
else  // ... otherwise, just use the default footer.
{
    $footer="convert/tex/tex_footer.tex";
}

$footer=file_get_contents($footer);
fwrite($fp, $footer);
fwrite($fp, "\n");

fclose($fp);

// Compile the tex file into a pdf.
exec("xelatex -interaction=nonstopmode -output-directory=convert/outputs/$poem convert/outputs/$poem/{$poem}.tex 2>&1");

?>

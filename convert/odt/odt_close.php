<?php

// Close off the output odt file.
$footer=file_get_contents("convert/odt/odt_footer.txt");
fwrite($fp, $footer);

fclose($fp);

// Repack the odt and move it to the outputs dir
exec("mv convert/odt/content.xml convert/odt/template/");
exec("cd convert/odt/template && zip -r template.odt *");
exec("mv convert/odt/template/template.odt convert/outputs/$poem/{$poem}.odt");

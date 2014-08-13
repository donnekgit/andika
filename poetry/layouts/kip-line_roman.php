<?php

$roman=trim($stanza_line);
$prepped=prep_rom(trim($stanza_line));
$translit=rom2ar($prepped);
$arabic=html_entity_decode(preg_replace("/U\+([0-9A-F]{4,5})/", "&#x\\1;", $translit), ENT_NOQUOTES, 'UTF-8');

fwrite($fp, "\\textarabic{".$arabic."} & ");
 if (substr($key, 0, 1)=="a") // only put an Arabic number against the first line of the stanza
{
    fwrite($fp, "\\textarabic{".convert_numbers($stanza_no)."} \\\\* \n");  // * disallows a pagebreak after this row
}
else
{
    fwrite($fp, " \\\\* \n");  // * disallows a pagebreak after this row
}

fwrite($fp, "\Tr{".$roman."} & \Tr{".$stanza_no.$key."} \\\\ \n");
echo $key.": ".$roman."\n";

?>

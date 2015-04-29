<?php

$roman=trim($stanza_line);
$prepped=prep_rom(trim($stanza_line));
$translit=rom2ar($prepped);
$arabic=html_entity_decode(preg_replace("/U\+([0-9A-F]{4,5})/", "&#x\\1;", $translit), ENT_NOQUOTES, 'UTF-8');
$arabic=preg_replace("/([0-9]+)/e", "convert_numbers('$1')", $arabic);  // convert numbers to Arabic forms; comment out if Roman forms are preferred

include("kip-line_print.php");

?>

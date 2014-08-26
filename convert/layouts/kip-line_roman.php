<?php

$roman=trim($stanza_line);
$prepped=prep_rom(trim($stanza_line));
$translit=rom2ar($prepped);
$arabic=html_entity_decode(preg_replace("/U\+([0-9A-F]{4,5})/", "&#x\\1;", $translit), ENT_NOQUOTES, 'UTF-8');

include("kip-line_print.php");

?>

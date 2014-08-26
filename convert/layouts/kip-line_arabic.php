<?php

$arabic=$stanza_line;
$translit=ar2rom(trim($arabic)); // transliterate
$roman=trim(close_trans($translit));  // apply close phonetic transcription
$standard=trim(standardise($translit));  // apply close phonetic transcription

include("kip-line_print.php");

?>

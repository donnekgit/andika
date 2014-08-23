<?php

// Two vipande to a line, with an asterisk between them.

if (in_array($key, $first_half))
{
    $this_kip=$key;
    $this_arabic=$stanza_line." * ";
    $translit=ar2rom(trim($stanza_line)); // transliterate
    $roman=trim(close_trans($translit));  // apply close phonetic transcription
    $this_roman=$roman." * ";
}
else
{
    $this_kip.="/".$key;
    $this_arabic.=$stanza_line;
    $translit=ar2rom(trim($stanza_line)); // transliterate
    $roman=trim(close_trans($translit));  // apply close phonetic transcription
    $this_roman.=$roman;
    $double=1;
}

include("vip-star_print.php");

?>

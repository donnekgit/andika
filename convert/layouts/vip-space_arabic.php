<?php

// Two vipande to a line, with a space between them; each kipande lined up.

if (in_array($key, $first_half))
{
    $this_kip=$key;
    $a_arabic=trim($stanza_line);
    $translit=ar2rom(trim($stanza_line)); // transliterate
    $roman=trim(close_trans($translit));  // apply close phonetic transcription
    $a_roman=$roman;
}
else
{
    $this_kip=$key."/".$this_kip;
    $b_arabic=trim($stanza_line);
    $translit=ar2rom(trim($stanza_line)); // transliterate
    $roman=trim(close_trans($translit));  // apply close phonetic transcription
    $b_roman=$roman;
    $double=1;
}

include("vip-space_print.php");

?>

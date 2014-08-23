<?php

// Two vipande to a line, with a space between them; each kipande lined up.

if (in_array($key, $first_half))
{
    $this_kip=$key;
    $a_roman=trim($stanza_line);
    $prepped=prep_rom(trim($stanza_line));
    $translit=rom2ar($prepped);
    $a_arabic=html_entity_decode(preg_replace("/U\+([0-9A-F]{4,5})/", "&#x\\1;", $translit), ENT_NOQUOTES, 'UTF-8');
}
else
{
    $this_kip=$key."/".$this_kip;
    $b_roman=trim($stanza_line);
    $prepped=prep_rom(trim($stanza_line));
    $translit=rom2ar($prepped);
    $b_arabic=html_entity_decode(preg_replace("/U\+([0-9A-F]{4,5})/", "&#x\\1;", $translit), ENT_NOQUOTES, 'UTF-8');
    $double=1;
}

include("vip-space_print.php");

?>

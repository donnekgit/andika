<?php

// Two vipande to a line, with an asterisk between them.

if (in_array($key, $first_half))
{
    $this_kip=$key;
    $this_roman=trim($stanza_line)." * ";
    $prepped=prep_rom(trim($stanza_line));
    $translit=rom2ar($prepped);
    $this_arabic=html_entity_decode(preg_replace("/U\+([0-9A-F]{4,5})/", "&#x\\1;", $translit), ENT_NOQUOTES, 'UTF-8')." * ";
}
else
{
    $this_kip.="/".$key;
    $this_roman.=trim($stanza_line);
    $prepped=prep_rom(trim($stanza_line));
    $translit=rom2ar($prepped);
    $this_arabic.=html_entity_decode(preg_replace("/U\+([0-9A-F]{4,5})/", "&#x\\1;", $translit), ENT_NOQUOTES, 'UTF-8');
    $double=1;
}

include("vip-star_print.php");

?>

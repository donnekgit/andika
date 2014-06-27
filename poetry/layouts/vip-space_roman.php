<?php

// two vipande to a line, with a space between them; each kipande lined up

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
    $this_kip.="/".$key;
    $b_roman=trim($stanza_line);
    $prepped=prep_rom(trim($stanza_line));
    $translit=rom2ar($prepped);
    $b_arabic=html_entity_decode(preg_replace("/U\+([0-9A-F]{4,5})/", "&#x\\1;", $translit), ENT_NOQUOTES, 'UTF-8');
    $double=1;
}

if($double==1)  // we have two kipande on the line, so print them
{
    fwrite($fp, "\\textarabic{".$b_arabic."} & \\textarabic{".$a_arabic."} & ");
    if (substr($this_kip, 0, 1)=="a") // only put an Arabic number against the first line of the stanza
    {
        fwrite($fp, "\\textarabic{".convert_numbers($stanza_no)."} \\\\* \n");  // * disallows a pagebreak after this row
    }
    else
    {
        fwrite($fp, " \\\\* \n");  // * disallows a pagebreak after this row
    }
    fwrite($fp, "\T{".$b_roman."} & \T{".$a_roman."} & \T{".$stanza_no.$this_kip."} \\\\ \n");
    
    echo $this_kip.": ".$a_roman." * ".$b_roman."\n";
    unset ($double, $a_arabic, $b_arabic, $a_roman, $b_roman);
}

?>

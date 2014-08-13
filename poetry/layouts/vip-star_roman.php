<?php

// Two vipande to a line, with an asterisk between them.
// This is the default layout for txt input (Roman) and txt output (Arabic, or Arabic and Roman).

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

// pdf output
if($double==1)  // we have two kipande on the line, so print them
{
    if ($output=="pdf")
    {
        fwrite($fp, "\\textarabic{".$this_arabic."} & ");
        if (substr($this_kip, 0, 1)=="a") // only put an Arabic number against the first line of the stanza
        {
            fwrite($fp, "\\textarabic{".convert_numbers($stanza_no)."} \\\\* \n");  // * disallows a pagebreak after this row
        }
        else
        {
            fwrite($fp, " \\\\* \n");  // * disallows a pagebreak after this row
        }
        fwrite($fp, "\Tr{".$this_roman."} & \Tr{".$stanza_no.$this_kip."} \\\\ \n");
    }
    elseif ($output=="txt")
    {
        fwrite($fp, $this_arabic."\n");
        if (isset($options["t"]))
        {
            fwrite($fp, $this_roman."\n");
        }
    }

    echo $this_kip.": ".$this_roman."\n";
    unset ($double);
}

?>
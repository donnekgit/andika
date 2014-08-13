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

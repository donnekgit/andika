<?php

// Two vipande to a line, with a space between them; each kipande lined up.
// This is the default layout for odt input (Arabic).

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
    $this_kip.="/".$key;
    $b_arabic=trim($stanza_line);
    $translit=ar2rom(trim($stanza_line)); // transliterate
    $roman=trim(close_trans($translit));  // apply close phonetic transcription
    $b_roman=$roman;
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
    fwrite($fp, "\Tr{".$b_roman."} & \Tr{".$a_roman."} & \Tr{".$stanza_no.$this_kip."} \\\\ \n");
    
    echo $this_kip.": ".$a_roman." * ".$b_roman."\n";
    unset ($double, $a_arabic, $b_arabic, $a_roman, $b_roman);    
}

?>

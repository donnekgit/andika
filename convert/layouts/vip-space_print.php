<?php

if($double==1)  // we have two kipande on the line, so print them
{
    fwrite($fp, "\\textarabic{".$b_arabic."} & \\textarabic{".$a_arabic."} & ");
    
    if (substr($this_kip, 0, 1)=="b") // only put an Arabic number against the first line of the stanza (b because print is reversed)
    {
        fwrite($fp, "\\textarabic{".convert_numbers($stanza_no)."} \\\\* \n");  // * disallows a pagebreak after this row
    }
    else
    {
        fwrite($fp, " \\\\* \n");  // * disallows a pagebreak after this row
    }
    
    if (isset($options["t"]) or isset($options["transliteration"]) or $transtxt=="TRUE")
    {
        fwrite($fp, "\Tr{".$b_roman."} & \Tr{".$a_roman."} & \Tr{".$stanza_no.$this_kip."} \\\\ \n");
    }
    
    echo $stanza_no.$this_kip.": ".$b_roman."   ".$a_roman."\n";
    unset ($double, $a_arabic, $b_arabic, $a_roman, $b_roman);
}
elseif ($key==$lastkey)  // handle stanzas with an odd number of vipande
// if the line doesn't have two vipande ($double), check if its key is the last key of the stanza, and if it is, print it anyway
{
    fwrite($fp, " & \\textarabic{".$a_arabic."} & ");
    fwrite($fp, " \\\\* \n");
    if (isset($options["t"]) or isset($options["transliteration"]) or $transtxt=="TRUE")
    {
        fwrite($fp, " & \Tr{".$a_roman."} & \Tr{".$stanza_no.$this_kip."} \\\\ \n");
    }
    
    echo $stanza_no.$this_kip.": ".$a_roman."\n";
}
    
?>

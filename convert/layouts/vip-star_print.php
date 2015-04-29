<?php

if ($double==1)  // we have two kipande on the line, so print them
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
        
        if (isset($options["t"]) or isset($options["transliteration"]) or $transtxt=="TRUE")
        {
            //put stanza and vipande numbers at the beginning of the transliteration line
            fwrite($fp, "\Tr{".$this_roman."} & \Tr{".$stanza_no.$this_kip."} \\\\ \n");
        }
    }
    elseif ($output=="odt")
    {
        fwrite($fp, "<text:p text:style-name=\"Arabic\">".$this_arabic."</text:p>\n");
        
        if (isset($options["t"]) or isset($options["transliteration"]) or $transtxt=="TRUE")
        {
            // put stanza and vipande numbers in brackets at the beginning of the transliteration line
            fwrite($fp, "<text:p text:style-name=\"Roman\">(".$stanza_no.$this_kip.") ".$this_roman."</text:p>\n");
        }
    }
    elseif ($output=="txt")
    {
        fwrite($fp, $this_arabic."\n");
        
        if (isset($options["t"]) or isset($options["transliteration"]) or $transtxt=="TRUE")
        {
            // put stanza and vipande numbers in brackets at the beginning of the transliteration line
            fwrite($fp, "(".$stanza_no.$this_kip.") ".$this_roman."\n");
        }
    }

    echo $stanza_no.$this_kip.": ".$this_roman."\n";
    unset ($double);
}
elseif ($key==$lastkey)  // handle stanzas with an odd number of vipande
// if the line doesn't have two vipande ($double), check if its key is the last key of the stanza, and if it is, print it anyway
{
    // trim off the stars
    $this_arabic=substr($this_arabic, 0, -3);
    $this_roman=substr($this_roman, 0, -3);

    fwrite($fp, "\\textarabic{".$this_arabic."} & ");
    fwrite($fp, " \\\\* \n");
    if (isset($options["t"]) or isset($options["transliteration"]) or $transtxt=="TRUE")
    {
	fwrite($fp, "\Tr{".$this_roman."} & \Tr{".$stanza_no.$this_kip."} \\\\ \n");
    }
    
    echo $stanza_no.$this_kip.": ".$this_roman."\n";
}

?>

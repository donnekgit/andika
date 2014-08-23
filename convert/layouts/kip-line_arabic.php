<?php

// One kipande to a line.
// This is the default layout for db output (Arabic).

if ($output=="pdf")
{
    fwrite($fp, "\\textarabic{".$stanza_line."} & ");
    if (substr($key, 0, 1)=="a") // only put an Arabic number against the first line of the stanza
    {
        fwrite($fp, "\\textarabic{".convert_numbers($stanza_no)."} \\\\* \n");  // * disallows a pagebreak after this row
    }
    else
    {
        fwrite($fp, " \\\\* \n");  // * disallows a pagebreak after this row
    }
    
    $translit=ar2rom(trim($stanza_line)); // transliterate
    $roman=trim(close_trans($translit));  // apply close phonetic transcription
    if (isset($options["t"]) or isset($options["transliteration"]) or $transtxt=="TRUE")
    {
        fwrite($fp, "\Tr{".$roman."} & \Tr{".$stanza_no.$key."} \\\\ \n");
    }
    
    echo $key.": ".$roman."\n";
}
elseif ($output="db")
{
    $translit=ar2rom(trim($stanza_line)); // transliterate
    $standard=lcfirst(pg_escape_string(trim(standardise($translit))));  // apply standard spelling
    $close=pg_escape_string(trim(close_trans($translit)));  // apply close phonetic transcription
    
    //echo $key.": ".$standard." - ".$stanza_line."\n";
    echo $key.": ".$standard."\n";

    $sql=query("insert into $poem (stanza, pos, arabic, standard, close) values ($stanza_no, '$key', '$stanza_line', '$standard', '$close')");
}

?>

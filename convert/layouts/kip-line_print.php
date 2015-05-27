<?php

if ($output=="pdf")
{
    if ($genre=="poetry")
    {
        fwrite($fp, "\\textarabic{".$arabic."} & ");
        if (substr($key, 0, 1)=="a") // only put an Arabic number against the first line of the stanza
        {
            fwrite($fp, "\\textarabic{".convert_numbers($stanza_no)."} \\\\* \n");  // * disallows a pagebreak after this row
        }
        else
        {
            fwrite($fp, " \\\\* \n");  // * disallows a pagebreak after this row
        }
        
        if (isset($options["t"]) or isset($options["transliteration"]) or $transtxt=="TRUE")
        {
        fwrite($fp, "\Tr{".$roman."} & \Tr{".$stanza_no.$key."} \\\\ \n");
        }
    }
    elseif ($genre=="prose")
    {
//         fwrite($fp, "{\\scriptsize\\marginnote{".$stanza_no.$key."}[2mm]}\\textarabic{".$arabic."} \\\\ \n\n \\vspace{10mm} \n\n");
	fwrite($fp, "{\\textarabic{".$arabic."} \\\\ \n\n \\vspace{10mm} \n\n");

        if (isset($options["t"]) or isset($options["transliteration"]) or $transtxt=="TRUE")
        {
        fwrite($fp, "\Tr{".$roman."} \\\\ \n\n \\vspace{10mm} \n\n");
        }
    }
}
elseif ($output=="odt")
{
    fwrite($fp, "<text:p text:style-name=\"Arabic\">".$arabic."</text:p>\n");
    
    if (isset($options["t"]) or isset($options["transliteration"]) or $transtxt=="TRUE")
    {
        // put stanza and vipande numbers in brackets at the beginning of the transliteration line
        fwrite($fp, "<text:p text:style-name=\"Roman\">(".$stanza_no.$key.") ".$roman."</text:p>\n");
    }
}
elseif ($output=="txt")
{
    fwrite($fp, $arabic."\n");
    
    if (isset($options["t"]) or isset($options["transliteration"]) or $transtxt=="TRUE")
    {
        // put stanza and vipande numbers in brackets at the beginning of the transliteration line
        fwrite($fp, "(".$stanza_no.$key.") ".$roman."\n");
    }
}
elseif ($output="db")
{
    if ($script=="arabic")
    {
        $close=pg_escape_string($roman);  // from Arabic, we need to swap, since close is the default - why???
        $roman=lcfirst(pg_escape_string($standard));  // remove initial caps set by standardise()
    }
    elseif ($script=="roman")
    {
        $roman=pg_escape_string($roman);
    }
    $sql=query("insert into ".$poem." (msno, stanza, loc, arabic, standard, close) values ($msno, $stanza_no, '$key', '$arabic', '$roman', '$close')");
}

echo $stanza_no.$key.": ".$roman."\n";

?>
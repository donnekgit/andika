<?php

//Called by convert.php.

// Open the output file.
if ($output=="pdf")
{
    $fp = fopen("convert/outputs/$poem/{$poem}.tex", "w") or die("Can't create the file");
    $header=file_get_contents("convert/tex/tex_header.tex");
    fwrite($fp, $header);
    fwrite($fp, "\n");
    fwrite($fp, "\\begin{flushright}\n\n");
}
elseif ($output=="txt")
{
    $fp=fopen("convert/outputs/$poem/{$poem}.txt", "w") or die("Can't create the file");
}
elseif ($output=="odt")
{
    $fp=fopen("convert/odt/content.xml", "w") or die("Can't create the file");
    $header=file_get_contents("convert/odt/odt_header.txt");
    fwrite($fp, $header);
}

$line_no=1;  // start line counter
// Read each line of the array and handle it.
foreach ($poemlines as $poemline)
{
    if ($script=="arabic")
    {
	$arabic=$poemline;
	$translit=ar2rom($arabic);
	//$standard=standardise($translit);
	$close=trim(close_trans($translit));
	//$roman=lcfirst($standard);
	$roman=lcfirst($close);
    }
    elseif ($script=="roman")
    {
	$roman=trim($poemline);
	$prepped=prep_rom($roman);
	$translit=rom2ar($prepped, $no_sukun);
	$arabic=trim(html_entity_decode(preg_replace("/U\+([0-9A-F]{4,5})/", "&#x\\1;", $translit), ENT_NOQUOTES, 'UTF-8'));
    }
    
    if ($output=="pdf")
    {
	fwrite($fp, "{\\scriptsize\\marginnote{".$line_no."}[2mm]}\\textarabic{".$arabic."} \\\\ \n\n");
	if (isset($options["t"]) or isset($options["transliteration"]) or $transtxt=="TRUE")
	{
	    fwrite($fp, "\Tr{".$roman."} \\\\ \n\n");
	}
    }
    elseif ($output=="odt")
    {
        fwrite($fp, "<text:p text:style-name=\"Arabic\">".$arabic."</text:p>\n");
        if (isset($options["t"]) or isset($options["transliteration"]) or $transtxt=="TRUE")
        {
            fwrite($fp, "<text:p text:style-name=\"Roman\">".$roman." (".$line_no.")</text:p>\n");
        }
    }
    elseif ($output=="txt")
    {
        fwrite($fp, $arabic."\n");
        if (isset($options["t"]) or isset($options["transliteration"]) or $transtxt=="TRUE")
        {
            fwrite($fp, "(".$line_no.") ".$roman."\n");
        }
    }

    $line_no++;  // increment the line number
}

// Close off the output, depending on extension.
if ($output=="pdf")
{
    fwrite($fp, "\\end{flushright}\n\n");
    fwrite($fp, "\\end{document}\n");
    fclose($fp);

    // Compile the tex file into a pdf.
    exec("xelatex -interaction=nonstopmode -output-directory=convert/outputs/$poem convert/outputs/$poem/{$poem}.tex 2>&1");
}
elseif ($output=="txt")
{
    fclose($fp);
}
elseif ($output=="odt")
{
    include("odt/odt_close.php");
}

?>
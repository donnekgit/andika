<?php

//Called by convert.php.

// Set up stanza furniture.
$stanza_no=1;  // start stanza counter
$stanza_contents="";  // set up a holder for the contents of the whole stanza
$vipande=array('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p');  // letters to signify location of the kipande in the stanza
// Truncate the array of vipande letters to the total number of vipande in the stanza.  (NOTE: if you put $vipande= at the front of the line, $vipande will contain the cut pieces, not the ones you want to keep!)
array_splice($vipande, $vipande_no);
// print_r($vipande);
$first_half=array('a', 'c', 'e', 'g', 'i', 'k', 'm', 'o');  // vipande we want to have at the beginning of a line

// Open the output file.
if ($output=="pdf")
{
    include("tex/pdf_open.php");  // Open the tex file.
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

// Read each line of the array and handle it.
foreach ($poemlines as $poemline)
{
    if (strlen(trim($poemline)) > 0) // there's text on the line ...  ("empty" lines in a txt file contain a \n character, so we have to trim that off)
    {
        $stanza_contents.=trim($poemline)." * ";  // Stick together all the vipande, separated by *.
    }
    else // it's a blank line preceding a new stanza, so print out the previous stanza 
    {
        echo "\n".$stanza_no."\n";

        $this_stanza=array_filter(array_map('trim', explode("*", $stanza_contents)));  // Split the stanza at * and import the pieces into an array.
        //print_r($this_stanza);
        $this_stanza=array_combine($vipande, $this_stanza);  // Set the values of $vipande as the keys of $this_stanza.
        
        foreach ($this_stanza as $key=>$stanza_line)
        // Read each line of the stanza, and feed them to different layout options.
        // All three layout choices are available only for pdf output (-o=pdf).
        // If -o=txt output is specified, includes/optionhandling.php constrains txt layout to vip-star.
        // If -o=db output is specified, includes/optionhandling.php constrains db layout to kip-line.
        {
            if ($layout=="vip-space")
            {
                include("layouts/vip-space_{$script}.php");
            }
            elseif ($layout=="vip-star")
            {
                include("layouts/vip-star_{$script}.php");
            } 
            elseif ($layout=="kip-line")
            {
                include("layouts/kip-line_{$script}.php");
            }
        }
        
        // Insert a spacer between stanzas, depending on extension.
        if ($output=="pdf")
        {
            fwrite($fp, "\\\\[8mm] \n\n");
        }
        elseif ($output=="txt")
        {
            fwrite($fp, "\n");
        }
        elseif ($output=="odt")
        {
            fwrite($fp, "<text:p text:style-name=\"Arabic\"/>\n\n");
        }
        
        unset($stanza_contents);  //clear the board for the next loop
        $stanza_no++;  // increment the stanza number
    }
}

// Close off the output, depending on extension.
if ($output=="pdf")
{
    include("tex/pdf_close.php");
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
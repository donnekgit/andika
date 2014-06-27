<?php

// Set up required (:), optional (::) and valueless command-line arguments which can be passed into the script, both short and long forms.
$shortopts="i:v:o::l::s::th";  // short options are a string
$longopts=array("input:", "vipande:", "output::", "layout::", "script::", "transcription", "help");  // long options are an array
$options = getopt($shortopts, $longopts);  
// var_dump($options);

/*
$input
$poem
$type
$vipande_no
$output
$layout
$columns
$script
*/

// Help option
// ---------------
if (isset($options["h"]) or isset($options["help"]))
{
echo "
This script converts Swahili poems in Arabic script into Roman script, and vice versa.  Call it as:
php convert.php <required arguments> <optional arguments>
Note that each invocation of the script will create an output that overwrites the previous output.

Required arguments:

-i or --input           The input file, which must be located in poetry/inputs.  The input file should have a blank line between stanzas, and a blank line at the end of the file.  If more than one kipande is on a single line, they should be separated by an asterisk (*).

-v or --vipande         The total number of vipande in a stanza (e.g. 4 for utenzi, 6 for wimbo or shairi).  Note that (currently) the number of vipande has to be an even number.

Optional arguments:

-o or --output          The desired type of output: 
    pdf [default]       import from Arabic or Roman and layout with interlinear transcription for checking
    txt                 import from Roman, conversion to Arabic, and export for editing/correction
    db                  import from Arabic to database, for addition of notes and translation, changes to transcription, and typeset layout

-l or --layout          Alternative layouts for the pdf output file:
    vip-space [default] two vipande on one line, with a space between them; the transcription below them applies to each kipande separately
    vip-star            two vipande on one line, with an asterisk between them; the transcription below them applies to the whole line of two vipande
    kip-line            one kipande to a line, with its transcription below it.

-s or --script          The script of the input file: arabic [default for odt input], roman [default for txt input].  Use this switch to change the default.

Other arguments:

-t or --transcription   In txt output, the default is to show the Arabic text only - setting this flag will show the Roman transcription as well.

-h or --help            Show this help information.

Examples:

php convert.php --help
Get a short summary of the arguments that the script can take.

php convert.php -i=utenzi.odt
Convert the text in the file utenzi.odt.  With an odt file, it is assumed that the script will be Arabic, and two vipande on one line, with a space between them, is the default layout.

php convert.php -i=utenzi.txt
Convert the text in the file utenzi.txt.  With a txt file, it is assumed that the script will be Roman, and two vipande on one line, with an asterisk between them, is the default layout.

php convert.php --input=utenzi.odt --layout=vip-star
Convert the text in the file utenzi.odt, but set the layout to two vipande on one line, with an asterisk between them.

";
exit;
}


// Input file 
// -----------

if (empty($options["i"]) and empty($options["input"]))
{
echo "
Use -i or --input to specify the input file (which must be located in the poetry/inputs folder).
Use -h or --help to get more information.\n
";
exit;
}

if (isset($options["i"]))
{
    $input=explode(".", $options["i"]);
}
elseif (isset($options["input"]))
{
    $input=explode(".", $options["input"]);
}
$poem=$input[0];
$type=$input[1];


// Number of vipande in the stanza
// -----------------------------------------

if (empty($options["v"]) and empty($options["vipande"]))
{
echo "
Use -v or --vipande to specify the number of vipande in the stanza.
Use -h or --help to get more information.\n
";
exit;
}

if (isset($options["v"]))
{
    $vipande_no=$options["v"];
}
elseif (isset($options["vipande"]))
{
    $vipande_no=$options["vipande"];
}


// Output options
// -------------------

// if (empty($options["o"]) and empty($options["output"]))
// {
// echo "
// Use -o or --output to specify the type of output you want.
// Use -h or --help to get more information.\n
// ";
// exit;
// }
        
if ($options["o"]=="pdf" or $options["output"]=="pdf")
{
    $output="pdf";
    if (empty($options["l"]) or empty($options["layout"]))
    {
        $layout="vip-space";
        $columns="rrl";
    }
}
elseif ($options["o"]=="txt" or $options["output"]=="txt")
{
    $output="txt";
    $layout="vip-star";
    $columns="rl";
}
elseif ($options["o"]=="db" or $options["output"]=="db")
{
    $output="db";
    $layout="kip-line";
}
elseif (empty($options["o"]) or empty($options["output"]))
{
    $output="pdf";
    if (empty($options["l"]) or empty($options["layout"]))
    {
        $layout="vip-space";
        $columns="rrl";
    }
}


// Layout options for pdf output
// -------------------------------------

if ($options["o"]=="pdf" or $options["output"]=="pdf")
{
    if ($options["l"]=="vip-space" or $options["layout"]=="vip-space")
    {
        $layout="vip-space";
        $columns="rrl";
    }
    elseif ($options["l"]=="vip-star" or $options["layout"]=="vip-star")
    {
        $layout="vip-star";
        $columns="rl";
    }
    elseif ($options["l"]=="kip-line" or $options["layout"]=="kip-line")
    {
        $layout="kip-line";
        $columns="rl";
    }
}


// Script options
// -----------------

//default
if ($type=="odt" and empty($options["s"]) and empty($options["script"]))
{
    $script="arabic";
}
elseif  ($type=="txt" and empty($options["s"]) and empty($options["script"]))
{
    $script="roman";
}

//specified
if ($options["s"]=="arabic" or $options["script"]=="arabic")
{
    $script="arabic";
}
elseif ($options["s"]=="roman" or $options["script"]=="roman")
{
    $script="roman";
}    

?>

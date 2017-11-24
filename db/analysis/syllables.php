<?php

// This script scans each kipande to find the number of syllables.  It counts the number of vowels, and also lists possible syllabic nasals which might need to be added to the syllable count.

include("./andika/config.php");
include("./includes/fns.php");

// function flatten_array($array)
// {
//     $return = array();
//     array_walk_recursive($array, function($a) use (&$return) { $return[] = $a; });
//     return $return;
// }

$sql=query("select * from jaafari_r order by stanza, loc;");
while ($row=pg_fetch_object($sql))
{
    $stanza=$row->stanza;
    $loc=$row->loc;
    $input=$row->standard;
    
    $syllables=preg_match_all('/[aeiou]/', $input)."\n";  // Count the number of vowels.
    
    preg_match_all('/m[bcdfghjklmnpqrstv]./', $input, $emmies)."\n";  // Count also possible syllabic nasals.
    $flat=implode(' ', $emmies[0]);  // List the syllabic nasals for checking.  Note that [0] is because preg_match_all creates a 2-dimensional array.
    
    echo $stanza.$loc.": ".$input." -> ".trim($syllables)." (".$flat.")\n";
    
} 

?>
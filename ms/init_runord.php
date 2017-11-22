<?php

/*
This script populates the running order table with the primary MS's stanza numbers.
The primary MS would usually be the longest, but it may be the most important, the most poetic, or whatever.
Run as: php ms/init_runord.php poem MS-identifier, eg php ms/init_runord.php jaafari Y
MS identifiers can be in either uppercase or lowercase.
*/

include("./andika/config.php");
include("./includes/fns.php");


// Process the arguments.
$poem=$argv[1];  // Name of the poem.
$runord=$poem."_runord";  // Name of the table for the running order: poem_runord.
$ms=strtolower($argv[2]);  // MS identifier.

// Get the total number of stanzas in the poem.
$sql=query("select max(stanza) from $poem;");
while ($row=pg_fetch_object($sql))
{
    $beg=1;
    $end=$row->max;
}

// Create the runord table.
include("ms/create_runord.php");

echo "Adding numbers ...\n";

// Add the stanza numbers in the MS column, and a parallel entry in the runord column.
for ($i=$beg; $i<=$end; $i++) 
{
    $sql_i=query("insert into $runord (runord, $ms) values ($i, $i);");
}

echo "Done!\n"; 

?>
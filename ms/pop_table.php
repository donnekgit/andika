<?php

/*
This script populates the running order table with the primary MS's stanza numbers.
This gets running order added with the same figures as the stanzas.
The primary MS would usually be the longest, but it may be the most important, the most poetic, or whatever.
When used to insert data for all the MSs, they get only the stanza numbers added - their locations in the running order are specified by insertion commands (combine_ms.php).
*/

include("./andika/config.php");
include("./includes/fns.php");

//$table="binkie";

// $sql=query("select max(stanza) from kiswahili;");
// while ($row=pg_fetch_object($sql))
// {
//     $numst=$row->max;
// }

$numst=5;

for ($i=1; $i<=$numst; $i++) 
{
    //$sql_i=query("insert into binkie(runord, msa) values ($i, $i);");
    $sql_i=query("insert into binkie(msc) values ($i);");

}






?>
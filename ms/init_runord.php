<?php

/* 
*********************************************************************
Copyright Kevin Donnelly 2012-2017.
kevindonnelly.org.uk
This file is part of Andika!, a set of tools for writing Swahili in Arabic script.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License or the GNU
Affero General Public License as published by the Free Software
Foundation, either version 3 of the License, or (at your option)
any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
and the GNU Affero General Public License along with this program.
If not, see <http://www.gnu.org/licenses/>.
*********************************************************************
*/

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
$ms=strtolower($argv[2]);  // MS identifier - make it lowercase to play nicely with PostgreSQL.

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
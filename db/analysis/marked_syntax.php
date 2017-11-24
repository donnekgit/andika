<?php

/* 
*********************************************************************
Copyright Kevin Donnelly 2012.
kevindonnelly.org.uk
This file is part of Andika!, a set of tools for writing Swahili in Arbic script.

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

// This script extends <poem>_ar_ba_line by noting instances of marked syntax, which are transferred from the marked_syntax table (after having been noted manually).  This needs fixing: the marked_syntax table does not include loc (line info), so a 1-to1 transfer is not possible, and a text-based transfer is not possible because the marked_syntax table uses the edited standard, whereas ar_ba_line uses unedited.  So we transfer all we can first, and then run some queries to transfer the rest.

include("./andika/config.php");
include("./includes/fns.php");

$poem=$argv[1];  // Take the name of the poem from the command-line argument.
if (empty($argv[1]))
{
    echo "\nYou need to specify the name of the poem.\nAdd it to the end of the line.\n\n";
    exit;
}

$marked_syntax="{$poem}_marked_syntax";
$ar_ba_line="{$poem}_ar_ba_line";

$sql=query("select * from $marked_syntax;");
while ($row=pg_fetch_object($sql))
{
    $syntax=$row->syntype;
    $notes=pg_escape_string($row->notes);
    $obj=$row->objinf;
    $standard=$row->swahili;
    $stanza=$row->stanz;

   $sql_i= query("update $ar_ba_line set syntax='$syntax', notes='$notes', obj='$obj' where standard='$standard';");
    
    echo $standard."\n";
}

?>
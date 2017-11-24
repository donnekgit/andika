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

include("./andika/config.php");
include("./includes/fns.php");

$poem=$argv[1];  // Take the name of the poem from the command-line argument.
if (empty($argv[1]))
{
    echo "\nYou need to specify the name of the poem.\nAdd it to the end of the line.\n\n";
    exit;
}

$words="{$poem}_words";
$kiplist=array('a' => 'b', 'b' => 'c', 'c' => 'd', 'd' =>'a');
$turn=1;

$sql=query("select stanza from $words group by stanza order by stanza;");  // Collect all the stanza numbers.
while ($row=pg_fetch_object($sql))
{
    $stanza=$row->stanza; 
    
    foreach ($kiplist as $this_kip=>$nx_kip)
    {	
	//echo $this_kip."\n";
	//echo $nx_kip."\n";
	
// 	$sql_w=query("select * from $words where stanza=$stanza and loc='$this_kip' order by position;");  // Collect the words of the current kipande.
// 	while ($row_w=pg_fetch_object($sql_w))
// 	{
// 	    $edstan=$row_w->edstan;
// 	    $standard=$row_w->standard;
// 	    
// 	    if ($edstan!='')
// 	    {
// 		$got=$edstan;
// 	    }
// 	    else
// 	    {
// 		$got=$standard;
// 	    }

// 	    $thisline[]=$got;
// 	    $thisline=array_filter($thisline, function($v) { return $v != "~"; });
// 	}
	
	if ($nx_kip=='a')
	{
	    $target=$stanza+1;
	}
	else
	{
	    $target=$stanza;
	}
	
	$sql_nx=query("select * from $words where stanza=$target and loc='$nx_kip' order by position;");  // Collect the words of the next kipande.
	while ($row_nx=pg_fetch_object($sql_nx))
	{
	    $edstan_nx=$row_nx->edstan;
	    $standard_nx=$row_nx->standard;
	    
	    if ($edstan_nx!='')
	    {
		$got_nx=$edstan_nx;
	    }
	    else
	    {
		$got_nx=$standard_nx;
	    }
	    
	    $nxline[]=$got_nx;
	    $nxline=array_filter($nxline, function($v) { return $v != "~"; });
	}

	//print_r($thisline);
	//print_r($nxline);
	
	$sql_w=query("select * from $words where stanza=$stanza and loc='$this_kip' order by position;");  // Collect the words of the current kipande.
	while ($row_w=pg_fetch_object($sql_w))
	{
	    $edstan=$row_w->edstan;
	    $standard=$row_w->standard;
	    
	    if ($edstan!='')
	    {
		$got=$edstan;
	    }
	    else
	    {
		$got=$standard;
	    }
	    //echo $got."\n";
	    
	    if (in_array($got, $nxline))
	    {
		$thisline[]="red";
	    }
	    else
	    {
		$thisline[]="blue";
	    }    
// 	    $thisline[]=$colour;
	}
	
	if (in_array("red", $thisline))
	{
	    $match="red";
	    $turn=0;
	}
	else
	{
	    if ($turn==0)
	    {
		$match="red";
		$turn=1;
	    }
	    else
	    {
		$match='blue';
	    }
	}
	
	
	
	echo $stanza.$key.": ".$match."\n";
	//print_r($thisline);

	unset($thisline, $nxline);    
    }
}













?>
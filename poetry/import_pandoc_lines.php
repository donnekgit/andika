<?php

/* 
*********************************************************************
Copyright Kevin Donnelly 2012.
kevindonnelly.org.uk
This file is part of Andika!, a set of tools for writing Swhili in Arbic script..

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

include("./includes/fns.php");
include("./andika/config.php");
require_once 'poetry/QueryPath-2.1.2-minimal/QueryPath.php';

// Specify the file and the table name.
$file='zip://poetry/outputs/pantest.odt#content.xml';
$poem="maisha_mume";
// $file='zip://poetry/unzipped/vita_vikuu.odt#content.xml';
// $poem="vita_vikuu";
// $file='zip://poetry/jaafari/jaafari.odt#content.xml';
// $poem="jaafari";

// Create the poemlines table.
include("poetry/create_poemlines.php");

$stanza=1;  // start stanza counter for poemlines
// $stanza=138;  // start stanza counter for poemlines

$doc=qp($file);
foreach ($doc->find('text|p') as $line) 
{
	$poemlines=explode('*', $line->text());
// 	print_r($poemlines);
	foreach ($poemlines as $key=>$poemline)
	{
		switch ($key)
		{
			case 0:
				$posk="a";
				break;
			case 1:
				$posk="b";
				break;
			case 2:
				$posk="c";
				break;
			case 3:
				$posk="d";
				break;
		}
		
		echo "(".$stanza.$posk.") ". $poemline."\n";
		
		$translit=ar2rom(trim($poemline)); // transliterate
		$standard=lcfirst(pg_escape_string(trim(standardise($translit))));  // apply standard spelling
		$close=pg_escape_string(trim(close_trans($translit)));  // apply close phonetic transcription
		echo $standard."\n\n";

		$sql=query("insert into $poem (stanza, pos, arabic, standard, close) values ($stanza,  '$posk',  '$poemline',  '$standard',  '$close')");
	}

	$stanza++;
}

?>
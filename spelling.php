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

// Bring in the header.
include("includes/header.php");

// Highlight the current page's entry on the menu.
// Get the current page's name, add the relevant CSS to its line in the menu, and print the line.
$thispage=substr($_SERVER["SCRIPT_NAME"], 1);
$lines=file("includes/menu.php");
foreach ($lines as $line)
{
	if (preg_match("/$thispage/", $line))
	{
		$line=preg_replace("/<li>/", "<li class=\"current\">", $line);
	}
	echo $line;
}
?>

<!--- Body holder --->
<div class="col_12">

<h3>Using Arabic script for Swahili</h3>

<!-- Section tabs -->
<ul class="tabs left">
<li><a href="#intro">Introduction</a></li>
<li><a href="#spelling">Spelling conventions</a></li>
<li><a href="#vowels">Vowels</a></li>
<li><a href="#consonants">Consonants</a></li>
<li><a href="#comparison">Comparison</a></li>
</ul>

<?php

//Bring in the content for each tab.
include("spelling_intro.php");
include("spelling_conventions.php");
include("spelling_vowels.php");
include("spelling_consonants.php");
include("spelling_comparison.php");

// Bring in the footer.
include("includes/footer.php");

?>

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

// Bring in the header.
include("includes/header.php");
?>

<!--- Site menu --->
<ul class="menu">
<li class="current"><a href="">Andika!</a></li>
<li><a href="segmenter/index.php">Verb segmenter</a></li>
<!-- <li><a href="jaafari/index.html">Utenzi wa Jaafari</a></li> -->
</ul>

<!--- Samples --->
<ul class="slideshow">
<li><img src="./images/andika_960.jpg" width="960" height="400" alt="andika!" /> </li>
<li><img src="./images/mara_tukaona_960.jpg" width="960" height="400" alt="Mara tukaona mlima unkingama ndiyani, mrefu sana." /> </li>
<li><img src="./images/dhana_hii_960.jpg" width="960" height="400" alt="Dhana hii ilipoibuka" /> </li>
<li><img src="./images/bajuni_960.jpg" width="960" height="400" alt="Assalamu alaykum" /> </li>
<li><img src="./images/mkunumbi_960.jpg" width="960" height="400" alt="Mkunumbi" /> </li>

</ul>

<?php
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

<!--- Left panel content --->
<div class="col_9">

<h3>Swahili in Arabic script - easy, quick, versatile!</h3>

<!-- Section tabs -->
<ul class="tabs left">
<li><a href="#intro">Introduction</a></li>
<li><a href="#benefits">Benefits</a></li>
<li><a href="#start">Getting started</a></li>
<li><a href="#slideshow">Slideshow images</a></li>
</ul>

<?php
//Bring in the content for each tab.
include("index_intro.php");
include("index_benefits.php");
include("index_start.php");
include("index_slideshow.php");
?>


</div><!--- End left panel content --->

<!--- Sidebar --->
<div class="col_3">

<h6>Features</h6>
<ul class="alt">
<li>Type in Arabic script using a standard keyboard</li>
<li>Convert from Arabic script to Roman script</li>
<li>Convert from Roman script to Arabic script</li>
<li>Fine-tune the conversions</li>
<li>All code licensed under the GPL/AGPL</li>
</ul>

<a href="http://www.fsf.org/licenses/gpl.html"><img src="images/gpl3_blue.png" width="75" height="30" /></a>
<a href="http://www.fsf.org/licenses/agpl.html"><img src="images/agpl3_blue.png" width="91" height="30" /></a>

<h6>Contact me</h6>
<p>
You can contact me, <strong>Kevin Donnelly</strong>, at kevin, then a curly at-sign, then dotmon, followed by a full-stop and com.
</p>

</div><!--- End Sidebar --->

<?php
// Bring in the footer.
include("includes/footer.php");
?>

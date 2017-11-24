<?php

/* 
*********************************************************************
Copyright Kevin Donnelly 2015.
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
include("header.php");

?>

<!--- Body holder --->
<div class="col_12">

<h3>Utenzi wa Jaʿfar</h3>

<p>
This page offers materials related to the <span class="sm_swahili">اُتٖنْزِ وَ جَعْفَر</span> (<strong>Utenzi wa Jaʿfar</strong>, <em>The Ballad of Jaʿfar</em>), as edited by Kevin Donnelly and Yahya Ali Omar.  Various digital editions of the ballad are offered, all of them including the Arabic-script text of both the original manuscripts used: Y (a photocopy of a text copied by Sheikh Yahya Ali Omar) and R (an original manuscript (copyist unknown), which is likely to be a copy of an older text).  More detailed information on all the aspects summarised below is available in the introduction to the aligned edition.  All items here are licensed under the <a href="http://www.fsf.org/licenses/gpl.html">General Public License v3 or higher</a>.
</p>

<p>
This project has had three aims:
<ul class="checks">
<li>To make another item of Swahili literature available in an easily-accessible format -- to my knowledge, this ballad has not previously been published.</li>
<li>To demonstrate, by working from a real-world example, that <strong>Andika!</strong> allows the production of attractive and scholarly versions of Swahili manuscripts that include the original Arabic-script text as an intrinsic element, making it clear what changes (if any) have been made by the editor.</li>
<li>To open up new areas in Swahili lexical and literary study by capitalising on the fact that <strong>Andika!</strong> stores the words of the text in a database, which can then be queried to investigate aspects of the text in more detail.  Currently in preparation is an examination of spelling variation and formulaic/thematic repetition in the ballad, along with other material such as a concordance.</li>
</ul>
</p>

<h6>Aligned edition</h6>

<p>
In this version, the stanzas of both manuscripts are aligned, with the Y text in green and the R text in blue. A close transcription of the Arabic-script text into Roman script is given, with the words reading left to right like the Arabic-script original.  A transliteration more closely approximating standard Swahili in Roman script follows, reading right to left.  A translation and notes are also included, along with some introductory material.
</p>

<p class="center">
<a href="Jaafari_YR_aligned.pdf">Aligned edition of both Y and R manuscripts of the <em>Utenzi wa Jaʿfar</em></a> (900 Kb)<br />
</p>

<h6>Individual editions</h6>

<p>
Each manuscript is available in a self-standing edition, with the same layout as the aligned edition.  Note, however, that translation and notes are only provided in the R edition when the text significantly differs from or does not appear in the Y manuscript.  Also be aware that stanza references in the notes relate to the stanza numbers for the aligned edition, not to those for the stand-alone edition.
</p>

<p class="center">
<a href="JaafariY.pdf">Stand-alone version of Y</a> (465 Kb)<br />
<a href="JaafariR.pdf">Stand-alone version of R</a> (380 Kb)<br />
</p>

<h6>Editions containing Arabic script only (Herufi za kiarabu tu)</h6>

<p>
These editions convert the paper manuscript into a modern digital edition for those who wish to read the text unencumbered by transliteration, notes or translation.
</p>

<p class="center">
<a href="JaafariY_kiarabu.pdf">Y version in Arabic script only</a> (140 Kb)<br />
<a href="JaafariR_kiarabu.pdf">R version in Arabic script only</a> (155 Kb)<br />
</p>

<h6>Original manuscripts</h6>

<p>
Scans of both manuscripts are provided here.  The small versions are likely to be adequate for most purposes, but a higher resolution scan is also provided.
</p>

<p class="center">
<a href="JaafariY_ms_small.pdf">Small version of Y manuscript</a> (7 Mb)<br />
<a href="JaafariR_ms_small.pdf">Small version of R manuscript</a> (12 Mb)<br />
<a href="JaafariY_ms.pdf">Hi-res version of Y manuscript</a> (58 Mb)<br />
<a href="JaafariR_ms.pdf">Hi-res version of R manuscript</a> (65 Mb)<br />
</p>

<h6>Typed transcriptions</h6>

<p>
The typed transcriptions of the manuscripts are given here in odt format, which can be opened in a word-processor such as the one in <a href="http://libreoffice.org">LibreOffice</a>.
</p>

<p class="center">
<a href="JaafariY.odt">Y transscript</a> (30 Kb)<br />
<a href="JaafariR.odt">R transscript</a> (35 Kb)<br />
</p>

<h6>Database tables</h6>

<p>
The database tables containing the words, transliterations, notes, and translation for each of the manuscripts are given here in cvs format, which can be opened in a spreadsheet such as the one in <a href="http://libreoffice.org">LibreOffice</a>.
</p>

<p class="center">
<a href="JaafariY.csv">Y database table</a> (355 Kb)<br />
<a href="JaafariR.csv">R database table</a> (365 Kb)<br />
</p>

<?php

// Bring in the footer.
include("includes/footer.php");

?>

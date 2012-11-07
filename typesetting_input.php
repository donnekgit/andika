<!--- Input tab content --->
<div id="input" class="tab-content">

<h6>Format of the input file</h6>

<p>
<span class="sm_swahili">تٖينْزِ</span> (<strong>tenzi</strong>, <em>ballads</em>) consist of quatrains of 8-syllable lines rhyming <em>aaab</em>, where the <em>b</em> rhyme is<strong> Va</strong>, and is maintained throughout the ballad.  Because the lines are short, they are often written two to a manuscript line, with a space dividing them, so each quatrain takes up two manuscript lines.  <span class="sm_swahili">تٖينْزِ</span> (<strong>tenzi</strong>) which have been printed in Roman script usually print the four lines one after the other, so that the quatrain format is more obvious.
</p>

<p>
The input file is a LibreOffice document (odt format) where the text of the ballad is transcribed letter-for-letter in a layout reflecting the manuscript procedure - every two lines of the quatrain are written to one line of the file, but they are separated by an asterisk (<em>AltGr+Shift+8</em> on the Swahili keyboard) instead of space.  Each quatrain is separated by a blank line.  The input file for the extract from <span class="sm_swahili">أُتٖينْزِ وَ ڤِيتَ ڤِكُؤُ</span> (<strong>Utenzi wa Vita Vikuu</strong>) is shown below, and is available in <a href="./poetry/unzipped/vita_vikuu.odt">odt format</a>, and also in <a href="./poetry/unzipped/vita_vikuu_odt.pdf">pdf format</a>.
<img class="caption" src="./images/vita_vikuu_odt.png" width="247" height="393" />
</p>

<p>
This input layout may not suit all requirements - for instance, you may prefer to have each line of the quatrain on its own line, or for the quatrains to be numbered, or for the input file to be in text format.  Changes in the input routines to handle these would be easy to implement
</p>

<p>
Items such as <span class="sm_swahili">لَ زَ يَ نَ</span> <strong>na, ya, za, la</strong> are written according to the manuscript rendering.  In most instances they are attached to the word, or (in the case of non-connecting letters like <span class="sm_swahili">زَ</span>) written very close to it.  But where there is a larger space in the manuscript between the item and the following word, the item has been written separately from that word in the transcription/transliteration.  This leads to some inconsistency in the transcription/transliteration, but seeks to reflect the manuscript more faithfully.
</p>

<h6>Import and annotation of the input file</h6>

<p>
Once the manuscript is transcribed into the input file, a <a href="http://php.net">PHP</a> script is run to import it into a <a href="http://postgresql.org">PostgreSQL</a> database table.  During this import, the Arabic text is transliterated into standard Swahili Roman orthography, and also into a close transliteration which more closely reflects the Arabic letters.  
</p>

<p>
Another script is then run to segment each line of the ballad into words, which allows each word to have various annotations added to it in the database.  Various annotations could be accommodated as necessary, but the ones currently handled are:
<ul>
<li>Adjustments to the transliterated lemma - for instance, to reflect its scansion, eg <strong>miliḥi</strong> (<em>salt</em>) instead of <span class="sm_swahili">مِلْحِ</span> (<strong>milḥi</strong>, <em>salt</em>).
</li>
<li>Segmentation of the transliteration to reflect standard Swahili word boundaries, eg <strong>na ẖubuzi</strong> (<em>and bread</em>) instead of <span class="sm_swahili">نَخُبُوزِ</span> (<strong>naẖubuzi</strong>, <em>and bread</em>).
</li>
<li>A note on the meaning or reference of the lemma.</li>
<li>The root of the word, eg <strong>fik</strong> for <strong>akafika</strong> (<em>he arrived)</em>, or <strong>klm</strong> for <strong>katakalama</strong> (<em>he spoke)</em> - this is useful when constructing frequency lists.  Many of the roots could be filled in automatically by looking up the word against a digital Swahili dictionary.</li>
<li>An English translation of the line, anchored to the first word of each line.</li>
<li>Variant readings of the word in different manuscript versions.</li>
</ul>
</p>

<p>
 The first few words of the extract as they appear in this database format are shown below:
<img class="caption" src="./images/words_table.png" width="887" height="155" />
</p>

<p>
Currently, the database table is edited using an interface like <a href="http://phppgadmin.sourceforge.net/doku.php">phpPgAdmin</a> or <a href="http://www.sql-workbench.net">SQLWorkbench/J</a> , but it would also be possible to create a web-based interface for this purpose.
</p>

<p>
Once the annotations have been added to the database import of the input file, it can be output in a variety of formats by running other PHP scripts - see the <em>Output</em> tab.
</p>
</div><!--- End Input tab content --->

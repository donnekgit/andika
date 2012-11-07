<!--- Output tab content --->
<div id="output" class="tab-content">

<h6>Output to pdf</h6>

<p>
Output to pdf (which would be the most likely format for print publication) uses <a href="http://xetex.sourceforge.net">XeTeX</a>, a development of the  typesetting system <a href="http://www.tug.org">TeX</a>, to produce an intermediate <a href="./poetry/outputs/vita_vikuu.tex">tex file</a>, which is then used to generate a <a href="./poetry/outputs/vita_vikuu.pdf">pdf file</a>.  The creation of the tex file is handled by a PHP script,  so in practice the only reason for opening it would be to make one-off edits.
<img class="caption" src="./images/vita_vikuu.png" width="294" height="345" />
</p>

<p>
Notes to the text are printed at the bottom of each page, with the footnote number marked in red in the text.  Interpolated letters or other textual emendations are marked in blue.
</p>

<p>
It would be relatively simple to adjust the layout and contents of the pdf output to meet other requirements.
</p>

<h6>Output to html</h6>

<p>
Output to html (the most likely format for web publication) is shown in this <a href="./poetry/outputs/vita_vikuu_website.html">html file</a>.  In this version, the transcription colour has been changed to blue to fit in with the site livery, and lemma adjustments are in purple.  Notes are displayed in a pop-up when the mouse hovers over the note number (to dismiss the note, click on it and move the mouse away).  An example of how variant readings might be handled is given in stanza 142 - hovering over the word with a grey background pops up the variant. (Note that this variant reading is an <em>invention</em> for the purposes of this example.)
</p>

<p>
A paging mechanism could be added to allow easy navigation through a long text.
</p>

<p>
Again, it would be relatively simple to adjust the layout and contents of the html output to meet other requirements, and indeed, a variant is shown below.
</p>

<h6>Output to odt</h6>

<p>
Output to odt (LibreOffice format) is only indirectly supported - it is handled by generating a standalone <a href="./poetry/outputs/vita_vikuu_odt.html">html file</a>.  In this,  notes to the text are printed at the end of the entire text, with the endnote number marked in red in the text.  The endnote number in the text is a link to the endnote, and the number beside the endnote itself is a link back to the relevant word in the text.  To create an odt document from this, open the file in the default KDE web-browser Rekonq (see below), and copy the text using <em>Ctrl+A</em> and <em>Crtl+C</em>.  Then open a new LibreOffice document and use <em>Ctrl+V</em> to paste the text into that.  When saving the file in LibreOffice, select odt as the save format. 
</p>

<p>
Note that, of the browsers available on Linux, Rekonq provides the best results.  It retains all the formatting (fonts, colours, etc), and converts the endnote links in the resulting odt file so that they can be accessed by pressing <em>Ctrl</em> while clicking.  Chromium retains the formatting, but does not convert the links, so that they still point to the original html file, and clicking them opens that file in a browser. Chromium also converts some spaces to non-breaking spaces, which are marked with a grey background - to get rid of this, select <em>Tools → Options → LibreOffice Writer → Formatting Aids</em>, untick <em>Non-breaking spaces</em>, and press <em>OK</em>.  Firefox is worst of all, losing all the formatting, and leaving the links unconverted.  Note that even with Rekonq and Chromium, though, you will need to select all the endnotes in LibreOffice and press the LTR button in order to align them to the left.     
</p>

<p>
You can also open the html file in LibreOffice itself, but in this case you will not be able to save it as an odt file.
</p>

</div><!--- End Output tab content --->

<div id="usage" class="tab-content">

<p>
You can now use the Swahili layout to type Swahili in Arabic script.
</p>

<h6>Layout conventions</h6>

<p>
The complete Swahili layout is shown below (with thanks to <a href="https://en.wikipedia.org/wiki/File:Belgian_pc_keyboard.svg">Wikimedia</a> for the layout image):
<img class="caption" src="./layout/Swahili_keyboard.png" width="797" height="246" />
</p>

<p>
(Note that this layout can be easily changed if it does not suit your needs - a section on how to do this will be added later.)
<!-- see the <em>Changing the layout</em> tab in this section.) -->
</p>

<p>
To access the contents of each key, the Shift and AltGr keys are used in combination where appropriate, as shown below:
<img class="caption" src="./layout/key.png" width="562" height="100" /> 
</p>

<p>
The basic idea behind the keyboard layout is that the relevant Arabic letter will usually be produced by pressing the same key that produces the Roman letter.  Additional points:

<ul>

<li>
Digraphs such as <strong>dh gh th</strong> are placed on the same key as <strong>d g t</strong>, and accessed using the Shift key.
</li>

<li>
The digraph <strong>ch</strong> is accessed using the <strong>c</strong> key. 
</li>

<li>
The digraph <strong>sh</strong> is accessed using the Shift+<strong>s</strong> keys.
</li>

<li>
The occasionally-used digraph <strong>kh</strong> is accessed using the <strong>x</strong> key.
</li>

<li>
Arabic letter variants are placed on the same key where possible, eg <span class="sm_swahili">ي</span> and <span class="sm_swahili">ى</span>.
</li>

<li>
Similar sets of Arabic letters are placed consistently - for instance, the pharyngeal consonants <span class="sm_swahili">ص ض ط ظ</span> are all accessed using the AltGr key, as are <span class="sm_swahili">ؤ ئ</span>, and the alveolar consonants <span class="sm_swahili">ٹ ڈ</span> used in Mombasa Swahili are accessed using the Shift+AltGr keys.
</li>

<li>
Long and short vowels are located on the same key, with the long vowel accessed by Shift, and the vowel-carrier accessed by AltGr, so for instance the <strong>u</strong> key produces <span class="sm_swahili">ُ</span> and Shift+<strong>u</strong> produces <span class="sm_swahili">و</span>, with AltGr+<strong>u</strong> producing <span class="sm_swahili">ؤ</span>.

</li>

<li>
The letters <span class="sm_swahili">و ي</span> are also available on <strong>y w</strong> for use when they represent semi-vowels.
</li>

<li>
Non-alphabetic characters from the UK keyboard are available via AltGr and AltGr+Shift.
</li>

</ul>

</p>

<h6>Configure LibreOffice</h6>

<p>
In order to test the keyboard, we will configure LibreOffice to display text in Arabic script.  Launch LibreOffice, and click on <em>Tools → Options → Language Settings → Languages</em>:
<img class="caption" src="./howto/libreoffice1.png" width="769" height="348" /> 
Set <em>CTL</em> to Arabic (Oman) and tick <em>Enabled for complex text layout (CTL)</em>.  This will create two new buttons on the icon bar, one for left-to-right typing, and one for right-to-left typing:
<img class="caption" src="./howto/libreoffice2.png" width="74" height="41" />
Click the RTL button to move the cursor over to the right-hand side of the line.
</p>

<p>
 There appears to be a bug in LibreOffice whereby the first letters you type in RTL mode do not use the font you have selected, but the system font (in my case, Deja Vu Sans), so the easiest thing to do is to type something first and then change the font.  Switch to the Swahili keyboard (<strong>Ctrl+Alt+k</strong>), type <strong>m, i, Shift+i, m, i</strong>, and press Return.  Then press <strong>Ctrl+a</strong>, choose <em>Scheherazade</em> as the font, and set the font size to something large, like 26.  You should now have something like this:
 <img class="caption" src="./howto/mimi.png" width="79" height="84" /> 
showing the Swahili word <strong>mimi</strong> (<em>I, me</em>) in Arabic script.
</p>

<p>
Continue typing the following words, ignoring commas, and pressing Return after each one:<br />
s, a, Shift+a, s, a - <strong>sasa</strong> (<em>now</em>)<br />
k, Shift+. (period), w, e, Shift+e, l, i - <strong>kweli</strong> (<em>truly</em>)<br />
l, u, Shift+u, Shift+g, a - <strong>lugha</strong> (<em>language</em>)<br />
n, Shift+n, o, Shift+o, m, b, e - <strong>ng'ombe</strong> (<em>cattle</em>)<br />
AltGr+a, u, m, e, f, i, Shift+i, k, a - <strong>umefika</strong> (<em>you have arrived</em>)<br />
</p>

<p>
You should now have something like this:
<img class="caption" src="./howto/words.png" width="83" height="315" /> 
</p>

<h6>Other LibreOffice settings</h6>

<p>
On this site, the Arabic font has purposely been made quite large, so that the details of the text can be seen.  You may wish to make the font size smaller.  In Arabic, where vowel signs are only rarely used, reading the text is possible at quite small font sizes.  In Swahili, however, the vowel signs are essential, so the same reductions in font size are not possible (I find 15pt to be the level at which legibility begins to be impaired, but your eyes might be better than mine!).  In typesetting poetry, of course, the lines are short, and accuracy is improved by having a large font.
</p>

<p>
Some of the vowel signs (eg an <strong>e</strong> under a word-final <span class="sm_swahili">ي</span>) can get hidden below the visible window of the line, so it is often useful to set the line-spacing of the LibreOffice document to 1.5: <strong>Ctrl+a</strong>, then click on <em>Format → Paragraph</em>, select <strong>1.5 linee</strong> under <em>Line spacing</em>, and then click <strong>OK</strong>.
</p>

<p>
Number-handling when using the Swahili keyboard will depend on the settings under <em>Tools → Options → Language Settings → Complex Text Layout </em>.  If you wish to use both Arabic-Indic numerals (on the numeral keys) and Western-Arabic numerals (<strong>AltGr+numeral</strong>), ensure <em>Arabic</em> or <em>System</em> is chosen here.  The other two settings will convert Western-Arabic numerals to their Arabic-Indic equivalents.
</p>


</div>
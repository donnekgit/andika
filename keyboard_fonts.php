<!--- Fonts tab content --->
<div id="fonts" class="tab-content">

<p>
There are a couple of dozen Arabic fonts available in the packages <em>fonts-kacst</em> and <em>fonts-arabeyes</em>, but virtually all of these fonts have been designed for Arabic only, and need characters added to them before they are useable with Swahili.
</p>

<p>
The only fonts that will work properly with Swahili at the time of writing are <a href="http://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&item_id=ArabicFonts">Scheherazade</a> (Bob Hallissy and Jonathan Kew), <a href="http://sourceforge.net/projects/amiri">Amiri</a> (Khaled Hosny), and 
the fonts from the <a href="http://sourceforge.net/projects/paktype">PakType project</a> (of which perhaps Tehreer is the most attractive).  All of these are in the <a href="http://calligraphyqalam.com">Naskh style</a>.
</p>

<p>
The main stylistic differences between Scheherazade and Amiri are that Amiri contains all the Arabic presentation forms (character combinations), making for more attractive text.  For instance, Amiri <span class="amiri">وَلِتُمئَِ</span> (<strong>walitumia</strong>, <em>they used</em>), compared to Scheherazade<span class="sm_swahili">وَلِتُمئَِ</span>,  has the letters <strong>ltm</strong> combined in one ligature.
</p>

<p>
However, Amiri places all the vowels at the same height from the main letter, eg <span class="amiri">كُبٗرٖيشَ</span> (<strong>kuboresha</strong>, <em>to boost</em>) compared to Scheherazade<span class="sm_swahili">كُبٗرٖيشَ</span> , and <span class="amiri">وَنَسَيَانْسِ</span> (<strong>wanasayansi</strong>, <em>scientists</em>) compared to Scheherazade<span class="sm_swahili">وَنَسيَانْسِ</span>.  This can lead to the upper vowels from the current line of text colliding with the lower vowels from the previous line, so Amiri may be more appropriate for use with text that is not fully vocalised.
</p>

<p>
To allow some variation in the fonts used for Swahili, I have adapted one of the Arabeyes fonts (a Kufic one, <em>Granada</em>) to add the characters necessary for it to be used for Swahili - I am grateful to Khaled Hosny for his advice here, but it should be noted that the responsibility for any infelicities caused to this very attractive font is mine alone!  The hacked version of the font is available as <a href="./fonts/GranadaKD.ttf">GranadaKD</a>.  It is used as the title font in the <a href="./poetry/outputs/vita_vikuu.pdf">sample of poetry</a> in the <a href="./typesetting.php">Typesetting poetry</a> section.
</p>

<p>
Regarding the font to be used for close transliteration, note that the readability of diacritics (or even whther they are displayed at all) depends crucially on the font - not all will be capable of showing all diacritics, or placing them in the right location, so if something is not looking right, try using a different font.  The font used here for close transliteration is Linux Biolinum O, which is in the <em>fonts-linuxlibertine</em> package. 
</p>

</div><!--- End Introduction tab content --->

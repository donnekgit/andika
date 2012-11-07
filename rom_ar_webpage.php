<div id="webpage" class="tab-content">

<!-- Roman webpage input -->
<div class="col_5">

<!-- <form class="vertical" id="rom_ar_form" action="webtrans.php" method="POST"> -->
<form class="vertical" id="webtrans_form">
	<input type="text" id="webtrans" name="webtrans" placeholder="Paste or type the webpage address here"/>
	<input type="checkbox" id="numbers" name="numbers"/>
	<label for="numbers" class="inline">Convert numerals to Arabic-Indic forms</label>
	<br />
	<input type="checkbox" id="sakani" name="sakani"/>
	<label for="sakani" class="inline">Do not show <em>sakani</em> (<em>sukun</em>) on consonants</label>
	<br />
	<input type="checkbox" id="longvowel" name="longvowel"/>
	<label for="longvowel" class="inline">Show <em>sakani</em> (<em>sukun</em>) on <strong>و</strong> and <strong>ي</strong> as long vowels</label>
	<br /><br />
	<input type="button" onclick="dosubmit_webpage()" value="Convert to Arabic script">
</form>

<!-- Submit the Roman webpage for conversion -->
<script>
function dosubmit_webpage() 
{
	new Ajax.Updater
	( 
		'webpage_link',  // The name of the <div> where the results will be shown.
		'webtrans.php',  // The script doing the processing.
		{ 
			method: 'post',  // Submission method for the form data.
			parameters: $('webtrans_form').serialize()  // Name of the form (id=this).
		} 
	);
	//$('rom_ar_form').reset();  // Uncomment to clear the input form on each submit.
}
</script>

</div><!--- End Roman webpage input --->

<!--- Arabic webpage output --->
<div class="col_7">
	<div id="webpage_link">
	<p class="info">
	It may take a few seconds for the webpage to be converted.<br />
	When it is ready, you will see a link to the converted page here.<br />
	<img alt="spinner" id="spinner" src="images/ajax-loader.gif" style="display:none;" />
	</p>
	<p>
	As  examples, try the first page of the Swahili Wikipedia:<br />
	<strong>http://sw.wikipedia.org/wiki/Mwanzo</strong><br />
	or the first page of the BBC Swahili site:<br />
	<strong>http://www.bbc.co.uk/swahili</strong><br />
	(With pages on the latter website, note that the audio player controls do not display properly, but any queued audio will still start to play.)
	</p>
	</div>
</div>

<hr />
<h6>Notes on the <em>Convert a webpage</em> tool</h6>
<ul>
<li>
Although this tool should work on most webpages, most testing has been done with <a href="http://sw.wikipedia.org">Wikipedia</a> pages.
</li>
<li>
While there should be no problems with the main text of the webpage, some peripheral "page furniture" (eg menus, lists of links, etc) may or may not be converted properly.
</li>
<li>
Only a subset of characters are allowed in the web address: alphanumeric characters (a-z, 0-9), full-stops (.), hyphens (-), underscores (_), single quotes ('), colons (:) and slashes (/).
</li>
<li>
Non-existent web-addresses will produce a blank conversion page.
</li>
<li>
The initial <em>http://</em> can be omitted from the web address if desired.
</li>
<li>
Links on the converted page will go to unconverted (Roman script) pages.  If you wish to convert a large number of pages, you may find it easier to use the offline converter (currently being tested).
</li>
</ul>

</div><!--End tab div-->
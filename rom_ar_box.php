<div id="box" class="tab-content">

<!--- Roman box input --->
<div class="col_5">

<form class="vertical" id="rom_ar_form">
	<!--Absolutely essential for the form item(s) to be given a name - this is what the passed-on data will be known as.-->
	<textarea name="rom_ar_in" id="rom_ar_in" placeholder="Enter Swahili text in Roman script here ..."></textarea>
	<input type="checkbox" id="numbers" name="numbers"/>
	<label for="numbers" class="inline">Convert numerals to Arabic-Indic forms</label>
	<br />
	<input type="checkbox" id="sakani" name="sakani"/>
	<label for="sakani" class="inline">Do not show <em>sakani</em> (<em>sukun</em>) on consonants</label>
	<br />
	<input type="checkbox" id="longvowel" name="longvowel"/>
	<label for="longvowel" class="inline">Show <em>sakani</em> (<em>sukun</em>) on <strong>و</strong> and <strong>ي</strong> as long vowels</label>
	<br /><br />
	<!--The dosubmit() calls the Javascript function below, which passes on the data and pastes the result back into this page.-->
	<input type="button" onclick="dosubmit_box()" value="Convert to Arabic script">
</form>

<!--- Submit the Roman text for conversion --->
<script>
function dosubmit_box() 
{
	new Ajax.Updater
	( 
		'converted_text',  // The name of the <div> where the results will be shown.
		'convert_rom_ar.php',  // The script doing the processing.
		{ 
			method: 'post',  // Submission method for the form data.
			parameters: $('rom_ar_form').serialize()  // Name of the form (id= this).
		} 
	);
	
	//$('rom_ar_form').reset();  // Uncomment to clear the input form on each submit.
}
</script>

</div><!--- End Roman box input --->

<!--- Arabic box output --->
<div class="col_7">
	<div id="converted_text">
	<p class="info">
	The converted text will appear here. 
	</p>
	</div>
</div>

<hr />
<h6>Notes on the <em>Convert text</em> tool</h6>
<ul>
<li>
This tool is intended for chunks of text, which can be typed or pasted into the input box.  The output can then be cut and pasted into documents (see the LibreOffice tab in the <a href="./keyboard.php">Swahili keyboard</a> section).
</li>
<li>
Two short samples of Swahili in Roman script from Wikipedia are given on the <em>Samples for testing</em> tab to enable instant testing of the conversion by pasting them into the box. 
</li>
<li>
Input is truncated to 900 characters, but if your text is longer than this all you need to do is convert it in chunks.  If you have large amounts of text to convert, you may find it easier to use the offline converter (currently being tested).
</li>
<li>
Note that the converter will always use the "commonest" Arabic letter.  For instance, it will convert <strong>dh</strong> to <span class="sm_swahili">ذ</span> instead of to <span class="sm_swahili">ض</span> or <span class="sm_swahili">ظ</span>, which might be the original Arabic letter in the word.  There is no way around this, since the standard Swahili Roman orthography does not preserve these distinctions, and the only option in such cases is to edit the output afterwards.
</li>
</ul>

</div>
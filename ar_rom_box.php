<div id="box" class="tab-content">

<!--- Arabic input --->
<div class="col_7">

<form class="vertical" id="ar_rom_form">
	<!--It's absolutely essential for the form item(s) to be given a name - this is what the passed-on data will be known as.-->
	<textarea class="swahili" name="ar_rom_in" id="ar_rom_in" placeholder="Enter Swahili text in Arabic script here."></textarea>
	<!--The dosubmit() calls the Javascript function below, which passes on the data and pastes the result back into this page.-->
	<input type="button" onclick="dosubmit()" value="Convert to Roman script">
</form>


<!--- Submit the Arabic text for conversion --->
<script>
function dosubmit() 
{
	new Ajax.Updater
	( 
		'converted_text',  // The name of the <div> where the results will be shown.
		'convert_ar_rom.php',  // The script doing the processing.
		{ 
			method: 'post',  // Submission method for the form data.
			parameters: $('ar_rom_form').serialize()  // Name of the form (id= this).
		} 
	);
	
	//$('ar_rom_form').reset();  // Uncomment to clear the input form on each submit.
}
</script>

</div><!--- End Arabic input --->

<!--- Roman conversion --->
<div class="col_5">
	<div id="converted_text">
	<p  class="info">
	The converted text will appear here.
	</p>
	</div>
</div>

<hr />
<h6>Notes on the <em>Convert text</em> tool</h6>
<ul>
<li>
This tool is intended for chunks of text, which can be typed or pasted into the input box.
</li>
<li>
Short samples of Swahili in Arabic script (two from Wikipedia, one from a manuscript poem) are given on the <em>Samples for testing</em> tab to enable instant testing of the conversion by pasting them into the box. 
</li>
<li>
Input is truncated to 900 characters, but if your text is longer than this all you need to do is convert it in chunks.  If you have large amounts of text to convert, you may find it easier to use the offline converter (currently being tested)..
</li>
<li>
Since Arabic does not have capital letters, capitals (other than most sentence-intial capitals) need to be added by hand to the output.
</li>
<li>
When converting from Arabic to Roman script, Firefox's spellchecker will underline every word in the Arabic script entry area.  To avoid this, turn off as-you-type spellchecking: select <em>Edit → Preferences → Advanced</em>, and on the <em>General</em> tab under <em>Browsing</em>, untick <em>Check my spelling as I type</em>.
</li>
</ul>

</div>
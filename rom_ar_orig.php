<?php
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

<!--- Roman box input --->
<div class="col_5">

<h3>Convert Roman script ... </h3>
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
	<input type="button" onclick="dosubmit()" value="Convert to Arabic script">
</form>

<!--- Submit the Roman text for conversion --->
<script>
function dosubmit() 
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
<h3>... to Arabic script</h3>
	<div id="converted_text">
	</div>
</div>


<hr />

<!-- Roman webpage input -->
<div class="col_5">

<!-- <form class="vertical" id="rom_ar_form" action="webtrans.php" method="POST"> -->
<form class="vertical" id="webtrans_form">
	<input type="text" id="webtrans" name="webtrans" placeholder="Give the webpage address here"/>
<!-- 	<input type="submit" name="submit" value="Convert this webpage"> -->
	<input type="button" onclick="dosubmit()" value="Convert this webpage to Arabic script">

</form>

<!-- Submit the Roman webpage for conversion -->
<script>
function dosubmit() 
{
	new Ajax.Updater
	( 
		'webpage_link',  // The name of the <div> where the results will be shown.
		'webtrans.php',  // The script doing the processing.
		{ 
			method: 'post',  // Submission method for the form data.
			parameters: $('webtrans_form').serialize()  // Name of the form (id= this).
		} 
	);
	
	//$('rom_ar_form').reset();  // Uncomment to clear the input form on each submit.
}
</script>

</div><!--- End Roman webpage input --->

<!--- Arabic webpage output --->
<div class="col_7">
	<div id="webpage_link">
	</div>
</div>

<?php
// Bring in the footer.
include("includes/footer.php");
?>

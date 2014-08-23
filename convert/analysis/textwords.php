<p>

<?php
$sql=query("select word, count(word) from $words group by word order by word;");
while ($row=pg_fetch_object($sql))
{
	$textword=$row->word;
	echo "<span class=\"textword\" id=\"".$textword."\">".$textword."</span> (".$row->count."),  ";
}
?>

<script type="text/javascript">
document.observe('dom:loaded', function()
{ // (
	document.on('click','.textword', function(event, element)
	{ // (
		new Ajax.Updater
		(
			'textwords',
			'poetry/analysis/texts.php', 
			{
				method: 'get',
				parameters: { textword: element.readAttribute('id') }
			}
		);
	});
});
</script>
</p>
<br />

<!--- Concordance output --->
<div id="textwords">
	<p>
	<img alt="spinner" id="spinner" src="images/ajax-loader.gif" style="display:none;" />
	</p>
</div>

<p>
<p>
<?php

$sql=query("select root, count(root) from $words group by root order by root;");
while ($row=pg_fetch_object($sql))
{
	$rootword=$row->root;
	echo "<span class=\"rootword\" id=\"".$rootword."\">".$rootword."</span> (".$row->count."),  ";
}
?>

<script type="text/javascript">
document.observe('dom:loaded', function()
{ // (
	document.on('click','.rootword', function(event, element)
	{ // (
		new Ajax.Updater
		(
			'rootwords',
			'poetry/analysis/roots.php', 
			{
				method: 'get',
				parameters: { rootword: element.readAttribute('id') }
			}
		);
	});
});
</script>
</p>
<br />

<!--- Concordance output --->
<div id="rootwords">
	<p>
	<img alt="spinner" id="spinner" src="images/ajax-loader.gif" style="display:none;" />
	</p>
</div>

<p>
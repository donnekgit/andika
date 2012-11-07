<p>

<?php

/* 
*********************************************************************
Copyright Kevin Donnelly 2012.
kevindonnelly.org.uk
This file is part of Andika!, a set of tools for writing Swhili in Arbic script..

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License or the GNU
Affero General Public License as published by the Free Software
Foundation, either version 3 of the License, or (at your option)
any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
and the GNU Affero General Public License along with this program.
If not, see <http://www.gnu.org/licenses/>.
*********************************************************************
*/ 

$sql=query("select word, count(word) from $words group by word order by word;");
while ($row=pg_fetch_object($sql))
{
	$ngramword=$row->word;
	echo "<span class=\"ngramword\" id=\"".$ngramword."\">".$ngramword."</span> (".$row->count."),  ";
}
?>

<script type="text/javascript">
document.observe('dom:loaded', function()
{ // (
	document.on('click','.ngramword', function(event, element)
	{ // (
		new Ajax.Updater
		(
			'ngramwords',
			'poetry/analysis/ngrams.php', 
			{
				method: 'get',
				parameters: { ngramword: element.readAttribute('id') }
			}
		);
	});
});
</script>
</p>
<br />

<!--- Concordance output --->
<div id="ngramwords">
	<p>
	<img alt="spinner" id="spinner" src="images/ajax-loader.gif" style="display:none;" />
	</p>
</div>

<p>
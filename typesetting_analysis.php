<!--- Extras tab content --->
<div id="analysis" class="tab-content">

<?php
mb_internal_encoding("UTF-8");

include("./includes/fns.php");
include("./andika/config.php");

$poem="vita_vikuu";
$words="{$poem}_words";
?>

<p>
With the contents of the poem in a database table, it becomes possible to analyse the text in more detail.  This section gives some examples of what might be done here.
</p>

<h6>Listing words</h6>

<p>
The following is an alphabetical list of the words in close transcription in the poem extract, along with how often they occur (because the extract consists of only 10 stanzas out of the 900+ in the ballad, most of the words occur only once).  Clicking on the word shows the stanzas it appears in, producing a concordance.
</p>

<?php include("poetry/analysis/textwords.php"); ?>

<h6>Listing roots</h6>

<p>
Sorting the words by root is another alternative.  Arabic roots are given as three stem letters.  
</p>

<?php include("poetry/analysis/rootwords.php"); ?>

<h6>Listing words in Arabic script</h6>

<p>
Listing the words in the text in Arabic script is equally easy (though the sort order needs further work - for instance, <span class="sm_swahili">ۏ</span> is not being listed after <span class="sm_swahili">و</span>).
</p>

<?php include("poetry/analysis/arabicwords.php"); ?>

<h6>Listing n-grams</h6>

<p>
Collecting n-grams is also easy - clicking a word in the list below will show which stanza(s) of the poem it occurs in, and which words precede and follow it.  This example shows trigrams, but it could extended to show longer n-grams.
</p>

<?php include("poetry/analysis/ngramwords.php"); ?>


</div><!--- End Extras tab content --->

<?php

include("./andika/config.php");
include("./includes/fns.php");

$sql=query("select stanza, loc from jaafari_words group by stanza, loc order by stanza, loc;");
while ($row=pg_fetch_object($sql))
{
    $stanza=$row->stanza;
    $loc=$row->loc;

    $sql_w=query("select max(position) from jaafari_words where stanza=$stanza and loc='$loc';");
    while ($row_w=pg_fetch_object($sql_w))
    {
	$max=$row_w->max;
	echo $stanza.$loc.$max.": ";

	//$sql_m=query("select standard from jaafari_words where stanza=$stanza and loc='$loc' and position=$max;");
	$sql_m=query("select word_id from jaafari_words where stanza=$stanza and loc='$loc' and position=$max;");
	while ($row_m=pg_fetch_object($sql_m))
	{
	    $standard=pg_escape_string($row_m->standard);
	    echo $standard."\n";
	    $final_word=$row_m->word_id;
	    //$sql_i=query("insert into jaafari_rhyme (stanza, loc, position, word) values ($stanza, '$loc', $max, '$standard');");
	    $sql_i=query("update jaafari_words set slot='final' where word_id=$final_word;");
	}
    }

}

?>
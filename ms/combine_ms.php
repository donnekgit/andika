<?php

/*
This script combines MSs, inserting or deleting stanzas to give a "running order" of the best stanzas from multiple MSs, resulting in a "combined" MS.  The combined MS will be printed with the provenance of the different stanzas noted by means of font, fontsize, or colour.
The command is of the form:
i[nsert] Yn[-n] after Xn
X is the primary MS, into which a stanza or a stanza span from the other MSs will be inserted.
Y is the secondary MS from which stanzas will be inserted to add to the primary MS.
n is a number or numbers specifying (for Y) the stanzas to be inserted, or (for X) the insertion point.
Yn-n referred to below as the splice, and Xn as the target.


*/

include("./andika/config.php");
include("./includes/fns.php");

$table="binkie";

$action=$argv[1];
$splice=$argv[2];
$target=$argv[4];

// echo $action."\n";
// echo $splice."\n";
// echo $target."\n";

if (preg_match("/^i/", $action))
{
    $action="insert";
}
elseif (preg_match("/^d/", $action))
{
    $action="delete";  
// Note: this simply deletes the stanza from the running order - it does NOT delete the stanza in the MS transcription.
}
// echo $action."\n";

$splicems=substr($splice, 0, 1);
//echo $splicems."\n";
$splicest=substr($splice, 1);
// echo $splicest."\n";

list($beg, $end)=explode("-", $splicest);
//echo $beg."\n";
//echo $end."\n";
if (empty($end))
{
    $end=$beg;
}
$span=($end-$beg)+1;
echo "Span: ".$span."\n";

if ($splicems=="A")
{
    $splicems="msa";
}
elseif ($splicems=="B")
{
    $splicems="msb";
}
elseif ($splicems=="C")
{
    $splicems="msc";
}

$targetms=substr($target, 0, 1);
//echo $targetms."\n";
$targetst=substr($target, 1);
//echo $targetst."\n";

if ($targetms=="A")
{
    $targetms="msa";
}
elseif ($targetms=="B")
{
    $targetms="msb";
}
elseif ($targetms=="C")
{
    $targetms="msc";
}

// echo "Target MS: ".$targetms."\n";
// echo  "Target stanza: ".$targetst."\n";

// Get the running order of the target insertion point ($focus).
$sql_f=query("select runord from $table where $targetms=$targetst;");
while ($row_f=pg_fetch_object($sql_f))
{
    $focus=$row_f->runord;
    echo "Current runord: ".$focus."\n";
}

if ($action=="insert")
{
    // Shift the running orders up by the number of new insertions ($span) to make space for them.
    $sql_shift=query("update $table set runord=runord+$span where runord>$focus;");

    // Loop through the new insertions, giving a running order to each one.
    for ($i=$beg; $i<=$end; $i++) 
    {
	$sql_splice=query("update $table set runord=$focus+1 where $splicems=$i;");
	$focus++;
    }
}
elseif ($action=="delete")
{
    // Shift the running orders down by the number of new insertions ($span) to cover the deletions.
    //$sql_shift=query("update $table set runord=runord+$span where runord>$focus;");
}


?>
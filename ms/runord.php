<?php

/*
This script combines MSs, inserting or deleting stanzas to give a "running order" of the best stanzas from multiple MSs, resulting in a "combined" MS.  The combined MS will be printed with the provenance of the different stanzas noted by means of font, fontsize, or colour.  For ballads (tenzi), for instance, you can use db/stacktenzi.php.
The command is of the form:
php ms/runord.php poem Yn[-n] action Xn
Yn[-n] insert Xn -- the stanza(s) will always be inserted AFTER the reference point Xn.
Yn[-n] prefix Xn -- there is no insert before (always after), so this action allows space to be created at the head of the table, eg to allow stanzas to be added which precede the current running order.
Yn[-n] align Xn -- this pastes the stanzas in beside existing stanzas in another MS.
Y is the source MS from which stanzas will be inserted or aligned with the running order.
X is the target MS, against which a stanza or a stanza span from the other MSs will be inserted or aligned in order to give a consolidated text giving the "best bit" stanzas from all the MSs (sequential), or giving analogue stanzas from each MS (parallel).
n is a number or numbers specifying (for Y) the stanza or stanza span to be inserted, or (for X) the insertion point.
Yn-n referred to below as the splice, and Xn as the target.
*/

include("./andika/config.php");
include("./includes/fns.php");


// ===== Accept the arguments from the command-line. =====
$poem=$argv[1];  // Name of the poem.
$runord=$poem."_runord";  // Name of the table for the running order: poem_runord.
$splice=$argv[2];  // Stanzas to be added, and the MS they are from.
$action=$argv[3];  // Action to be taken: insert, prefix, align.
$target=$argv[4];  // Location and MS where the stanzas are to be added. 


// ===== Get the source stanza numbers. =====
$splicems=strtolower(substr($splice, 0, 1));  // Get the MS identifier for the source splice.  Lowercase to play nicely with PostgreSQL.
$splicest=substr($splice, 1);  // Get the splice span.
// echo "Source MS: ".$splicems."\n";
// echo  "Source span: ".$splicest."\n";

list($beg, $end)=explode("-", $splicest);  // Split the span to get beginning and end stanzas.
// echo $beg."\n";
// echo $end."\n";
if (empty($end))  // If there is no end stanza (ie we are dealing with a single stanza), set the end stanza to be the same as the beginning stanza.
{
    $end=$beg;
}
$span=($end-$beg)+1;  // Get the length of the span, so that we know how much space to set aside in the running order.
// echo "Span: ".$span."\n";


// ===== Get the target insertion stanza. =====
$targetms=strtolower(substr($target, 0, 1));  // Get the MS identifier for the target stanza the insertion/alignment refers to.  Lowercase to play nicely with PostgreSQL.
$targetst=substr($target, 1);  // Get the the target insertion stanza.
// echo "Target MS: ".$targetms."\n";
// echo  "Target stanza: ".$targetst."\n";


// ===== Get the running order of the target insertion point ($focus). =====
$sql_f=query("select runord from $runord where $targetms=$targetst;");
while ($row_f=pg_fetch_object($sql_f))
{
    $focus=$row_f->runord;
    //echo "Current runord: ".$focus."\n";
}


// ===== Carry out the relevant action. =====
if (preg_match("/insert/", $action))
{
    // Add a new column for the source MS if there is not one already there.
    add_column_if_not_exists($runord, $splicems);
    
    // Shift the running order up by the number of new insertions ($span) to make space for them.
    $sql_shift=query("update $runord set runord=runord+$span where runord>$focus;");

    // Loop through the new insertions, giving a running order to each one.
    for ($i=$beg; $i<=$end; $i++) 
    {
	$sql_i=query("insert into $runord (runord, $splicems) values ($focus+1, $i);");
	$focus++;  // Increment the focus point each time we go round the loop.
    }
}
elseif (preg_match("/prefix/", $action))
{
    // Add a new column for the source MS if there is not one already there.
    add_column_if_not_exists($runord, $splicems);
    
    // Shift the running order up by the number of new insertions ($span) to make space for them.
    $sql_shift=query("update $runord set runord=runord+$span where runord>=1;");
    
    // Loop through the new insertions, giving a running order to each one.
    for ($i=$beg; $i<=$end; $i++) 
    {
	$sql_p=query("insert into $runord (runord, $splicems) values ($focus, $i);");
	$focus++;  // Increment the focus point each time we go round the loop.
    }
}
elseif (preg_match("/align/", $action))
{
    // Add a new column for the source MS if there is not one already there.
    add_column_if_not_exists($runord, $splicems);
    
    // Loop through the new insertions, patching them into an existing running order.
    for ($i=$beg; $i<=$end; $i++) 
    {
	$sql_splice=query("update $runord set $splicems=$i where runord=$focus;");  // Start at the focus point.
	$focus++;  // Increment the focus point each time we go round the loop.
    }
}

echo ucfirst($action)."ed ".$span." stanza(s).\n";

?>
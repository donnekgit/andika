<?php

$input=" alipopata fahamu * kamuhimidi karimu * kisha akatakalamu * mngu akamuombeya";

echo preg_match_all('/[aeiou]/', $input)."\n";
echo preg_match_all('/m[bcdfghjklmnpqrstv]./', $input, $emmies)."\n";
//print_r($emmies);

print_r($emmies);
$flatr=implode(' ', $emmies[0]);  // Because preg_match_all creates a 2-dimensional array!
echo $flatr."\n";

?>
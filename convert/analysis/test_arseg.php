<?php
header('content-type: text/html; charset: utf-8'); 
mb_internal_encoding("UTF-8");

include("../../includes/fns.php");
include("../../andika/config.php");

$poem="vita_vikuu";
$words="{$poem}_words";

$arabic="نَرُمْحِ";
$arabic=preg_replace("/^نَ/", "", $arabic);
echo $arabic."\n";

$segment="ya";
$segment=rom2ar($segment, 0);
$segment=html_entity_decode(preg_replace("/U\+([0-9A-F]{4,5})/", "&#x\\1;", $segment), ENT_NOQUOTES, 'UTF-8');
echo $segment."\n";


?>
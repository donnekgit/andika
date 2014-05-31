<?php

// Allow access to the transcription functions
include("./includes/fns.php");

// Select some test text in Arabic
$text="أَكَتٗؤَ تَمَارِ * نَخُبُوزِ يَشَعِيْرِ";

// Print out the test text
echo "Test text is: ".$text."\n";

// Print out the initial conversion
echo "Initial conversion (ar2rom) is: ".ar2rom($text)."\n";

// Print out the standard spelling
echo "Standard spelling (standardise) is: ".standardise(ar2rom($text))."\n";

// Print out a close transcription based on kiMvita
echo "(One possible) close transcription is: ".close_trans(ar2rom($text))."\n";

?>
#! /bin/bash

# Use YAD to collect the inputs from the user.
inputs=$(yad \
--center `# places YAD in the centre of the screen` \
--title="Andika! converter" \
--text="Not all layouts are available for every output.  The converter will ignore those layouts which do not apply to a given output." \
--form \
--field="File to convert:FL"  `# file navigator` \
--field="Script of file:CB" `# dropdown list` \
--field="Type of file:CB"  \
--field="Vipande per stanza:CB" \
--field="Desired output:CB" \
--field="Layout:CB" \
--field="Include transliteration:CHK" `# checkbox` \
"convert/inputs/ " `# space means DDL will open IN that dir` \
"Arabic!Roman" \
"Poetry!Prose" \
"2!4!6!8!10!12" \
"PDF file!ODT file!Text file!Insert into database" \
"2 vipande per line, separated by space!2 vipande per line, separated by asterisk!1 kipande per line" \
TRUE \
--button="gtk-ok:0" \
--button="gtk-cancel:1") \

# Pass the collected inputs to the convert script.
php convert/newconvert.php $inputs;

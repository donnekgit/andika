#! /bin/bash

show_help()
{
    yad --width="500" --height="500" --center --title="Help" --text-info  --wrap --filename="ms/multi_ms_help.txt" --button="Close:1"
}

choose_a_poem()
{
    chosenfile=`yad --width="500" --height="100" --center --separator="" --title="Choose a file" --form --field="Choose a document to convert:FL" "convert/inputs/ " --button="Help:2" --button="gtk-cancel:1" --button="gtk-ok:0"`
    
    ret=$?
    
    if [[ $ret -eq 2 ]]; then
        show_help
        choose_a_poem
    elif [[ $ret -eq 1 ]]; then
        exit
    elif [ $ret -eq 0 ] && [ -z "$chosenfile" ]; then
        yad --width="500" --height="100" --center --title="Error" --form --text="You need to choose a poem to work with" --button="Close:1"
	choose_a_poem
    fi 
}

which_script()
{
    chosenscript=`yad --width="300" --height="100" --center --separator="" --title="Script" --form --field="Script used in the document:CB" "Arabic!Roman" --button="Help:2" --button="gtk-cancel:1" --button="gtk-ok:0"`
    
    ret=$?
    
    if [[ $ret -eq 2 ]]; then
        show_help
        which_script
    elif [[ $ret -eq 1 ]]; then
        exit
    fi 
}


# Program flow
# -----------------

choose_a_poem 
#echo $chosenfile















#! /bin/bash


# FIXME
# --------------------------
# Failure to choose a file on the first screen is not caught.
# Pressing "Cancel" on the output screen still presents the "Roman script" screen.


# Functions
# ------------

show_help()
{
    yad --width="500" --height="500" --center --title="Help" --text-info  --wrap --filename="convert/convert_help.txt" --button="Close:1"
}

choose_a_file()
{
    chosenfile=`yad --width="500" --height="100" --center --separator="" --title="Choose a file" --form --field="Choose a document to convert:FL" "convert/inputs/ " --button="Help:2" --button="gtk-cancel:1" --button="gtk-ok:0"`
    
    ret=$?
    
    if [[ $ret -eq 2 ]]; then
        show_help
        choose_a_file
    elif [[ $ret -eq 1 ]]; then
        exit
    elif [ $ret -eq 0 ] && [ -z "$chosenfile" ]; then
        yad --width="500" --height="100" --center --title="Error" --form --text="You need to choose a file to convert" --button="Close:1"
	choose_a_file
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

which_genre()
{
    chosengenre=`yad --width="300" --height="100" --center --separator="" --title="Genre" --form --field="Genre of the document:CB" "Poetry!Prose" --button="Help:2" --button="gtk-cancel:1" --button="gtk-ok:0"`
    
    ret=$?
    
    if [[ $ret -eq 2 ]]; then
        show_help
        which_genre
    elif [[ $ret -eq 1 ]]; then
        exit
    fi 
}

desired_output()
{
    chosenoutput=`yad --width="300" --height="100" --center --separator="" --title="Output" --form --field="Type of output:CB" "PDF file!ODT file!Text file!Insert into database" --button="Help:2" --button="gtk-cancel:1" --button="gtk-ok:0"`
    
    if [[ $chosenoutput == "PDF file" ]]; then
        chosenoutput="pdf"
    elif [[ $chosenoutput == "ODT file" ]]; then
        chosenoutput="odt"
    elif [[ $chosenoutput == "Text file" ]]; then
        chosenoutput="txt"
    elif [[ $chosenoutput == "Insert into database" ]]; then
        chosenoutput="db"
        chosenlayout="kip-line"
    fi
    
    ret=$?

    if [[ $ret -eq 2 ]]; then
        show_help
        desired_output
    elif [[ $ret -eq 1 ]]; then
        exit
    fi 
}

# This function can be deleted once prose import to the db is functional.
prose_desired_output()
{
    chosenoutput=`yad --width="300" --height="100" --center --separator="" --title="Output" --form --field="Type of output:CB" "PDF file!ODT file!Text file" --button="Help:2" --button="gtk-cancel:1" --button="gtk-ok:0"`
    
    if [[ $chosenoutput == "PDF file" ]]; then
        chosenoutput="pdf"
    elif [[ $chosenoutput == "ODT file" ]]; then
        chosenoutput="odt"
    elif [[ $chosenoutput == "Text file" ]]; then
        chosenoutput="txt"
    fi
    
    ret=$?

    if [[ $ret -eq 2 ]]; then
        show_help
        desired_output
    elif [[ $ret -eq 1 ]]; then
        exit
    fi 
}

poem_pdf_layout()
{
    chosenlayout=`yad --width="300" --height="100" --center --separator="" --title="Layout" --form --field="Layout for the output:CB" "2 vipande per line, separated by space!2 vipande per line, separated by asterisk!1 kipande per line" --button="Help:2" --button="gtk-cancel:1" --button="gtk-ok:0"`

    if [[ $chosenlayout == "2 vipande per line, separated by space" ]]; then
        chosenlayout="vip-space"
    elif [[ $chosenlayout == "2 vipande per line, separated by asterisk" ]]; then
        chosenlayout="vip-star"
    elif [[ $chosenlayout == "1 kipande per line" ]]; then
        chosenlayout="kip-line"
    fi
    
    ret=$?

     if [[ $ret -eq 2 ]]; then
        show_help
        poem_pdf_layout
    elif [[ $ret -eq 1 ]]; then
        exit
    fi 
}

poem_odt_txt_layout()
{
    chosenlayout=`yad --width="300" --height="100" --center --separator="" --title="Layout" --form --field="Layout for the output:CB" "2 vipande per line, separated by asterisk!1 kipande per line" --button="Help:2" --button="gtk-cancel:1" --button="gtk-ok:0"`

    if [[ $chosenlayout == "2 vipande per line, separated by asterisk" ]]; then
        chosenlayout="vip-star"
    elif [[ $chosenlayout == "1 kipande per line" ]]; then
        chosenlayout="kip-line"
    fi

    ret=$?

    if [[ $ret -eq 2 ]]; then
        show_help
        poem_odt_txt_layout
    elif [[ $ret -eq 1 ]]; then
        exit
    fi 
}

roman_script()
{
    chosenroman=`yad --width="300" --height="100" --center --separator="" --title="Roman script" --form --field="Include Roman script:CHK" TRUE --button="Help:2" --button="gtk-cancel:1" --button="gtk-ok:0"`
   
    ret=$?
 
    if [[ $ret -eq 2 ]]; then
        show_help
        roman_script
    elif [[ $ret -eq 1 ]]; then
	    exit
    fi 
}


# Program flow
# -----------------

choose_a_file  
#echo $chosenfile

which_script
#echo $chosenscript

which_genre
#echo $chosengenre

if [[ $chosengenre == "Poetry" ]]; then

    desired_output
    #echo $chosenoutput

    if [[ $chosenoutput == "pdf" ]]; then
        poem_pdf_layout
    elif [[ $chosenoutput == "odt" ]]; then
        poem_odt_txt_layout
    elif [[ $chosenoutput == "txt" ]]; then
        poem_odt_txt_layout 
    fi
    #echo $chosenlayout

    if [[ $chosenoutput != "db" ]]; then
        roman_script
        #echo $chosenroman
    fi
    
elif  [[ $chosengenre == "Prose" ]]; then

    prose_desired_output
    #echo $chosenoutput
    
    if [[ $chosenoutput != "db" ]]; then
        roman_script
        #echo $chosenroman
    fi
    
fi

collected=$chosenfile+$chosenscript+$chosengenre+$chosenoutput+$chosenlayout+$chosenroman
echo -e "\n"$collected

# Pass the collected inputs to the convert script.
php convert/convert.php $collected

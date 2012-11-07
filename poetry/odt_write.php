<?php

// call the function file
include "odt_gen.php";

// ODT init
odt_init();

//styles parameter
creat_style( 'tests' , 'text' , 'Courier new' , 'bold' , 'italic' , '#FF0000' , '#66CCFF' , 'single' );
creat_style( 'titre_a' , 'text' , 'Courier new' , '' , '' , '#FF0000' , '#66CCFF' , 'single' );

// image style
creat_style_img( "fr1" );

// end of style and doc init
doc_init();

// break line
br();

// simple texte without style
texte("Simple texte");

// break line
br();

textestyle("Text with tests2 style","tests2");
textestyle("Text with titre_a style","titre_a");
// note that style must be define in stlyes before

br();

// Image
// paramaters
// image url  '../image01.jpg ' for an image in the same directory of the php file
// fr1 : style name of the image
// image name
// ancord tyle
// position from the beginig of the paragraph right and down (15,0) in cm
// size of the image width and height in cm
//image("../image01.jpg","fr1","Image1","paragraph", 15 , 0 , 3 , 3.5);

//Now creation of the file 'hello-world2.odt' in the same directory of the php file
$document = new ZipArchive();
$document->open('hello-world2.odt', ZIPARCHIVE::OVERWRITE);
$document->addFromString('META-INF/manifest.xml', $manifest->saveXML());
$document->addFromString('content.xml', $content->saveXML());
$document->close();

// juste for be sure the script is finish !               
print "OK";

?>
<?php

// Functions to write an odt file.
//http://forum.openoffice.org/en/forum/viewtopic.php?p=8214

function pagebreak()
{
	global $content;
	global $XMLParagraph;
	global $XMLOfficeText;
	$XMLParagraph = $content->createElement('text:p');
	$XMLParagraph->setAttribute('text:style-name', 'P1');
	$XMLOfficeText->appendChild($XMLParagraph);
}

function br()
{
	global $content;
	global $XMLParagraph;
	global $XMLOfficeText;
	$XMLParagraph = $content->createElement('text:p');
	$XMLOfficeText->appendChild($XMLParagraph);
}

function texte($text)
{
	$Caracs = array("&" => "&amp;",  "e" => "e");
	$text=strtr($text, $Caracs);
	global $XMLText;
	global $content;
	global $XMLOfficeText;
	$XMLText = $content->createElement('text:p', utf8_encode($text));
	$XMLOfficeText->appendChild($XMLText);
}

function textestyle($text,$style_name)
{
	$Caracs = array("&" => "&amp;",  "e" => "e");
	$text=strtr($text, $Caracs);
	global $XMLText;
	global $content;
	global $XMLParagraph;
	$XMLText = $content->createElement('text:span', utf8_encode($text));
	$XMLText->setAttribute('text:style-name', $style_name);
	$XMLParagraph->appendChild($XMLText);
}

function image($href,$style_name="fr1",$name="Image1", $anchor_type="paragraph" ,$x,$y , $width , $height )
{
	global $XMLdraw;
	global $content;
	global $XMLParagraph;
	global $XMLimage;
	global $XMLOfficeText;
	// print $x."-".$y;
	$XMLdraw = $content->createElement('draw:frame');
	$XMLdraw->setAttribute('draw:style-name', $style_name);
	$XMLdraw->setAttribute('draw:name', $name);
	$XMLdraw->setAttribute('text:anchor-type', $anchor_type);
	$XMLdraw->setAttribute('svg:x', $x.'cm');
	$XMLdraw->setAttribute('svg:y', $y.'cm');
	$XMLdraw->setAttribute('svg:width', $width.'cm');
	$XMLdraw->setAttribute('svg:height', $height.'cm');
	$XMLdraw->setAttribute('draw:z-index', '0');
	$XMLParagraph->appendChild($XMLdraw);
	$XMLimage = $content->createElement('draw:image');
	$XMLimage->setAttribute('xlink:href', $href);
	$XMLimage->setAttribute('xlink:type', 'simple');
	$XMLimage->setAttribute('xlink:show', 'embed');
	$XMLimage->setAttribute('xlink:actuate', 'onLoad');
	$XMLimage->setAttribute('draw:filter-name', '&lt;Tous les formats&gt;');
	$XMLdraw->appendChild($XMLimage);
}

function odt_init()
{
	global $manifest;
	global $XMLManifest;
	global $XMLFileEntry;
	$manifest = new DOMDocument('1.0', 'utf-8');
	$XMLManifest = $manifest->createElement('manifest:manifest');
	$XMLManifest->setAttribute('xmlns:manifest', 'urn:oasis:names:tc:opendocument:xmlns:manifest:1.0');
	$manifest->appendChild($XMLManifest);
	$XMLFileEntry = $manifest->createElement('manifest:file-entry');
	$XMLFileEntry->setAttribute('manifest:media-type', 'application/vnd.oasis.opendocument.text');
	$XMLFileEntry->setAttribute('manifest:full-path', '/');
	$XMLManifest->appendChild($XMLFileEntry);
	$XMLFileEntry = $manifest->createElement('manifest:file-entry');
	$XMLFileEntry->setAttribute('manifest:media-type', 'text/xml');
	$XMLFileEntry->setAttribute('manifest:full-path', 'content.xml');
	$XMLManifest->appendChild($XMLFileEntry);
	global $content;
	global $XMLOfficeContent;
	$content = new DOMDocument('1.0', 'utf-8');
	$XMLOfficeContent = $content->createElement('office:document-content');
	$XMLOfficeContent->setAttribute('xmlns:office', 'urn:oasis:names:tc:opendocument:xmlns:office:1.0');
	$XMLOfficeContent->setAttribute('xmlns:text', 'urn:oasis:names:tc:opendocument:xmlns:text:1.0');
	$XMLOfficeContent->setAttribute('xmlns:fo', 'urn:oasis:names:tc:opendocument:xmlns:xsl-fo-compatible:1.0');
	$XMLOfficeContent->setAttribute('xmlns:style', 'urn:oasis:names:tc:opendocument:xmlns:style:1.0');
	$XMLOfficeContent->setAttribute('xmlns:dc', 'http://purl.org/dc/elements/1.1/');
	$XMLOfficeContent->setAttribute('xmlns:xlink', 'http://www.w3.org/1999/xlink');
	$XMLOfficeContent->setAttribute('xmlns:svg', 'urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0');
	$XMLOfficeContent->setAttribute('xmlns:style', 'urn:oasis:names:tc:opendocument:xmlns:style:1.0');
	$XMLOfficeContent->setAttribute('xmlns:table', 'urn:oasis:names:tc:opendocument:xmlns:table:1.0');
	$XMLOfficeContent->setAttribute('xmlns:draw', 'urn:oasis:names:tc:opendocument:xmlns:drawing:1.0');
	$XMLOfficeContent->setAttribute('xmlns:meta', 'urn:oasis:names:tc:opendocument:xmlns:meta:1.0');
	$XMLOfficeContent->setAttribute('xmlns:number', 'urn:oasis:names:tc:opendocument:xmlns:datastyle:1.0');
	$content->appendChild($XMLOfficeContent);
	global $XMLAutomaticStyles;
	$XMLAutomaticStyles = $content->createElement('office:automatic-styles');
	$XMLOfficeContent->appendChild($XMLAutomaticStyles);
}

function creat_style($name , $family='text' , $font_family, $font_weight , $font_style , $color , $background_color , $text_underline_type )
{
	global $content;
	global $XMLStyle;
	global $XMLAutomaticStyles;
	global $XMLTextProperties;
	$XMLStyle = $content->createElement('style:style');
	$XMLStyle->setAttribute('style:name', $name);
	$XMLStyle->setAttribute('style:family', $family);
	$XMLAutomaticStyles->appendChild($XMLStyle);
	$XMLTextProperties = $content->createElement('style:text-properties');
	$XMLTextProperties->setAttribute('fo:font-family', $font_family);
	$XMLTextProperties->setAttribute('fo:font-weight', $font_weight);
	$XMLTextProperties->setAttribute('fo:font-style', $font_style);
	$XMLTextProperties->setAttribute('fo:color', $color);
	$XMLTextProperties->setAttribute('fo:background-color', $background_color);
	$XMLTextProperties->setAttribute('style:text-underline-type', $text_underline_type);
	$XMLStyle->appendChild($XMLTextProperties);
}

function creat_style_img($name )
{
	global $content;
	global $XMLStyle;
	global $XMLAutomaticStyles;
	global $XMLTextProperties;
	$XMLStyle = $content->createElement('style:style');
	$XMLStyle->setAttribute('style:name', $name);
	$XMLStyle->setAttribute('style:family', 'graphic');
	$XMLStyle->setAttribute('style:parent-style-name', 'Graphics');
	$XMLAutomaticStyles->appendChild($XMLStyle); 
	$XMLTextProperties = $content->createElement('style:graphic-properties');
	$XMLTextProperties->setAttribute('style:run-through', 'foreground');
	$XMLTextProperties->setAttribute('style:wrap', 'dynamic');
	$XMLTextProperties->setAttribute('style:number-wrapped-paragraphs', 'no-limit');
	$XMLTextProperties->setAttribute('style:wrap-contour', 'false');
	$XMLTextProperties->setAttribute('style:vertical-pos', 'from-top');
	$XMLTextProperties->setAttribute('style:vertical-rel', 'paragraph');
	$XMLTextProperties->setAttribute('style:horizontal-pos', 'from-left');
	$XMLTextProperties->setAttribute('style:horizontal-rel', 'paragraph');
	$XMLTextProperties->setAttribute('style:mirror', 'none');
	$XMLTextProperties->setAttribute('fo:clip', 'rect(0cm 0cm 0cm 0cm)');
	$XMLTextProperties->setAttribute('draw:luminance', '0%');
	$XMLTextProperties->setAttribute('draw:contrast', '0%');
	$XMLTextProperties->setAttribute('draw:red', '0%');
	$XMLTextProperties->setAttribute('draw:green', '0%');
	$XMLTextProperties->setAttribute('draw:blue', '0%');
	$XMLTextProperties->setAttribute('draw:gamma', '100%');
	$XMLTextProperties->setAttribute('draw:color-inversion', 'false');
	$XMLTextProperties->setAttribute('draw:image-opacity', '100%');
	$XMLTextProperties->setAttribute('draw:color-mode', 'standard');
	$XMLStyle->appendChild($XMLTextProperties);
}

function doc_init()
{
	global $content;
	global $XMLOfficeBody;
	global $XMLOfficeContent;
	global $XMLOfficeText;
	global $XMLParagraph;
	$XMLOfficeBody = $content->createElement('office:body');
	$XMLOfficeContent->appendChild($XMLOfficeBody);
	$XMLOfficeText = $content->createElement('office:text');
	$XMLOfficeBody->appendChild($XMLOfficeText);
	$XMLParagraph = $content->createElement('text:p');
	$XMLOfficeText->appendChild($XMLParagraph);
}

?>



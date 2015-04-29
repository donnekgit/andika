<?php

/* 
*********************************************************************
Copyright Kevin Donnelly 2012.
kevindonnelly.org.uk
This file is part of Andika!, a set of tools for writing Swhili in Arbic script..

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License or the GNU
Affero General Public License as published by the Free Software
Foundation, either version 3 of the License, or (at your option)
any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
and the GNU Affero General Public License along with this program.
If not, see <http://www.gnu.org/licenses/>.
*********************************************************************
*/ 

function ar2rom($text)
{
	$text=preg_replace("/\x{067E}\x{0647}/u", "pU+02BF", $text); // peh+aspiration
	$text=preg_replace("/\x{062A}\x{0647}/u", "tU+02BF", $text); // teh+aspiration
	$text=preg_replace("/\x{0643}\x{0647}/u", "kU+02BF", $text); // kaf+aspiration
	$text=preg_replace("/\x{064A}\x{0654}/u", "", $text); // yeh+hamza - if this combination is used instead of 0678
	//$text=preg_replace("/\x{06A0}\x{062D}/u", "gh", $text); // g+h > gh  // possibility for typing correction

	$text=preg_replace("/\x{0627}/u", "L", $text);  // alef
	$text=preg_replace("/\x{0622}/u", "", $text);  // alef+madda
	$text=preg_replace("/\x{0623}/u", "", $text);  // alef+hamza above
	$text=preg_replace("/\x{0625}/u", "", $text);  // alef+hamza below
	$text=preg_replace("/\x{064E}/u", "a", $text);  // fatha
	$text=preg_replace("/\x{0656}/u", "e", $text);  // subscript alef
	$text=preg_replace("/\x{0650}/u", "i", $text);  // kasra
	$text=preg_replace("/\x{064A}/u", "y", $text);  // yeh
	$text=preg_replace("/\x{0626}/u", "", $text);  // yeh+hamza
	$text=preg_replace("/\x{0649}/u", "y", $text);  // alef maksura
	$text=preg_replace("/\x{0657}/u", "o", $text);  // inverted damma
	$text=preg_replace("/\x{064F}/u", "u", $text);  // damma
	$text=preg_replace("/\x{0648}/u", "w", $text);  // waw
	$text=preg_replace("/\x{0624}/u", "", $text);  // waw+hamza
	$text=preg_replace("/\x{06CF}/u", "U+06CF", $text);  // waw+dot - dental w

	$text=preg_replace("/\x{0651}/u", "U+0651", $text);  // shadda
	$text=preg_replace("/\x{0652}/u", "", $text);  // sukun
// 	$text=preg_replace("/\x{064B}/u", "U+207F", $text);  // fathatan
// 	$text=preg_replace("/\x{064C}/u", "U+207F", $text);  // dammatan
// 	$text=preg_replace("/\x{064D}/u", "U+207F", $text);  // kasratan
	$text=preg_replace("/\x{064B}/u", "aU+0332nU+0332", $text);  // fathatan
	$text=preg_replace("/\x{064C}/u", "uU+0332nU+0332", $text);  // dammatan
	$text=preg_replace("/\x{064D}/u", "iU+0332nU+0332", $text);  // kasratan
	$text=preg_replace("/\x{0670}/u", "U+0308", $text);  // superscript alef

	$text=preg_replace("/\x{0654}/u", "", $text);  // high hamza - distinguish from high hamza (0674)
	$text=preg_replace("/\x{0621}/u", "", $text);  // hamza

	$text=preg_replace("/\x{0628}/u", "b", $text);  // beh
	$text=preg_replace("/\x{067E}/u", "p", $text); // peh

	$text=preg_replace("/\x{062A}/u", "t", $text); // teh - dental t
	$text=preg_replace("/\x{0679}/u", "U+0679", $text);  // tteh - alveolar t
	$text=preg_replace("/\x{062B}/u", "th", $text);  // theh
	
	$text=preg_replace("/\x{062C}/u", "j", $text);  // jeem
	$text=preg_replace("/\x{062D}/u", "U+062D", $text);  // hah
	$text=preg_replace("/\x{062E}/u", "U+062E", $text);  // khah
	$text=preg_replace("/\x{0686}/u", "ch", $text);  // tcheh
	$text=preg_replace("/\x{063B}/u", "U+063B", $text);  // keheh with two dots

	$text=preg_replace("/\x{062F}/u", "d", $text);  // dal
	$text=preg_replace("/\x{0688}/u", "U+0688", $text);  // ddal - alveolar d
	$text=preg_replace("/\x{0630}/u", "dh", $text);  // dhal
	
	$text=preg_replace("/\x{0631}/u", "r", $text);  //  reh
	$text=preg_replace("/\x{0632}/u", "z", $text);  // zain
	$text=preg_replace("/\x{0698}/u", "zh", $text);  // jeh - zh

	$text=preg_replace("/\x{0633}/u", "s", $text);  // seen
	$text=preg_replace("/\x{0634}/u", "sh", $text);  // sheen
	
	$text=preg_replace("/\x{0635}/u", "U+0635", $text);  // sad
	$text=preg_replace("/\x{0636}/u", "U+0636", $text);  // dad - dh
	$text=preg_replace("/\x{0637}/u", "U+0637", $text);  // tah - t
	$text=preg_replace("/\x{0638}/u", "U+0638", $text);  // zah - dh
	
	$text=preg_replace("/\x{0639}/u", "U+02BE", $text);  // ain - glottal stop diacritic
	$text=preg_replace("/\x{063A}/u", "gh", $text);  // ghain
	$text=preg_replace("/\x{06A0}/u", "g", $text);  // ain with three dots - g
	$text=preg_replace("/\x{075D}/u", "ng", $text);  // ain with two dots - used in ŋ

	$text=preg_replace("/\x{0642}/u", "q", $text);  // qaf
	$text=preg_replace("/\x{0641}/u", "f", $text);  // feh
	$text=preg_replace("/\x{06A4}/u", "v", $text);  // veh

	$text=preg_replace("/\x{0643}/u", "k", $text); // kaf
	$text=preg_replace("/\x{06AA}/u", "k", $text); // swash kaf - ornamentation
	
	$text=preg_replace("/\x{0644}/u", "l", $text);  // lam
	$text=preg_replace("/\x{0645}/u", "m", $text);  // meem
	$text=preg_replace("/\x{0646}/u", "n", $text);  // noon
	
	$text=preg_replace("/\x{0647}/u", "h", $text);  // heh
	$text=preg_replace("/\x{0629}/u", "U+0629", $text);  // teh marbuta

	$text=preg_replace("/\x{06AE}/u", "c", $text);  // kaf with three dots - transliterates English c

	$text=preg_replace("/\x{0660}/u", "0", $text);  // 0
	$text=preg_replace("/\x{0661}/u", "1", $text);  // 1
	$text=preg_replace("/\x{0662}/u", "2", $text);  // 2
	$text=preg_replace("/\x{0663}/u", "3", $text);  // 3
	$text=preg_replace("/\x{0664}/u", "4", $text);  // 4
	$text=preg_replace("/\x{0665}/u", "5", $text);  // 5
	$text=preg_replace("/\x{0666}/u", "6", $text);  // 6
	$text=preg_replace("/\x{0667}/u", "7", $text);  // 7
	$text=preg_replace("/\x{0668}/u", "8", $text);  // 8
	$text=preg_replace("/\x{0669}/u", "9", $text);  // 9
	
	$text=preg_replace("/\x{061B}/u", ";", $text);  // semi-colon
	$text=preg_replace("/\x{060C}/u",",", $text);  // comma
	$text=preg_replace("/\x{06D4}/u", ".", $text);  // full stop
	$text=preg_replace("/\x{061F}/u", "?", $text);  // question-mark
	$text=preg_replace("/\x{060D}/u", "-", $text);  // date separator
	
	return $text;
}

function standardise($text)
{
	$text=preg_replace("/L([aeiou])/", "$1$2", $text);  // Ustadh Mau initial vowels use alif as carrier, without hamza
	
// 	$text=preg_replace("/U\+207F/", "", $text);  // {fatha|damma|kasra}tan > nothing
	$text=preg_replace("/([aui])U\+0332nU\+0332/", "$1", $text);  // {fatha|damma|kasra}tan > a|u|i

	$text=preg_replace("/(Ll)?([bcdfghjklmnpqrstvwyz])U\+0651/", "$2$2", $text);  // shadda > CC

	$text=preg_replace("/U\+0635U\+0651/", "s", $text);  // ṣad + shadda > CC
	$text=preg_replace("/U\+0636U\+0651/", "dh", $text);  // ḍad + shadda > CC
    	$text=preg_replace("/U\+0637U\+0651/", "t", $text);  // ṭah + shadda > CC
    	$text=preg_replace("/U\+0638U\+0651/", "dh", $text);  // ẓah + shadda > CC
    	
	// Arabic prepositions
	$text=preg_replace("/biLl([bcdfghjklmnpqrstvwyz])[bcdfghjklmnpqrstvwyz]?/", "bi-$1", $text);  // repetition to deal with shadda
	$text=preg_replace("/waLl([bcdfghjklmnpqrstvwyz])[bcdfghjklmnpqrstvwyz]?/", "wa-$1", $text);  // repetition to deal with shadda
	$text=preg_replace("/ls/", "ss", $text);  // as-salamu
	
	$text=preg_replace("/iy'([aiu])/", "i'$1", $text); // dirī'i
	$text=preg_replace("/uw'([aiu])/", "u'$1", $text);

	$text=preg_replace("/([ei])y\b/", "$1$1", $text); // word-final ey, iy > ee, ii
	$text=preg_replace("/([ou])w\b/", "$1$1", $text); // word-final oy, uy > oo, uu
	
	$text=preg_replace("/a?L/", "a", $text);
	$text=preg_replace("/La/", "a", $text);  // Mkunumbi

	$text=preg_replace("/nb/", "mb", $text);
		
	$text=preg_replace("/([^aeiou])y([^aeiou])/", "$1i$2", $text); // i when only I and not i+I is used
	$text=preg_replace("/([^aeiou])w([^aeiou])/", "$1u$2", $text); // u when only U and not u+U is used
	$text=preg_replace("/([ei])y([^aeiou])/", "$1$2", $text); // ey > e, iy > i
	$text=preg_replace("/([ou])w([^aeiou])/", "$1$2", $text); // ow > o, uw > u
	$text=preg_replace("/w([^aeiou])/", "u$1", $text); // w > u
	
	$text=preg_replace("/U\+06CF/", "w", $text);  // waw+dot
	
	$text=preg_replace("/U\+0308/", "a", $text);  // superscript alef

	$text=preg_replace("/pU\+02BF/", "p", $text);  // p+aspiration > p
	$text=preg_replace("/tU\+02BF/", "t", $text);  // t+aspiration > t
	$text=preg_replace("/kU\+02BF/", "k", $text);  // k+aspiration > k
	
	$text=preg_replace("/U\+02BE/", "'", $text);  // ain > '

	$text=preg_replace("/U\+0679/", "t", $text);  // alveolar t > t
	$text=preg_replace("/U\+0688/", "d", $text);  // alveolar d > d
	
	$text=preg_replace("/U\+0635/", "s", $text);  // sad > s
	$text=preg_replace("/U\+0636/", "dh", $text);  // dad > dh
	$text=preg_replace("/U\+0637/", "t", $text);  // tah > t
	$text=preg_replace("/U\+0638/", "dh", $text);  // zah > dh

	$text=preg_replace("/U\+062D/", "h", $text);  // pharyngeal h > h
	$text=preg_replace("/U\+062E/", "h", $text);  // velar fricative > h

	$text=preg_replace("/U\+063B/", "ch", $text);  // keheh with two dots > ch
	
	$text=preg_replace("/U\+0629/", "t", $text);  // teh marbuta
	
	// Capitalise sentence-initials (very basic!).
	// trim() is necessary because click to select seems to insert spaces before the Arabic text.
	$text=ucfirst(trim($text));
	// "e" tells the regex to execute a PHP function.
	$text=preg_replace("/(\.\s+)([a-z])/e", "'$1'.strtoupper('$2')", $text);

	return $text;
}

function close_trans($text)
{
	$text=preg_replace("/L([aeiou])/", "$1$2", $text);  // Ustadh Mau initial vowels use alif as carrier, without hamza
    
	$text=preg_replace("/(Ll)?([bcdfghjklmnpqrstvwyz])U\+0651/", "$2$2", $text);  // shadda > CC
	
	// deal with shadda in Arabic text
    	$text=preg_replace("/U\+0635U\+0651/", "U+0635U+0635", $text);  // ṣad + shadda > CC
    	$text=preg_replace("/U\+0636U\+0651/", "U+0636U+0636", $text);  // ḍad + shadda > CC
    	$text=preg_replace("/U\+0637U\+0651/", "U+0637U+0637", $text);  // ṭah + shadda > CC
    	$text=preg_replace("/U\+0638U\+0651/", "U+0638U+0638", $text);  // ẓah + shadda > CC

	// Arabic prepositions
	$text=preg_replace("/biLl([bcdfghjklmnpqrstvwyz])[bcdfghjklmnpqrstvwyz]?/", "bi-$1$1", $text);  // repetition to deal with shadda
	$text=preg_replace("/waLl([bcdfghjklmnpqrstvwyz])[bcdfghjklmnpqrstvwyz]?/", "wa-$1$1", $text);  // repetition to deal with shadda
	$text=preg_replace("/ls/", "ss", $text);  // as-salamu
	
	$text=preg_replace("/iy'([aiu])/", "ī'$1", $text); // dirī'i
	$text=preg_replace("/uw'([aiu])/", "ū'$1", $text);

	$text=preg_replace("/([ei])y\b/u", "$1$1", $text); // word-final ey, iy > ee, ii
	$text=preg_replace("/([ou])w\b/u", "$1$1", $text); // word-final oy, uy > oo, uu
	
	// U below to cover any Unicode sequences as well
	$text=preg_replace("/ey([bcdfghjklmnpqrstvwyz'U])/", "ē$1", $text);
	$text=preg_replace("/iy([bcdfghjklmnpqrstvwyz'U])/", "U+0131U+0304$1", $text);
	$text=preg_replace("/ow([bcdfghjklmnpqrstvwyz'U])/", "ō$1", $text);
	$text=preg_replace("/uw([bcdfghjklmnpqrstvwyz'U])/", "ū$1", $text);
	$text=preg_replace("/a?L/", "ā", $text);
	//$text=preg_replace("/La/", "ā", $text);  // (Mkunumbi)

	//$text=preg_replace("/ch/", "U+0074U+02B2", $text);  // t+palatal (Bajuni)
	//$text=preg_replace("/dh/", "U+007AU+0331", $text);  // z+underline (Bajuni)
		
	$text=preg_replace("/nb/", "m̱b", $text);
	$text=preg_replace("/([^aeiou])y([^aeiou])/", "$1U+0131U+0304$2", $text); // i when only I and not i+I is used
	$text=preg_replace("/([^aeiou])w([^(aeiou|U+0131U+0304)])/", "$1ū$2", $text); // u when only U and not u+U is used
	$text=preg_replace("/([ei])y([^aeiou])/", "$1$2", $text); // ey > e, iy > i
	$text=preg_replace("/([ou])w([^aeiou])/", "$1$2", $text); // ow > o, uw > u
	
// 	$text=preg_replace("/t(?!U\+0327|U\+0323|h)/", "U+0074U+0331", $text);  // t without cedilla or dot or h > t+underline
// 	$text=preg_replace("/d(?!U\+0327|U\+0323|h)/", "U+0064U+0331", $text);  // d without cedilla or dot or h > d+underline

	//$text=preg_replace("/v/", "U+0077U+0331", $text);  // v > w+underline (Bajuni)
	
	$text=preg_replace("/gh/", "ḡ", $text);  // (Mkunumbi)
	$text=preg_replace("/U\+06CF/", "wU+0331", $text);  // waw+dot > w̱
    //$text=preg_replace("/U\+06CF/", "w", $text);  // waw+dot > w (Bajuni)

	$text=preg_replace("/U\+0679/", "tU+0327", $text);  // alveolar t > t+cedilla 
	$text=preg_replace("/U\+0688/", "dU+0327", $text);  // alveolar d > d+cedilla
	
	$text=preg_replace("/U\+0308/", "ä", $text);  // superscript alef

	$text=preg_replace("/U\+062D/", "hU+0323", $text);  // pharyngeal h > h+dot
	//$text=preg_replace("/U\+062E/", "hU+0331", $text);  // velar fricative > h+underline
	$text=preg_replace("/U\+062E/", "kh", $text);  // velar fricative > kh

	$text=preg_replace("/U\+063B/", "kU+02B2", $text);  // keheh with two dots > k+palatal

	$text=preg_replace("/U\+0635/", "sU+0323", $text);  // sad > s+dot
	$text=preg_replace("/U\+0636/", "dU+0323", $text);  // dad > d+dot
	$text=preg_replace("/U\+0637/", "tU+0323", $text);  // tah > t+dot
	$text=preg_replace("/U\+0638/", "zU+0323", $text);  // zah > z+dot
	
	$text=preg_replace("/U\+0629/", "tU+0308", $text);  // teh marbuta
		
	$text=html_entity_decode(preg_replace("/U\+([0-9A-F]{4,5})/", "&#x\\1;", $text), ENT_NOQUOTES, 'UTF-8');

	return $text;
}

function prep_rom($text)
{
	// Get rid of capitals
	$text=strtolower($text);
	
	// Stop commas in numerals messing up the line.
	$text=preg_replace("/(\d),(\d)/", "$1$2", $text);
	// Stop hyphens in numerals messing up the line.
	$text=preg_replace("/(\d)-(\d)/", "$1_$2", $text);
		
	// Respellings
	$text=preg_replace("/\bkila\b/", "kulla", $text);
	$text=preg_replace("/hariri/", "ḥariri", $text);

	// VC[C][C]V# - mark penultimate syllable as long
	$text=preg_replace("/a([bcdfghjklmnpqrstvwyz](b|dr?|gw?|hw?|k|n|rc?|v|w|y)?[aeiou]\b)/", "aL$1", $text); // a > aL
	$text=preg_replace("/e([bcdfghjklmnpqrstvwyz](b|dr?|gw?|hw?|k|n|rc?|v|w|y)?[aeiou]\b)/", "ey$1", $text); // e > ey
	$text=preg_replace("/i([bcdfghjklmnpqrstvwyz](b|dr?|gw?|hw?|k|n|rc?|v|w|y)?[aeiou]\b)/", "iy$1", $text);  // i > iy
	$text=preg_replace("/o([bcdfghjklmnpqrstvwyz](b|dr?|gw?|hw?|k|n|rc?|v|w|y)?[aeiou]\b)/", "ow$1", $text);  // o > ow
	$text=preg_replace("/u([bcdfghjklmnpqrstvwyz](b|dr?|gw?|hw?|k|n|rc?|v|w|y)?[aeiou]\b)/", "uw$1", $text);  // u > uw

	// Get rid of redundant longs
	$text=preg_replace("/ww/", "w", $text);  // kuwa
	$text=preg_replace("/yy/", "y", $text);  // vumiliya

	return $text;
}

function rom2ar($text, $no_sukun=NULL)
// NULL allows for this argument to be empty, as may be the case in the offline converters.
// Note: The order of these regexes is significant.
{
	// One-off words
	$text=preg_replace("/\bau\b/", "U+0623U+064EU+0648U+0652", $text);  // au

	$text=preg_replace("/ttc/", "U+0679U+0647", $text);  // tteh + heh - alveolar t with aspiration
	$text=preg_replace("/chc/", "U+0686U+0647", $text);  // tcheh + heh - ch with aspiration
	
	$text=preg_replace("/pc/", "U+067EU+0647", $text); // peh + heh - p with aspiration
	$text=preg_replace("/tc/", "U+062AU+0647", $text); // teh + heh - t with aspiration
	$text=preg_replace("/kc/", "U+0643U+0647", $text); // kaf + heh - k with aspiration
	
	$text=preg_replace("/ng'/", "U+0646U+075D", $text);  // ain with two dots - used in ŋ

	$text=preg_replace("/\buia/", "U+0623U+064FU+0626U+0650U+0626U+064E", $text);  // alef with hamza above + damma + yeh with hamza + kasra + yeh with hamza + fatha
	$text=preg_replace("/\buoe/", "U+0623U+064FU+0624U+0657U+0624U+0656", $text);  // damma + waw with hamza + inverted damma + waw with hamza + subscript alef
	
	$text=preg_replace("/aia/", "U+064EU+0626U+0650U+0626U+064E", $text);  // fatha + yeh with hamza + kasra + yeh with hamza + fatha
	$text=preg_replace("/oea/", "U+0657U+0626U+0656U+0626U+064E", $text);  // inverted damma + yeh with hamza + subscript alef + yeh with hamza + fatha
	$text=preg_replace("/uia/", "U+064FU+0626U+0650U+0626U+064E", $text);  // damma + yeh with hamza + kasra + yeh with hamza + fatha
	$text=preg_replace("/uie/", "U+064FU+0626U+0650U+0626U+0656", $text);  // damma + yeh with hamza + kasra + yeh with hamza + subscript alef
	$text=preg_replace("/uoa/", "U+064FU+0624U+0657U+0624U+064E", $text);  // damma + waw with hamza + inverted damma + waw with hamza + fatha
	$text=preg_replace("/uoe/", "U+064FU+0624U+0657U+0624U+0656", $text);  // damma + waw with hamza + inverted damma + waw with hamza + subscript alef
	$text=preg_replace("/uua/", "U+064FU+0624U+064FU+0624U+064E", $text);  // damma + waw with hamza + damma + waw with hamza + fatha
	$text=preg_replace("/uue/", "U+064FU+0624U+064FU+0624U+0656", $text);  // damma + waw with hamza + damma + waw with hamza + subscript alef

	// Word-final - tao etc
	$text=preg_replace("/aa\b/", "U+064EU+0627U+0621U+064E", $text);  // fatha + alef + hamza + fatha
	$text=preg_replace("/ae\b/", "U+064EU+0627U+0621U+0656", $text);  // fatha + alef + hamza + subscript alef
	$text=preg_replace("/ai\b/", "U+064EU+0627U+0621U+0650", $text);  // fatha + alef + hamza + kasra
	$text=preg_replace("/ao\b/", "U+064EU+0627U+0621U+0657", $text);  // fatha + alef + hamza + inverted damma
	$text=preg_replace("/au\b/", "U+064EU+0627U+0621U+064F", $text);  // fatha + alef + hamza + damma
	
	// Word-initial
	$text=preg_replace("/\bai/", "U+0623U+064EU+0626U+0650", $text);  // alef with hamza above + fatha + yeh with hamza + kasra
	$text=preg_replace("/\bau/", "U+0623U+064EU+0624U+064F", $text);  // alef with hamza above + fatha + waw with hamza + damma
	
	$text=preg_replace("/\bua/", "U+0623U+064FU+0624U+064E", $text);  // alef with hamza above + damma + waw with hamza + fatha
	$text=preg_replace("/\bue/", "U+0623U+064FU+0626U+0656", $text);  // alef with hamza above + damma + yeh with hamza + subscript alef
	$text=preg_replace("/\bui/", "U+0623U+064FU+0626U+0650", $text);  // alef with hamza above + damma + yeh with hamza + kasra
	$text=preg_replace("/\buo/", "U+0623U+064FU+0624U+0657", $text);  // alef with hamza above + damma + waw with hamza + inverted damma
	$text=preg_replace("/\buu/", "U+0623U+064FU+0624U+064F", $text);  // alef with hamza above + damma + waw with hamza + damma
	$text=preg_replace("/\buw/", "U+0623U+064FU+0648", $text);  // alef with hamza above + damma + waw

	// Other vowel transitions
// 	$text=preg_replace("/aaL/", "U+064EU+0623U+064E", $text);  // fatha + alef with hamza above + fatha
	$text=preg_replace("/aa/", "U+064EU+0623U+064E", $text);  // fatha + alef with hamza above + fatha
	$text=preg_replace("/ae/", "U+064EU+0626U+0650", $text);  // fatha + yeh with hamza + subscript alef
	$text=preg_replace("/ai/", "U+064EU+0626U+0650", $text);  // fatha + yeh with hamza + kasra
	$text=preg_replace("/ao/", "U+064EU+0624U+0657", $text);  // fatha + waw with hamza + inverted damma
	$text=preg_replace("/au/", "U+064EU+0624U+064F", $text);  // fatha + waw with hamza + damma
	
	$text=preg_replace("/ea/", "U+0656U+0626U+064E", $text);  // subscript alef + yeh with hamza + fatha
	$text=preg_replace("/ee/", "U+0656U+0626U+0656", $text);  // subscript alef + yeh with hamza + subscript alef
	$text=preg_replace("/ei/", "U+0656U+0626U+0650", $text);  // subscript alef + yeh with hamza + kasra
	$text=preg_replace("/eo/", "U+0656U+0624U+0657", $text);  // subscript alef + waw with hamza + inverted damma
	$text=preg_replace("/eu/", "U+0656U+0624U+064F", $text);  // subscript alef + waw with hamza + damma
    
	$text=preg_replace("/iiy/", "U+0650U+0624U+064F", $text);  // kasra + waw with hamza + damma
	$text=preg_replace("/ia/", "U+0650U+0626U+064E", $text);  // kasra + yeh with hamza + fatha
	$text=preg_replace("/ie/", "U+0650U+0626U+0656", $text);  // kasra + yeh with hamza + subscript alef
	$text=preg_replace("/ii/", "U+0650U+0626U+0650", $text);  // kasra + yeh with hamza + kasra
	$text=preg_replace("/io/", "U+0650U+0624U+0657", $text);  // kasra + waw with hamza + inverted damma
	$text=preg_replace("/iu/", "U+0650U+0624U+064F", $text);  // kasra + waw with hamza + damma
	
	$text=preg_replace("/oow/", "U+0657U+0624U+0657", $text);   // inverted damma + waw with hamza + inverted damma
	$text=preg_replace("/oa/", "U+0657U+0624U+064E", $text);  // inverted damma + waw with hamza + fatha
	$text=preg_replace("/oe/", "U+0657U+0626U+0656", $text);  // inverted damma + yeh with hamza + subscript alef
	$text=preg_replace("/oi/", "U+0657U+0626U+0650", $text);  // inverted damma + yeh with hamza + kasra
	$text=preg_replace("/oo/", "U+0657U+0624U+0657", $text);  // inverted damma + waw with hamza + inverted damma
	$text=preg_replace("/ou/", "U+0657U+0624U+064F", $text);  // inverted damma + waw with hamza + damma

	$text=preg_replace("/ua/", "U+064FU+0624U+064E", $text);  // damma + waw with hamza + fatha
	$text=preg_replace("/ue/", "U+064FU+0626U+0656", $text);  // damma + yeh with hamza + subscript alef
	$text=preg_replace("/ui/", "U+064FU+0626U+0650", $text);  // damma + yeh with hamza + kasra
	$text=preg_replace("/uo/", "U+064FU+0624U+0657", $text);  // damma + waw with hamza + inverted damma
	$text=preg_replace("/uu/", "U+064FU+0624U+064F", $text);  // damma + waw with hamza + damma
	$text=preg_replace("/uw/", "U+064FU+0648", $text);  // damma + waw

	if (!isset($no_sukun))
	{
		// Sukun on consonants with no vowel.
		$text=preg_replace("/k(w)/", "U+0643U+0652$1", $text); // kaf + sukun + waw
		$text=preg_replace("/m(b|p|f|v|tr?|dr?|g|k|ch|j|sh?|ng?|w)/", "U+0645U+0652$1", $text);  // meem + sukun
		$text=preg_replace("/n(tr?|dr?|g|k|ch|j|s|y|z)/", "U+0646U+0652$1", $text);  // noon + sukun
		$text=preg_replace("/s(k|p|t)/", "U+0633U+0652$1", $text);  // seen + sukun
		$text=preg_replace("/sh(r|w)/", "U+0634U+0652$1", $text);  // sheen + sukun
		$text=preg_replace("/r(n)/", "U+0631U+0652$1", $text);  // reh + sukun
		$text=preg_replace("/v(y)/", "U+06A4U+0652$1", $text);  // veh + sukun
		$text=preg_replace("/z(w)/", "U+0632U+0652$1", $text);  // zain + sukun
	}

	$text=preg_replace("/ţ/", "U+0679", $text);  // tteh - alveolar t - t+cedilla
	$text=preg_replace("/ḑ/", "U+0688", $text);  // ddal - alveolar d - d+cedilla
	
	$text=preg_replace("/ṯ/", "U+0679", $text);  // teh - dental t - t+underline
	$text=preg_replace("/ḏ/", "U+0688", $text);  // dal - dental d - d+underline

	$text=preg_replace("/th/", "U+062B", $text);  // theh
	$text=preg_replace("/dh/","U+0630", $text);  // dhal
	
	$text=preg_replace("/ch/", "U+0686", $text);  // tcheh
	$text=preg_replace("/kh/", "U+062E", $text);  // khah
	//$text=preg_replace("/ẖ/", "U+062E", $text);  // khah
	
	$text=preg_replace("/ll/", "U+0644U+0651", $text); // lam + shadda

	$text=preg_replace("/ḥ/", "U+062D", $text);  // hah

	$text=preg_replace("/gh/", "U+063A", $text);  // ghain
	$text=preg_replace("/ḡ/", "U+063A", $text);  // ghain

	$text=preg_replace("/'/", "U+0639", $text);  // ain

	$text=preg_replace("/sh/", "U+0634", $text);  // sheen
	$text=preg_replace("/zh/", "U+0698", $text);  // jeh - zh
	
	$text=preg_replace("/ṣ/", "U+0635", $text);  // sad - s+dot below
	$text=preg_replace("/ḍ/", "U+0636", $text);  // dad - dh - d+dot below
	$text=preg_replace("/ṭ/", "U+0637", $text);  // tad - t+dot below
	$text=preg_replace("/ẓ/", "U+0638", $text);  // zah - dh - z+dot below
	
	$text=preg_replace("/w̱/", "U+06CF", $text);  // waw with dot - dental w

	$text=preg_replace("/\ba/", "U+0623U+064E", $text);  // initial a - alef with hamza above + fatha
	$text=preg_replace("/\be/", "U+0625U+0656", $text);  // initial e - alef with hamza below + subscript alef
	$text=preg_replace("/\bi/", "U+0625U+0650", $text);  // initial i - alef with hamza below + kasra
	$text=preg_replace("/\bo/","U+0623U+0657", $text);  // initial o - alef with hamza above + inverted damma
	$text=preg_replace("/\bu/","U+0623U+064F", $text);  // initial u - alef with hamza above + damma
	
	$text=preg_replace("/L/", "U+0627", $text);  // alef
	$text=preg_replace("/w/", "U+0648", $text);  // waw
	$text=preg_replace("/y/", "U+064A", $text);  // yeh

	$text=preg_replace("/a/", "U+064E", $text);  // a - fatha
	$text=preg_replace("/e/", "U+0656", $text);  // e - subscript alef
	$text=preg_replace("/i/", "U+0650", $text);  // i - kasra
	$text=preg_replace("/o/", "U+0657", $text);  // o - inverted damma
	$text=preg_replace("/u/", "U+064F", $text);  // u - damma
	
	$text=preg_replace("/b/", "U+0628", $text);  // beh
	$text=preg_replace("/p/", "U+067E", $text); // peh

	$text=preg_replace("/t/", "U+062A", $text); // teh - dental t
	$text=preg_replace("/d/", "U+062F", $text);  // dal
	
	$text=preg_replace("/j/", "U+062C", $text);  // jeem
	
	$text=preg_replace("/h/", "U+0647", $text);  // heh
	
	$text=preg_replace("/f/", "U+0641", $text);  // feh
	$text=preg_replace("/v/", "U+06A4", $text);  // veh
	
	$text=preg_replace("/k/", "U+0643", $text); // kaf
	$text=preg_replace("/q/", "U+0642", $text);  // qaf
	
	$text=preg_replace("/l/", "U+0644", $text);  // lam
	$text=preg_replace("/m/", "U+0645", $text);  // meem
	$text=preg_replace("/n/", "U+0646", $text);  // noon
	
	$text=preg_replace("/r/", "U+0631", $text);  // reh

	$text=preg_replace("/s/", "U+0633", $text);  // seen
	$text=preg_replace("/z/", "U+0632", $text);  // zain

	$text=preg_replace("/g/", "U+06A0", $text);  // ain with three dots - g
	
	$text=preg_replace("/c(?!h)/", "U+06AE", $text);  // kaf with three dots - transliterates English c
	$text=preg_replace("/x/", "U+0643U+0652U+0633", $text);  // kaf + sukun + seen

	$text=preg_replace("/;/", "U+061B", $text);  // semi-colon
	$text=preg_replace("/,/", "U+060C", $text);  // comma
	$text=preg_replace("/\./", "U+06D4", $text);  // full stop
	$text=preg_replace("/\?/", "U+061F", $text);  // question-mark
	$text=preg_replace("/-/", "U+060D", $text);  // date separator

	return $text;
}

function convert_numbers($text)
{
	$text=preg_replace("/0/", "٠", $text);  // 0
	$text=preg_replace("/1/", "١", $text);  // 1
	$text=preg_replace("/2/", "٢", $text);  // 2
	$text=preg_replace("/3/", "٣", $text);  // 3
	$text=preg_replace("/4/", "٤", $text);  // 4
	$text=preg_replace("/5/", "٥", $text);  // 5
	$text=preg_replace("/6/", "٦", $text);  // 6
	$text=preg_replace("/7/", "٧", $text);  // 7
	$text=preg_replace("/8/", "٨", $text);  // 8
	$text=preg_replace("/9/", "٩", $text);  // 9
	
	return $text;
}

function waw_yeh_sukun($text)
{
	$text=preg_replace("/U\+0648(?!U\+064E|U\+0656|U\+0650|U\+0657|U\+064F)/", "U+0648U+0652", $text);  // waw + sukun
	$text=preg_replace("/U\+064A(?!U\+064E|U\+0656|U\+0650|U\+0657|U\+064F)/", "U+064AU+0652", $text);  // yeh + sukun

	return $text;
}
	
function format_for_trans($text)
{
	$text=preg_replace("/<title>.*<\/title>/", "<title></title>", $text);  // remove title
	$text=preg_replace("/\t+/", "", $text);
	$text=preg_replace("/\n/", "", $text);
	$text=preg_replace("/</", "\n<", $text);
	$text=preg_replace("/>/", ">\n", $text);
	$text=preg_replace("/<a href/", "<a style=\"text-decoration: none;\" href", $text);  // remove hyperlink underlines
	$text=preg_replace("/<body/", "<body style=\"text-align: right;\"", $text);  // enforce right-alignment of text

	return $text;
}

function lose_c($text)  // defunct
{
	$text=preg_replace("/[cC]([e|i])/", "s$1", $text);
	$text=preg_replace("/[cC](?!h)/", "k", $text);

	return $text;
}

function query($sql)
// simplify the query writing
// use this as: $result=query("select * from table");
{
    global $db_handle;
    return pg_query($db_handle,$sql);
}

function drop_existing_table($table)
// Drop the specified table so that it can be recreated.
// or: SELECT * FROM pg_tables WHERE tablename = 'mytable' AND schemaname = 'myschema';
// use true instead of * if preferred
// and clause does not work in PPA
{
	global $db_handle;
	$sql_exists="select count(*) as count from pg_class where relname = '".$table."'";
	$result_exists=pg_query($db_handle, $sql_exists);
	$row_exists=pg_fetch_object($result_exists);
	if ($row_exists->count > 0)
	{
		$sql_del="drop table $table";
		$result_del=pg_query($db_handle, $sql_del);
		//echo "Table ".$table." already exists";
	}
	else
	{
		//echo "There is no table ".$table;
	}
}

function copy_records_if_table_not_exists($table, $sql_copy_command) // defunct
// Use SELECT AS to copy records into a table that is only created if it does not already exist. (The command "CREATE TABLE IF EXISTS mytable AS SELECT ..." does not exist.
// In cases where the table already exists, no copying will be done -ie the assumption is that the existing table is already up-to-date and should not be amended.
// This fits into a workflow where copying is done via a separate process, and this function is used as a safety feature to copy records where the user may have forgotten to do so, and is now about to destroy the table holding the records.
// IMPORTANT: the function must be preceded by a line giving the table-name:
// $table="mytable";
{
	global $db_handle;
	$sql_exists="select count(*) as count from pg_class where relname = '".$table."'";
	$result_exists=pg_query($db_handle, $sql_exists);
	$row_exists=pg_fetch_object($result_exists);
	if ($row_exists->count > 0)
	{
		echo "Table ".$table." already exists; no records will be copied\n";
	}
	else
	{
		echo "There is no table ".$table."; creating one and copying records\n";
		$sql_cp="$sql_copy_command";
		$result_cp=pg_query($db_handle, $sql_cp);
	}
}


?>
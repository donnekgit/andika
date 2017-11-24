<!DOCTYPE html>
<html>

<!--
*********************************************************************
Copyright Kevin Donnelly 2012.
kevindonnelly.org.uk
This file is part of Andika!, a set of tools for writing Swahili in Arbic script.

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
-->

<head>
<title>Swahili in Arabic script</title>
<meta charset="UTF-8">
<meta name="description" content="" />
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js">
</script>
<!--[if lt IE 9]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
<script type="text/javascript" src="js/prettify.js"></script>                                   
<script type="text/javascript" src="js/kickstart.js"></script> 
<script type="text/javascript" src="prototype.js"></script>
<script>
Ajax.Responders.register({
onCreate: function(){ Element.show('spinner')},
onComplete: function(){Element.hide('spinner')}
});
</script>
<!-- Thanks to: http://askowen.info/2008/03/how-do-i-add-a-spinner-to-my-ajax-application/ and http://www.ajaxload.info/ for the spinner -->
<link rel="stylesheet" type="text/css" href="css/kickstart.css" media="all" />
<link rel="stylesheet" type="text/css" href="style.css" media="all" />                          
</head>

<body>
<a id="top-of-page"></a>

<!--- Header --->
<div id="header">
<a href="./index.php"><img src="./images/header.jpg" width="671" height="129" alt="Kiswahili" /></a>
</div><!--- End Header --->

<!--- Body wrapper--->
<div id="wrap" class="clearfix">

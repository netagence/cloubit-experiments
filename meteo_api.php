<?php
//PHP page to test grabbing the weather informations from an API source

echo "Essai lecture meteo pour Cloudbit de Littlebits.<br>";

echo "Donnees meteo par <a href= \"http://api.tameteo.com/\" _target=blank>http://api.tameteo.com/</a>.<br>";

// Use the XML feed
// Your own source here, for example from http://api.tameteo.com/
$url = 'http://api.tameteo.com/fullpathere';

$xml = simpleXML_load_file($url,"SimpleXMLElement",LIBXML_NOCDATA); 
if($xml ===  FALSE) 
{ 
   //deal with error 
   echo "Error loading that XML feed!";
} 
else { //do stuff } 
	echo "Yep got my XML source, deal with it.";
} 

?>
<div id="cont_5f22b5d5805befe5e2c2c41c3ab0716c"><span id="h_5f22b5d5805befe5e2c2c41c3ab0716c"><a id="a_5f22b5d5805befe5e2c2c41c3ab0716c" href="http://www.tameteo.com/meteo_Rennes-Europe-France-Ille+et+Vilaine-LFRN-1-26131.html" target="_blank" rel="nofollow" style="color:#656565;font-family:Arial;font-size:14px;">M&eacute;t&eacute;o Rennes</a></span><script type="text/javascript" async src="http://www.tameteo.com/wid_loader/5f22b5d5805befe5e2c2c41c3ab0716c"></script></div>

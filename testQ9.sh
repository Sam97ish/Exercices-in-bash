#!/bin/bash

echo saisie l’enseigne d’une carte

read cartFamille

case $cartFamille in 
	pique) echo pique;;
	coeur) echo coeur;;
 	carreau) echo carreau;;
	trefle) echo trefle;;
	*) echo vous etes trompe;;

esac



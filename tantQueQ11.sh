#!/bin/bash

rep=""

while ! [ $rep = carreau -o $rep = coeur -o $rep = pique -o $rep = trefle ] ; do
	
	echo entrer une famille des cartes svp
	read rep
	if ! [ $rep = carreau -o $rep = coeur -o $rep = pique -o $rep = trefle ] ; then

		echo vous ete trompee
	fi
done

echo vous avez sasie : $rep


#working as intended

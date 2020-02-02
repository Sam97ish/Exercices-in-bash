#!/bin/bash

#cut -f -d
# -f is for specifing the segement we want, -d is the delimiter that will seprate our string into segements


rep=no



#finding the files stored in arg 1
list=`find $1.* -maxdepth 1 -type f `



for i in $list ; do
	#excluding .pdf .bib and .tex
	if ! [  $i = *.pdf -o  $i = *.tex -o  $i = *.bib  ] ; then
		
		echo "do you want to delete $i ?"
		read rep
		
		if [ $rep = "O" -o $rep = "Oui" -o $rep = "oui" ] ; then 
			rm $i
			echo $i est supprime
		fi
	fi
done


echo "done"

exit 0



#working as intended
#needs a try in lab as Latex isn't install back home (done)


# case 
		


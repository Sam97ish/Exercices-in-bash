#!/bin/bash


# -f is for specifing the segement we want, -d is the delimiter that will seprate our string into segements


rep=no



#finding the files stored in arg 1
list=`find $1.* -maxdepth 1 -type f `


for i in $list ; do

        case $i in
        "$i.pdf") echo "préserver .pdf";;
        "$i.bib") echo "préserver .bib";;
        "$i.tex") echo "préserver .tex";;
        *)      echo "do you want to delete $i ?"
		read rep
		            
		if [ $rep = "O" -o $rep = "Oui" -o $rep = "oui" ] ; then 
			rm $i
			echo $i est supprime
		 fi
;;

esac
	       
done 



echo "done"

exit 0


#problem near done line 31


#!/bin/bash
#the option -F does
list=$(ls -F)

nb_dir=0
nb_files=0

echo $list

for i in $list ; do
	#if normal brackets are used the program will consider the results as commands ?
	#spaces are important for square brackets.
    
    if [ -d $i ] ; then

        nb_dir=$[nb_dir + 1]
        
    #the -f condtion doesn't count files with spaces (ils sont consédrer comme des fichier spéciaux)
    elif [ -f $i ] ; then
    
        nb_files=$[nb_files + 1]
        #if square brackets aren't used here the variable will not increment
        
     fi
done

echo "Combtage :" 
echo "il y a" $nb_dir "repretoire"
echo "il y a" $nb_files "fichiers"

exit 0

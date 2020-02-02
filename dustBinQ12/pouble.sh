#!/bin/bash

if ! [ -e ~/.dustbin ] ; then
	
	echo creating dusbin...
	mkdir ~/.dustbin
fi



if [ $1 = -l ] ; then
	#lists files in dustbin
	echo $(ls -lt ~/.dustbin/*)
	#counts the number of files
	echo $(ls -l ~/.dustbin/* | wc -l) fichier

elif [ $1 = -p ] ; then
	#removes all files in dustbin
	`rm ~/.dustbin/*`

	
else
	# ($*) lists all arg in one sting, alternatively ($@) lists all arg in n strings
	list=$*

	for file in $list ; do
	
		`mv ./$file ~/.dustbin`

	done
	

fi	 

nb_files=$(ls -l ~/.dustbin/* | wc -l)
#deletes the oldest file if dustbin has more than 3 files
if [ $nb_files -gt 3 ] ; then

	oldestFile=`ls -t ~/.dustbin/* | tail -1`
	`rm $oldestFile`
fi

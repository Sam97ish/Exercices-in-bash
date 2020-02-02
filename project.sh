#!/bin/bash

#checks if first arg is empty
if [ -z $1 ] ; then
	dname=project;
else
	dname=$1;
fi

#checks if folder name already exists
if [ -e $dname ] ; then
	echo error : folder already exists
	exit 1;
fi



mkdir $dname
mkdir $dname/src
mkdir $dname/bin
mkdir $dname/doc
mkdir $dname/dat
mkdir $dname/res
touch $dname/readme.txt


#works as intended
#full scirpt

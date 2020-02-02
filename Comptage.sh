#!/bin/bash

list=ls 

nb_dir=0
nb_files=0

for i in $list ; do

    if ($i = */  ) ; then

        nb_dir=$nb_dir+1

    else
    
        nb_files=$nb_files+1
    fi

echo "Combtage :" 
echo "il y a" $nb_dir "repretoire"
echo "il y a" $nb_files "fichiers"



 


#!/bin/bash

#the maxdepth is there to limit the find command
#did not use backquotes here as we dont want a string but a number

nb_files=$( find -maxdepth 1 -type f | wc -l );

nb_dir=$(find -maxdepth 1 -type d | wc -l );

#getting red of the (.) dir.
nb_dir=$[ nb_dir - 1 ]

echo "Combtage :" 
echo "il y a"  $nb_dir "repretoire"
echo "il y a" $nb_files "fichiers"


#working as intended

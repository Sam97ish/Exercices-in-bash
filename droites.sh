#!/bin/bash

#backquotes to evalute as command and return a string
list=`find *$2 -maxdepth 1 -type f` 

for i in $list ; do
	
	echo $i;
	chmod g+$1 $i; 
done

echo "done";

exit 0;



#works as expected

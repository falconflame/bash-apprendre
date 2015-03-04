#!/bin/bash

#We can search and replace specific word in many files on the same directory at the same time
#without the need of repeating the task
#Tested by falconflame a.k.a dr. F

#You can change .txt to other extension i.e. .doc .rtf .odt .php .html .xls .ppt et cetera
#Input the specific word you'd like to change in findstring and replacestring 
find . *.txt -type f -exec sed -i 's/findstring/replacestring/g' {} \;

exit 0

#Any ideas or comments? Contact me add: flame.axoneme@gmail.com or flame_axoneme@yahoo.fr
#Or you can see me here: http://fajarichwannoor.wordpress.com


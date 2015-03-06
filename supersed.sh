#!/bin/bash

#We can search and replace specific word in many files on the same directory at the same time
#without the need of repeating the task
#Made in three options, choose one depend on your condition
#Whichever you choose, don't forget to add # in front of other command method
#Tested and created by falconflame a.k.a dr. F

#The path after command "find" can be replace to any specific absolute or relative path
#You can change .txt to other extension i.e. .doc .rtf .odt .php .html .xls .ppt et cetera
#Input the specific word you'd like to change in findstring and replacestring 
find . *.txt -type f -exec sed -i 's/findstring/replacestring/g' {} \; #Dot (.) after find means current path
echo "The word is successfully replaced!!!"

exit 0

#In case you already know the path, you can choose this option below and run it on the specific folder
#If you prefer so, don't forget to add # comment to the command before and after this one
for falcon in *.txt
   do mv $falcon $falcon.tmp
   sed -e 's/findstring/replacestring/g' $falcon.tmp > $falcon
   rm -f $falcon.tmp
   echo "The word is successfully replaced!!!"
done

exit 0

#Or you could try this third method below
find . *.txt -type f | xargs sed -i 's/findstring/replacestring/g'
echo "The word is successfully replaced!!!"

exit 0

#Any ideas or comments? Contact me at: flame.axoneme@gmail.com or flame_axoneme@yahoo.fr
#Or you can see me here: http://fajarichwannoor.wordpress.com


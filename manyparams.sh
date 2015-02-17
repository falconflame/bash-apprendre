#!/bin/bash

echo "Mon nom est `basename $0`- Je suis appele comme $0"
echo "Je suis appele avec $# parametres."
count=1
while [ "$#" -ge "1" ]; do
echo "Numero de parametre $count est: $1"
let count=$count+1
shift 	#If i make shift n. i.e: shift 3 then it will show the next three gap
done

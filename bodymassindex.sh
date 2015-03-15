#!/bin/bash

clear
#This script is made to check estimated ideal weight and body mass index
#(for i am a doctor, sometimes i need to make script like this :lol: )
#Created and Tested by falconflame a.k.a dr. F

#First, Checking Rough Ideal Weight
#Input weight in Kg and height in Cm
echo -n "Enter your weight (in Kg): " 
read weight
echo -n "Enter your height (in Cm): " 
read height

idealweight=$[$height - 110]
echo "Your ideal weight is $idealweight Kg"
sleep 1
if [ $weight -lt $idealweight ]; then
	echo "You should eat a bit more fat, carbs or protein. Consult your doctor"
elif [ $weight -gt $idealweight ]; then
	echo "You should do diet program & physical exercise, perhaps. Consult your doctor"
else
	echo "Your body weight is ideal. Congratz!!!"
fi

sleep 1

#Second, Determining Body Mass Index
echo "Okay, now let's check your Body Mass Index"
sleep 1

x=$weight
heightm=$[$height ** 2]
y=`echo "scale=2; $heightm / 10000" | bc -l`

BMI=`echo "scale=2; $x / $y" | bc -l` #In simple formula, BMI=(weight in kg)/(height in m)^2

echo "Your BMI is $BMI"

#I have to mess with these arguments below because bash don't recognize floating point
#And I'm not using awk, perl or python, as I'm sticking to bash as learning process
if [[ $BMI > 15.99 && $BMI < 18.50 ]]; then
	echo "You are underweight"
elif [[ $BMI > 18.99 && $BMI < 25.00 ]]; then
	echo "You are normal (healthy weight)."
elif [[ $BMI > 24.99 && $BMI < 30.00 ]]; then
	echo "You are overweight"
elif [[ $BMI > 29.99 && $BMI < 35.00 ]]; then
	echo "You are obese class I"
elif [[ $BMI > 34.99 && $BMI < 40.00 ]]; then
	echo "You are obese class II"
else
	echo "You should seek a doctor because at this point it's very critical"
fi
sleep 1

echo -e "\tThis is just global BMI Range for male and female. \n\tHowever, BMI range varies in value among different country. \n\tFor a better classification, meet your doctor."
exit 0

#Any ideas or comments? You can contact me at: flame_axoneme@yahoo.fr or flame.axoneme@gmail.com
#Or you can see my blog at: http://fajarichwannoor.wordpress.com
#If you need this script in Indonesian Language, don't hesitate to ask me for.

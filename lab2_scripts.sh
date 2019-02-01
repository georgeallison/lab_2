#!/bin/bash

# Authors : George Allison
# Date: 1/31/2019

#Part 1 stuff:

#read -p "enter a number: " numOne
#sum=$(($numOne + $numTwo))
#echo "The sum is: $sum"
#let prod=numOne*numTwo
#echo "The product is: $prod"
#echo "File Name: $0"
#echo "Command Line Argument 1: $1"
#grep $1 $2

#Accept a regular expression & file name from the user with a prompt

read -p "Enter RegEx: " myRegEx
read -p "Enter File Name: " fName

#Feed the user's regular expression into grep and run into the user's chosen file.

echo "checking against file..."
grep $myRegEx $fName

#Count the number of phone numbers in regex_practice.txt

echo "Number of phone numbers:"
grep -c '[0-9]\{3\}-[0-9]\{3\}-[0-9]\{4\}' $2

#Count the number of emails in regex_practice.txt

echo "Number of email addresses:"
grep -c '[a-zA-Z0-9]@[a-zA-Z0-9].[a-zA-Z]' $2

#List all of the phone numbers in the "303" area code and store the results in "phone_results.txt"

grep '303-' $fName > phone_results.txt

#List all of the emails from geocities.com and store the results in "email_results.txt" 

grep '@geocities.com' $fName > email_results.txt

#List all of the lines that match a command-line regular expresion and store the results in "command_results.txt"

grep $1 $2 > command_results.txt



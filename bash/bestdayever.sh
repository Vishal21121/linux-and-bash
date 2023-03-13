#!/bin/bash

 # echo "what is your name?"  # here we are asking to enter name"

 # read name # this is the way we are storing the user input in name variable

name=$1
day=$2

user=$(whoami)
directory=$(pwd)
date=$(date)

echo "Good Morning $name!!"

sleep 1

echo "You're looking good today $name"

sleep 1

echo "You have the best $day I've ever seen $name"

sleep 2

echo "You are currently logged in as $user and you are in the directory $directory. Also today is $date"



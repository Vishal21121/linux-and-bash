#!/bin/bash

echo "Welcome tarnished. Please select your starting class:
1 - Samurai
2 - Prisoner
3 - Human"

read class

case $class in 

	1)
		type="Samurai"
		hp=10
		attack=20
		;;

	2)
		type="Prisoner"
		hp=20
		attack=4
		;;

	3)
		type="Human"
		hp=30
		attack=4
		;;
esac

echo "you choose the $type class. Your Hp is $hp and your attack is $attack."

echo "You Died"

# echo "Hey, do you like coffee? (y/n)"

# read ans

#if [[ $ans == "y" ]]; then
#	echo "You are awesome"
# else
#	echo "Leave right now!!"
# fi

# First beast battle

beast=$(( $RANDOM  % 2))

echo "First beast is commig enter a number between 0-1"

read val

if [[ $beast == $val && 47 > 23 ]]; then
	echo "You won"
else	
	echo "You died"
	exit 1
fi

sleep 2

echo "Margit is comming enter the number between 0-9"

read val

margit=$(( $RANDOM % 10))

if [[ $val == $margit || $val == "coffee" ]];then
	echo "You vanquished beast"
elif [[ $USER == "vishal" ]]; then
	echo "Hey vishal always wins. You vanquished beast"
else
	echo "You died"
fi

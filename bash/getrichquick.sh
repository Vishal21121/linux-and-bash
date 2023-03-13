#!/bin/bash

name=$1
age=$2


echo "Hello, $name you are $age years old"

echo "$RANDOM $SHELL $USER $PWD $HOSTNAME"

echo $twitter

val=$(($RANDOM % 14))
final=$(($val+ $age))
echo "You will become millionaire at the age of $final"


Bash shell => bourne again shell

### COMMANDS: 
```
which $SHELL 
```
=> this command gives the info about the shell you are using

```
echo "Hello world" 
```
=> it will print Hello world in the terminal

```
nano filename.sh => 
#! # => this is called shebang
#!/bin/bash

echo "Hi Mom"

sleep 3

echo "Uh uh"

sleep 3

echo "Oh wow"

sleep 3

echo "I can't believe that"

sleep 3 

echo "Bye, love you to"

 
```
1. nano is a text editor and after running the command it will open a editor then enter something
2. sleep keyword stops the control for three seconds
to run this file use the command bash filename.sh

```
./filename.sh => 
chmod +x filename.sh
./filename.sh 
```
=> another way to run the filename.sh is by
./filename.sh will give permission error as it will lack execute permission so for adding execute permission run command chmod +x filename.sh now we can run ./filename.sh


### Creating variable and accessing it

```
name="Vishal" 
    
```
=> this is the way we are creating the variable

```
$name 
```
 => like this we can access the variable name

```
read variableName
```
accepting user input, user input will be stored inside variableName

```
name=$1 
```
=> it will accept the first argument and it will store that in name variable we have to pass the argument after ./filename.sh parameter1  => this parameter will be stored in name variable

```
name=$(whoami) 
```
accepting commands output as input, here whoami is the commands and in the following way we can store the output of command in name variable

Built in variables
```
    $RANDOM # gives random values between 0 and 32767
    $SHELL # gives the current shell
    $USER # gives the current user
    $PWD # gives current working directory
    $HOSTNAME # returns the host
```

As we saw above we can use built in system variable but we can make ours to by

#### Method: 1

```
twitter="Elon Musk"
```
=> this will be saved as system variables but we cannot use this in scripts which are child processs hence

```
export twitter
```
=> this will make twitter variable to be available in scripts as well, but if we log out, this variable will not be accessable then for that we need to edit the .bashrc file which is hidden and we need to add

```
export twitter="Elon Musk"
```

=> this will make sure that whenever we login we can access that variable

### Mathematical Calculation in bash

In bash we can perform mathematical calculations within the termianl in the following way

```
echo $((12+2))
```
in this way 14 will be displayed as output in the terminal and we can store the result in the variable as well

# Using if else in bash

```
    if [[ condition ]];then
        code to be executed
    elif [[ condition ]];then
        code to be executed
    else 
        code to be executed
```

# Using switch case in bash

```
    case $var in

        1) type="Samurai"
        ;;
        2) type="Prisoner"
        ;;
        3) type="Human"
        ;;
    esac
```

# Loops in bash

## While loop

```
    while [[ condition ]]
    do
        code to be executed
    done
```

## Until loop

```
    until [[ order == "coffee" ]]
    do
        echo "Would you like tea or coffee?"
        read order
    done
    echo "Excellent choice, here is your coffee."
```
this loop will continue till you give the order as coffee.

## For loop

first way
``` 
    for i in 1 2 3 4 5;
    do
        echo $i
    done

```

second way
``` 
    for i in {1..10};
    do
        echo $i
    done
```

third way

```
    for city in (cat cities.txt);
    do
        weather=$(curl -s http://wttr.in/$city?format=3)
        echo "The weather for $weather"
    done
```


#!/bin/bash

#positional parameters 

hello_world() {
	echo "Hello World"
}
 

greet_person() {
	local name="$1"
	echo "Hello, $name!"
}



greet_user() {
	echo "What is your name"
	read name
	echo "Hello, $name!"
	echo "How old are you"
	read age
	echo "$name is $age years old"
}




greet() {
	local name 
	local age

	if [ $# -eq 0 ]; then 
		echo "What is your name?"
		read name
		echo "How old are you?"
		read age
	
	else
		name="$1"
		age="$2"
	fi
	
	echo "Hello, $name you are $age years old!"


}

greet

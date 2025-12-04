#!/bin/bash

#Asking the user to input 2 numbers
read -p "Enter first number: " a
read -p "Enter second number: " b

#Addition
echo "Addition: $(echo "$a + $b" | bc)"

#Subtraction
echo "Subtraction: $(echo "$a - $b" | bc)"

#Multiplication of 2 numbers
echo "Multiplication: $(echo "$a * $b" | bc)"

#Division
if ["$b" = 0 ]; then
	 echo "Division: Cannot divide by zero"
else 
	echo "Division: $(echo "scale=2; $a / $b" | bc)"
fi


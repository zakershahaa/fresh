#!/bin/bash
# Simple calculator script

echo "Welcome to the Simple Calculator Script!"
echo "Please select an operation:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read -p "Enter your choice (1/2/3/4): " choice

case $choice in
  1)
    read -p "Enter first number: " num1
    read -p "Enter second number: " num2
    result=$((num1 + num2))
    echo "Result: $result"
    ;;
  2)
    read -p "Enter first number: " num1
    read -p "Enter second number: " num2
    result=$((num1 - num2))
    echo "Result: $result"
    ;;
  3)
    read -p "Enter first number: " num1
    read -p "Enter second number: " num2
    result=$((num1 * num2))
    echo "Result: $result"
    ;;
  4)
    read -p "Enter dividend: " num1
    read -p "Enter divisor: " num2

    if [ $num2 -eq 0 ]; then
      echo "Error: Division by zero is not allowed."
    else
      result=$(awk "BEGIN {printf \"%.2f\", $num1 / $num2}")
      echo "Result: $result"
    fi
    ;;
  *)
    echo "Invalid choice. Please select a valid operation (1/2/3/4)."
    ;;
esac
echo "how you fill this calculator"

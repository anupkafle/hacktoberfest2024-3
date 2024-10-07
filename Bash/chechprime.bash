#!/bin/bash

# Function to check if a number is prime
is_prime() {
    num=$1

    # Prime numbers are greater than 1
    if (( num <= 1 )); then
        echo "$num is not a prime number."
        return
    fi

    # Check from 2 to the square root of the number
    for (( i=2; i*i<=num; i++ )); do
        if (( num % i == 0 )); then
            echo "$num is not a prime number."
            return
        fi
    done

    echo "$num is a prime number."
}

# Read input
read -p "Enter a number: " number

# Call the function
is_prime $number

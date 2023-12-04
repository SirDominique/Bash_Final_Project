Question 2
#!/bin/bash

#Author: Dominic Quansah
#Date Created: 19/10/2023
#Date Modified: 01/12/2023
#Description: This Scripts directs Kofi in his Transaction Simulation at Udemy.com    

# Variables to create a 3-attempt loop
attempts=1
max_attempts=2

# Function for transaction processing
transaction_process() {

# Welcome Message
echo "Welcome to Udemy.com"
sleep 2s

# Declared variable
Expected_pin=1957
Expected_card_number=3215489765604412
Expected_postcode=T4E5J1
Expected_CVC=113

# Prompt for PIN
read -p "Enter your PIN: " PIN

# Prompt for 16-digit card number
read -p "Enter the 16 digits card_number: " card_number
sleep 3s

# check if entered card number is correct
if [[ "$card_number" == "$Expected_card_number" ]]; then
        echo "Card number entered Successfully"
fi

sleep 2s

# User Inputs
read -p "Enter your postcode: " postcode
sleep 1s

read -p "Enter your CVC code: " CVC
sleep 1s

# verification of inputs
if [ $postcode == $Expected_postcode ] && [ $CVC == $Expected_CVC ]; then
echo "Transaction Successful! Enjoy your course on Udemy.com"
exit 0
else
echo "Transaction Declined,Invalid Postcode or CVC Code, Please try again."

sleep 2s

echo "You have done $attempts attempt(s)."

while [ $attempts -le $max_attempts ]; do
attempts=$((attempts+ 1))

transaction_process

done

fi

sleep 2s

# Decline Message
echo "Transaction declined. Your card has been blocked.Please contact RBC"   

sleep 2s

exit 1

}

# Calling the Function
transaction_process

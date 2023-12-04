QUESTION 1
#!/bin/bash

#Author: Dominic Quansah
#Date Created: 19/10/2023
#Date Modified: 01/12/2023
#Description: This Scripts is to help a client Activate his card and Set up his New Pin    

# Declared Variables
last_cc_number="4412"
CVC="113"


# Welcome Message
echo "Welcome to Royal Bank of Canada"
sleep 3s

# Prompt user to insert card
echo "Please insert your card to start"
sleep 2s

echo "Initializing"
sleep 2s

echo "Success"
sleep 2s

# Prompt for Activation of card number
echo "To activate your card we'll need your last four digits card number"
sleep 2s

read -sp "Enter the last_cc_number: " entered_last_cc_number
sleep 2s
echo

# Prompt for CVC number
read -sp "Enter your CVC" entered_CVC
sleep 2s
echo

# Validation of inputs
if [ "$last_cc_number" = "$entered_last_cc_number" ]; then
        echo "last_cc_number verified"
else
        echo "Invalid last_cc_number! Please try again with correct input."
        exit 1
fi

sleep 1s

if [ "$CVC" = "$entered_CVC" ]; then
        echo "CVC verified"
else
        echo "Invalid CVC! Please try again with correct input."
        exit 1
fi

sleep 3s

# Prompt for setting up a PIN
echo "Now let's set up your PIN"
sleep 2s
echo "remember that your PIN must be a 4-digit numeric code"
sleep 2s
read -sp "Enter a 4-digit PIN: " PIN1
echo

sleep 2s

# Prompt for Verification of PIN
echo "Confirm PIN"
read -sp "Re-enter your PIN: " PIN2
echo

echo "Processing....."
sleep 2s

echo "******************************************************************************"      
sleep 3s


# Verify if both PIN match
if [[ "$PIN1" == "$PIN2" ]]; then
        echo "Your Pin has been set and you've successfully activated your card"
else
        echo "PINS do not match.Please start the activation process again"

fi

Question 3
#!/bin/bash

#Author: Dominic Quansah
#Date Created: 19/10/2023
#Date Modified: 01/12/2023
#Description:This Scripts approves any transaction less than  or equal to kofi's credit limits

# Welcome Message
echo "Welcome Kofi!"
sleep 3s

# Kofi's Approved credit Limit
credit_limit=2000

# Transaction input message
read -p "Please Enter the transaction amount: " Entered_transaction_amount

echo "Processing Payment"
sleep 2s

echo "******************************************************************************"
sleep 3s

# Check if the entered transaction amount is within the credit limit
if [ "$Entered_transaction_amount" -le "$credit_limit" ]; then
        echo "Transaction approved successfully,Thank you for purchase!"
else
         echo "Transaction declined: Amount above credit limit."
fi

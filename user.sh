#!/bin/bash

#creating user longin by asking user input 

echo "--CREATE USER---"
read -p "Please enter the username: " username
read -p "Please enter the password1: " password1
read -p "Please confirm the password2: " password2


#CHECK THE PASSWORD MATCH
<<comment
if [ "$password1" != "$password2" ]; then
	echo "Password does not match"
	exit 1
fi

if id "$username" &>/dev/null; then
     echo "user already exits"
else
 # Create user
  sudo useradd -m "$username"

  # Set password securely
  echo "$username:$password1" | sudo chpasswd

  echo "✅ User '$username' created and password set successfully."
fi
comment
#create user

if [[ "$password1" == "$password2" ]] && ! id "$username" &>/dev/null; then
      sudo useradd -m $username
      echo "$username:$password1" | sudo chpasswd
      echo "User '$username' created successfully."
else
	echo " Either password mismatch or user already exists"
fi





#!/bin/bash

# A script that create new linux account with superuser(root) privileges


# Variable
CHECK_IF_IT_IS_ROOT="root"
LOGIN_USER=$(id -un)


# Display user asccount
echo "You are ${LOGIN_USER}."
	

# Check user account is it root
if [[ "${LOGIN_USER}" != "${CHECK_IF_IT_IS_ROOT}" ]]
then
 echo "It requries ${CHECK_IF_IT_IS_ROOT} User." 
 exit 1
fi

# Ask user to enter login, name of the person and initial pwd
read -p "Enter the username to create: " USER_NAME
read -p "Enter the name of the person who this account belongs to: " COMMENT
read -p "Enter the password for this account created: " PASSWORD


# Creates a new user on local system with input

useradd -c "${COMMENT}" -m ${USER_NAME} 

# Inform user if account created is successful or not
if [[ "${?}" != "0" ]]
then
 echo "Creating login failed. Try again!"
 exit 1
fi
echo ${PASSWORD} | passwd --stdin ${USER_NAME}
# Force password change on the 1st login
passwd -e ${USER_NAME}


# Displays the username, password and hostname information

echo "The username is ${USER_NAME}"
echo "The password is ${PASSWORD}"
echo "The Host is ${HOSTNAME}"

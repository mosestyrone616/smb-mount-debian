#!/bin/bash

echo "Software by LS6 (2023) - Free to share and distribute"
echo
echo "This is a Debian program and it will not work properly on Arch. Press any key to continue."
read confirm

name="$(whoami)"
echo $name

echo "Checking Dependancies..."
sudo apt install cifs-utils -y

echo "Please enter the name you would like to choose for the folder the share will be stored in"
read name

echo "Creating directory..."
sudo mkdir /home/$user/$name

echo "Please enter your username for samba"
read username
echo "Please enter your password for samba"
read password
echo "Please enter your domain for samba"
read domain
echo "Please enter your port for samba"
read port
echo "Please enter your share name for samba"
read share

sudo mount -t cifs -o username="$username",password="$password",port="$port" //$domain/$share /home/$user/$name
echo
echo "You need to open your file manager as root in order to write to files, otherwise it will be read-only. Your share is mounted in your home folder. Enjoy!"

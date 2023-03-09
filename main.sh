#!/bin/bash 

#forgot to add IP Adress
if [ "$1" == ""]
then
echo "You forgot an IP adress!"
echo "Syntax: ./filename.sh 192.168.4"

# loop to scan 1 through 254
#$1 will autofill the first 3 octets entered
else
for ip in `seq 1 254`; do
ping -c $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" & done
fi

#ex. ./[filename.sh] 192.168.4

# use nmap with scanned list
#for ip in $(cat filename.txt); do nmap $ip; done


#Thank you TCM Security 
#!/bin/bash 
firstName=${1}
lastName=${2}
saif=$(date +"%d-%m-%Y")
echo "$saif" >> output.txt
echo "$firstName  $lastName" >> output.txt
cp output.txt backup.txt
cat output.txt


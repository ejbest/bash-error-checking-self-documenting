#!/bin/bash

set +x 
touch filethatexists.txt 
echo test > filethatexists.txt 

# This is a self documenting error condition model 
echo " " 
echo "Just an example of error checking and see the value of self documenting"
echo "Hope you see that you can have fun; and add controls around your scripts"
echo " " 

# first we will check for a file that exist (we found no error)
# if error is true; then we expect nothing to be printed 

ls filethatexists.txt > /dev/null 2>&1
ooo=$?; if [ $ooo -ne 0 ]; then echo "checked for the file: status $ooo"; exit $ooo; fi

# next we will check for a file does not exist (found error)
# so this error should print our messtally and exit the program

# Path to the file containing the names and tallys
file="names_tally.txt"

# Loop through each line in the file
while read -r name tally; do
    ooo=$?; if [ $ooo -ne 0 ]; then echo "event reading the file $ooo"; exit $ooo; fi
  # Do something with the name and tally, for example, print them
  echo "Name: $name, tally: $tally"
done < "$file"
ooo=$?; if [ $ooo -ne 0 ]; then echo "something after the loop $ooo"; exit $ooo; fi

echo " " 
echo "Current Status of Kubernetes Environment" 
kubectl get all  
ooo=$?; if [ $ooo -ne 0 ]; then echo "something happened checking kubernetes environment $ooo"; exit $ooo; fi

echo " "
echo "Below is something that will error out"
echo "This will stop the script; when the error checking acts"
echo "Error condition:"
echo "The file does not exist and the err will stop the program"
echo " "

ls 123456789abcdefg > /dev/null 2>&1
ooo=$?; if [ $ooo -ne 0 ]; then echo "checked for the file: status $ooo"; exit $ooo; fi

echo "this messtally should not be printed; as the error condition took place"
echo "This is not seen; right?"
echo "This is not seen; right?"
echo "This is not seen; right?"
echo "This is not seen; right?"
#!/bin/bash

set +x 
touch filethatexists.txt 
echo test > filethatexists.txt 

# This is a self documenting error condition model 

# first we will check for a file that exist (we found no error)
# if error is true; then we expect nothing to be printed 

ls filethatexists.txt > /dev/null 2>&1
retval=$?; if [ $retval -ne 0 ]; then echo "checked for the file: status $retval"; exit $retVal; fi

# next we will check for a file does not exist (found error)
# so this error should print our message and exit the program

ls 123456789abcdefg > /dev/null 2>&1
retval=$?; if [ $retval -ne 0 ]; then echo "checked for the file: status $retval"; exit $retVal; fi

echo "this message should not be printed; as the error condition took place"


# Bash Error Checking and Self Documenting Idea

######Interested to know your feedback 

Here is what I have been using in my bash behind "any command that counts"

<pre>
ls filethatexists.txt > /dev/null 2>&1
retval=$?; if [ $retval -ne 0 ]; then echo "checked for the file: status $retval"; exit $retVal; fi
</pre>

<br>
Hope you see the value in the above example

- one line checking status 
- message is of your choice 
- choose phrases that will have a clear meaning 
- clear meaning of action/status or who,where,whey,when,how
<br>
<br>
Happy Scripting 
<br>
<br>
Please let comments in my Gist

https://gist.github.com/ejbest66/b24cc3e540cf80089e6b80a4829b64d9

Reach me on LinkedIn 

https://www.linkedin.com/in/ejbest/

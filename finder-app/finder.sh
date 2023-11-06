#/bin/bash

filesdir=$1
searchstr=$2

#echo msg-finderr.sh 1: this script tests if two arguements: $1 and  $searchstr are received, and if the first is a directory and second  is a string
#test comment just for pushing to git 
if [ -n "$filesdir" ] && [ -n "$searchstr" ]
then
	if [ -d "$filesdir" ]
	then 
		#echo msg-finder.sh 2: $filesdir is a directory  and search string is: $searchstr
		noOfFiles=$(find $filesdir -type f | wc -l)
		noOfMatchingLines=$(grep -rni "$searchString" "$filesdir" | wc -l)
		echo The number of files are $noOfFiles and the number of matching lines are $noOfMatchingLines
	
	        exit 0
	else
		echo Error 1: $filesdir is not a directory
		exit 1
	fi
else
	echo Error 2: Either one or both of the arguments are not specified.
	exit 1
fi 


writefile=$1
writestr=$2
if [ -n "$writefile" ] && [ -n "$writestr" ]
then
	dirPath=$(dirname $writefile)
	mkdir -p $dirPath
	touch $writefile
	echo "$writestr" > $writefile
	#echo directory path is $dirPath and file name is $writefile and text is $writestr
	exit 0
else
	echo Error 1 : Either one or both argumetns don\'t exist.
	exit 1
fi

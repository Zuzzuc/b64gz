# The following is a bash function. Do not run as a standalone script. 

b64gzdecode(){
	# Input is $1 and optionally $2, where $1 is a string generated by b64gz.sh and $2 is either 'print' or 'evaluate'(defaults to print), to either print the decoded string to stdout or to evaluate the content of the string.
	if [ "$2" == "print" ] || [ -z $2 ];then
		echo "$1" | base64 -D | gzip -d
	elif [ "$2" == "evaluate" ];then
		eval "$(echo "$1" | base64 -D | gzip -d)"
	else
		return 1
	fi
}
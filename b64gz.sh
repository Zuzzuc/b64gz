#!/bin/bash
# License: The MIT License (MIT)
# Author Zuzzuc https://github.com/Zuzzuc

# This script generates a base64 encoded gzip string, which outputs to stdout, whose main goal is to be able to include longer code snippets as a one line in case of complicated script structure resulting in failed minification with other methods.

if [ "$1" != "" ] && [ "$2" != "" ];then		
	if [ "$1" == "file" ];then
		mode="file"
	elif [ "$1" == "stdin" ];then
		mode="stdin"
	else
		echo "Unknown \$1. Supported ones are 'file' and 'stdin'"
		exit 1
	fi	
elif [ "$1" != "file" ] || [ "$1" != "stdin" ];then
	echo "Unknown \$1. Supported ones are 'file' and 'stdin'"
	exit 1
else
	echo -e "No input."
fi

if [ "$mode" == "file" ];then
	if [ -f "$2" ];then
		cat "$2" | gzip -9 | base64 
	else
		echo "File '$2' does not exist"
		exit 2
	fi
elif [ "$mode" == "stdin" ];then
	shift
	echo "$@" | gzip -9 | base64 
fi
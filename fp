#!/bin/bash

# This function prints the help menu
Help()
{
	echo
	echo "This script is used to fast push your code to a repo"
	echo
	echo "SYNTAX: fastpush [-m|s|h]"
	echo
	echo "OPTIONS:"
	echo "-m		The message that you want to commit"
	echo "		If not specified, the default commit message is \"Fastpushed\""
	echo "-s		Option present if you want to sign the commit message"
	echo "-h		Prints this menu"
	echo
	echo "USAGE:"
	echo "fp -m \"Commit message\" -s --> Will commit with the specified message and sign the commit"
	echo "fp 			  --> Will commit with the default message and it will not sign the commit"
	echo "fp -s 			  --> Will commit with the default message and it will sign the commit"
	echo
}

# This function will push to Git Repo using the provided data
push_all(){
git add .
if [[ $3 ]]
then
	git commit -m "$1" --signoff
else
	git commit -m "$1"
fi
branch=$(git branch --show-current)
git push origin $branch
}

signoff=false

while getopts "hm:s" option; do
        case $option in
                h) # Displays Help
			Help
                   	exit;;
		m) # Message
			msg=$OPTARG;;
		s) # Sign the message
			signoff=true;;
               \?) # Invalid Option
                        echo "Invalid Option"
                        Help
                        exit;;        
	esac
done

if [[ -z "$msg" ]]
then
	echo $msg
	msg="Fastpushed"
fi

push_all "$msg" "$signoff"

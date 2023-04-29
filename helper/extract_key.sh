#!/bin/bash

if [ ! $1 ]; then
	echo $Usage: $0 aes256-file
	exit 1
fi

extract() {
	bash ~/software/decipher.sh $1 ~/.ssh
}

if [ ! -d ~/.ssh/ ]; then
	mkdir ~/.ssh
	chmod 700 ~/.ssh
fi
if [ ! -r ~/.ssh/id_rsa_git ]; then
	echo Please enter the password:
	extract $1
	while [ ! -r ~/.ssh/id_rsa_git ]; do
		echo Fail to decipher. Please retry:
		extract $1
	done
else
	echo The key is already in ~/.ssh
fi

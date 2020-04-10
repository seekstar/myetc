#!/bin/bash

extract() {
	bash ~/software/decipher.sh id_rsa_git.aes256 ~/.ssh
}

if [ ! -r ~/.ssh/id_rsa_git ]; then
	echo Please enter the password:
	extract
	while [ ! -r ~/.ssh/id_rsa_git ]; do
		echo Fail to decipher. Please retry:
		extract
	done
else
	echo The key is already in ~/.ssh
fi

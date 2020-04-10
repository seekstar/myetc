#!/bin/bash

extract() {
	cat id_rsa_git.aes256 | openssl aes256 -md sha256 -d | tar zx -C ~/.ssh
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

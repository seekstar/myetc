#!/bin/bash

#echo Please enter the password:
#read -s psswd
if [ $2 ]; then
	#cat $1 | openssl aes256 -d -k "$psswd" | tar -zx -C $2
	cat $1 | openssl aes256 -md sha256 -d | tar zx -C $2
else
	#cat $1 | openssl aes256 -d -k "$psswd" | tar -zx
	cat $1 | openssl aes256 -md sha256 -d | tar zx
fi


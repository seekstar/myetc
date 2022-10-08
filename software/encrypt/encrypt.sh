#!/bin/bash

if [ $2 ]; then
	tar -zcf - $(basename $1) | openssl aes256 -pbkdf2 -salt -md sha256 > $2
else
	echo Must specify the name of output file
fi
#tar -zcf - $(basename $1) | openssl aes256 -salt -k "$psswd" > $ori/$2
#openssl aes256 -e -pbkdf2 < a.txt > a.txt.aes256


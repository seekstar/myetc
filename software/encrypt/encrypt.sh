#!/bin/bash

if [ ! $2 ]; then
	echo Usage: $0 input-path output-file
	exit 1
fi
ori=$(pwd)
cd $(dirname $1)
tar -zcf - $(basename $1) | openssl aes256 -pbkdf2 -salt -md sha256 > $ori/$2
#tar -zcf - $(basename $1) | openssl aes256 -salt -k "$psswd" > $ori/$2
#openssl aes256 -e -pbkdf2 < a.txt > a.txt.aes256


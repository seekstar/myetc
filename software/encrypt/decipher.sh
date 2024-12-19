#!/usr/bin/env sh

if [ ! $1 ]; then
	echo Usage: $0 input-file [output-dir,default:current dir]
	exit 1
fi
if [ $2 ]; then
	#cat $1 | openssl aes256 -d -k "$psswd" | tar -zx -C $2
	cat $1 | openssl aes256 -pbkdf2 -salt -md sha256 -d | tar zx -C $2
else
	#cat $1 | openssl aes256 -d -k "$psswd" | tar -zx
	cat $1 | openssl aes256 -pbkdf2 -salt -md sha256 -d | tar zx
fi

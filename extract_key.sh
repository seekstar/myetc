#!/bin/bash

if [ ! -r ~/.ssh/id_rsa_git ]; then
    echo Please enter the password:
	read -s psswd
	cat id_rsa_git.des3 | openssl des3 -d -k "$psswd" | tar zx -C ~/.ssh
else
	echo The key is already in ~/.ssh
fi

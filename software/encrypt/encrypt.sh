#!/usr/bin/env sh

if [ ! $2 ]; then
	echo Usage: $0 input-path output-file
	exit 1
fi
output_file=$(realpath "$2")
cd $(dirname $1)
tar -zcf - $(basename $1) | openssl aes256 -pbkdf2 -salt -md sha256 > "$output_file"

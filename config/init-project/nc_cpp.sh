#!/usr/bin/env sh
if [ ! "$2" ]; then
	echo Usage: $0 project-path c\|cpp
	exit 1
fi
set -e

mkdir -p "$1"
cp -n "$(dirname $0)"/CMakeLists.txt "$1"/
mkdir -p "$1"/src
cp -n ~/Templates/"$2.$2" "$1"/src/main."$2"
mkdir -p "$1"/include
cp -n "$(dirname $0)"/c_cpp.gitignore "$1"/.gitignore

#!/bin/bash
if [ ! $2 ]; then
	echo Usage: $0 project-path c\|cpp
	exit 1
fi
set -e
mydir=$(realpath $(dirname $0))

mkdir -p $1
cd $1
cp -n $mydir/CMakeLists.txt .
mkdir -p src
cp -n ~/Templates/$2.$2 src/main.$2
mkdir -p include
cp -n $mydir/c_cpp.gitignore .gitignore

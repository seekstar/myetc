#!/bin/bash
if [ ! $1 ]; then
	echo Usage: $0 project-path
	exit 1
fi
set -e
mydir=$(realpath $(dirname $0))

bash $mydir/nc_cpp.sh $1 c

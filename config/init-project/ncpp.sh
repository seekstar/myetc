#!/usr/bin/env sh
if [ ! "$1" ]; then
	echo Usage: $0 project-path
	exit 1
fi
set -e
"$(dirname $0)"/nc_cpp.sh "$1" cpp

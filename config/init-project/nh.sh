#!/bin/bash

file="$(pwd)/include/$1.h"
touch $file
name=$(echo $1 | tr a-z A-Z)_H_
echo -e -n "#ifndef $name\n#define $name\n\n\n\n#endif\t//$name\n" >> $file


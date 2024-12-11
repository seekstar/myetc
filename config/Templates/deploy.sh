#!/usr/bin/env sh
if [ -d ~/模板 ]; then
    mv ~/模板 ~/Templates
else
    mkdir -p ~/Templates
fi
ln -s $(pwd)/cpp.cpp ~/Templates/
ln -s $(pwd)/c.c ~/Templates/
ln -s $(pwd)/launcher.desktop ~/Templates/

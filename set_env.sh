#!/bin/bash

if command -v apt > /dev/null 2>&1; then
        APT=apt;
else
        APT=yum;
fi
export APT


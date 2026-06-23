#!/usr/bin/env sh

npm config set prefix '~/.npm-packages/'
ln -s $(realpath $(dirname $0))/profile.d/npm.sh ~/.profile.d/
source ~/.profile.d/npm.sh

# https://blog.csdn.net/canshegui2293/article/details/121164459
# npm search will not work if we change the default registry to npmmirror.com
#npm config set registry https://registry.npmmirror.com
npm install -g cnpm --registry=https://registry.npmmirror.com
# `npm install -g chromium` stuck at `Step 1. Retrieving Chromium revision number`

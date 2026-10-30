#!/usr/bin/env sh
set -eu

npm config set prefix "~/.npm-packages"
ln -sf "$(realpath "$(dirname "$0")")/profile.d/npm.sh" ~/.profile.d/
. ~/.profile.d/npm.sh

#!/usr/bin/env sh
set -eu

npm config set prefix "~/.npm-packages"
ln -sf "$(realpath "$(dirname "$0")")/profile.d/npm.sh" ~/.profile.d/
. ~/.profile.d/npm.sh

# npmmirror.com does not implement the audit API, so npm uses its default registry and cnpm serves as the mirror.
npm install -g cnpm --registry=https://registry.npmmirror.com

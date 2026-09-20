#!/usr/bin/env sh
git clone --depth=1 https://github.com/Homebrew/brew ~/.brew
eval "$("$HOME/.brew/bin/brew" shellenv)"
echo 'eval "$("$HOME/.brew/bin/brew" shellenv)"' >> ~/.profile
